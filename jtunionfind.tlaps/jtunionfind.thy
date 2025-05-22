(* automatically generated -- do not edit manually *)
theory jtunionfind imports Constant Zenon begin
ML_command {* writeln ("*** TLAPS PARSED\n"); *}
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

lemma ob'1:
(* usable definition IsFiniteSet suppressed *)
(* usable definition Cardinality suppressed *)
fixes BOT
fixes ACK
fixes PROCESSES
fixes N
fixes pc pc'
fixes F F'
fixes a_uunde_Fa a_uunde_Fa'
fixes a_aunde_Fa a_aunde_Fa'
fixes a_bunde_Fa a_bunde_Fa'
fixes a_uunde_Ua a_uunde_Ua'
fixes a_vunde_Ua a_vunde_Ua'
fixes a_aunde_Ua a_aunde_Ua'
fixes a_bunde_Ua a_bunde_Ua'
fixes a_ca a_ca'
fixes d d'
fixes M M'
(* usable definition NodeSet suppressed *)
(* usable definition varlist suppressed *)
(* usable definition PCSet suppressed *)
(* usable definition FieldSet suppressed *)
(* usable definition InitState suppressed *)
(* usable definition InitF suppressed *)
(* usable definition InitRet suppressed *)
(* usable definition InitOp suppressed *)
(* usable definition InitArg suppressed *)
(* usable definition Init suppressed *)
(* usable definition F1 suppressed *)
(* usable definition F2 suppressed *)
(* usable definition F3 suppressed *)
(* usable definition F4 suppressed *)
(* usable definition F5 suppressed *)
(* usable definition F6 suppressed *)
(* usable definition F7 suppressed *)
(* usable definition FR suppressed *)
(* usable definition U1 suppressed *)
(* usable definition U2 suppressed *)
(* usable definition U3 suppressed *)
(* usable definition U4 suppressed *)
(* usable definition U5 suppressed *)
(* usable definition U6 suppressed *)
(* usable definition U7 suppressed *)
(* usable definition U8 suppressed *)
(* usable definition UR suppressed *)
(* usable definition Decide suppressed *)
(* usable definition Step suppressed *)
(* usable definition Next suppressed *)
(* usable definition Spec suppressed *)
(* usable definition Valid_pc suppressed *)
(* usable definition Valid_F suppressed *)
(* usable definition Valid_u_F suppressed *)
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_u_U suppressed *)
(* usable definition Valid_v_U suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_b_U suppressed *)
(* usable definition Valid_c suppressed *)
(* usable definition Valid_d suppressed *)
(* usable definition SameRoot suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition InvF2All suppressed *)
(* usable definition InvF3All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU2All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
(* usable definition InvU7All suppressed *)
(* usable definition InvU8All suppressed *)
(* usable definition InvDecide suppressed *)
(* usable definition InvF1 suppressed *)
(* usable definition InvF2 suppressed *)
(* usable definition InvF3 suppressed *)
(* usable definition InvF4 suppressed *)
(* usable definition InvF5 suppressed *)
(* usable definition InvF6 suppressed *)
(* usable definition InvF7 suppressed *)
(* usable definition InvFR suppressed *)
(* usable definition InvU1 suppressed *)
(* usable definition InvU2 suppressed *)
(* usable definition InvU3 suppressed *)
(* usable definition InvU4 suppressed *)
(* usable definition InvU5 suppressed *)
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsTransitivelyClosedOn suppressed *)
(* usable definition IsWellFoundedOn suppressed *)
(* usable definition SetLessThan suppressed *)
(* usable definition WFDefOn suppressed *)
(* usable definition OpDefinesFcn suppressed *)
(* usable definition WFInductiveDefines suppressed *)
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition OpToRel suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
(* usable definition FiniteSubsetsOf suppressed *)
(* usable definition StrictSubsetOrdering suppressed *)
(* usable definition SLEquivalent suppressed *)
assumes v'221: "(((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'222: "(SLEquivalent)"
assumes v'223: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
assumes v'226: "((((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) \<and> (((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'247: "((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Ua), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))])))"
assumes v'248: "((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : (((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg''))))))))))))"
assumes v'249: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')])))"
assumes v'250: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'251: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'252: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'253: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'254: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'255: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'256: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'257: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'258: "((((a_dhash_primea :: c)) = (d)))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'261: "(((((fapply ((fapply ((told), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) \<and> (((fapply ((fapply ((told), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet)))))))"
assumes v'268: "(((told) \<in> ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))"
shows "(((((''sigma'' :> ([ j \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (j))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (j)))))])) @@ (''ret'' :> ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)])) @@ (''op'' :> (fapply ((told), (''op'')))) @@ (''arg'' :> (fapply ((told), (''arg'')))))) \<in> ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_5f6633.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_5f6633.znn.out
;; obligation #1
$hyp "v'221" (/\ (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet))))))) InvDecide a_InvF1a a_InvF2a
a_InvF3a a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a
a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'222" SLEquivalent
$hyp "v'223" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "v'226" (/\ (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
(/\ a_h889ac679c3d5fa68ecd826c512cbf0a hf9aeb3897da94c7352f843ff1e508c
h20451dbf6bb505ef64a23efc0d6b3f h6d4c4cb96f3fa83008da51bad83fbb
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea a_h1ef1e69610c58c66ee5436c27a2e53a
a_h14c0a5932541232a01b2e9de8e7f49a (TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet))))))))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'247" (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Ua p) (TLA.record "parent" (TLA.fapply a_vunde_Ua p) "rank" (TLA.fapply (TLA.fapply a_aunde_Ua p) "rank") "bit" 0)))
$hyp "v'248" (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((told) (\/ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
BOT) (= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p ACK))
(= (TLA.fapply t "sigma")
(TLA.Fcn NodeSet ((i) (TLA.cond (= (TLA.fapply (TLA.fapply told "sigma") i)
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") i)))))
(= (TLA.fapply t "op") (TLA.fapply told "op")) (= (TLA.fapply t "arg")
(TLA.fapply told "arg"))) (/\ (= (TLA.fapply (TLA.fapply told "ret") p) ACK)
(= (TLA.fapply t "ret") (TLA.fapply told "ret")) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "op") (TLA.fapply told "op"))
(= (TLA.fapply t "arg")
(TLA.fapply told "arg")))))))))
$hyp "v'249" (= a_pchash_primea
(TLA.except pc p "U7"))
$hyp "v'250" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'251" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'252" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'253" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'254" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'255" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'256" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'257" (= a_chash_primea a_ca)
$hyp "v'258" (= a_dhash_primea
d)
$hyp "told_in" (TLA.in told M)
$hyp "v'261" (/\ (TLA.in (TLA.fapply (TLA.fapply told "ret") p)
(TLA.set BOT ACK)) (TLA.in (TLA.fapply (TLA.fapply told "arg") p)
(TLA.prod NodeSet NodeSet)))
$hyp "v'268" (TLA.in told
(TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))
$goal (TLA.in (TLA.record "sigma" (TLA.Fcn NodeSet ((j) (TLA.cond (= (TLA.fapply (TLA.fapply told "sigma") j)
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") j)))) "ret" (TLA.except (TLA.fapply told "ret") p ACK) "op" (TLA.fapply told "op") "arg" (TLA.fapply told "arg"))
(TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hs:"((((told[''ret''])[p]) \\in {BOT, ACK})&(((told[''arg''])[p]) \\in prod(NodeSet, NodeSet)))" (is "?z_hv&?z_hbe")
 using v'261 by blast
 have z_Ht:"(told \\in [''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_ht")
 using v'268 by blast
 have zenon_L1_: "((told[''sigma'']) \\in FuncSet(NodeSet, NodeSet)) ==> (~(((told[''sigma''])[(((told[''arg''])[p])[2])]) \\in DOMAIN((told[''sigma''])))) ==> (DOMAIN((told[''sigma'']))=NodeSet) ==> ((((told[''arg''])[p])[2]) \\in NodeSet) ==> FALSE" (is "?z_hck ==> ?z_hcm ==> ?z_hcs ==> ?z_hct ==> FALSE")
 proof -
  assume z_Hck:"?z_hck"
  assume z_Hcm:"?z_hcm" (is "~?z_hcn")
  assume z_Hcs:"?z_hcs" (is "?z_hcr=_")
  assume z_Hct:"?z_hct"
  have z_Hcs: "?z_hcs"
  by (rule zenon_in_funcset_1 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
  have z_Hcu: "(\\A zenon_Vpc:((zenon_Vpc \\in NodeSet)=>(((told[''sigma''])[zenon_Vpc]) \\in NodeSet)))" (is "\\A x : ?z_hda(x)")
  by (rule zenon_in_funcset_2 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
  have z_Hdb: "?z_hda((((told[''arg''])[p])[2]))" (is "_=>?z_hdc")
  by (rule zenon_all_0 [of "?z_hda" "(((told[''arg''])[p])[2])", OF z_Hcu])
  show FALSE
  proof (rule zenon_imply [OF z_Hdb])
   assume z_Hdd:"(~?z_hct)"
   show FALSE
   by (rule notE [OF z_Hdd z_Hct])
  next
   assume z_Hdc:"?z_hdc"
   have z_Hcn: "?z_hcn"
   by (rule ssubst [where P="(\<lambda>zenon_Vtyb. (((told[''sigma''])[(((told[''arg''])[p])[2])]) \\in zenon_Vtyb))", OF z_Hcs z_Hdc])
   show FALSE
   by (rule notE [OF z_Hcm z_Hcn])
  qed
 qed
 have zenon_L2_: "(\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) ==> ((((told[''arg''])[p])[2]) \\in NodeSet) ==> (((told[''sigma''])[((told[''sigma''])[(((told[''arg''])[p])[2])])])~=((told[''sigma''])[(((told[''arg''])[p])[2])])) ==> FALSE" (is "?z_hdh ==> ?z_hct ==> ?z_hdo ==> FALSE")
 proof -
  assume z_Hdh:"?z_hdh" (is "\\A x : ?z_hdq(x)")
  assume z_Hct:"?z_hct"
  assume z_Hdo:"?z_hdo" (is "?z_hdp~=?z_hco")
  have z_Hdr: "?z_hdq((((told[''arg''])[p])[2]))" (is "_=>?z_hds")
  by (rule zenon_all_0 [of "?z_hdq" "(((told[''arg''])[p])[2])", OF z_Hdh])
  show FALSE
  proof (rule zenon_imply [OF z_Hdr])
   assume z_Hdd:"(~?z_hct)"
   show FALSE
   by (rule notE [OF z_Hdd z_Hct])
  next
   assume z_Hds:"?z_hds"
   show FALSE
   by (rule notE [OF z_Hdo z_Hds])
  qed
 qed
 have zenon_L3_: "(cond((((told[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])]))~=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])) ==> ((((told[''arg''])[p])[2]) \\in NodeSet) ==> (\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) ==> (((told[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])=((told[''sigma''])[(((told[''arg''])[p])[1])])) ==> ((CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x]))))) \\in NodeSet) ==> FALSE" (is "?z_hdt ==> ?z_hct ==> ?z_hdh ==> ?z_heq ==> ?z_hes ==> FALSE")
 proof -
  assume z_Hdt:"?z_hdt" (is "?z_hdu~=?z_hdx")
  assume z_Hct:"?z_hct"
  assume z_Hdh:"?z_hdh" (is "\\A x : ?z_hdq(x)")
  assume z_Heq:"?z_heq" (is "?z_her=?z_hef")
  assume z_Hes:"?z_hes"
  show FALSE
  proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Ved. (zenon_Ved~=?z_hdx))" "(((told[''sigma''])[?z_hdx])=?z_hef)" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "((told[''sigma''])[?z_hdx])", OF z_Hdt])
   assume z_Hdv:"(((told[''sigma''])[?z_hdx])=?z_hef)" (is "?z_hdw=_")
   assume z_Hew:"(((told[''sigma''])[(((told[''arg''])[p])[2])])~=?z_hdx)" (is "?z_hco~=_")
   have z_Hex: "((''sigma'' \\in DOMAIN((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))))&(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
   by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
   have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
   by (rule conjD2 [OF z_Hex])
   have z_Hfb: "(?z_hco~=(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))]))" (is "_~=?z_hfc")
   by (rule subst [where P="(\<lambda>zenon_Vat. (?z_hco~=(zenon_Vat[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])))", OF z_Hfa z_Hew])
   show FALSE
   proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vqn. (?z_hco~=zenon_Vqn))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hfb])
    assume z_Hfk:"(~?z_hes)"
    show FALSE
    by (rule notE [OF z_Hfk z_Hes])
   next
    assume z_Hfl:"(?z_hco~=cond(?z_heq, ?z_hco, ?z_her))" (is "_~=?z_hfm")
    show FALSE
    proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vqn. (?z_hco~=zenon_Vqn))" "?z_heq" "?z_hco" "?z_her", OF z_Hfl])
     assume z_Heq:"?z_heq"
     assume z_Hfn:"(?z_hco~=?z_hco)"
     show FALSE
     by (rule zenon_noteq [OF z_Hfn])
    next
     assume z_Hfo:"(?z_her~=?z_hef)"
     assume z_Hfp:"(?z_hco~=?z_her)"
     show FALSE
     by (rule notE [OF z_Hfo z_Heq])
    qed
   qed
  next
   assume z_Hfq:"(((told[''sigma''])[?z_hdx])~=?z_hef)" (is "?z_hdw~=_")
   assume z_Hfr:"(?z_hdw~=?z_hdx)"
   have z_Hex: "((''sigma'' \\in DOMAIN((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))))&(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
   by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
   have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
   by (rule conjD2 [OF z_Hex])
   have z_Hfs: "(((told[''sigma''])[(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])])~=?z_hdx)" (is "?z_hft~=_")
   by (rule subst [where P="(\<lambda>zenon_Vnj. (((told[''sigma''])[(zenon_Vnj[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])])~=?z_hdx))", OF z_Hfa z_Hfr])
   show FALSE
   proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vnj. (((told[''sigma''])[zenon_Vnj])~=?z_hdx))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hfs])
    assume z_Hfk:"(~?z_hes)"
    show FALSE
    by (rule notE [OF z_Hfk z_Hes])
   next
    assume z_Hgc:"(((told[''sigma''])[cond(?z_heq, ((told[''sigma''])[(((told[''arg''])[p])[2])]), ?z_her)])~=?z_hdx)" (is "?z_hgd~=_")
    show FALSE
    proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vnj. (((told[''sigma''])[zenon_Vnj])~=?z_hdx))" "?z_heq" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "?z_her", OF z_Hgc])
     assume z_Heq:"?z_heq"
     assume z_Hge:"(((told[''sigma''])[((told[''sigma''])[(((told[''arg''])[p])[2])])])~=?z_hdx)" (is "?z_hdp~=_")
     have z_Hex: "(?z_hey&?z_hfa)"
     by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
     have z_Hfa: "?z_hfa"
     by (rule conjD2 [OF z_Hex])
     have z_Hgf: "(?z_hdp~=(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))]))" (is "_~=?z_hfc")
     by (rule subst [where P="(\<lambda>zenon_Vfnb. (?z_hdp~=(zenon_Vfnb[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])))", OF z_Hfa z_Hge])
     show FALSE
     proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vwra. (?z_hdp~=zenon_Vwra))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hgf])
      assume z_Hfk:"(~?z_hes)"
      show FALSE
      by (rule notE [OF z_Hfk z_Hes])
     next
      assume z_Hgn:"(?z_hdp~=cond(?z_heq, ((told[''sigma''])[(((told[''arg''])[p])[2])]), ?z_her))" (is "_~=?z_hfm")
      show FALSE
      proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vwra. (?z_hdp~=zenon_Vwra))" "?z_heq" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "?z_her", OF z_Hgn])
       assume z_Heq:"?z_heq"
       assume z_Hdo:"(?z_hdp~=((told[''sigma''])[(((told[''arg''])[p])[2])]))" (is "_~=?z_hco")
       show FALSE
       by (rule zenon_L2_ [OF z_Hdh z_Hct z_Hdo])
      next
       assume z_Hfo:"(?z_her~=?z_hef)"
       assume z_Hgo:"(?z_hdp~=?z_her)"
       show FALSE
       by (rule notE [OF z_Hfo z_Heq])
      qed
     qed
    next
     assume z_Hfo:"(?z_her~=?z_hef)"
     assume z_Hgp:"(((told[''sigma''])[?z_her])~=?z_hdx)" (is "?z_hgq~=_")
     show FALSE
     by (rule notE [OF z_Hfo z_Heq])
    qed
   qed
  qed
 qed
 have zenon_L4_: "(((told[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])])~=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])) ==> ((CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x]))))) \\in NodeSet) ==> (\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) ==> (((told[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])~=((told[''sigma''])[(((told[''arg''])[p])[1])])) ==> FALSE" (is "?z_hfr ==> ?z_hes ==> ?z_hdh ==> ?z_hfo ==> FALSE")
 proof -
  assume z_Hfr:"?z_hfr" (is "?z_hdw~=?z_hdx")
  assume z_Hes:"?z_hes"
  assume z_Hdh:"?z_hdh" (is "\\A x : ?z_hdq(x)")
  assume z_Hfo:"?z_hfo" (is "?z_her~=?z_hef")
  have z_Hex: "((''sigma'' \\in DOMAIN((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))))&(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
  by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
  have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
  by (rule conjD2 [OF z_Hex])
  have z_Hfs: "(((told[''sigma''])[(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])])~=?z_hdx)" (is "?z_hft~=_")
  by (rule subst [where P="(\<lambda>zenon_Vnj. (((told[''sigma''])[(zenon_Vnj[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])])~=?z_hdx))", OF z_Hfa z_Hfr])
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vnj. (((told[''sigma''])[zenon_Vnj])~=?z_hdx))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hfs])
   assume z_Hfk:"(~?z_hes)"
   show FALSE
   by (rule notE [OF z_Hfk z_Hes])
  next
   assume z_Hgc:"(((told[''sigma''])[cond((?z_her=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ?z_her)])~=?z_hdx)" (is "?z_hgd~=_")
   show FALSE
   proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vnj. (((told[''sigma''])[zenon_Vnj])~=?z_hdx))" "(?z_her=?z_hef)" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "?z_her", OF z_Hgc])
    assume z_Heq:"(?z_her=?z_hef)"
    assume z_Hge:"(((told[''sigma''])[((told[''sigma''])[(((told[''arg''])[p])[2])])])~=?z_hdx)" (is "?z_hdp~=_")
    show FALSE
    by (rule notE [OF z_Hfo z_Heq])
   next
    assume z_Hfo:"?z_hfo"
    assume z_Hgp:"(((told[''sigma''])[?z_her])~=?z_hdx)" (is "?z_hgq~=_")
    have z_Hex: "(?z_hey&?z_hfa)"
    by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
    have z_Hfa: "?z_hfa"
    by (rule conjD2 [OF z_Hex])
    have z_Hgr: "(?z_hgq~=(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))]))" (is "_~=?z_hfc")
    by (rule subst [where P="(\<lambda>zenon_Vsj. (?z_hgq~=(zenon_Vsj[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])))", OF z_Hfa z_Hgp])
    show FALSE
    proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vsj. (?z_hgq~=zenon_Vsj))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hgr])
     assume z_Hfk:"(~?z_hes)"
     show FALSE
     by (rule notE [OF z_Hfk z_Hes])
    next
     assume z_Hgy:"(?z_hgq~=cond((?z_her=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ?z_her))" (is "_~=?z_hfm")
     show FALSE
     proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vsj. (?z_hgq~=zenon_Vsj))" "(?z_her=?z_hef)" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "?z_her", OF z_Hgy])
      assume z_Heq:"(?z_her=?z_hef)"
      assume z_Hgz:"(?z_hgq~=((told[''sigma''])[(((told[''arg''])[p])[2])]))" (is "_~=?z_hco")
      show FALSE
      by (rule notE [OF z_Hfo z_Heq])
     next
      assume z_Hfo:"?z_hfo"
      assume z_Hha:"(?z_hgq~=?z_her)"
      have z_Hhb: "?z_hdq((CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x]))))))" (is "_=>?z_hhc")
      by (rule zenon_all_0 [of "?z_hdq" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hdh])
      show FALSE
      proof (rule zenon_imply [OF z_Hhb])
       assume z_Hfk:"(~?z_hes)"
       show FALSE
       by (rule notE [OF z_Hfk z_Hes])
      next
       assume z_Hhc:"?z_hhc"
       show FALSE
       by (rule notE [OF z_Hha z_Hhc])
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L5_: "(cond((((told[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])]))~=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])) ==> (((told[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])~=((told[''sigma''])[(((told[''arg''])[p])[1])])) ==> ((CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x]))))) \\in NodeSet) ==> (\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) ==> FALSE" (is "?z_hdt ==> ?z_hfo ==> ?z_hes ==> ?z_hdh ==> FALSE")
 proof -
  assume z_Hdt:"?z_hdt" (is "?z_hdu~=?z_hdx")
  assume z_Hfo:"?z_hfo" (is "?z_her~=?z_hef")
  assume z_Hes:"?z_hes"
  assume z_Hdh:"?z_hdh" (is "\\A x : ?z_hdq(x)")
  show FALSE
  proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Ved. (zenon_Ved~=?z_hdx))" "(((told[''sigma''])[?z_hdx])=?z_hef)" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "((told[''sigma''])[?z_hdx])", OF z_Hdt])
   assume z_Hdv:"(((told[''sigma''])[?z_hdx])=?z_hef)" (is "?z_hdw=_")
   assume z_Hew:"(((told[''sigma''])[(((told[''arg''])[p])[2])])~=?z_hdx)" (is "?z_hco~=_")
   have z_Hhb: "?z_hdq((CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x]))))))" (is "_=>?z_hhc")
   by (rule zenon_all_0 [of "?z_hdq" "(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))", OF z_Hdh])
   show FALSE
   proof (rule zenon_imply [OF z_Hhb])
    assume z_Hfk:"(~?z_hes)"
    show FALSE
    by (rule notE [OF z_Hfk z_Hes])
   next
    assume z_Hhc:"?z_hhc" (is "?z_hgq=_")
    show FALSE
    proof (rule notE [OF z_Hfo])
     have z_Hhd: "(?z_hdw=?z_her)"
     proof (rule zenon_nnpp [of "(?z_hdw=?z_her)"])
      assume z_Hhe:"(?z_hdw~=?z_her)"
      show FALSE
      proof (rule zenon_em [of "(?z_her=?z_her)"])
       assume z_Hhf:"(?z_her=?z_her)"
       show FALSE
       proof (rule notE [OF z_Hhe])
        have z_Hhg: "(?z_her=?z_hdw)"
        proof (rule zenon_nnpp [of "(?z_her=?z_hdw)"])
         assume z_Hhh:"(?z_her~=?z_hdw)"
         have z_Hex: "((''sigma'' \\in DOMAIN((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))))&(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
         by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
         have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
         by (rule conjD2 [OF z_Hex])
         have z_Hhi: "(?z_her~=((told[''sigma''])[(?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])]))" (is "_~=?z_hft")
         by (rule subst [where P="(\<lambda>zenon_Vsea. (?z_her~=((told[''sigma''])[(zenon_Vsea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))])])))", OF z_Hfa z_Hhh])
         show FALSE
         proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vsea. (?z_her~=((told[''sigma''])[zenon_Vsea])))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hhi])
          assume z_Hfk:"(~?z_hes)"
          show FALSE
          by (rule notE [OF z_Hfk z_Hes])
         next
          assume z_Hhr:"(?z_her~=((told[''sigma''])[cond((?z_her=?z_hef), ?z_hco, ?z_her)]))" (is "_~=?z_hgd")
          show FALSE
          proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vsea. (?z_her~=((told[''sigma''])[zenon_Vsea])))" "(?z_her=?z_hef)" "?z_hco" "?z_her", OF z_Hhr])
           assume z_Heq:"(?z_her=?z_hef)"
           assume z_Hhs:"(?z_her~=((told[''sigma''])[?z_hco]))" (is "_~=?z_hdp")
           show FALSE
           by (rule notE [OF z_Hfo z_Heq])
          next
           assume z_Hfo:"?z_hfo"
           assume z_Hht:"(?z_her~=?z_hgq)"
           show FALSE
           by (rule zenon_eqsym [OF z_Hhc z_Hht])
          qed
         qed
        qed
        have z_Hhd: "(?z_hdw=?z_her)"
        by (rule subst [where P="(\<lambda>zenon_Vred. (zenon_Vred=?z_her))", OF z_Hhg], fact z_Hhf)
        thus "(?z_hdw=?z_her)" .
       qed
      next
       assume z_Hhx:"(?z_her~=?z_her)"
       show FALSE
       by (rule zenon_noteq [OF z_Hhx])
      qed
     qed
     have z_Heq: "(?z_her=?z_hef)"
     by (rule subst [where P="(\<lambda>zenon_Vsed. (zenon_Vsed=?z_hef))", OF z_Hhd], fact z_Hdv)
     thus "(?z_her=?z_hef)" .
    qed
   qed
  next
   assume z_Hfq:"(((told[''sigma''])[?z_hdx])~=?z_hef)" (is "?z_hdw~=_")
   assume z_Hfr:"(?z_hdw~=?z_hdx)"
   show FALSE
   by (rule zenon_L4_ [OF z_Hfr z_Hes z_Hdh z_Hfo])
  qed
 qed
 have zenon_L6_: "((Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])])~=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])) ==> (\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) ==> ((CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x]))))) \\in NodeSet) ==> (DOMAIN((told[''sigma'']))=NodeSet) ==> ((told[''sigma'']) \\in FuncSet(NodeSet, NodeSet)) ==> (((told[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>((((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])])=(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])[x])))))])~=((told[''sigma''])[(((told[''arg''])[p])[1])])) ==> FALSE" (is "?z_hib ==> ?z_hdh ==> ?z_hes ==> ?z_hcs ==> ?z_hck ==> ?z_hfo ==> FALSE")
 proof -
  assume z_Hib:"?z_hib" (is "?z_hic~=?z_hdx")
  assume z_Hdh:"?z_hdh" (is "\\A x : ?z_hdq(x)")
  assume z_Hes:"?z_hes"
  assume z_Hcs:"?z_hcs" (is "?z_hcr=_")
  assume z_Hck:"?z_hck"
  assume z_Hfo:"?z_hfo" (is "?z_her~=?z_hef")
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Ved. (zenon_Ved~=?z_hdx))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "?z_hdx", OF z_Hib])
   assume z_Hid:"(~(?z_hdx \\in NodeSet))" (is "~?z_hie")
   have z_Hif: "(~(?z_hdx \\in ?z_hcr))" (is "~?z_hig")
   by (rule ssubst [where P="(\<lambda>zenon_Vyea. (~(?z_hdx \\in zenon_Vyea)))", OF z_Hcs z_Hid])
   have z_Hex: "((''sigma'' \\in DOMAIN((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))))&(((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
   by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
   have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
   by (rule conjD2 [OF z_Hex])
   have z_Hil: "(~((?z_hea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))]) \\in ?z_hcr))" (is "~?z_him")
   by (rule subst [where P="(\<lambda>zenon_Vzea. (~((zenon_Vzea[(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))]) \\in ?z_hcr)))", OF z_Hfa z_Hif])
   show FALSE
   proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hil])
    assume z_Hfk:"(~?z_hes)"
    show FALSE
    by (rule notE [OF z_Hfk z_Hes])
   next
    assume z_Hiw:"(~(cond((?z_her=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ?z_her) \\in ?z_hcr))" (is "~?z_hix")
    show FALSE
    proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "(?z_her=?z_hef)" "((told[''sigma''])[(((told[''arg''])[p])[2])])" "?z_her", OF z_Hiw])
     assume z_Heq:"(?z_her=?z_hef)"
     assume z_Hcm:"(~(((told[''sigma''])[(((told[''arg''])[p])[2])]) \\in ?z_hcr))" (is "~?z_hcn")
     show FALSE
     by (rule notE [OF z_Hfo z_Heq])
    next
     assume z_Hfo:"?z_hfo"
     assume z_Hiy:"(~(?z_her \\in ?z_hcr))" (is "~?z_hiz")
     have z_Hcs: "?z_hcs"
     by (rule zenon_in_funcset_1 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
     have z_Hcu: "(\\A zenon_Vpc:((zenon_Vpc \\in NodeSet)=>(((told[''sigma''])[zenon_Vpc]) \\in NodeSet)))" (is "\\A x : ?z_hda(x)")
     by (rule zenon_in_funcset_2 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
     have z_Hja: "?z_hda((CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x]))))))" (is "_=>?z_hjb")
     by (rule zenon_all_0 [of "?z_hda" "(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x])))))", OF z_Hcu])
     show FALSE
     proof (rule zenon_imply [OF z_Hja])
      assume z_Hfk:"(~?z_hes)"
      show FALSE
      by (rule notE [OF z_Hfk z_Hes])
     next
      assume z_Hjb:"?z_hjb"
      have z_Hiz: "?z_hiz"
      by (rule ssubst [where P="(\<lambda>zenon_Vvmb. (?z_her \\in zenon_Vvmb))", OF z_Hcs z_Hjb])
      show FALSE
      by (rule notE [OF z_Hiy z_Hiz])
     qed
    qed
   qed
  next
   assume z_Hdt:"(cond((((told[''sigma''])[?z_hdx])=?z_hef), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[?z_hdx]))~=?z_hdx)" (is "?z_hdu~=_")
   show FALSE
   by (rule zenon_L5_ [OF z_Hdt z_Hfo z_Hes z_Hdh])
  qed
 qed
 assume z_Hu:"(~((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg'']))) \\in [''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))" (is "~?z_hjf")
 have z_Hbe: "?z_hbe"
 by (rule zenon_and_1 [OF z_Hs])
 let ?z_hjg = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
 let ?z_hjh = "<<subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))), FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})), FuncSet(PROCESSES, {''F'', ''U'', BOT}), FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
 have z_Hji: "(1 \\in DOMAIN(?z_hjg))" by auto
 have z_Hjk: "((told[(?z_hjg[1])]) \\in (?z_hjh[1]))" (is "?z_hjk")
 by (rule zenon_in_recordset_field [OF z_Ht z_Hji])
 have z_Hjo: "((told[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))" (is "?z_hjo")
 using z_Hjk by auto
 have z_Hjp: "(2 \\in DOMAIN(?z_hjg))" by auto
 have z_Hjq: "((told[(?z_hjg[2])]) \\in (?z_hjh[2]))" (is "?z_hjq")
 by (rule zenon_in_recordset_field [OF z_Ht z_Hjp])
 have z_Hju: "((told[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))" (is "?z_hju")
 using z_Hjq by auto
 have z_Hjv: "(3 \\in DOMAIN(?z_hjg))" by auto
 have z_Hjx: "((told[(?z_hjg[3])]) \\in (?z_hjh[3]))" (is "?z_hjx")
 by (rule zenon_in_recordset_field [OF z_Ht z_Hjv])
 have z_Hkb: "((told[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))" (is "?z_hkb")
 using z_Hjx by auto
 have z_Hkc: "(4 \\in DOMAIN(?z_hjg))" by auto
 have z_Hke: "((told[(?z_hjg[4])]) \\in (?z_hjh[4]))" (is "?z_hke")
 by (rule zenon_in_recordset_field [OF z_Ht z_Hkc])
 have z_Hki: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hki")
 using z_Hke by auto
 have z_Hck: "((told[''sigma'']) \\in FuncSet(NodeSet, NodeSet))" (is "?z_hck")
 by (rule zenon_in_subsetof_0 [of "(told[''sigma''])" "FuncSet(NodeSet, NodeSet)" "(\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))", OF z_Hjo])
 have z_Hkj: "bAll(NodeSet, (\<lambda>i. (((told[''sigma''])[((told[''sigma''])[i])])=((told[''sigma''])[i]))))" (is "?z_hkj")
 by (rule zenon_in_subsetof_1 [of "(told[''sigma''])" "FuncSet(NodeSet, NodeSet)" "(\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))", OF z_Hjo])
 have z_Hdh_z_Hkj: "(\\A x:((x \\in NodeSet)=>(((told[''sigma''])[((told[''sigma''])[x])])=((told[''sigma''])[x])))) == ?z_hkj" (is "?z_hdh == _")
 by (unfold bAll_def)
 have z_Hdh: "?z_hdh" (is "\\A x : ?z_hdq(x)")
 by (unfold z_Hdh_z_Hkj, fact z_Hkj)
 let ?z_hdz = "(''sigma'' :> (Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))) @@ ''ret'' :> (except((told[''ret'']), p, ACK)) @@ ''op'' :> ((told[''op''])) @@ ''arg'' :> ((told[''arg''])))"
 have z_Hkn: "isAFcn(?z_hdz)" (is "?z_hkn")
 proof (rule zenon_nnpp)
  assume z_Hko: "(~?z_hkn)"
  show FALSE using z_Hko by auto
 qed
 have z_Hkp: "(DOMAIN(?z_hdz)={''sigma'', ''ret'', ''op'', ''arg''})" (is "?z_hez=?z_hkq")
 proof (rule zenon_nnpp)
  assume z_Hkr: "(?z_hez~=?z_hkq)"
  have z_Hkp: "(?z_hez=?z_hkq)"
  by auto
  have z_Hks: "(?z_hkq~=?z_hkq)"
  by (rule subst [where P="(\<lambda>zenon_Vsyc. (zenon_Vsyc~=?z_hkq))", OF z_Hkp z_Hkr])
  show FALSE
  by (rule zenon_noteq [OF z_Hks])
 qed
 have z_Hkw: "((?z_hdz[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))" (is "?z_hkw")
 proof (rule zenon_nnpp)
  assume z_Hkx: "(~?z_hkw)"
  show FALSE
  proof (rule zenon_notin_subsetof [of "(?z_hdz[''sigma''])" "FuncSet(NodeSet, NodeSet)" "(\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))", OF z_Hkx])
   assume z_Hky:"(~((?z_hdz[''sigma'']) \\in FuncSet(NodeSet, NodeSet)))" (is "~?z_hkz")
   have z_Hex: "((''sigma'' \\in ?z_hez)&((?z_hdz[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
   by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
   have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
   by (rule conjD2 [OF z_Hex])
   have z_Hla: "(~(?z_hea \\in FuncSet(NodeSet, NodeSet)))" (is "~?z_hlb")
   by (rule subst [where P="(\<lambda>zenon_Vhfc. (~(zenon_Vhfc \\in FuncSet(NodeSet, NodeSet))))", OF z_Hfa z_Hky])
   have z_Hcs: "(DOMAIN((told[''sigma'']))=NodeSet)" (is "?z_hcr=_")
   by (rule zenon_in_funcset_1 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
   have z_Hlg_z_Hbe: "(((told[''arg''])[p]) \\in Product(<<NodeSet, NodeSet>>)) == ?z_hbe" (is "?z_hlg == _")
   by (unfold prod_def)
   have z_Hlg: "?z_hlg"
   by (unfold z_Hlg_z_Hbe, fact z_Hbe)
   let ?z_hbf = "((told[''arg''])[p])"
   let ?z_hli = "<<NodeSet, NodeSet>>"
   have z_Hlj: "isASeq(?z_hli)" by auto
   have z_Hlk: "(1 \\in (1..Len(?z_hli)))" by auto
   have z_Hln: "((?z_hbf[1]) \\in (?z_hli[1]))" (is "?z_hln")
   by (rule zenon_in_product_i [OF z_Hlg z_Hlj z_Hlk])
   have z_Hlp: "((?z_hbf[1]) \\in NodeSet)" (is "?z_hlp")
   using z_Hln by auto
   have z_Hlq: "(2 \\in (1..Len(?z_hli)))" by auto
   have z_Hlr: "((?z_hbf[2]) \\in (?z_hli[2]))" (is "?z_hlr")
   by (rule zenon_in_product_i [OF z_Hlg z_Hlj z_Hlq])
   have z_Hct: "((?z_hbf[2]) \\in NodeSet)" (is "?z_hct")
   using z_Hlr by auto
   have z_Hlt: "((?z_hbf[1]) \\in ?z_hcr)" (is "?z_hlt")
   by (rule ssubst [where P="(\<lambda>zenon_Vve. ((?z_hbf[1]) \\in zenon_Vve))", OF z_Hcs z_Hlp])
   show FALSE
   proof (rule zenon_notin_funcset [of "?z_hea" "NodeSet" "NodeSet", OF z_Hla])
    assume z_Hlx:"(~isAFcn(?z_hea))" (is "~?z_hly")
    show FALSE
    by (rule zenon_notisafcn_fcn [of "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(?z_hbf[1])])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[i])))", OF z_Hlx])
   next
    assume z_Hlz:"(DOMAIN(?z_hea)~=NodeSet)" (is "?z_hma~=_")
    have z_Hmb: "(NodeSet~=NodeSet)"
    by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vqyc. (zenon_Vqyc~=NodeSet))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(?z_hbf[1])])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[i])))", OF z_Hlz])
    show FALSE
    by (rule zenon_noteq [OF z_Hmb])
   next
    assume z_Hmf:"(~(\\A zenon_Vwyb:((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))" (is "~(\\A x : ?z_hmm(x))")
    have z_Hmn: "(\\E zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))" (is "\\E x : ?z_hmp(x)")
    by (rule zenon_notallex_0 [of "?z_hmm", OF z_Hmf])
    have z_Hmq: "?z_hmp((CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet)))))" (is "~(?z_hms=>?z_hmt)")
    by (rule zenon_ex_choose_0 [of "?z_hmp", OF z_Hmn])
    have z_Hms: "?z_hms"
    by (rule zenon_notimply_0 [OF z_Hmq])
    have z_Hmu: "(~?z_hmt)"
    by (rule zenon_notimply_1 [OF z_Hmq])
    have z_Hmv: "(~((?z_hea[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))]) \\in ?z_hcr))" (is "~?z_hmw")
    by (rule ssubst [where P="(\<lambda>zenon_Vklc. (~((?z_hea[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))]) \\in zenon_Vklc)))", OF z_Hcs z_Hmu])
    show FALSE
    proof (rule notE [OF z_Hmv])
     have z_Hnc: "((?z_hbf[1])=(?z_hea[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))]))" (is "?z_heg=?z_hmx")
     proof (rule zenon_nnpp [of "(?z_heg=?z_hmx)"])
      assume z_Hnd:"(?z_heg~=?z_hmx)"
      show FALSE
      proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vay. (?z_heg~=zenon_Vay))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[?z_heg])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[i])))" "(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))", OF z_Hnd])
       assume z_Hnh:"(~?z_hms)"
       show FALSE
       by (rule notE [OF z_Hnh z_Hms])
      next
       assume z_Hni:"(?z_heg~=cond((((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])=((told[''sigma''])[?z_heg])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])))" (is "_~=?z_hnj")
       show FALSE
       proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vay. (?z_heg~=zenon_Vay))" "(((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])=((told[''sigma''])[?z_heg]))" "((told[''sigma''])[(?z_hbf[2])])" "((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])", OF z_Hni])
        assume z_Hnk:"(((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])=((told[''sigma''])[?z_heg]))" (is "?z_hnl=?z_hef")
        assume z_Hnm:"(?z_heg~=((told[''sigma''])[(?z_hbf[2])]))" (is "_~=?z_hco")
        show FALSE
        proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i])))" "(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))", OF z_Hmv])
         assume z_Hnh:"(~?z_hms)"
         show FALSE
         by (rule notE [OF z_Hnh z_Hms])
        next
         assume z_Hnn:"(~(?z_hnj \\in ?z_hcr))" (is "~?z_hno")
         show FALSE
         proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "(?z_hnl=?z_hef)" "?z_hco" "?z_hnl", OF z_Hnn])
          assume z_Hnk:"(?z_hnl=?z_hef)"
          assume z_Hcm:"(~(?z_hco \\in ?z_hcr))" (is "~?z_hcn")
          show FALSE
          by (rule zenon_L1_ [OF z_Hck z_Hcm z_Hcs z_Hct])
         next
          assume z_Hnp:"(?z_hnl~=?z_hef)"
          assume z_Hnq:"(~(?z_hnl \\in ?z_hcr))" (is "~?z_hnr")
          show FALSE
          by (rule notE [OF z_Hnp z_Hnk])
         qed
        qed
       next
        assume z_Hnp:"(((told[''sigma''])[(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))])~=((told[''sigma''])[?z_heg]))" (is "?z_hnl~=?z_hef")
        assume z_Hns:"(?z_heg~=?z_hnl)"
        show FALSE
        proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[i])))" "(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))", OF z_Hmv])
         assume z_Hnh:"(~?z_hms)"
         show FALSE
         by (rule notE [OF z_Hnh z_Hms])
        next
         assume z_Hnn:"(~(?z_hnj \\in ?z_hcr))" (is "~?z_hno")
         show FALSE
         proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "(?z_hnl=?z_hef)" "((told[''sigma''])[(?z_hbf[2])])" "?z_hnl", OF z_Hnn])
          assume z_Hnk:"(?z_hnl=?z_hef)"
          assume z_Hcm:"(~(((told[''sigma''])[(?z_hbf[2])]) \\in ?z_hcr))" (is "~?z_hcn")
          show FALSE
          by (rule notE [OF z_Hnp z_Hnk])
         next
          assume z_Hnp:"(?z_hnl~=?z_hef)"
          assume z_Hnq:"(~(?z_hnl \\in ?z_hcr))" (is "~?z_hnr")
          have z_Hcs: "(?z_hcr=NodeSet)"
          by (rule zenon_in_funcset_1 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
          have z_Hcu: "(\\A zenon_Vpc:((zenon_Vpc \\in NodeSet)=>(((told[''sigma''])[zenon_Vpc]) \\in NodeSet)))" (is "\\A x : ?z_hda(x)")
          by (rule zenon_in_funcset_2 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
          have z_Hnt: "?z_hda((CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet)))))" (is "_=>?z_hnu")
          by (rule zenon_all_0 [of "?z_hda" "(CHOOSE zenon_Vwyb:(~((zenon_Vwyb \\in NodeSet)=>((?z_hea[zenon_Vwyb]) \\in NodeSet))))", OF z_Hcu])
          show FALSE
          proof (rule zenon_imply [OF z_Hnt])
           assume z_Hnh:"(~?z_hms)"
           show FALSE
           by (rule notE [OF z_Hnh z_Hms])
          next
           assume z_Hnu:"?z_hnu"
           have z_Hnr: "?z_hnr"
           by (rule ssubst [where P="(\<lambda>zenon_Vqxc. (?z_hnl \\in zenon_Vqxc))", OF z_Hcs z_Hnu])
           show FALSE
           by (rule notE [OF z_Hnq z_Hnr])
          qed
         qed
        qed
       qed
      qed
     qed
     have z_Hmw: "?z_hmw"
     by (rule subst [where P="(\<lambda>zenon_Vted. (zenon_Vted \\in ?z_hcr))", OF z_Hnc], fact z_Hlt)
     thus "?z_hmw" .
    qed
   qed
  next
   assume z_Hob:"(~bAll(NodeSet, (\<lambda>i. (((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[i])])=((?z_hdz[''sigma''])[i])))))" (is "~?z_hoc")
   have z_Hoh_z_Hob: "(~(\\A x:((x \\in NodeSet)=>(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[x])])=((?z_hdz[''sigma''])[x]))))) == (~?z_hoc)" (is "?z_hoh == ?z_hob")
   by (unfold bAll_def)
   have z_Hoh: "?z_hoh" (is "~(\\A x : ?z_hoj(x))")
   by (unfold z_Hoh_z_Hob, fact z_Hob)
   have z_Hok: "(\\E x:(~((x \\in NodeSet)=>(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[x])])=((?z_hdz[''sigma''])[x])))))" (is "\\E x : ?z_hol(x)")
   by (rule zenon_notallex_0 [of "?z_hoj", OF z_Hoh])
   have z_Hom: "?z_hol((CHOOSE x:(~((x \\in NodeSet)=>(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[x])])=((?z_hdz[''sigma''])[x]))))))" (is "~(?z_hes=>?z_hon)")
   by (rule zenon_ex_choose_0 [of "?z_hol", OF z_Hok])
   have z_Hes: "?z_hes"
   by (rule zenon_notimply_0 [OF z_Hom])
   have z_Hoo: "(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[x])])=((?z_hdz[''sigma''])[x])))))])])~=((?z_hdz[''sigma''])[(CHOOSE x:(~((x \\in NodeSet)=>(((?z_hdz[''sigma''])[((?z_hdz[''sigma''])[x])])=((?z_hdz[''sigma''])[x])))))]))" (is "?z_hop~=?z_hdx")
   by (rule zenon_notimply_1 [OF z_Hom])
   have z_Hex: "((''sigma'' \\in ?z_hez)&((?z_hdz[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i]))))))" (is "?z_hey&?z_hfa")
   by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
   have z_Hfa: "?z_hfa" (is "?z_hdy=?z_hea")
   by (rule conjD2 [OF z_Hex])
   have z_Hib: "((?z_hea[?z_hdx])~=?z_hdx)" (is "?z_hic~=_")
   by (rule subst [where P="(\<lambda>zenon_Ved. ((zenon_Ved[?z_hdx])~=?z_hdx))", OF z_Hfa z_Hoo])
   have z_Hcs: "(DOMAIN((told[''sigma'']))=NodeSet)" (is "?z_hcr=_")
   by (rule zenon_in_funcset_1 [of "(told[''sigma''])" "NodeSet" "NodeSet", OF z_Hck])
   have z_Hlg_z_Hbe: "(((told[''arg''])[p]) \\in Product(<<NodeSet, NodeSet>>)) == ?z_hbe" (is "?z_hlg == _")
   by (unfold prod_def)
   have z_Hlg: "?z_hlg"
   by (unfold z_Hlg_z_Hbe, fact z_Hbe)
   let ?z_hbf = "((told[''arg''])[p])"
   let ?z_hli = "<<NodeSet, NodeSet>>"
   have z_Hlj: "isASeq(?z_hli)" by auto
   have z_Hlq: "(2 \\in (1..Len(?z_hli)))" by auto
   have z_Hlr: "((?z_hbf[2]) \\in (?z_hli[2]))" (is "?z_hlr")
   by (rule zenon_in_product_i [OF z_Hlg z_Hlj z_Hlq])
   have z_Hct: "((?z_hbf[2]) \\in NodeSet)" (is "?z_hct")
   using z_Hlr by auto
   show FALSE
   proof (rule zenon_noteq [of "?z_hdx"])
    have z_Hot: "(?z_hea=?z_hdy)"
    proof (rule zenon_nnpp [of "(?z_hea=?z_hdy)"])
     assume z_Hou:"(?z_hea~=?z_hdy)"
     have z_Hex: "(?z_hey&?z_hfa)"
     by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
     have z_Hfa: "?z_hfa"
     by (rule conjD2 [OF z_Hex])
     have z_Hov: "(?z_hea~=?z_hea)"
     by (rule subst [where P="(\<lambda>zenon_Vffc. (?z_hea~=zenon_Vffc))", OF z_Hfa z_Hou])
     show FALSE
     by (rule zenon_noteq [OF z_Hov])
    qed
    have z_Hoz: "(?z_hdx=(CHOOSE x:(~((x \\in NodeSet)=>((?z_hdy[(?z_hdy[x])])=(?z_hdy[x]))))))" (is "_=?z_hek")
    proof (rule zenon_nnpp [of "(?z_hdx=?z_hek)"])
     assume z_Hpa:"(?z_hdx~=?z_hek)"
     have z_Hex: "(?z_hey&?z_hfa)"
     by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
     have z_Hfa: "?z_hfa"
     by (rule conjD2 [OF z_Hex])
     have z_Hpb: "((?z_hea[?z_hek])~=?z_hek)" (is "?z_hfc~=_")
     by (rule subst [where P="(\<lambda>zenon_Vgj. ((zenon_Vgj[?z_hek])~=?z_hek))", OF z_Hfa z_Hpa])
     show FALSE
     proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vgj. (zenon_Vgj~=?z_hek))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(?z_hbf[1])])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[i])))" "?z_hek", OF z_Hpb])
      assume z_Hfk:"(~?z_hes)"
      show FALSE
      by (rule notE [OF z_Hfk z_Hes])
     next
      assume z_Hpi:"(cond((((told[''sigma''])[?z_hek])=((told[''sigma''])[(?z_hbf[1])])), ((told[''sigma''])[(?z_hbf[2])]), ((told[''sigma''])[?z_hek]))~=?z_hek)" (is "?z_hfm~=_")
      show FALSE
      proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vgj. (zenon_Vgj~=?z_hek))" "(((told[''sigma''])[?z_hek])=((told[''sigma''])[(?z_hbf[1])]))" "((told[''sigma''])[(?z_hbf[2])])" "((told[''sigma''])[?z_hek])", OF z_Hpi])
       assume z_Heq:"(((told[''sigma''])[?z_hek])=((told[''sigma''])[(?z_hbf[1])]))" (is "?z_her=?z_hef")
       assume z_Hpj:"(((told[''sigma''])[(?z_hbf[2])])~=?z_hek)" (is "?z_hco~=_")
       show FALSE
       proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Ved. (zenon_Ved~=?z_hdx))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i])))" "?z_hdx", OF z_Hib])
        assume z_Hid:"(~(?z_hdx \\in NodeSet))" (is "~?z_hie")
        have z_Hif: "(~(?z_hdx \\in ?z_hcr))" (is "~?z_hig")
        by (rule ssubst [where P="(\<lambda>zenon_Vyea. (~(?z_hdx \\in zenon_Vyea)))", OF z_Hcs z_Hid])
        have z_Hex: "(?z_hey&?z_hfa)"
        by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
        have z_Hfa: "?z_hfa"
        by (rule conjD2 [OF z_Hex])
        have z_Hil: "(~(?z_hfc \\in ?z_hcr))" (is "~?z_him")
        by (rule subst [where P="(\<lambda>zenon_Vzea. (~((zenon_Vzea[?z_hek]) \\in ?z_hcr)))", OF z_Hfa z_Hif])
        show FALSE
        proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "NodeSet" "(\<lambda>i. cond((((told[''sigma''])[i])=?z_hef), ?z_hco, ((told[''sigma''])[i])))" "?z_hek", OF z_Hil])
         assume z_Hfk:"(~?z_hes)"
         show FALSE
         by (rule notE [OF z_Hfk z_Hes])
        next
         assume z_Hiw:"(~(?z_hfm \\in ?z_hcr))" (is "~?z_hix")
         show FALSE
         proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vyx. (~(zenon_Vyx \\in ?z_hcr)))" "(?z_her=?z_hef)" "?z_hco" "?z_her", OF z_Hiw])
          assume z_Heq:"(?z_her=?z_hef)"
          assume z_Hcm:"(~(?z_hco \\in ?z_hcr))" (is "~?z_hcn")
          show FALSE
          by (rule zenon_L1_ [OF z_Hck z_Hcm z_Hcs z_Hct])
         next
          assume z_Hfo:"(?z_her~=?z_hef)"
          assume z_Hiy:"(~(?z_her \\in ?z_hcr))" (is "~?z_hiz")
          show FALSE
          by (rule notE [OF z_Hfo z_Heq])
         qed
        qed
       next
        assume z_Hdt:"(cond((((told[''sigma''])[?z_hdx])=?z_hef), ?z_hco, ((told[''sigma''])[?z_hdx]))~=?z_hdx)" (is "?z_hdu~=_")
        show FALSE
        by (rule zenon_L3_ [OF z_Hdt z_Hct z_Hdh z_Heq z_Hes])
       qed
      next
       assume z_Hfo:"(((told[''sigma''])[?z_hek])~=((told[''sigma''])[(?z_hbf[1])]))" (is "?z_her~=?z_hef")
       assume z_Hpk:"(?z_her~=?z_hek)"
       show FALSE
       by (rule zenon_L6_ [OF z_Hib z_Hdh z_Hes z_Hcs z_Hck z_Hfo])
      qed
     qed
    qed
    have z_Hoo: "(?z_hop~=?z_hdx)"
    by (rule subst [where P="(\<lambda>zenon_Ved. ((zenon_Ved[?z_hdx])~=?z_hdx))", OF z_Hot], fact z_Hib)
    have z_Hpl: "(?z_hdx~=?z_hdx)"
    by (rule subst [where P="(\<lambda>zenon_Vved. ((?z_hdy[zenon_Vved])~=?z_hdx))", OF z_Hoz], fact z_Hoo)
    thus "(?z_hdx~=?z_hdx)" .
   qed
  qed
 qed
 have z_Hpq: "((?z_hdz[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))" (is "?z_hpq")
 proof (rule zenon_nnpp)
  assume z_Hps: "(~?z_hpq)"
  have z_Hpt: "((''ret'' \\in ?z_hez)&((?z_hdz[''ret''])=except((told[''ret'']), p, ACK)))" (is "?z_hpu&?z_hpv")
  by (rule zenon_recfield_1, rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
  have z_Hpv: "?z_hpv" (is "?z_hpr=?z_hei")
  by (rule conjD2 [OF z_Hpt])
  have z_Hpw: "(~(?z_hei \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))))" (is "~?z_hpx")
  by (rule subst [where P="(\<lambda>zenon_Vxyc. (~(zenon_Vxyc \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))))", OF z_Hpv z_Hps])
  show FALSE
  proof (rule zenon_except_notin_funcset [of "(told[''ret''])" "p" "ACK" "PROCESSES" "((NodeSet \\cup {BOT}) \\cup {ACK})", OF z_Hpw])
   assume z_Hqc:"(~?z_hju)"
   show FALSE
   by (rule notE [OF z_Hqc z_Hju])
  next
   assume z_Hqd:"(~(ACK \\in ((NodeSet \\cup {BOT}) \\cup {ACK})))" (is "~?z_hqe")
   have z_Hqf: "(~(ACK \\in {ACK}))" (is "~?z_hqg")
   by (rule zenon_notin_cup_1 [of "ACK" "(NodeSet \\cup {BOT})" "{ACK}", OF z_Hqd])
   have z_Hqh: "(ACK~=ACK)"
   by (rule zenon_notin_addElt_0 [of "ACK" "ACK" "{}", OF z_Hqf])
   show FALSE
   by (rule zenon_noteq [OF z_Hqh])
  qed
 qed
 have z_Hqj: "((?z_hdz[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))" (is "?z_hqj")
 proof (rule zenon_nnpp)
  assume z_Hql: "(~?z_hqj)"
  have z_Hqm: "((''op'' \\in ?z_hez)&((?z_hdz[''op''])=(told[''op''])))" (is "?z_hqn&?z_hqo")
  by (rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
  have z_Hqo: "?z_hqo" (is "?z_hqk=?z_hej")
  by (rule conjD2 [OF z_Hqm])
  have z_Hqp: "(~?z_hkb)"
  by (rule subst [where P="(\<lambda>zenon_Vuyc. (~(zenon_Vuyc \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))))", OF z_Hqo z_Hql])
  show FALSE
  by (rule notE [OF z_Hqp z_Hkb])
 qed
 have z_Hqu: "((?z_hdz[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hqu")
 proof (rule zenon_nnpp)
  assume z_Hqw: "(~?z_hqu)"
  have z_Hqx: "((''arg'' \\in ?z_hez)&((?z_hdz[''arg''])=(told[''arg''])))" (is "?z_hqy&?z_hqz")
  by (rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
  have z_Hqz: "?z_hqz" (is "?z_hqv=?z_hbg")
  by (rule conjD2 [OF z_Hqx])
  have z_Hra: "(~?z_hki)"
  by (rule subst [where P="(\<lambda>zenon_Vtc. (~(zenon_Vtc \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))))", OF z_Hqz z_Hqw])
  show FALSE
  by (rule notE [OF z_Hra z_Hki])
 qed
 show FALSE by (rule notE [OF z_Hu],
                rule zenon_inrecordsetI4 [OF z_Hkn z_Hkp z_Hkw z_Hpq z_Hqj z_Hqu ])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
end
