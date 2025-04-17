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

lemma ob'16:
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
(* usable definition StateSet suppressed *)
(* usable definition ReturnSet suppressed *)
(* usable definition OpSet suppressed *)
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
(* usable definition EdgeOK suppressed *)
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Inv suppressed *)
assumes v'106: "(Inv)"
assumes v'107: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'109: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'110: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'114: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'115: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'134: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1))))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p_1)))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p_1)))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'140: "(((a_punde_1a) \<noteq> (p)))"
assumes v'141: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'144: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'145: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'146: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'147: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'148: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'149: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
shows "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))"(is "PROP ?ob'16")
proof -
ML_command {* writeln "*** TLAPS ENTER 16"; *}
show "PROP ?ob'16"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_f013dc.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_f013dc.znn.out
;; obligation #16
$hyp "v'106" Inv
$hyp "v'107" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'109" (\/ (/\ (TLA.bEx NodeSet ((i) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_pchash_primea (TLA.except pc p "F1"))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "F"))
(= (TLA.fapply t "arg") (TLA.except (TLA.fapply a_tunde_olda "arg") p i))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_dhash_primea d)))
(/\ (TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_pchash_primea (TLA.except pc p "U1")) (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "U"))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply a_tunde_olda "arg") p (TLA.tuple i j)))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'110" (= (TLA.fapply pc p)
"0")
$hyp "v'114" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
$hyp "v'115" (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "v'134" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p_1)
"U8") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8")
$hyp "v'140" (-. (= a_punde_1a p))
$hyp "v'141" (= (TLA.fapply pc a_punde_1a)
"U8")
$hyp "told_in" (TLA.in told M)
$hyp "v'144" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'145" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'146" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'147" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'148" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'149" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$goal (TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_h889ac679c3d5fa68ecd826c512cbf0a&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&(a_Mhash_primea \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))" (is "_&?z_hw")
 using v'114 by blast
 have z_Hh:"bAll(PROCESSES, (\<lambda>p_1. bAll(M, (\<lambda>t. (((pc[p_1])=''U8'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&((((t[''sigma''])[(((t[''arg''])[p_1])[1])])=((t[''sigma''])[(a_uunde_Ua[p_1])]))&((((t[''sigma''])[(((t[''arg''])[p_1])[2])])=((t[''sigma''])[(a_vunde_Ua[p_1])]))&(EdgeOK((((t[''arg''])[p_1])[1]), (a_uunde_Ua[p_1]))&EdgeOK((((t[''arg''])[p_1])[2]), (a_vunde_Ua[p_1])))))))))))))" (is "?z_hh")
 using v'134 by blast
 have z_Hl:"(a_punde_1a~=p)"
 using v'140 by blast
 have z_Hm:"((pc[a_punde_1a])=''U8'')" (is "?z_hed=?z_hcs")
 using v'141 by blast
 have z_Hn:"(told \\in M)" (is "?z_hn")
 using told_in by blast
 have z_Hj:"(t \\in a_Mhash_primea)" (is "?z_hj")
 using t_in by blast
 have z_Hi:"(a_punde_1a \\in PROCESSES)" (is "?z_hi")
 using a_punde_1a_in by blast
 have z_Ho:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hef|?z_heq")
 using v'144 by blast
 have zenon_L1_: "(DOMAIN((t[''arg'']))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> ?z_hi ==> (((told[''arg''])[a_punde_1a])~=((t[''arg''])[a_punde_1a])) ==> (a_punde_1a~=p) ==> (\\A zenon_Vatf:(((t[''arg''])[zenon_Vatf])=(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))[zenon_Vatf]))) ==> FALSE" (is "?z_hfb ==> ?z_hfd ==> _ ==> ?z_hfl ==> ?z_hl ==> ?z_hfo ==> FALSE")
 proof -
  assume z_Hfb:"?z_hfb" (is "?z_hfc=_")
  assume z_Hfd:"?z_hfd" (is "?z_hdg=?z_hfe")
  assume z_Hi:"?z_hi"
  assume z_Hfl:"?z_hfl" (is "?z_hfm~=?z_hfn")
  assume z_Hl:"?z_hl"
  assume z_Hfo:"?z_hfo" (is "\\A x : ?z_hft(x)")
  have z_Hfu: "(\\A zenon_Vlk:((zenon_Vlk \\in ?z_hfc)<=>(zenon_Vlk \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
  by (rule zenon_setequal_0 [of "?z_hfc" "PROCESSES", OF z_Hfb])
  have z_Hga: "?z_hft(a_punde_1a)" (is "_=?z_hgb")
  by (rule zenon_all_0 [of "?z_hft" "a_punde_1a", OF z_Hfo])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vfpc. (?z_hfn=zenon_Vfpc))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hga])
   assume z_Hgf:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgf")
   assume z_Hgh:"(p=a_punde_1a)"
   assume z_Hgi:"(?z_hfn=(CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, x)))))" (is "_=?z_hff")
   show FALSE
   by (rule zenon_eqsym [OF z_Hgh z_Hl])
  next
   assume z_Hgf:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgf")
   assume z_Hgj:"(p~=a_punde_1a)"
   assume z_Hgk:"(?z_hfn=?z_hfm)"
   show FALSE
   by (rule zenon_eqsym [OF z_Hgk z_Hfl])
  next
   assume z_Hgl:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgf")
   have z_Hgm: "?z_hfz(a_punde_1a)" (is "?z_hgn<=>_")
   by (rule zenon_all_0 [of "?z_hfz" "a_punde_1a", OF z_Hfu])
   show FALSE
   proof (rule zenon_equiv [OF z_Hgm])
    assume z_Hgo:"(~?z_hgn)"
    assume z_Hgp:"(~?z_hi)"
    show FALSE
    by (rule notE [OF z_Hgp z_Hi])
   next
    assume z_Hgn:"?z_hgn"
    assume z_Hi:"?z_hi"
    have z_Hgq: "(a_punde_1a \\in DOMAIN(?z_hfe))" (is "?z_hgq")
    by (rule subst [where P="(\<lambda>zenon_Vfqc. (a_punde_1a \\in DOMAIN(zenon_Vfqc)))", OF z_Hfd z_Hgn])
    have z_Hgf: "?z_hgf"
    by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Veqc. (a_punde_1a \\in zenon_Veqc))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, x))))", OF z_Hgq])
    show FALSE
    by (rule notE [OF z_Hgl z_Hgf])
   qed
  qed
 qed
 have zenon_L2_: "(DOMAIN((t[''arg'']))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> ?z_hi ==> (((told[''arg''])[a_punde_1a])~=((t[''arg''])[a_punde_1a])) ==> (a_punde_1a~=p) ==> (\\A zenon_Vcd:(((t[''arg''])[zenon_Vcd])=(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)[zenon_Vcd]))) ==> FALSE" (is "?z_hfb ==> ?z_hgz ==> _ ==> ?z_hfl ==> ?z_hl ==> ?z_hho ==> FALSE")
 proof -
  assume z_Hfb:"?z_hfb" (is "?z_hfc=_")
  assume z_Hgz:"?z_hgz" (is "?z_hdg=?z_hha")
  assume z_Hi:"?z_hi"
  assume z_Hfl:"?z_hfl" (is "?z_hfm~=?z_hfn")
  assume z_Hl:"?z_hl"
  assume z_Hho:"?z_hho" (is "\\A x : ?z_hht(x)")
  have z_Hfu: "(\\A zenon_Vlk:((zenon_Vlk \\in ?z_hfc)<=>(zenon_Vlk \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
  by (rule zenon_setequal_0 [of "?z_hfc" "PROCESSES", OF z_Hfb])
  have z_Hhu: "?z_hht(a_punde_1a)" (is "_=?z_hhv")
  by (rule zenon_all_0 [of "?z_hht" "a_punde_1a", OF z_Hho])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vfpc. (?z_hfn=zenon_Vfpc))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hhu])
   assume z_Hgf:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgf")
   assume z_Hgh:"(p=a_punde_1a)"
   assume z_Hhw:"(?z_hfn=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hhb")
   show FALSE
   by (rule zenon_eqsym [OF z_Hgh z_Hl])
  next
   assume z_Hgf:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgf")
   assume z_Hgj:"(p~=a_punde_1a)"
   assume z_Hgk:"(?z_hfn=?z_hfm)"
   show FALSE
   by (rule zenon_eqsym [OF z_Hgk z_Hfl])
  next
   assume z_Hgl:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgf")
   have z_Hgm: "?z_hfz(a_punde_1a)" (is "?z_hgn<=>_")
   by (rule zenon_all_0 [of "?z_hfz" "a_punde_1a", OF z_Hfu])
   show FALSE
   proof (rule zenon_equiv [OF z_Hgm])
    assume z_Hgo:"(~?z_hgn)"
    assume z_Hgp:"(~?z_hi)"
    show FALSE
    by (rule notE [OF z_Hgp z_Hi])
   next
    assume z_Hgn:"?z_hgn"
    assume z_Hi:"?z_hi"
    have z_Hhx: "(a_punde_1a \\in DOMAIN(?z_hha))" (is "?z_hhx")
    by (rule subst [where P="(\<lambda>zenon_Vfqc. (a_punde_1a \\in DOMAIN(zenon_Vfqc)))", OF z_Hgz z_Hgn])
    have z_Hgf: "?z_hgf"
    by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Veqc. (a_punde_1a \\in zenon_Veqc))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hdg=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hdg=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>", OF z_Hhx])
    show FALSE
    by (rule notE [OF z_Hgl z_Hgf])
   qed
  qed
 qed
 assume z_Hu:"(~(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))" (is "~?z_hhz")
 have z_Hw: "?z_hw" (is "_&?z_hy")
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hy: "?z_hy" (is "_&?z_hba")
 by (rule zenon_and_1 [OF z_Hw])
 have z_Hba: "?z_hba" (is "_&?z_hbc")
 by (rule zenon_and_1 [OF z_Hy])
 have z_Hbc: "?z_hbc" (is "_&?z_hbe")
 by (rule zenon_and_1 [OF z_Hba])
 have z_Hbe: "?z_hbe" (is "_&?z_hbg")
 by (rule zenon_and_1 [OF z_Hbc])
 have z_Hbg: "?z_hbg" (is "_&?z_hbi")
 by (rule zenon_and_1 [OF z_Hbe])
 have z_Hbi: "?z_hbi" (is "_&?z_hbk")
 by (rule zenon_and_1 [OF z_Hbg])
 have z_Hbk: "?z_hbk" (is "_&?z_hbm")
 by (rule zenon_and_1 [OF z_Hbi])
 have z_Hbm: "?z_hbm" (is "_&?z_hbo")
 by (rule zenon_and_1 [OF z_Hbk])
 have z_Hbo: "?z_hbo" (is "_&?z_hbq")
 by (rule zenon_and_1 [OF z_Hbm])
 have z_Hbq: "?z_hbq"
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hia: "(a_Mhash_primea \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hia")
 by (rule zenon_in_SUBSET_0 [of "a_Mhash_primea" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbq])
 have z_Hib_z_Hia: "bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hia" (is "?z_hib == _")
 by (unfold subset_def)
 have z_Hib: "?z_hib"
 by (unfold z_Hib_z_Hia, fact z_Hia)
 have z_Hie_z_Hh: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. (((pc[x])=?z_hcs)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&((((t[''sigma''])[(((t[''arg''])[x])[1])])=((t[''sigma''])[(a_uunde_Ua[x])]))&((((t[''sigma''])[(((t[''arg''])[x])[2])])=((t[''sigma''])[(a_vunde_Ua[x])]))&(EdgeOK((((t[''arg''])[x])[1]), (a_uunde_Ua[x]))&EdgeOK((((t[''arg''])[x])[2]), (a_vunde_Ua[x]))))))))))))) == ?z_hh" (is "?z_hie == _")
 by (unfold bAll_def)
 have z_Hie: "?z_hie" (is "\\A x : ?z_hjk(x)")
 by (unfold z_Hie_z_Hh, fact z_Hh)
 show FALSE
 proof (rule zenon_or [OF z_Ho])
  assume z_Hef:"?z_hef" (is "?z_heg&?z_hek")
  have z_Hek: "?z_hek"
  by (rule zenon_and_1 [OF z_Hef])
  have z_Hjl_z_Hek: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_hek" (is "?z_hjl == _")
  by (unfold bEx_def)
  have z_Hjl: "?z_hjl" (is "\\E x : ?z_hjm(x)")
  by (unfold z_Hjl_z_Hek, fact z_Hek)
  have z_Hjn: "?z_hjm((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjo&?z_hfd")
  by (rule zenon_ex_choose_0 [of "?z_hjm", OF z_Hjl])
  have z_Hfd: "?z_hfd" (is "?z_hdg=?z_hfe")
  by (rule zenon_and_1 [OF z_Hjn])
  have z_Hjp_z_Hu: "(~((?z_hdg[a_punde_1a]) \\in Product(<<NodeSet, NodeSet>>))) == (~?z_hhz)" (is "?z_hjp == ?z_hu")
  by (unfold prod_def)
  have z_Hjp: "?z_hjp" (is "~?z_hjq")
  by (unfold z_Hjp_z_Hu, fact z_Hu)
  have z_Hjt: "?z_hjk(a_punde_1a)" (is "_=>?z_hju")
  by (rule zenon_all_0 [of "?z_hjk" "a_punde_1a", OF z_Hie])
  show FALSE
  proof (rule zenon_imply [OF z_Hjt])
   assume z_Hgp:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgp z_Hi])
  next
   assume z_Hju:"?z_hju"
   have z_Hjv: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjv")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hib z_Hj])
   let ?z_hjw = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjx = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjy: "(4 \\in DOMAIN(?z_hjw))" by auto
   have z_Hkb: "((t[(?z_hjw[4])]) \\in (?z_hjx[4]))" (is "?z_hkb")
   by (rule zenon_in_recordset_field [OF z_Hjv z_Hjy])
   have z_Hkf: "(?z_hdg \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hkf")
   using z_Hkb by auto
   have z_Hkg_z_Hkf: "(?z_hdg \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hkf" (is "?z_hkg == _")
   by (unfold prod_def)
   have z_Hkg: "?z_hkg"
   by (unfold z_Hkg_z_Hkf, fact z_Hkf)
   have z_Hfb: "(DOMAIN(?z_hdg)=PROCESSES)" (is "?z_hfc=_")
   by (rule zenon_in_funcset_1 [of "?z_hdg" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hkg])
   have z_Hkj: "(((isAFcn(?z_hdg)<=>isAFcn(?z_hfe))&(?z_hfc=DOMAIN(?z_hfe)))&(\\A zenon_Vatf:((?z_hdg[zenon_Vatf])=(?z_hfe[zenon_Vatf]))))" (is "?z_hkk&?z_hfo")
   by (rule zenon_funequal_0 [of "?z_hdg" "?z_hfe", OF z_Hfd])
   have z_Hfo: "?z_hfo" (is "\\A x : ?z_hft(x)")
   by (rule zenon_and_1 [OF z_Hkj])
   have z_Hkp: "((?z_hed=?z_hcs)=>((((told[''ret''])[a_punde_1a])=BOT)&((((told[''op''])[a_punde_1a])=''U'')&((((told[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&((((told[''sigma''])[(((told[''arg''])[a_punde_1a])[1])])=((told[''sigma''])[(a_uunde_Ua[a_punde_1a])]))&((((told[''sigma''])[(((told[''arg''])[a_punde_1a])[2])])=((told[''sigma''])[(a_vunde_Ua[a_punde_1a])]))&(EdgeOK((((told[''arg''])[a_punde_1a])[1]), (a_uunde_Ua[a_punde_1a]))&EdgeOK((((told[''arg''])[a_punde_1a])[2]), (a_vunde_Ua[a_punde_1a])))))))))" (is "?z_hm=>?z_hkq")
   by (rule zenon_all_in_0 [of "M" "(\<lambda>t. (?z_hm=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[1])])=((t[''sigma''])[(a_uunde_Ua[a_punde_1a])]))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[2])])=((t[''sigma''])[(a_vunde_Ua[a_punde_1a])]))&(EdgeOK((((t[''arg''])[a_punde_1a])[1]), (a_uunde_Ua[a_punde_1a]))&EdgeOK((((t[''arg''])[a_punde_1a])[2]), (a_vunde_Ua[a_punde_1a]))))))))))", OF z_Hju z_Hn])
   show FALSE
   proof (rule zenon_imply [OF z_Hkp])
    assume z_Hml:"(?z_hed~=?z_hcs)"
    show FALSE
    by (rule notE [OF z_Hml z_Hm])
   next
    assume z_Hkq:"?z_hkq" (is "?z_hkr&?z_hku")
    have z_Hku: "?z_hku" (is "?z_hkv&?z_hkx")
    by (rule zenon_and_1 [OF z_Hkq])
    have z_Hkx: "?z_hkx" (is "?z_hky&?z_hkz")
    by (rule zenon_and_1 [OF z_Hku])
    have z_Hky: "?z_hky"
    by (rule zenon_and_0 [OF z_Hkx])
    have z_Hmm_z_Hky: "(((told[''arg''])[a_punde_1a]) \\in Product(<<NodeSet, NodeSet>>)) == ?z_hky" (is "?z_hmm == _")
    by (unfold prod_def)
    have z_Hmm: "?z_hmm"
    by (unfold z_Hmm_z_Hky, fact z_Hky)
    show FALSE
    proof (rule notE [OF z_Hjp])
     have z_Hmn: "(((told[''arg''])[a_punde_1a])=(?z_hdg[a_punde_1a]))" (is "?z_hfm=?z_hfn")
     proof (rule zenon_nnpp [of "(?z_hfm=?z_hfn)"])
      assume z_Hfl:"(?z_hfm~=?z_hfn)"
      show FALSE
      by (rule zenon_L1_ [OF z_Hfb z_Hfd z_Hi z_Hfl z_Hl z_Hfo])
     qed
     have z_Hjq: "?z_hjq"
     by (rule subst [where P="(\<lambda>zenon_Vdul. (zenon_Vdul \\in Product(<<NodeSet, NodeSet>>)))", OF z_Hmn], fact z_Hmm)
     thus "?z_hjq" .
    qed
   qed
  qed
 next
  assume z_Heq:"?z_heq" (is "?z_her&?z_het")
  have z_Het: "?z_het"
  by (rule zenon_and_1 [OF z_Heq])
  have z_Hmr_z_Het: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_het" (is "?z_hmr == _")
  by (unfold bEx_def)
  have z_Hmr: "?z_hmr" (is "\\E x : ?z_hms(x)")
  by (unfold z_Hmr_z_Het, fact z_Het)
  have z_Hmt: "?z_hms((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hmu&?z_hmv")
  by (rule zenon_ex_choose_0 [of "?z_hms", OF z_Hmr])
  have z_Hmv: "?z_hmv"
  by (rule zenon_and_1 [OF z_Hmt])
  have z_Hmw_z_Hmv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hmv" (is "?z_hmw == _")
  by (unfold bEx_def)
  have z_Hmw: "?z_hmw" (is "\\E x : ?z_hmx(x)")
  by (unfold z_Hmw_z_Hmv, fact z_Hmv)
  have z_Hmy: "?z_hmx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hmz&?z_hgz")
  by (rule zenon_ex_choose_0 [of "?z_hmx", OF z_Hmw])
  have z_Hgz: "?z_hgz" (is "?z_hdg=?z_hha")
  by (rule zenon_and_1 [OF z_Hmy])
  have z_Hjp_z_Hu: "(~((?z_hdg[a_punde_1a]) \\in Product(<<NodeSet, NodeSet>>))) == (~?z_hhz)" (is "?z_hjp == ?z_hu")
  by (unfold prod_def)
  have z_Hjp: "?z_hjp" (is "~?z_hjq")
  by (unfold z_Hjp_z_Hu, fact z_Hu)
  have z_Hjt: "?z_hjk(a_punde_1a)" (is "_=>?z_hju")
  by (rule zenon_all_0 [of "?z_hjk" "a_punde_1a", OF z_Hie])
  show FALSE
  proof (rule zenon_imply [OF z_Hjt])
   assume z_Hgp:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgp z_Hi])
  next
   assume z_Hju:"?z_hju"
   have z_Hjv: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjv")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hib z_Hj])
   let ?z_hjw = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjx = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjy: "(4 \\in DOMAIN(?z_hjw))" by auto
   have z_Hkb: "((t[(?z_hjw[4])]) \\in (?z_hjx[4]))" (is "?z_hkb")
   by (rule zenon_in_recordset_field [OF z_Hjv z_Hjy])
   have z_Hkf: "(?z_hdg \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hkf")
   using z_Hkb by auto
   have z_Hkg_z_Hkf: "(?z_hdg \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hkf" (is "?z_hkg == _")
   by (unfold prod_def)
   have z_Hkg: "?z_hkg"
   by (unfold z_Hkg_z_Hkf, fact z_Hkf)
   have z_Hfb: "(DOMAIN(?z_hdg)=PROCESSES)" (is "?z_hfc=_")
   by (rule zenon_in_funcset_1 [of "?z_hdg" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hkg])
   have z_Hna: "(((isAFcn(?z_hdg)<=>isAFcn(?z_hha))&(?z_hfc=DOMAIN(?z_hha)))&(\\A zenon_Vcd:((?z_hdg[zenon_Vcd])=(?z_hha[zenon_Vcd]))))" (is "?z_hnb&?z_hho")
   by (rule zenon_funequal_0 [of "?z_hdg" "?z_hha", OF z_Hgz])
   have z_Hho: "?z_hho" (is "\\A x : ?z_hht(x)")
   by (rule zenon_and_1 [OF z_Hna])
   have z_Hkp: "((?z_hed=?z_hcs)=>((((told[''ret''])[a_punde_1a])=BOT)&((((told[''op''])[a_punde_1a])=''U'')&((((told[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&((((told[''sigma''])[(((told[''arg''])[a_punde_1a])[1])])=((told[''sigma''])[(a_uunde_Ua[a_punde_1a])]))&((((told[''sigma''])[(((told[''arg''])[a_punde_1a])[2])])=((told[''sigma''])[(a_vunde_Ua[a_punde_1a])]))&(EdgeOK((((told[''arg''])[a_punde_1a])[1]), (a_uunde_Ua[a_punde_1a]))&EdgeOK((((told[''arg''])[a_punde_1a])[2]), (a_vunde_Ua[a_punde_1a])))))))))" (is "?z_hm=>?z_hkq")
   by (rule zenon_all_in_0 [of "M" "(\<lambda>t. (?z_hm=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[1])])=((t[''sigma''])[(a_uunde_Ua[a_punde_1a])]))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[2])])=((t[''sigma''])[(a_vunde_Ua[a_punde_1a])]))&(EdgeOK((((t[''arg''])[a_punde_1a])[1]), (a_uunde_Ua[a_punde_1a]))&EdgeOK((((t[''arg''])[a_punde_1a])[2]), (a_vunde_Ua[a_punde_1a]))))))))))", OF z_Hju z_Hn])
   show FALSE
   proof (rule zenon_imply [OF z_Hkp])
    assume z_Hml:"(?z_hed~=?z_hcs)"
    show FALSE
    by (rule notE [OF z_Hml z_Hm])
   next
    assume z_Hkq:"?z_hkq" (is "?z_hkr&?z_hku")
    have z_Hku: "?z_hku" (is "?z_hkv&?z_hkx")
    by (rule zenon_and_1 [OF z_Hkq])
    have z_Hkx: "?z_hkx" (is "?z_hky&?z_hkz")
    by (rule zenon_and_1 [OF z_Hku])
    have z_Hky: "?z_hky"
    by (rule zenon_and_0 [OF z_Hkx])
    have z_Hmm_z_Hky: "(((told[''arg''])[a_punde_1a]) \\in Product(<<NodeSet, NodeSet>>)) == ?z_hky" (is "?z_hmm == _")
    by (unfold prod_def)
    have z_Hmm: "?z_hmm"
    by (unfold z_Hmm_z_Hky, fact z_Hky)
    show FALSE
    proof (rule notE [OF z_Hjp])
     have z_Hmn: "(((told[''arg''])[a_punde_1a])=(?z_hdg[a_punde_1a]))" (is "?z_hfm=?z_hfn")
     proof (rule zenon_nnpp [of "(?z_hfm=?z_hfn)"])
      assume z_Hfl:"(?z_hfm~=?z_hfn)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hfb z_Hgz z_Hi z_Hfl z_Hl z_Hho])
     qed
     have z_Hjq: "?z_hjq"
     by (rule subst [where P="(\<lambda>zenon_Vdul. (zenon_Vdul \\in Product(<<NodeSet, NodeSet>>)))", OF z_Hmn], fact z_Hmm)
     thus "?z_hjq" .
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 16"; *} qed
lemma ob'20:
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
(* usable definition StateSet suppressed *)
(* usable definition ReturnSet suppressed *)
(* usable definition OpSet suppressed *)
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
(* usable definition EdgeOK suppressed *)
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Inv suppressed *)
assumes v'106: "(Inv)"
assumes v'107: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'109: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'110: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'114: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'115: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'134: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1))))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p_1)))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p_1)))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'140: "(((a_punde_1a) \<noteq> (p)))"
assumes v'141: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'144: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'145: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'146: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'147: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'148: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'149: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
assumes v'155: "(((a_h1bdf44d80eb26a2b5c73b1bc2a7916a ((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))) :: c)) & ((a_h1bdf44d80eb26a2b5c73b1bc2a7916a ((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))) :: c)))"
assumes v'156: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'157: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'160: "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))"
shows "(((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))"(is "PROP ?ob'20")
proof -
ML_command {* writeln "*** TLAPS ENTER 20"; *}
show "PROP ?ob'20"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_948c97.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_948c97.znn.out
;; obligation #20
$hyp "v'106" Inv
$hyp "v'107" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'109" (\/ (/\ (TLA.bEx NodeSet ((i) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_pchash_primea (TLA.except pc p "F1"))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "F"))
(= (TLA.fapply t "arg") (TLA.except (TLA.fapply a_tunde_olda "arg") p i))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_dhash_primea d)))
(/\ (TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_pchash_primea (TLA.except pc p "U1")) (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "U"))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply a_tunde_olda "arg") p (TLA.tuple i j)))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'110" (= (TLA.fapply pc p)
"0")
$hyp "v'114" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
$hyp "v'115" (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "v'134" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p_1)
"U8") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8")
$hyp "v'140" (-. (= a_punde_1a p))
$hyp "v'141" (= (TLA.fapply pc a_punde_1a)
"U8")
$hyp "told_in" (TLA.in told M)
$hyp "v'144" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'145" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'146" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'147" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'148" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'149" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$hyp "v'155" (/\ (a_h1bdf44d80eb26a2b5c73b1bc2a7916a (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h1bdf44d80eb26a2b5c73b1bc2a7916a (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'156" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
$hyp "v'157" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'160" (TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
$goal (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_h889ac679c3d5fa68ecd826c512cbf0a&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&(a_Mhash_primea \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))" (is "_&?z_hba")
 using v'114 by blast
 have z_Ho:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hcn|?z_hdd")
 using v'144 by blast
 have z_Hj:"(t \\in a_Mhash_primea)" (is "?z_hj")
 using t_in by blast
 have z_Hi:"(a_punde_1a \\in PROCESSES)" (is "?z_hi")
 using a_punde_1a_in by blast
 have z_Hl:"(a_punde_1a~=p)"
 using v'140 by blast
 have z_Hs:"((t[''sigma''])=(told[''sigma'']))" (is "?z_hdq=?z_hdr")
 using v'148 by blast
 have z_Hv:"((?z_hdr[(((told[''arg''])[a_punde_1a])[1])])=(?z_hdr[(a_uunde_Uhash_primea[a_punde_1a])]))" (is "?z_hds=?z_hdw")
 using v'156 by blast
 have zenon_L1_: "(?z_hdw~=(?z_hdq[(a_uunde_Uhash_primea[a_punde_1a])])) ==> (?z_hdq=?z_hdr) ==> FALSE" (is "?z_hdz ==> ?z_hs ==> FALSE")
 proof -
  assume z_Hdz:"?z_hdz" (is "_~=?z_hea")
  assume z_Hs:"?z_hs"
  show FALSE
  proof (rule zenon_noteq [of "?z_hea"])
   have z_Heb: "(?z_hdr=?z_hdq)"
   by (rule sym [OF z_Hs])
   have z_Hec: "(?z_hea~=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vbhd. ((zenon_Vbhd[(a_uunde_Uhash_primea[a_punde_1a])])~=?z_hea))", OF z_Heb], fact z_Hdz)
   thus "(?z_hea~=?z_hea)" .
  qed
 qed
 assume z_Hy:"((?z_hdq[(((t[''arg''])[a_punde_1a])[1])])~=(?z_hdq[(a_uunde_Uhash_primea[a_punde_1a])]))" (is "?z_heh~=?z_hea")
 have z_Hba: "?z_hba" (is "_&?z_hbc")
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hbc: "?z_hbc" (is "_&?z_hbe")
 by (rule zenon_and_1 [OF z_Hba])
 have z_Hbe: "?z_hbe" (is "_&?z_hbg")
 by (rule zenon_and_1 [OF z_Hbc])
 have z_Hbg: "?z_hbg" (is "_&?z_hbi")
 by (rule zenon_and_1 [OF z_Hbe])
 have z_Hbi: "?z_hbi" (is "_&?z_hbk")
 by (rule zenon_and_1 [OF z_Hbg])
 have z_Hbk: "?z_hbk" (is "_&?z_hbm")
 by (rule zenon_and_1 [OF z_Hbi])
 have z_Hbm: "?z_hbm" (is "_&?z_hbo")
 by (rule zenon_and_1 [OF z_Hbk])
 have z_Hbo: "?z_hbo" (is "_&?z_hbq")
 by (rule zenon_and_1 [OF z_Hbm])
 have z_Hbq: "?z_hbq" (is "_&?z_hbs")
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hbs: "?z_hbs" (is "_&?z_hbu")
 by (rule zenon_and_1 [OF z_Hbq])
 have z_Hbu: "?z_hbu"
 by (rule zenon_and_1 [OF z_Hbs])
 have z_Hek: "(a_Mhash_primea \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hek")
 by (rule zenon_in_SUBSET_0 [of "a_Mhash_primea" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbu])
 have z_Hel_z_Hek: "bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hek" (is "?z_hel == _")
 by (unfold subset_def)
 have z_Hel: "?z_hel"
 by (unfold z_Hel_z_Hek, fact z_Hek)
 show FALSE
 proof (rule zenon_or [OF z_Ho])
  assume z_Hcn:"?z_hcn" (is "?z_hco&?z_hcw")
  have z_Hcw: "?z_hcw"
  by (rule zenon_and_1 [OF z_Hcn])
  have z_Hep_z_Hcw: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_hcw" (is "?z_hep == _")
  by (unfold bEx_def)
  have z_Hep: "?z_hep" (is "\\E x : ?z_heu(x)")
  by (unfold z_Hep_z_Hcw, fact z_Hcw)
  have z_Hev: "?z_heu((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hex&?z_hey")
  by (rule zenon_ex_choose_0 [of "?z_heu", OF z_Hep])
  have z_Hey: "?z_hey" (is "?z_hcz=?z_hez")
  by (rule zenon_and_1 [OF z_Hev])
  show FALSE
  proof (rule notE [OF z_Hy])
   have z_Hfa: "(?z_hds=?z_heh)"
   proof (rule zenon_nnpp [of "(?z_hds=?z_heh)"])
    assume z_Hfb:"(?z_hds~=?z_heh)"
    show FALSE
    proof (rule zenon_em [of "(?z_heh=?z_heh)"])
     assume z_Hfc:"(?z_heh=?z_heh)"
     show FALSE
     proof (rule notE [OF z_Hfb])
      have z_Hfd: "(?z_heh=?z_hds)"
      proof (rule zenon_nnpp [of "(?z_heh=?z_hds)"])
       assume z_Hfe:"(?z_heh~=?z_hds)"
       show FALSE
       proof (rule zenon_noteq [of "?z_hds"])
        have z_Hff: "(((?z_hcz[a_punde_1a])[1])=(((told[''arg''])[a_punde_1a])[1]))" (is "?z_hei=?z_hdt")
        proof (rule zenon_nnpp [of "(?z_hei=?z_hdt)"])
         assume z_Hfg:"(?z_hei~=?z_hdt)"
         show FALSE
         proof (rule zenon_noteq [of "?z_hdt"])
          have z_Hfh: "((?z_hcz[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hej=?z_hdu")
          proof (rule zenon_nnpp [of "(?z_hej=?z_hdu)"])
           assume z_Hfi:"(?z_hej~=?z_hdu)"
           have z_Hfj: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hfj")
           by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hel z_Hj])
           let ?z_hfk = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
           let ?z_hfl = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
           have z_Hfm: "(4 \\in DOMAIN(?z_hfk))" by auto
           have z_Hfp: "((t[(?z_hfk[4])]) \\in (?z_hfl[4]))" (is "?z_hfp")
           by (rule zenon_in_recordset_field [OF z_Hfj z_Hfm])
           have z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hft")
           using z_Hfp by auto
           have z_Hfu_z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hft" (is "?z_hfu == _")
           by (unfold prod_def)
           have z_Hfu: "?z_hfu"
           by (unfold z_Hfu_z_Hft, fact z_Hft)
           have z_Hfz: "(DOMAIN(?z_hcz)=PROCESSES)" (is "?z_hga=_")
           by (rule zenon_in_funcset_1 [of "?z_hcz" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hfu])
           have z_Hgb: "(((isAFcn(?z_hcz)<=>isAFcn(?z_hez))&(?z_hga=DOMAIN(?z_hez)))&(\\A zenon_Vulb:((?z_hcz[zenon_Vulb])=(?z_hez[zenon_Vulb]))))" (is "?z_hgc&?z_hgi")
           by (rule zenon_funequal_0 [of "?z_hcz" "?z_hez", OF z_Hey])
           have z_Hgi: "?z_hgi" (is "\\A x : ?z_hgn(x)")
           by (rule zenon_and_1 [OF z_Hgb])
           have z_Hgo: "(\\A zenon_Vzk:((zenon_Vzk \\in ?z_hga)<=>(zenon_Vzk \\in PROCESSES)))" (is "\\A x : ?z_hgt(x)")
           by (rule zenon_setequal_0 [of "?z_hga" "PROCESSES", OF z_Hfz])
           have z_Hgu: "?z_hgn(a_punde_1a)" (is "_=?z_hgv")
           by (rule zenon_all_0 [of "?z_hgn" "a_punde_1a", OF z_Hgi])
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyjb. (?z_hej=zenon_Vyjb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hgu])
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hhc:"(?z_hej=(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x)))))" (is "_=?z_hew")
            show FALSE
            by (rule zenon_eqsym [OF z_Hhb z_Hl])
           next
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhd:"(p~=a_punde_1a)"
            assume z_Hfh:"(?z_hej=?z_hdu)"
            show FALSE
            by (rule notE [OF z_Hfi z_Hfh])
           next
            assume z_Hhe:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgz")
            have z_Hhf: "?z_hgt(a_punde_1a)" (is "?z_hhg<=>_")
            by (rule zenon_all_0 [of "?z_hgt" "a_punde_1a", OF z_Hgo])
            show FALSE
            proof (rule zenon_equiv [OF z_Hhf])
             assume z_Hhh:"(~?z_hhg)"
             assume z_Hhi:"(~?z_hi)"
             show FALSE
             by (rule notE [OF z_Hhi z_Hi])
            next
             assume z_Hhg:"?z_hhg"
             assume z_Hi:"?z_hi"
             have z_Hhj: "(a_punde_1a \\in DOMAIN(?z_hez))" (is "?z_hhj")
             by (rule subst [where P="(\<lambda>zenon_Vykb. (a_punde_1a \\in DOMAIN(zenon_Vykb)))", OF z_Hey z_Hhg])
             have z_Hgz: "?z_hgz"
             by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vxkb. (a_punde_1a \\in zenon_Vxkb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x))))", OF z_Hhj])
             show FALSE
             by (rule notE [OF z_Hhe z_Hgz])
            qed
           qed
          qed
          have z_Hhr: "(?z_hdt~=?z_hdt)"
          by (rule subst [where P="(\<lambda>zenon_Vchd. ((zenon_Vchd[1])~=?z_hdt))", OF z_Hfh], fact z_Hfg)
          thus "(?z_hdt~=?z_hdt)" .
         qed
        qed
        have z_Hhw: "((?z_hdr[?z_hei])~=?z_hds)" (is "?z_hhx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vahd. ((zenon_Vahd[?z_hei])~=?z_hds))", OF z_Hs], fact z_Hfe)
        have z_Hic: "(?z_hds~=?z_hds)"
        by (rule subst [where P="(\<lambda>zenon_Vehd. ((?z_hdr[zenon_Vehd])~=?z_hds))", OF z_Hff], fact z_Hhw)
        thus "(?z_hds~=?z_hds)" .
       qed
      qed
      have z_Hfa: "(?z_hds=?z_heh)"
      by (rule subst [where P="(\<lambda>zenon_Vfhd. (zenon_Vfhd=?z_heh))", OF z_Hfd], fact z_Hfc)
      thus "(?z_hds=?z_heh)" .
     qed
    next
     assume z_Hik:"(?z_heh~=?z_heh)"
     show FALSE
     by (rule zenon_noteq [OF z_Hik])
    qed
   qed
   have z_Hil: "(?z_hdw=?z_hea)"
   proof (rule zenon_nnpp [of "(?z_hdw=?z_hea)"])
    assume z_Hdz:"(?z_hdw~=?z_hea)"
    show FALSE
    by (rule zenon_L1_ [OF z_Hdz z_Hs])
   qed
   have z_Him: "(?z_heh=?z_hdw)"
   by (rule subst [where P="(\<lambda>zenon_Vghd. (zenon_Vghd=?z_hdw))", OF z_Hfa], fact z_Hv)
   have z_Hiq: "(?z_heh=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vhhd. (?z_heh=zenon_Vhhd))", OF z_Hil], fact z_Him)
   thus "(?z_heh=?z_hea)" .
  qed
 next
  assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hdh")
  have z_Hdh: "?z_hdh"
  by (rule zenon_and_1 [OF z_Hdd])
  have z_Hiu_z_Hdh: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hdh" (is "?z_hiu == _")
  by (unfold bEx_def)
  have z_Hiu: "?z_hiu" (is "\\E x : ?z_hjb(x)")
  by (unfold z_Hiu_z_Hdh, fact z_Hdh)
  have z_Hjc: "?z_hjb((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hje&?z_hjf")
  by (rule zenon_ex_choose_0 [of "?z_hjb", OF z_Hiu])
  have z_Hjf: "?z_hjf"
  by (rule zenon_and_1 [OF z_Hjc])
  have z_Hjg_z_Hjf: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hjf" (is "?z_hjg == _")
  by (unfold bEx_def)
  have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjl(x)")
  by (unfold z_Hjg_z_Hjf, fact z_Hjf)
  have z_Hjm: "?z_hjl((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hjo&?z_hjp")
  by (rule zenon_ex_choose_0 [of "?z_hjl", OF z_Hjg])
  have z_Hjp: "?z_hjp" (is "?z_hcz=?z_hjq")
  by (rule zenon_and_1 [OF z_Hjm])
  show FALSE
  proof (rule notE [OF z_Hy])
   have z_Hfa: "(?z_hds=?z_heh)"
   proof (rule zenon_nnpp [of "(?z_hds=?z_heh)"])
    assume z_Hfb:"(?z_hds~=?z_heh)"
    show FALSE
    proof (rule zenon_em [of "(?z_heh=?z_heh)"])
     assume z_Hfc:"(?z_heh=?z_heh)"
     show FALSE
     proof (rule notE [OF z_Hfb])
      have z_Hfd: "(?z_heh=?z_hds)"
      proof (rule zenon_nnpp [of "(?z_heh=?z_hds)"])
       assume z_Hfe:"(?z_heh~=?z_hds)"
       show FALSE
       proof (rule zenon_noteq [of "?z_hds"])
        have z_Hff: "(((?z_hcz[a_punde_1a])[1])=(((told[''arg''])[a_punde_1a])[1]))" (is "?z_hei=?z_hdt")
        proof (rule zenon_nnpp [of "(?z_hei=?z_hdt)"])
         assume z_Hfg:"(?z_hei~=?z_hdt)"
         show FALSE
         proof (rule zenon_noteq [of "?z_hdt"])
          have z_Hfh: "((?z_hcz[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hej=?z_hdu")
          proof (rule zenon_nnpp [of "(?z_hej=?z_hdu)"])
           assume z_Hfi:"(?z_hej~=?z_hdu)"
           have z_Hfj: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hfj")
           by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hel z_Hj])
           let ?z_hfk = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
           let ?z_hfl = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
           have z_Hfm: "(4 \\in DOMAIN(?z_hfk))" by auto
           have z_Hfp: "((t[(?z_hfk[4])]) \\in (?z_hfl[4]))" (is "?z_hfp")
           by (rule zenon_in_recordset_field [OF z_Hfj z_Hfm])
           have z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hft")
           using z_Hfp by auto
           have z_Hfu_z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hft" (is "?z_hfu == _")
           by (unfold prod_def)
           have z_Hfu: "?z_hfu"
           by (unfold z_Hfu_z_Hft, fact z_Hft)
           have z_Hfz: "(DOMAIN(?z_hcz)=PROCESSES)" (is "?z_hga=_")
           by (rule zenon_in_funcset_1 [of "?z_hcz" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hfu])
           have z_Hjr: "(((isAFcn(?z_hcz)<=>isAFcn(?z_hjq))&(?z_hga=DOMAIN(?z_hjq)))&(\\A zenon_Vid:((?z_hcz[zenon_Vid])=(?z_hjq[zenon_Vid]))))" (is "?z_hjs&?z_hjx")
           by (rule zenon_funequal_0 [of "?z_hcz" "?z_hjq", OF z_Hjp])
           have z_Hjx: "?z_hjx" (is "\\A x : ?z_hkc(x)")
           by (rule zenon_and_1 [OF z_Hjr])
           have z_Hgo: "(\\A zenon_Vzk:((zenon_Vzk \\in ?z_hga)<=>(zenon_Vzk \\in PROCESSES)))" (is "\\A x : ?z_hgt(x)")
           by (rule zenon_setequal_0 [of "?z_hga" "PROCESSES", OF z_Hfz])
           have z_Hkd: "?z_hkc(a_punde_1a)" (is "_=?z_hke")
           by (rule zenon_all_0 [of "?z_hkc" "a_punde_1a", OF z_Hjx])
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyjb. (?z_hej=zenon_Vyjb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hkd])
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkg:"(?z_hej=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hkf")
            show FALSE
            by (rule zenon_eqsym [OF z_Hhb z_Hl])
           next
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhd:"(p~=a_punde_1a)"
            assume z_Hfh:"(?z_hej=?z_hdu)"
            show FALSE
            by (rule notE [OF z_Hfi z_Hfh])
           next
            assume z_Hhe:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgz")
            have z_Hhf: "?z_hgt(a_punde_1a)" (is "?z_hhg<=>_")
            by (rule zenon_all_0 [of "?z_hgt" "a_punde_1a", OF z_Hgo])
            show FALSE
            proof (rule zenon_equiv [OF z_Hhf])
             assume z_Hhh:"(~?z_hhg)"
             assume z_Hhi:"(~?z_hi)"
             show FALSE
             by (rule notE [OF z_Hhi z_Hi])
            next
             assume z_Hhg:"?z_hhg"
             assume z_Hi:"?z_hi"
             have z_Hkh: "(a_punde_1a \\in DOMAIN(?z_hjq))" (is "?z_hkh")
             by (rule subst [where P="(\<lambda>zenon_Vykb. (a_punde_1a \\in DOMAIN(zenon_Vykb)))", OF z_Hjp z_Hhg])
             have z_Hgz: "?z_hgz"
             by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vxkb. (a_punde_1a \\in zenon_Vxkb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>", OF z_Hkh])
             show FALSE
             by (rule notE [OF z_Hhe z_Hgz])
            qed
           qed
          qed
          have z_Hhr: "(?z_hdt~=?z_hdt)"
          by (rule subst [where P="(\<lambda>zenon_Vchd. ((zenon_Vchd[1])~=?z_hdt))", OF z_Hfh], fact z_Hfg)
          thus "(?z_hdt~=?z_hdt)" .
         qed
        qed
        have z_Hhw: "((?z_hdr[?z_hei])~=?z_hds)" (is "?z_hhx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vahd. ((zenon_Vahd[?z_hei])~=?z_hds))", OF z_Hs], fact z_Hfe)
        have z_Hic: "(?z_hds~=?z_hds)"
        by (rule subst [where P="(\<lambda>zenon_Vehd. ((?z_hdr[zenon_Vehd])~=?z_hds))", OF z_Hff], fact z_Hhw)
        thus "(?z_hds~=?z_hds)" .
       qed
      qed
      have z_Hfa: "(?z_hds=?z_heh)"
      by (rule subst [where P="(\<lambda>zenon_Vfhd. (zenon_Vfhd=?z_heh))", OF z_Hfd], fact z_Hfc)
      thus "(?z_hds=?z_heh)" .
     qed
    next
     assume z_Hik:"(?z_heh~=?z_heh)"
     show FALSE
     by (rule zenon_noteq [OF z_Hik])
    qed
   qed
   have z_Hil: "(?z_hdw=?z_hea)"
   proof (rule zenon_nnpp [of "(?z_hdw=?z_hea)"])
    assume z_Hdz:"(?z_hdw~=?z_hea)"
    show FALSE
    by (rule zenon_L1_ [OF z_Hdz z_Hs])
   qed
   have z_Him: "(?z_heh=?z_hdw)"
   by (rule subst [where P="(\<lambda>zenon_Vghd. (zenon_Vghd=?z_hdw))", OF z_Hfa], fact z_Hv)
   have z_Hiq: "(?z_heh=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vhhd. (?z_heh=zenon_Vhhd))", OF z_Hil], fact z_Him)
   thus "(?z_heh=?z_hea)" .
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 20"; *} qed
lemma ob'22:
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
(* usable definition StateSet suppressed *)
(* usable definition ReturnSet suppressed *)
(* usable definition OpSet suppressed *)
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
(* usable definition EdgeOK suppressed *)
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Inv suppressed *)
assumes v'106: "(Inv)"
assumes v'107: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'109: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'110: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'114: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'115: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'134: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1))))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p_1)))))) & ((EdgeOK ((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p_1)))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'140: "(((a_punde_1a) \<noteq> (p)))"
assumes v'141: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'144: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'145: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'146: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'147: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'148: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'149: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
assumes v'155: "(((a_h1bdf44d80eb26a2b5c73b1bc2a7916a ((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))) :: c)) & ((a_h1bdf44d80eb26a2b5c73b1bc2a7916a ((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))) :: c)))"
assumes v'156: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'157: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'161: "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))"
shows "(((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))"(is "PROP ?ob'22")
proof -
ML_command {* writeln "*** TLAPS ENTER 22"; *}
show "PROP ?ob'22"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_ec832a.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_ec832a.znn.out
;; obligation #22
$hyp "v'106" Inv
$hyp "v'107" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'109" (\/ (/\ (TLA.bEx NodeSet ((i) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_pchash_primea (TLA.except pc p "F1"))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "F"))
(= (TLA.fapply t "arg") (TLA.except (TLA.fapply a_tunde_olda "arg") p i))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_dhash_primea d)))
(/\ (TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_pchash_primea (TLA.except pc p "U1")) (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "U"))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply a_tunde_olda "arg") p (TLA.tuple i j)))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'110" (= (TLA.fapply pc p)
"0")
$hyp "v'114" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
$hyp "v'115" (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "v'134" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p_1)
"U8") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))
(EdgeOK (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8")
$hyp "v'140" (-. (= a_punde_1a p))
$hyp "v'141" (= (TLA.fapply pc a_punde_1a)
"U8")
$hyp "told_in" (TLA.in told M)
$hyp "v'144" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'145" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'146" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'147" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'148" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'149" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$hyp "v'155" (/\ (a_h1bdf44d80eb26a2b5c73b1bc2a7916a (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h1bdf44d80eb26a2b5c73b1bc2a7916a (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'156" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
$hyp "v'157" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'161" (TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
$goal (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_h889ac679c3d5fa68ecd826c512cbf0a&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&(a_Mhash_primea \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))" (is "_&?z_hba")
 using v'114 by blast
 have z_Ho:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hcn|?z_hdd")
 using v'144 by blast
 have z_Hj:"(t \\in a_Mhash_primea)" (is "?z_hj")
 using t_in by blast
 have z_Hi:"(a_punde_1a \\in PROCESSES)" (is "?z_hi")
 using a_punde_1a_in by blast
 have z_Hl:"(a_punde_1a~=p)"
 using v'140 by blast
 have z_Hs:"((t[''sigma''])=(told[''sigma'']))" (is "?z_hdq=?z_hdr")
 using v'148 by blast
 have z_Hw:"((?z_hdr[(((told[''arg''])[a_punde_1a])[2])])=(?z_hdr[(a_vunde_Uhash_primea[a_punde_1a])]))" (is "?z_hds=?z_hdw")
 using v'157 by blast
 have zenon_L1_: "(?z_hdw~=(?z_hdq[(a_vunde_Uhash_primea[a_punde_1a])])) ==> (?z_hdq=?z_hdr) ==> FALSE" (is "?z_hdz ==> ?z_hs ==> FALSE")
 proof -
  assume z_Hdz:"?z_hdz" (is "_~=?z_hea")
  assume z_Hs:"?z_hs"
  show FALSE
  proof (rule zenon_noteq [of "?z_hea"])
   have z_Heb: "(?z_hdr=?z_hdq)"
   by (rule sym [OF z_Hs])
   have z_Hec: "(?z_hea~=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vtnd. ((zenon_Vtnd[(a_vunde_Uhash_primea[a_punde_1a])])~=?z_hea))", OF z_Heb], fact z_Hdz)
   thus "(?z_hea~=?z_hea)" .
  qed
 qed
 assume z_Hy:"((?z_hdq[(((t[''arg''])[a_punde_1a])[2])])~=(?z_hdq[(a_vunde_Uhash_primea[a_punde_1a])]))" (is "?z_heh~=?z_hea")
 have z_Hba: "?z_hba" (is "_&?z_hbc")
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hbc: "?z_hbc" (is "_&?z_hbe")
 by (rule zenon_and_1 [OF z_Hba])
 have z_Hbe: "?z_hbe" (is "_&?z_hbg")
 by (rule zenon_and_1 [OF z_Hbc])
 have z_Hbg: "?z_hbg" (is "_&?z_hbi")
 by (rule zenon_and_1 [OF z_Hbe])
 have z_Hbi: "?z_hbi" (is "_&?z_hbk")
 by (rule zenon_and_1 [OF z_Hbg])
 have z_Hbk: "?z_hbk" (is "_&?z_hbm")
 by (rule zenon_and_1 [OF z_Hbi])
 have z_Hbm: "?z_hbm" (is "_&?z_hbo")
 by (rule zenon_and_1 [OF z_Hbk])
 have z_Hbo: "?z_hbo" (is "_&?z_hbq")
 by (rule zenon_and_1 [OF z_Hbm])
 have z_Hbq: "?z_hbq" (is "_&?z_hbs")
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hbs: "?z_hbs" (is "_&?z_hbu")
 by (rule zenon_and_1 [OF z_Hbq])
 have z_Hbu: "?z_hbu"
 by (rule zenon_and_1 [OF z_Hbs])
 have z_Hek: "(a_Mhash_primea \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hek")
 by (rule zenon_in_SUBSET_0 [of "a_Mhash_primea" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbu])
 have z_Hel_z_Hek: "bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hek" (is "?z_hel == _")
 by (unfold subset_def)
 have z_Hel: "?z_hel"
 by (unfold z_Hel_z_Hek, fact z_Hek)
 show FALSE
 proof (rule zenon_or [OF z_Ho])
  assume z_Hcn:"?z_hcn" (is "?z_hco&?z_hcw")
  have z_Hcw: "?z_hcw"
  by (rule zenon_and_1 [OF z_Hcn])
  have z_Hep_z_Hcw: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_hcw" (is "?z_hep == _")
  by (unfold bEx_def)
  have z_Hep: "?z_hep" (is "\\E x : ?z_heu(x)")
  by (unfold z_Hep_z_Hcw, fact z_Hcw)
  have z_Hev: "?z_heu((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hex&?z_hey")
  by (rule zenon_ex_choose_0 [of "?z_heu", OF z_Hep])
  have z_Hey: "?z_hey" (is "?z_hcz=?z_hez")
  by (rule zenon_and_1 [OF z_Hev])
  show FALSE
  proof (rule notE [OF z_Hy])
   have z_Hfa: "(?z_hds=?z_heh)"
   proof (rule zenon_nnpp [of "(?z_hds=?z_heh)"])
    assume z_Hfb:"(?z_hds~=?z_heh)"
    show FALSE
    proof (rule zenon_em [of "(?z_heh=?z_heh)"])
     assume z_Hfc:"(?z_heh=?z_heh)"
     show FALSE
     proof (rule notE [OF z_Hfb])
      have z_Hfd: "(?z_heh=?z_hds)"
      proof (rule zenon_nnpp [of "(?z_heh=?z_hds)"])
       assume z_Hfe:"(?z_heh~=?z_hds)"
       show FALSE
       proof (rule zenon_noteq [of "?z_hds"])
        have z_Hff: "(((?z_hcz[a_punde_1a])[2])=(((told[''arg''])[a_punde_1a])[2]))" (is "?z_hei=?z_hdt")
        proof (rule zenon_nnpp [of "(?z_hei=?z_hdt)"])
         assume z_Hfg:"(?z_hei~=?z_hdt)"
         show FALSE
         proof (rule zenon_noteq [of "?z_hdt"])
          have z_Hfh: "((?z_hcz[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hej=?z_hdu")
          proof (rule zenon_nnpp [of "(?z_hej=?z_hdu)"])
           assume z_Hfi:"(?z_hej~=?z_hdu)"
           have z_Hfj: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hfj")
           by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hel z_Hj])
           let ?z_hfk = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
           let ?z_hfl = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
           have z_Hfm: "(4 \\in DOMAIN(?z_hfk))" by auto
           have z_Hfp: "((t[(?z_hfk[4])]) \\in (?z_hfl[4]))" (is "?z_hfp")
           by (rule zenon_in_recordset_field [OF z_Hfj z_Hfm])
           have z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hft")
           using z_Hfp by auto
           have z_Hfu_z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hft" (is "?z_hfu == _")
           by (unfold prod_def)
           have z_Hfu: "?z_hfu"
           by (unfold z_Hfu_z_Hft, fact z_Hft)
           have z_Hfz: "(DOMAIN(?z_hcz)=PROCESSES)" (is "?z_hga=_")
           by (rule zenon_in_funcset_1 [of "?z_hcz" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hfu])
           have z_Hgb: "(((isAFcn(?z_hcz)<=>isAFcn(?z_hez))&(?z_hga=DOMAIN(?z_hez)))&(\\A zenon_Vmpb:((?z_hcz[zenon_Vmpb])=(?z_hez[zenon_Vmpb]))))" (is "?z_hgc&?z_hgi")
           by (rule zenon_funequal_0 [of "?z_hcz" "?z_hez", OF z_Hey])
           have z_Hgi: "?z_hgi" (is "\\A x : ?z_hgn(x)")
           by (rule zenon_and_1 [OF z_Hgb])
           have z_Hgo: "(\\A zenon_Vzk:((zenon_Vzk \\in ?z_hga)<=>(zenon_Vzk \\in PROCESSES)))" (is "\\A x : ?z_hgt(x)")
           by (rule zenon_setequal_0 [of "?z_hga" "PROCESSES", OF z_Hfz])
           have z_Hgu: "?z_hgn(a_punde_1a)" (is "_=?z_hgv")
           by (rule zenon_all_0 [of "?z_hgn" "a_punde_1a", OF z_Hgi])
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vymb. (?z_hej=zenon_Vymb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hgu])
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hhc:"(?z_hej=(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x)))))" (is "_=?z_hew")
            show FALSE
            by (rule zenon_eqsym [OF z_Hhb z_Hl])
           next
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhd:"(p~=a_punde_1a)"
            assume z_Hfh:"(?z_hej=?z_hdu)"
            show FALSE
            by (rule notE [OF z_Hfi z_Hfh])
           next
            assume z_Hhe:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgz")
            have z_Hhf: "?z_hgt(a_punde_1a)" (is "?z_hhg<=>_")
            by (rule zenon_all_0 [of "?z_hgt" "a_punde_1a", OF z_Hgo])
            show FALSE
            proof (rule zenon_equiv [OF z_Hhf])
             assume z_Hhh:"(~?z_hhg)"
             assume z_Hhi:"(~?z_hi)"
             show FALSE
             by (rule notE [OF z_Hhi z_Hi])
            next
             assume z_Hhg:"?z_hhg"
             assume z_Hi:"?z_hi"
             have z_Hhj: "(a_punde_1a \\in DOMAIN(?z_hez))" (is "?z_hhj")
             by (rule subst [where P="(\<lambda>zenon_Vqob. (a_punde_1a \\in DOMAIN(zenon_Vqob)))", OF z_Hey z_Hhg])
             have z_Hgz: "?z_hgz"
             by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vpob. (a_punde_1a \\in zenon_Vpob))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, x))))", OF z_Hhj])
             show FALSE
             by (rule notE [OF z_Hhe z_Hgz])
            qed
           qed
          qed
          have z_Hhr: "(?z_hdt~=?z_hdt)"
          by (rule subst [where P="(\<lambda>zenon_Vwnd. ((zenon_Vwnd[2])~=?z_hdt))", OF z_Hfh], fact z_Hfg)
          thus "(?z_hdt~=?z_hdt)" .
         qed
        qed
        have z_Hhw: "((?z_hdr[?z_hei])~=?z_hds)" (is "?z_hhx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vxnd. ((zenon_Vxnd[?z_hei])~=?z_hds))", OF z_Hs], fact z_Hfe)
        have z_Hic: "(?z_hds~=?z_hds)"
        by (rule subst [where P="(\<lambda>zenon_Vynd. ((?z_hdr[zenon_Vynd])~=?z_hds))", OF z_Hff], fact z_Hhw)
        thus "(?z_hds~=?z_hds)" .
       qed
      qed
      have z_Hfa: "(?z_hds=?z_heh)"
      by (rule subst [where P="(\<lambda>zenon_Vznd. (zenon_Vznd=?z_heh))", OF z_Hfd], fact z_Hfc)
      thus "(?z_hds=?z_heh)" .
     qed
    next
     assume z_Hik:"(?z_heh~=?z_heh)"
     show FALSE
     by (rule zenon_noteq [OF z_Hik])
    qed
   qed
   have z_Hil: "(?z_hdw=?z_hea)"
   proof (rule zenon_nnpp [of "(?z_hdw=?z_hea)"])
    assume z_Hdz:"(?z_hdw~=?z_hea)"
    show FALSE
    by (rule zenon_L1_ [OF z_Hdz z_Hs])
   qed
   have z_Him: "(?z_heh=?z_hdw)"
   by (rule subst [where P="(\<lambda>zenon_Vaod. (zenon_Vaod=?z_hdw))", OF z_Hfa], fact z_Hw)
   have z_Hiq: "(?z_heh=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vbod. (?z_heh=zenon_Vbod))", OF z_Hil], fact z_Him)
   thus "(?z_heh=?z_hea)" .
  qed
 next
  assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hdh")
  have z_Hdh: "?z_hdh"
  by (rule zenon_and_1 [OF z_Hdd])
  have z_Hiu_z_Hdh: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hdh" (is "?z_hiu == _")
  by (unfold bEx_def)
  have z_Hiu: "?z_hiu" (is "\\E x : ?z_hjb(x)")
  by (unfold z_Hiu_z_Hdh, fact z_Hdh)
  have z_Hjc: "?z_hjb((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hje&?z_hjf")
  by (rule zenon_ex_choose_0 [of "?z_hjb", OF z_Hiu])
  have z_Hjf: "?z_hjf"
  by (rule zenon_and_1 [OF z_Hjc])
  have z_Hjg_z_Hjf: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hjf" (is "?z_hjg == _")
  by (unfold bEx_def)
  have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjl(x)")
  by (unfold z_Hjg_z_Hjf, fact z_Hjf)
  have z_Hjm: "?z_hjl((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hjo&?z_hjp")
  by (rule zenon_ex_choose_0 [of "?z_hjl", OF z_Hjg])
  have z_Hjp: "?z_hjp" (is "?z_hcz=?z_hjq")
  by (rule zenon_and_1 [OF z_Hjm])
  show FALSE
  proof (rule notE [OF z_Hy])
   have z_Hfa: "(?z_hds=?z_heh)"
   proof (rule zenon_nnpp [of "(?z_hds=?z_heh)"])
    assume z_Hfb:"(?z_hds~=?z_heh)"
    show FALSE
    proof (rule zenon_em [of "(?z_heh=?z_heh)"])
     assume z_Hfc:"(?z_heh=?z_heh)"
     show FALSE
     proof (rule notE [OF z_Hfb])
      have z_Hfd: "(?z_heh=?z_hds)"
      proof (rule zenon_nnpp [of "(?z_heh=?z_hds)"])
       assume z_Hfe:"(?z_heh~=?z_hds)"
       show FALSE
       proof (rule zenon_noteq [of "?z_hds"])
        have z_Hff: "(((?z_hcz[a_punde_1a])[2])=(((told[''arg''])[a_punde_1a])[2]))" (is "?z_hei=?z_hdt")
        proof (rule zenon_nnpp [of "(?z_hei=?z_hdt)"])
         assume z_Hfg:"(?z_hei~=?z_hdt)"
         show FALSE
         proof (rule zenon_noteq [of "?z_hdt"])
          have z_Hfh: "((?z_hcz[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hej=?z_hdu")
          proof (rule zenon_nnpp [of "(?z_hej=?z_hdu)"])
           assume z_Hfi:"(?z_hej~=?z_hdu)"
           have z_Hfj: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hfj")
           by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hel z_Hj])
           let ?z_hfk = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
           let ?z_hfl = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
           have z_Hfm: "(4 \\in DOMAIN(?z_hfk))" by auto
           have z_Hfp: "((t[(?z_hfk[4])]) \\in (?z_hfl[4]))" (is "?z_hfp")
           by (rule zenon_in_recordset_field [OF z_Hfj z_Hfm])
           have z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hft")
           using z_Hfp by auto
           have z_Hfu_z_Hft: "(?z_hcz \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hft" (is "?z_hfu == _")
           by (unfold prod_def)
           have z_Hfu: "?z_hfu"
           by (unfold z_Hfu_z_Hft, fact z_Hft)
           have z_Hfz: "(DOMAIN(?z_hcz)=PROCESSES)" (is "?z_hga=_")
           by (rule zenon_in_funcset_1 [of "?z_hcz" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hfu])
           have z_Hjr: "(((isAFcn(?z_hcz)<=>isAFcn(?z_hjq))&(?z_hga=DOMAIN(?z_hjq)))&(\\A zenon_Vid:((?z_hcz[zenon_Vid])=(?z_hjq[zenon_Vid]))))" (is "?z_hjs&?z_hjx")
           by (rule zenon_funequal_0 [of "?z_hcz" "?z_hjq", OF z_Hjp])
           have z_Hjx: "?z_hjx" (is "\\A x : ?z_hkc(x)")
           by (rule zenon_and_1 [OF z_Hjr])
           have z_Hgo: "(\\A zenon_Vzk:((zenon_Vzk \\in ?z_hga)<=>(zenon_Vzk \\in PROCESSES)))" (is "\\A x : ?z_hgt(x)")
           by (rule zenon_setequal_0 [of "?z_hga" "PROCESSES", OF z_Hfz])
           have z_Hkd: "?z_hkc(a_punde_1a)" (is "_=?z_hke")
           by (rule zenon_all_0 [of "?z_hkc" "a_punde_1a", OF z_Hjx])
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vymb. (?z_hej=zenon_Vymb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hkd])
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkg:"(?z_hej=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hkf")
            show FALSE
            by (rule zenon_eqsym [OF z_Hhb z_Hl])
           next
            assume z_Hgz:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hgz")
            assume z_Hhd:"(p~=a_punde_1a)"
            assume z_Hfh:"(?z_hej=?z_hdu)"
            show FALSE
            by (rule notE [OF z_Hfi z_Hfh])
           next
            assume z_Hhe:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hgz")
            have z_Hhf: "?z_hgt(a_punde_1a)" (is "?z_hhg<=>_")
            by (rule zenon_all_0 [of "?z_hgt" "a_punde_1a", OF z_Hgo])
            show FALSE
            proof (rule zenon_equiv [OF z_Hhf])
             assume z_Hhh:"(~?z_hhg)"
             assume z_Hhi:"(~?z_hi)"
             show FALSE
             by (rule notE [OF z_Hhi z_Hi])
            next
             assume z_Hhg:"?z_hhg"
             assume z_Hi:"?z_hi"
             have z_Hkh: "(a_punde_1a \\in DOMAIN(?z_hjq))" (is "?z_hkh")
             by (rule subst [where P="(\<lambda>zenon_Vqob. (a_punde_1a \\in DOMAIN(zenon_Vqob)))", OF z_Hjp z_Hhg])
             have z_Hgz: "?z_hgz"
             by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vpob. (a_punde_1a \\in zenon_Vpob))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_hcz=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_hcz=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>", OF z_Hkh])
             show FALSE
             by (rule notE [OF z_Hhe z_Hgz])
            qed
           qed
          qed
          have z_Hhr: "(?z_hdt~=?z_hdt)"
          by (rule subst [where P="(\<lambda>zenon_Vwnd. ((zenon_Vwnd[2])~=?z_hdt))", OF z_Hfh], fact z_Hfg)
          thus "(?z_hdt~=?z_hdt)" .
         qed
        qed
        have z_Hhw: "((?z_hdr[?z_hei])~=?z_hds)" (is "?z_hhx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vxnd. ((zenon_Vxnd[?z_hei])~=?z_hds))", OF z_Hs], fact z_Hfe)
        have z_Hic: "(?z_hds~=?z_hds)"
        by (rule subst [where P="(\<lambda>zenon_Vynd. ((?z_hdr[zenon_Vynd])~=?z_hds))", OF z_Hff], fact z_Hhw)
        thus "(?z_hds~=?z_hds)" .
       qed
      qed
      have z_Hfa: "(?z_hds=?z_heh)"
      by (rule subst [where P="(\<lambda>zenon_Vznd. (zenon_Vznd=?z_heh))", OF z_Hfd], fact z_Hfc)
      thus "(?z_hds=?z_heh)" .
     qed
    next
     assume z_Hik:"(?z_heh~=?z_heh)"
     show FALSE
     by (rule zenon_noteq [OF z_Hik])
    qed
   qed
   have z_Hil: "(?z_hdw=?z_hea)"
   proof (rule zenon_nnpp [of "(?z_hdw=?z_hea)"])
    assume z_Hdz:"(?z_hdw~=?z_hea)"
    show FALSE
    by (rule zenon_L1_ [OF z_Hdz z_Hs])
   qed
   have z_Him: "(?z_heh=?z_hdw)"
   by (rule subst [where P="(\<lambda>zenon_Vaod. (zenon_Vaod=?z_hdw))", OF z_Hfa], fact z_Hw)
   have z_Hiq: "(?z_heh=?z_hea)"
   by (rule subst [where P="(\<lambda>zenon_Vbod. (?z_heh=zenon_Vbod))", OF z_Hil], fact z_Him)
   thus "(?z_heh=?z_hea)" .
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 22"; *} qed
lemma ob'13:
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
(* usable definition Valid_M suppressed *)
(* usable definition EdgeOK suppressed *)
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'105: "(Inv)"
assumes v'106: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'108: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i_1 \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i_1))))) = (fapply ((A), (i_1)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i_1 \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i_1))))) = (fapply ((A), (i_1)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'109: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'113: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'114: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (a_Validunde_Ma))"
assumes v'133: "(a_InvU8a)"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'136: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'139: "(((a_punde_1a) \<noteq> (p)))"
assumes v'140: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
shows "(\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))))"(is "PROP ?ob'13")
proof -
ML_command {* writeln "*** TLAPS ENTER 13"; *}
show "PROP ?ob'13"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 13"; *} qed
lemma ob'24:
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
(* usable definition StateSet suppressed *)
(* usable definition ReturnSet suppressed *)
(* usable definition OpSet suppressed *)
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
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Inv suppressed *)
assumes v'105: "(Inv)"
assumes v'106: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'108: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'109: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'113: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'114: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'133: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))) = (fapply ((a_uunde_Ua), (p_1))))) | (((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Ua), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Ua), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Ua), (p_1))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))) = (fapply ((a_vunde_Ua), (p_1))))) | (((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_vunde_Ua), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_vunde_Ua), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply ((a_vunde_Ua), (p_1))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'136: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'139: "(((a_punde_1a) \<noteq> (p)))"
assumes v'140: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'143: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'144: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'145: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'146: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'147: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'148: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
assumes v'154: "(((((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))) = (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))))))))) & ((((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))) = (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))))))))))"
assumes v'155: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'156: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'161: "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))"
shows "((((fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))) = (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0]))))))))))))"(is "PROP ?ob'24")
proof -
ML_command {* writeln "*** TLAPS ENTER 24"; *}
show "PROP ?ob'24"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_330be3.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_330be3.znn.out
;; obligation #24
$hyp "v'105" Inv
$hyp "v'106" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'108" (\/ (/\ (TLA.bEx NodeSet ((i) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_pchash_primea (TLA.except pc p "F1"))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "F"))
(= (TLA.fapply t "arg") (TLA.except (TLA.fapply a_tunde_olda "arg") p i))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_dhash_primea d)))
(/\ (TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_pchash_primea (TLA.except pc p "U1")) (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "U"))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply a_tunde_olda "arg") p (TLA.tuple i j)))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'109" (= (TLA.fapply pc p)
"0")
$hyp "v'113" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
$hyp "v'114" (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "v'133" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p_1)
"U8") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Ua p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Ua p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))))))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_vunde_Ua p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_vunde_Ua p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'136" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8")
$hyp "v'139" (-. (= a_punde_1a p))
$hyp "v'140" (= (TLA.fapply pc a_punde_1a)
"U8")
$hyp "told_in" (TLA.in told M)
$hyp "v'143" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'144" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'145" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'146" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'147" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'148" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$hyp "v'154" (/\ (\/ (= (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))))))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))))
$hyp "v'155" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
$hyp "v'156" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'161" (TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
$goal (\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_h889ac679c3d5fa68ecd826c512cbf0a&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&(a_Mhash_primea \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))" (is "_&?z_hba")
 using v'113 by blast
 have z_Hu:"((((((told[''arg''])[a_punde_1a])[1])=(a_uunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])=1)|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])=0)&((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank'']))&((((told[''arg''])[a_punde_1a])[1]) <= (a_uunde_Uhash_primea[a_punde_1a])))))))&(((((told[''arg''])[a_punde_1a])[2])=(a_vunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])=1)|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])=0)&((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank'']) < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank'']))&((((told[''arg''])[a_punde_1a])[2]) <= (a_vunde_Uhash_primea[a_punde_1a]))))))))" (is "?z_hcn&?z_hdp")
 using v'154 by blast
 have z_Ho:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hej|?z_hex")
 using v'143 by blast
 have z_Hi:"(a_punde_1a \\in PROCESSES)" (is "?z_hi")
 using a_punde_1a_in by blast
 have z_Hl:"(a_punde_1a~=p)"
 using v'139 by blast
 have z_Hj:"(t \\in a_Mhash_primea)" (is "?z_hj")
 using t_in by blast
 have zenon_L1_: "(\\A zenon_Voec:((zenon_Voec \\in DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))))<=>(zenon_Voec \\in PROCESSES))) ==> ?z_hi ==> (~(a_punde_1a \\in DOMAIN((told[''arg''])))) ==> FALSE" (is "?z_hfj ==> _ ==> ?z_hfw ==> FALSE")
 proof -
  assume z_Hfj:"?z_hfj" (is "\\A x : ?z_hfz(x)")
  assume z_Hi:"?z_hi"
  assume z_Hfw:"?z_hfw" (is "~?z_hfx")
  have z_Hga: "?z_hfz(a_punde_1a)" (is "?z_hgb<=>_")
  by (rule zenon_all_0 [of "?z_hfz" "a_punde_1a", OF z_Hfj])
  show FALSE
  proof (rule zenon_equiv [OF z_Hga])
   assume z_Hgc:"(~?z_hgb)"
   assume z_Hgd:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgd z_Hi])
  next
   assume z_Hgb:"?z_hgb"
   assume z_Hi:"?z_hi"
   have z_Hfx: "?z_hfx"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vgvb. (a_punde_1a \\in zenon_Vgvb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))", OF z_Hgb])
   show FALSE
   by (rule notE [OF z_Hfw z_Hfx])
  qed
 qed
 have zenon_L2_: "((((t[''arg''])[a_punde_1a])[1])~=(((told[''arg''])[a_punde_1a])[1])) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> FALSE" (is "?z_hgh ==> ?z_hl ==> _ ==> ?z_hgk ==> ?z_hgl ==> FALSE")
 proof -
  assume z_Hgh:"?z_hgh" (is "?z_hgi~=?z_hcp")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hgk:"?z_hgk" (is "?z_hfn=_")
  assume z_Hgl:"?z_hgl" (is "?z_heu=?z_hfo")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcp"])
   have z_Hgm: "((?z_heu[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hgj=?z_hcq")
   proof (rule zenon_nnpp [of "(?z_hgj=?z_hcq)"])
    assume z_Hgn:"(?z_hgj~=?z_hcq)"
    have z_Hgo: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(DOMAIN(?z_heu)=?z_hfn))&(\\A zenon_Vxvb:((?z_heu[zenon_Vxvb])=(?z_hfo[zenon_Vxvb]))))" (is "?z_hgp&?z_hgv")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hgl])
    have z_Hgv: "?z_hgv" (is "\\A x : ?z_hha(x)")
    by (rule zenon_and_1 [OF z_Hgo])
    have z_Hfj: "(\\A zenon_Voec:((zenon_Voec \\in ?z_hfn)<=>(zenon_Voec \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
    by (rule zenon_setequal_0 [of "?z_hfn" "PROCESSES", OF z_Hgk])
    have z_Hhb: "?z_hha(a_punde_1a)" (is "_=?z_hhc")
    by (rule zenon_all_0 [of "?z_hha" "a_punde_1a", OF z_Hgv])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vaub. (?z_hgj=zenon_Vaub))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hhb])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhg:"(p=a_punde_1a)"
     assume z_Hhh:"(?z_hgj=(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x)))))" (is "_=?z_hfp")
     show FALSE
     by (rule zenon_eqsym [OF z_Hhg z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhi:"(p~=a_punde_1a)"
     assume z_Hgm:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule notE [OF z_Hgn z_Hgm])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L1_ [OF z_Hfj z_Hi z_Hfw])
    qed
   qed
   have z_Hhj: "(?z_hcp~=?z_hcp)"
   by (rule subst [where P="(\<lambda>zenon_Vbpm. ((zenon_Vbpm[1])~=?z_hcp))", OF z_Hgm], fact z_Hgh)
   thus "(?z_hcp~=?z_hcp)" .
  qed
 qed
 have zenon_L3_: "(\\A zenon_Vqn:((zenon_Vqn \\in DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)))<=>(zenon_Vqn \\in PROCESSES))) ==> ?z_hi ==> (~(a_punde_1a \\in DOMAIN((told[''arg''])))) ==> FALSE" (is "?z_hho ==> _ ==> ?z_hfw ==> FALSE")
 proof -
  assume z_Hho:"?z_hho" (is "\\A x : ?z_hii(x)")
  assume z_Hi:"?z_hi"
  assume z_Hfw:"?z_hfw" (is "~?z_hfx")
  have z_Hij: "?z_hii(a_punde_1a)" (is "?z_hik<=>_")
  by (rule zenon_all_0 [of "?z_hii" "a_punde_1a", OF z_Hho])
  show FALSE
  proof (rule zenon_equiv [OF z_Hij])
   assume z_Hil:"(~?z_hik)"
   assume z_Hgd:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgd z_Hi])
  next
   assume z_Hik:"?z_hik"
   assume z_Hi:"?z_hi"
   have z_Hfx: "?z_hfx"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vgvb. (a_punde_1a \\in zenon_Vgvb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>", OF z_Hik])
   show FALSE
   by (rule notE [OF z_Hfw z_Hfx])
  qed
 qed
 have zenon_L4_: "((((t[''arg''])[a_punde_1a])[1])~=(((told[''arg''])[a_punde_1a])[1])) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> FALSE" (is "?z_hgh ==> ?z_hl ==> _ ==> ?z_him ==> ?z_hin ==> FALSE")
 proof -
  assume z_Hgh:"?z_hgh" (is "?z_hgi~=?z_hcp")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Him:"?z_him" (is "?z_hhs=_")
  assume z_Hin:"?z_hin" (is "?z_heu=?z_hht")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcp"])
   have z_Hgm: "((?z_heu[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hgj=?z_hcq")
   proof (rule zenon_nnpp [of "(?z_hgj=?z_hcq)"])
    assume z_Hgn:"(?z_hgj~=?z_hcq)"
    have z_Hio: "(((isAFcn(?z_heu)<=>isAFcn(?z_hht))&(DOMAIN(?z_heu)=?z_hhs))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hht[zenon_Vbe]))))" (is "?z_hip&?z_hit")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hht", OF z_Hin])
    have z_Hit: "?z_hit" (is "\\A x : ?z_hiy(x)")
    by (rule zenon_and_1 [OF z_Hio])
    have z_Hho: "(\\A zenon_Vqn:((zenon_Vqn \\in ?z_hhs)<=>(zenon_Vqn \\in PROCESSES)))" (is "\\A x : ?z_hii(x)")
    by (rule zenon_setequal_0 [of "?z_hhs" "PROCESSES", OF z_Him])
    have z_Hiz: "?z_hiy(a_punde_1a)" (is "_=?z_hja")
    by (rule zenon_all_0 [of "?z_hiy" "a_punde_1a", OF z_Hit])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vaub. (?z_hgj=zenon_Vaub))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hiz])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhg:"(p=a_punde_1a)"
     assume z_Hjb:"(?z_hgj=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hhu")
     show FALSE
     by (rule zenon_eqsym [OF z_Hhg z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhi:"(p~=a_punde_1a)"
     assume z_Hgm:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule notE [OF z_Hgn z_Hgm])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L3_ [OF z_Hho z_Hi z_Hfw])
    qed
   qed
   have z_Hhj: "(?z_hcp~=?z_hcp)"
   by (rule subst [where P="(\<lambda>zenon_Vbpm. ((zenon_Vbpm[1])~=?z_hcp))", OF z_Hgm], fact z_Hgh)
   thus "(?z_hcp~=?z_hcp)" .
  qed
 qed
 have zenon_L5_: "(?z_hej|?z_hex) ==> ((((t[''arg''])[a_punde_1a])[1])~=(a_uunde_Uhash_primea[a_punde_1a])) ==> ((((told[''arg''])[a_punde_1a])[1])=(a_uunde_Uhash_primea[a_punde_1a])) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_ho ==> ?z_hjc ==> ?z_hco ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hjc:"?z_hjc" (is "?z_hgi~=?z_hcv")
  assume z_Hco:"?z_hco" (is "?z_hcp=_")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
   by (unfold bEx_def)
   have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
   by (unfold z_Hjg_z_Her, fact z_Her)
   have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
   by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
   have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hji])
   have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
   let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
   have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
   by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
   have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
   using z_Hjq by auto
   have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
   by (unfold prod_def)
   have z_Hjv: "?z_hjv"
   by (unfold z_Hjv_z_Hju, fact z_Hju)
   have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
   have z_Hgk: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
   by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hgl z_Hka])
   show FALSE
   proof (rule notE [OF z_Hjc])
    have z_Hkf: "(?z_hcp=?z_hgi)"
    proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
     assume z_Hkg:"(?z_hcp~=?z_hgi)"
     show FALSE
     proof (rule zenon_em [of "(?z_hgi=?z_hgi)"])
      assume z_Hkh:"(?z_hgi=?z_hgi)"
      show FALSE
      proof (rule notE [OF z_Hkg])
       have z_Hki: "(?z_hgi=?z_hcp)"
       proof (rule zenon_nnpp [of "(?z_hgi=?z_hcp)"])
        assume z_Hgh:"(?z_hgi~=?z_hcp)"
        show FALSE
        by (rule zenon_L2_ [OF z_Hgh z_Hl z_Hi z_Hgk z_Hgl])
       qed
       have z_Hkf: "(?z_hcp=?z_hgi)"
       by (rule subst [where P="(\<lambda>zenon_Vdpm. (zenon_Vdpm=?z_hgi))", OF z_Hki], fact z_Hkh)
       thus "(?z_hcp=?z_hgi)" .
      qed
     next
      assume z_Hkm:"(?z_hgi~=?z_hgi)"
      show FALSE
      by (rule zenon_noteq [OF z_Hkm])
     qed
    qed
    have z_Hkn: "(?z_hgi=?z_hcv)"
    by (rule subst [where P="(\<lambda>zenon_Vepm. (zenon_Vepm=?z_hcv))", OF z_Hkf], fact z_Hco)
    thus "(?z_hgi=?z_hcv)" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
   by (unfold bEx_def)
   have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
   by (unfold z_Hkr_z_Hfb, fact z_Hfb)
   have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
   by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
   have z_Hkv: "?z_hkv"
   by (rule zenon_and_1 [OF z_Hkt])
   have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
   by (unfold bEx_def)
   have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
   by (unfold z_Hkw_z_Hkv, fact z_Hkv)
   have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
   by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
   have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
   by (rule zenon_and_1 [OF z_Hky])
   have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
   let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
   have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
   by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
   have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
   using z_Hjq by auto
   have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
   by (unfold prod_def)
   have z_Hjv: "?z_hjv"
   by (unfold z_Hjv_z_Hju, fact z_Hju)
   have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
   have z_Him: "(DOMAIN(?z_hht)=PROCESSES)" (is "?z_hhs=_")
   by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hin z_Hka])
   show FALSE
   proof (rule notE [OF z_Hjc])
    have z_Hkf: "(?z_hcp=?z_hgi)"
    proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
     assume z_Hkg:"(?z_hcp~=?z_hgi)"
     show FALSE
     proof (rule zenon_em [of "(?z_hgi=?z_hgi)"])
      assume z_Hkh:"(?z_hgi=?z_hgi)"
      show FALSE
      proof (rule notE [OF z_Hkg])
       have z_Hki: "(?z_hgi=?z_hcp)"
       proof (rule zenon_nnpp [of "(?z_hgi=?z_hcp)"])
        assume z_Hgh:"(?z_hgi~=?z_hcp)"
        show FALSE
        by (rule zenon_L4_ [OF z_Hgh z_Hl z_Hi z_Him z_Hin])
       qed
       have z_Hkf: "(?z_hcp=?z_hgi)"
       by (rule subst [where P="(\<lambda>zenon_Vdpm. (zenon_Vdpm=?z_hgi))", OF z_Hki], fact z_Hkh)
       thus "(?z_hcp=?z_hgi)" .
      qed
     next
      assume z_Hkm:"(?z_hgi~=?z_hgi)"
      show FALSE
      by (rule zenon_noteq [OF z_Hkm])
     qed
    qed
    have z_Hkn: "(?z_hgi=?z_hcv)"
    by (rule subst [where P="(\<lambda>zenon_Vepm. (zenon_Vepm=?z_hcv))", OF z_Hkf], fact z_Hco)
    thus "(?z_hgi=?z_hcv)" .
   qed
  qed
 qed
 have zenon_L6_: "(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''bit''])~=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> FALSE" (is "?z_hla ==> ?z_hl ==> _ ==> ?z_hgk ==> ?z_hgl ==> FALSE")
 proof -
  assume z_Hla:"?z_hla" (is "?z_hlb~=?z_hcz")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hgk:"?z_hgk" (is "?z_hfn=_")
  assume z_Hgl:"?z_hgl" (is "?z_heu=?z_hfo")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcz"])
   have z_Hld: "((a_Fhash_primea[((?z_heu[a_punde_1a])[1])])=(a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])]))" (is "?z_hlc=?z_hda")
   proof (rule zenon_nnpp [of "(?z_hlc=?z_hda)"])
    assume z_Hle:"(?z_hlc~=?z_hda)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hda"])
     have z_Hki: "(((?z_heu[a_punde_1a])[1])=(((told[''arg''])[a_punde_1a])[1]))" (is "?z_hgi=?z_hcp")
     proof (rule zenon_nnpp [of "(?z_hgi=?z_hcp)"])
      assume z_Hgh:"(?z_hgi~=?z_hcp)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hgh z_Hl z_Hi z_Hgk z_Hgl])
     qed
     have z_Hlf: "(?z_hda~=?z_hda)"
     by (rule subst [where P="(\<lambda>zenon_Vhpm. ((a_Fhash_primea[zenon_Vhpm])~=?z_hda))", OF z_Hki], fact z_Hle)
     thus "(?z_hda~=?z_hda)" .
    qed
   qed
   have z_Hlk: "(?z_hcz~=?z_hcz)"
   by (rule subst [where P="(\<lambda>zenon_Vipm. ((zenon_Vipm[''bit''])~=?z_hcz))", OF z_Hld], fact z_Hla)
   thus "(?z_hcz~=?z_hcz)" .
  qed
 qed
 have zenon_L7_: "(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''bit''])~=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>))=PROCESSES) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> FALSE" (is "?z_hla ==> ?z_hl ==> _ ==> ?z_him ==> ?z_hin ==> FALSE")
 proof -
  assume z_Hla:"?z_hla" (is "?z_hlb~=?z_hcz")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Him:"?z_him" (is "?z_hhs=_")
  assume z_Hin:"?z_hin" (is "?z_heu=?z_hht")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcz"])
   have z_Hld: "((a_Fhash_primea[((?z_heu[a_punde_1a])[1])])=(a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])]))" (is "?z_hlc=?z_hda")
   proof (rule zenon_nnpp [of "(?z_hlc=?z_hda)"])
    assume z_Hle:"(?z_hlc~=?z_hda)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hda"])
     have z_Hki: "(((?z_heu[a_punde_1a])[1])=(((told[''arg''])[a_punde_1a])[1]))" (is "?z_hgi=?z_hcp")
     proof (rule zenon_nnpp [of "(?z_hgi=?z_hcp)"])
      assume z_Hgh:"(?z_hgi~=?z_hcp)"
      show FALSE
      by (rule zenon_L4_ [OF z_Hgh z_Hl z_Hi z_Him z_Hin])
     qed
     have z_Hlf: "(?z_hda~=?z_hda)"
     by (rule subst [where P="(\<lambda>zenon_Vhpm. ((a_Fhash_primea[zenon_Vhpm])~=?z_hda))", OF z_Hki], fact z_Hle)
     thus "(?z_hda~=?z_hda)" .
    qed
   qed
   have z_Hlk: "(?z_hcz~=?z_hcz)"
   by (rule subst [where P="(\<lambda>zenon_Vipm. ((zenon_Vipm[''bit''])~=?z_hcz))", OF z_Hld], fact z_Hla)
   thus "(?z_hcz~=?z_hcz)" .
  qed
 qed
 have zenon_L8_: "(?z_hej|?z_hex) ==> (((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''bit''])~=1) ==> (((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])=1) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_ho ==> ?z_hlp ==> ?z_hcy ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hlp:"?z_hlp" (is "?z_hlb~=?z_hcu")
  assume z_Hcy:"?z_hcy" (is "?z_hcz=_")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
   by (unfold bEx_def)
   have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
   by (unfold z_Hjg_z_Her, fact z_Her)
   have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
   by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
   have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hji])
   have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
   let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
   have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
   by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
   have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
   using z_Hjq by auto
   have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
   by (unfold prod_def)
   have z_Hjv: "?z_hjv"
   by (unfold z_Hjv_z_Hju, fact z_Hju)
   have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
   have z_Hgk: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
   by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hgl z_Hka])
   show FALSE
   proof (rule notE [OF z_Hlp])
    have z_Hlq: "(?z_hcz=?z_hlb)"
    proof (rule zenon_nnpp [of "(?z_hcz=?z_hlb)"])
     assume z_Hlr:"(?z_hcz~=?z_hlb)"
     show FALSE
     proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
      assume z_Hls:"(?z_hlb=?z_hlb)"
      show FALSE
      proof (rule notE [OF z_Hlr])
       have z_Hlt: "(?z_hlb=?z_hcz)"
       proof (rule zenon_nnpp [of "(?z_hlb=?z_hcz)"])
        assume z_Hla:"(?z_hlb~=?z_hcz)"
        show FALSE
        by (rule zenon_L6_ [OF z_Hla z_Hl z_Hi z_Hgk z_Hgl])
       qed
       have z_Hlq: "(?z_hcz=?z_hlb)"
       by (rule subst [where P="(\<lambda>zenon_Vlpm. (zenon_Vlpm=?z_hlb))", OF z_Hlt], fact z_Hls)
       thus "(?z_hcz=?z_hlb)" .
      qed
     next
      assume z_Hlx:"(?z_hlb~=?z_hlb)"
      show FALSE
      by (rule zenon_noteq [OF z_Hlx])
     qed
    qed
    have z_Hly: "(?z_hlb=?z_hcu)"
    by (rule subst [where P="(\<lambda>zenon_Vmpm. (zenon_Vmpm=?z_hcu))", OF z_Hlq], fact z_Hcy)
    thus "(?z_hlb=?z_hcu)" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
   by (unfold bEx_def)
   have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
   by (unfold z_Hkr_z_Hfb, fact z_Hfb)
   have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
   by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
   have z_Hkv: "?z_hkv"
   by (rule zenon_and_1 [OF z_Hkt])
   have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
   by (unfold bEx_def)
   have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
   by (unfold z_Hkw_z_Hkv, fact z_Hkv)
   have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
   by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
   have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
   by (rule zenon_and_1 [OF z_Hky])
   have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
   let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
   have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
   by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
   have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
   using z_Hjq by auto
   have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
   by (unfold prod_def)
   have z_Hjv: "?z_hjv"
   by (unfold z_Hjv_z_Hju, fact z_Hju)
   have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
   have z_Him: "(DOMAIN(?z_hht)=PROCESSES)" (is "?z_hhs=_")
   by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hin z_Hka])
   show FALSE
   proof (rule notE [OF z_Hlp])
    have z_Hlq: "(?z_hcz=?z_hlb)"
    proof (rule zenon_nnpp [of "(?z_hcz=?z_hlb)"])
     assume z_Hlr:"(?z_hcz~=?z_hlb)"
     show FALSE
     proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
      assume z_Hls:"(?z_hlb=?z_hlb)"
      show FALSE
      proof (rule notE [OF z_Hlr])
       have z_Hlt: "(?z_hlb=?z_hcz)"
       proof (rule zenon_nnpp [of "(?z_hlb=?z_hcz)"])
        assume z_Hla:"(?z_hlb~=?z_hcz)"
        show FALSE
        by (rule zenon_L7_ [OF z_Hla z_Hl z_Hi z_Him z_Hin])
       qed
       have z_Hlq: "(?z_hcz=?z_hlb)"
       by (rule subst [where P="(\<lambda>zenon_Vlpm. (zenon_Vlpm=?z_hlb))", OF z_Hlt], fact z_Hls)
       thus "(?z_hcz=?z_hlb)" .
      qed
     next
      assume z_Hlx:"(?z_hlb~=?z_hlb)"
      show FALSE
      by (rule zenon_noteq [OF z_Hlx])
     qed
    qed
    have z_Hly: "(?z_hlb=?z_hcu)"
    by (rule subst [where P="(\<lambda>zenon_Vmpm. (zenon_Vmpm=?z_hcu))", OF z_Hlq], fact z_Hcy)
    thus "(?z_hlb=?z_hcu)" .
   qed
  qed
 qed
 have zenon_L9_: "((((told[''arg''])[a_punde_1a])[1])~=(((t[''arg''])[a_punde_1a])[1])) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hkg ==> ?z_hgl ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Hkg:"?z_hkg" (is "?z_hcp~=?z_hgi")
  assume z_Hgl:"?z_hgl" (is "?z_heu=?z_hfo")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_noteq [of "?z_hgi"])
   have z_Hmc: "(((told[''arg''])[a_punde_1a])=(?z_heu[a_punde_1a]))" (is "?z_hcq=?z_hgj")
   proof (rule zenon_nnpp [of "(?z_hcq=?z_hgj)"])
    assume z_Hmd:"(?z_hcq~=?z_hgj)"
    have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
    let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
    let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
    have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
    have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
    by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
    have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
    using z_Hjq by auto
    have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
    by (unfold prod_def)
    have z_Hjv: "?z_hjv"
    by (unfold z_Hjv_z_Hju, fact z_Hju)
    have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
    by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
    have z_Hgk: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
    by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hgl z_Hka])
    have z_Hgo: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(?z_hgu=?z_hfn))&(\\A zenon_Vxvb:((?z_heu[zenon_Vxvb])=(?z_hfo[zenon_Vxvb]))))" (is "?z_hgp&?z_hgv")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hgl])
    have z_Hgv: "?z_hgv" (is "\\A x : ?z_hha(x)")
    by (rule zenon_and_1 [OF z_Hgo])
    have z_Hfj: "(\\A zenon_Voec:((zenon_Voec \\in ?z_hfn)<=>(zenon_Voec \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
    by (rule zenon_setequal_0 [of "?z_hfn" "PROCESSES", OF z_Hgk])
    have z_Hhb: "?z_hha(a_punde_1a)" (is "_=?z_hhc")
    by (rule zenon_all_0 [of "?z_hha" "a_punde_1a", OF z_Hgv])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vaub. (?z_hgj=zenon_Vaub))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hhb])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhg:"(p=a_punde_1a)"
     assume z_Hhh:"(?z_hgj=(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x)))))" (is "_=?z_hfp")
     show FALSE
     by (rule zenon_eqsym [OF z_Hhg z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhi:"(p~=a_punde_1a)"
     assume z_Hgm:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule zenon_eqsym [OF z_Hgm z_Hmd])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L1_ [OF z_Hfj z_Hi z_Hfw])
    qed
   qed
   have z_Hkm: "(?z_hgi~=?z_hgi)"
   by (rule subst [where P="(\<lambda>zenon_Vppm. ((zenon_Vppm[1])~=?z_hgi))", OF z_Hmc], fact z_Hkg)
   thus "(?z_hgi~=?z_hgi)" .
  qed
 qed
 have zenon_L10_: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank''])~=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''rank''])) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hmi ==> ?z_hgl ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Hmi:"?z_hmi" (is "?z_hdi~=?z_hmj")
  assume z_Hgl:"?z_hgl" (is "?z_heu=?z_hfo")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_noteq [of "?z_hmj"])
   have z_Hmk: "((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])=(a_Fhash_primea[((?z_heu[a_punde_1a])[1])]))" (is "?z_hda=?z_hlc")
   proof (rule zenon_nnpp [of "(?z_hda=?z_hlc)"])
    assume z_Hml:"(?z_hda~=?z_hlc)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hlc"])
     have z_Hkf: "((((told[''arg''])[a_punde_1a])[1])=((?z_heu[a_punde_1a])[1]))" (is "?z_hcp=?z_hgi")
     proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
      assume z_Hkg:"(?z_hcp~=?z_hgi)"
      show FALSE
      by (rule zenon_L9_ [OF z_Hkg z_Hgl z_Hi z_Hl z_Hj z_Hjd])
     qed
     have z_Hmm: "(?z_hlc~=?z_hlc)"
     by (rule subst [where P="(\<lambda>zenon_Vqpm. ((a_Fhash_primea[zenon_Vqpm])~=?z_hlc))", OF z_Hkf], fact z_Hml)
     thus "(?z_hlc~=?z_hlc)" .
    qed
   qed
   have z_Hmr: "(?z_hmj~=?z_hmj)"
   by (rule subst [where P="(\<lambda>zenon_Vrpm. ((zenon_Vrpm[''rank''])~=?z_hmj))", OF z_Hmk], fact z_Hmi)
   thus "(?z_hmj~=?z_hmj)" .
  qed
 qed
 have zenon_L11_: "((((told[''arg''])[a_punde_1a])[1])~=(((t[''arg''])[a_punde_1a])[1])) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hkg ==> ?z_hin ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Hkg:"?z_hkg" (is "?z_hcp~=?z_hgi")
  assume z_Hin:"?z_hin" (is "?z_heu=?z_hht")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_noteq [of "?z_hgi"])
   have z_Hmc: "(((told[''arg''])[a_punde_1a])=(?z_heu[a_punde_1a]))" (is "?z_hcq=?z_hgj")
   proof (rule zenon_nnpp [of "(?z_hcq=?z_hgj)"])
    assume z_Hmd:"(?z_hcq~=?z_hgj)"
    have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
    let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
    let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
    have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
    have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
    by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
    have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
    using z_Hjq by auto
    have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
    by (unfold prod_def)
    have z_Hjv: "?z_hjv"
    by (unfold z_Hjv_z_Hju, fact z_Hju)
    have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
    by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
    have z_Him: "(DOMAIN(?z_hht)=PROCESSES)" (is "?z_hhs=_")
    by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hin z_Hka])
    have z_Hio: "(((isAFcn(?z_heu)<=>isAFcn(?z_hht))&(?z_hgu=?z_hhs))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hht[zenon_Vbe]))))" (is "?z_hip&?z_hit")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hht", OF z_Hin])
    have z_Hit: "?z_hit" (is "\\A x : ?z_hiy(x)")
    by (rule zenon_and_1 [OF z_Hio])
    have z_Hho: "(\\A zenon_Vqn:((zenon_Vqn \\in ?z_hhs)<=>(zenon_Vqn \\in PROCESSES)))" (is "\\A x : ?z_hii(x)")
    by (rule zenon_setequal_0 [of "?z_hhs" "PROCESSES", OF z_Him])
    have z_Hiz: "?z_hiy(a_punde_1a)" (is "_=?z_hja")
    by (rule zenon_all_0 [of "?z_hiy" "a_punde_1a", OF z_Hit])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vaub. (?z_hgj=zenon_Vaub))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hiz])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhg:"(p=a_punde_1a)"
     assume z_Hjb:"(?z_hgj=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hhu")
     show FALSE
     by (rule zenon_eqsym [OF z_Hhg z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hhi:"(p~=a_punde_1a)"
     assume z_Hgm:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule zenon_eqsym [OF z_Hgm z_Hmd])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L3_ [OF z_Hho z_Hi z_Hfw])
    qed
   qed
   have z_Hkm: "(?z_hgi~=?z_hgi)"
   by (rule subst [where P="(\<lambda>zenon_Vppm. ((zenon_Vppm[1])~=?z_hgi))", OF z_Hmc], fact z_Hkg)
   thus "(?z_hgi~=?z_hgi)" .
  qed
 qed
 have zenon_L12_: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank''])~=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''rank''])) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hmi ==> ?z_hin ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> FALSE")
 proof -
  assume z_Hmi:"?z_hmi" (is "?z_hdi~=?z_hmj")
  assume z_Hin:"?z_hin" (is "?z_heu=?z_hht")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  show FALSE
  proof (rule zenon_noteq [of "?z_hmj"])
   have z_Hmk: "((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])=(a_Fhash_primea[((?z_heu[a_punde_1a])[1])]))" (is "?z_hda=?z_hlc")
   proof (rule zenon_nnpp [of "(?z_hda=?z_hlc)"])
    assume z_Hml:"(?z_hda~=?z_hlc)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hlc"])
     have z_Hkf: "((((told[''arg''])[a_punde_1a])[1])=((?z_heu[a_punde_1a])[1]))" (is "?z_hcp=?z_hgi")
     proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
      assume z_Hkg:"(?z_hcp~=?z_hgi)"
      show FALSE
      by (rule zenon_L11_ [OF z_Hkg z_Hin z_Hi z_Hl z_Hj z_Hjd])
     qed
     have z_Hmm: "(?z_hlc~=?z_hlc)"
     by (rule subst [where P="(\<lambda>zenon_Vqpm. ((a_Fhash_primea[zenon_Vqpm])~=?z_hlc))", OF z_Hkf], fact z_Hml)
     thus "(?z_hlc~=?z_hlc)" .
    qed
   qed
   have z_Hmr: "(?z_hmj~=?z_hmj)"
   by (rule subst [where P="(\<lambda>zenon_Vrpm. ((zenon_Vrpm[''rank''])~=?z_hmj))", OF z_Hmk], fact z_Hmi)
   thus "(?z_hmj~=?z_hmj)" .
  qed
 qed
 have zenon_L13_: "(?z_hej|?z_hex) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> (((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])) ==> (~(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank'']))) ==> FALSE" (is "?z_ho ==> _ ==> ?z_hl ==> _ ==> ?z_hjd ==> ?z_hdh ==> ?z_hmw ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hjd:"?z_hjd"
  assume z_Hdh:"?z_hdh"
  assume z_Hmw:"?z_hmw" (is "~?z_hmx")
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
   by (unfold bEx_def)
   have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
   by (unfold z_Hjg_z_Her, fact z_Her)
   have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
   by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
   have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hji])
   show FALSE
   proof (rule notE [OF z_Hmw])
    have z_Hmy: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank''])=((a_Fhash_primea[((?z_heu[a_punde_1a])[1])])[''rank'']))" (is "?z_hdi=?z_hmj")
    proof (rule zenon_nnpp [of "(?z_hdi=?z_hmj)"])
     assume z_Hmi:"(?z_hdi~=?z_hmj)"
     show FALSE
     by (rule zenon_L10_ [OF z_Hmi z_Hgl z_Hi z_Hl z_Hj z_Hjd])
    qed
    have z_Hmx: "?z_hmx"
    by (rule subst [where P="(\<lambda>zenon_Vvpm. (zenon_Vvpm < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])))", OF z_Hmy], fact z_Hdh)
    thus "?z_hmx" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
   by (unfold bEx_def)
   have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
   by (unfold z_Hkr_z_Hfb, fact z_Hfb)
   have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
   by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
   have z_Hkv: "?z_hkv"
   by (rule zenon_and_1 [OF z_Hkt])
   have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
   by (unfold bEx_def)
   have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
   by (unfold z_Hkw_z_Hkv, fact z_Hkv)
   have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
   by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
   have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
   by (rule zenon_and_1 [OF z_Hky])
   show FALSE
   proof (rule notE [OF z_Hmw])
    have z_Hmy: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank''])=((a_Fhash_primea[((?z_heu[a_punde_1a])[1])])[''rank'']))" (is "?z_hdi=?z_hmj")
    proof (rule zenon_nnpp [of "(?z_hdi=?z_hmj)"])
     assume z_Hmi:"(?z_hdi~=?z_hmj)"
     show FALSE
     by (rule zenon_L12_ [OF z_Hmi z_Hin z_Hi z_Hl z_Hj z_Hjd])
    qed
    have z_Hmx: "?z_hmx"
    by (rule subst [where P="(\<lambda>zenon_Vvpm. (zenon_Vvpm < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])))", OF z_Hmy], fact z_Hdh)
    thus "?z_hmx" .
   qed
  qed
 qed
 assume z_Hy:"(~(((((t[''arg''])[a_punde_1a])[1])=(a_uunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''bit''])=1)|((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''bit''])=0)&((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[1])])[''rank'']))&((((t[''arg''])[a_punde_1a])[1]) <= (a_uunde_Uhash_primea[a_punde_1a]))))))))" (is "~(?z_hkn|?z_hnd)")
 have z_Hba: "?z_hba" (is "_&?z_hbc")
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hbc: "?z_hbc" (is "_&?z_hbe")
 by (rule zenon_and_1 [OF z_Hba])
 have z_Hbe: "?z_hbe" (is "_&?z_hbg")
 by (rule zenon_and_1 [OF z_Hbc])
 have z_Hbg: "?z_hbg" (is "_&?z_hbi")
 by (rule zenon_and_1 [OF z_Hbe])
 have z_Hbi: "?z_hbi" (is "_&?z_hbk")
 by (rule zenon_and_1 [OF z_Hbg])
 have z_Hbk: "?z_hbk" (is "_&?z_hbm")
 by (rule zenon_and_1 [OF z_Hbi])
 have z_Hbm: "?z_hbm" (is "_&?z_hbo")
 by (rule zenon_and_1 [OF z_Hbk])
 have z_Hbo: "?z_hbo" (is "_&?z_hbq")
 by (rule zenon_and_1 [OF z_Hbm])
 have z_Hbq: "?z_hbq" (is "_&?z_hbs")
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hbs: "?z_hbs" (is "_&?z_hbu")
 by (rule zenon_and_1 [OF z_Hbq])
 have z_Hbu: "?z_hbu"
 by (rule zenon_and_1 [OF z_Hbs])
 have z_Hnk: "(a_Mhash_primea \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hnk")
 by (rule zenon_in_SUBSET_0 [of "a_Mhash_primea" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbu])
 have z_Hjd_z_Hnk: "bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hnk" (is "?z_hjd == _")
 by (unfold subset_def)
 have z_Hjd: "?z_hjd"
 by (unfold z_Hjd_z_Hnk, fact z_Hnk)
 have z_Hcn: "?z_hcn" (is "?z_hco|?z_hcx")
 by (rule zenon_and_0 [OF z_Hu])
 have z_Hjc: "((((t[''arg''])[a_punde_1a])[1])~=(a_uunde_Uhash_primea[a_punde_1a]))" (is "?z_hgi~=?z_hcv")
 by (rule zenon_notor_0 [OF z_Hy])
 have z_Hnl: "(~?z_hnd)" (is "~(?z_hly|?z_hne)")
 by (rule zenon_notor_1 [OF z_Hy])
 have z_Hlp: "(((a_Fhash_primea[?z_hgi])[''bit''])~=1)" (is "?z_hlb~=?z_hcu")
 by (rule zenon_notor_0 [OF z_Hnl])
 have z_Hnm: "(~?z_hne)" (is "~(?z_hnf&?z_hng)")
 by (rule zenon_notor_1 [OF z_Hnl])
 show FALSE
 proof (rule zenon_notand [OF z_Hnm])
  assume z_Hnn:"(?z_hlb~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hcn])
   assume z_Hco:"?z_hco" (is "?z_hcp=_")
   show FALSE
   by (rule zenon_L5_ [OF z_Ho z_Hjc z_Hco z_Hi z_Hl z_Hj z_Hjd])
  next
   assume z_Hcx:"?z_hcx" (is "?z_hcy|?z_hdd")
   show FALSE
   proof (rule zenon_or [OF z_Hcx])
    assume z_Hcy:"?z_hcy" (is "?z_hcz=_")
    show FALSE
    by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hcy z_Hi z_Hl z_Hj z_Hjd])
   next
    assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hdg")
    have z_Hde: "?z_hde" (is "?z_hcz=_")
    by (rule zenon_and_0 [OF z_Hdd])
    show FALSE
    proof (rule zenon_or [OF z_Ho])
     assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
     have z_Her: "?z_her"
     by (rule zenon_and_1 [OF z_Hej])
     have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
     by (unfold bEx_def)
     have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
     by (unfold z_Hjg_z_Her, fact z_Her)
     have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
     by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
     have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
     by (rule zenon_and_1 [OF z_Hji])
     have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
     by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
     let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
     let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
     have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
     have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
     by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
     have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
     using z_Hjq by auto
     have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
     by (unfold prod_def)
     have z_Hjv: "?z_hjv"
     by (unfold z_Hjv_z_Hju, fact z_Hju)
     have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
     by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
     have z_Hgk: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
     by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hgl z_Hka])
     show FALSE
     proof (rule notE [OF z_Hnn])
      have z_Hlq: "(?z_hcz=?z_hlb)"
      proof (rule zenon_nnpp [of "(?z_hcz=?z_hlb)"])
       assume z_Hlr:"(?z_hcz~=?z_hlb)"
       show FALSE
       proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
        assume z_Hls:"(?z_hlb=?z_hlb)"
        show FALSE
        proof (rule notE [OF z_Hlr])
         have z_Hlt: "(?z_hlb=?z_hcz)"
         proof (rule zenon_nnpp [of "(?z_hlb=?z_hcz)"])
          assume z_Hla:"(?z_hlb~=?z_hcz)"
          show FALSE
          by (rule zenon_L6_ [OF z_Hla z_Hl z_Hi z_Hgk z_Hgl])
         qed
         have z_Hlq: "(?z_hcz=?z_hlb)"
         by (rule subst [where P="(\<lambda>zenon_Vlpm. (zenon_Vlpm=?z_hlb))", OF z_Hlt], fact z_Hls)
         thus "(?z_hcz=?z_hlb)" .
        qed
       next
        assume z_Hlx:"(?z_hlb~=?z_hlb)"
        show FALSE
        by (rule zenon_noteq [OF z_Hlx])
       qed
      qed
      have z_Hnf: "?z_hnf"
      by (rule subst [where P="(\<lambda>zenon_Vypm. (zenon_Vypm=0))", OF z_Hlq], fact z_Hde)
      thus "?z_hnf" .
     qed
    next
     assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
     have z_Hfb: "?z_hfb"
     by (rule zenon_and_1 [OF z_Hex])
     have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
     by (unfold bEx_def)
     have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
     by (unfold z_Hkr_z_Hfb, fact z_Hfb)
     have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
     by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
     have z_Hkv: "?z_hkv"
     by (rule zenon_and_1 [OF z_Hkt])
     have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
     by (unfold bEx_def)
     have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
     by (unfold z_Hkw_z_Hkv, fact z_Hkv)
     have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
     by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
     have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
     by (rule zenon_and_1 [OF z_Hky])
     have z_Hjk: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hjk")
     by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hjd z_Hj])
     let ?z_hjl = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
     let ?z_hjm = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
     have z_Hjn: "(4 \\in DOMAIN(?z_hjl))" by auto
     have z_Hjq: "((t[(?z_hjl[4])]) \\in (?z_hjm[4]))" (is "?z_hjq")
     by (rule zenon_in_recordset_field [OF z_Hjk z_Hjn])
     have z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hju")
     using z_Hjq by auto
     have z_Hjv_z_Hju: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hju" (is "?z_hjv == _")
     by (unfold prod_def)
     have z_Hjv: "?z_hjv"
     by (unfold z_Hjv_z_Hju, fact z_Hju)
     have z_Hka: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hgu=_")
     by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hjv])
     have z_Him: "(DOMAIN(?z_hht)=PROCESSES)" (is "?z_hhs=_")
     by (rule subst [where P="(\<lambda>zenon_Vjn. (DOMAIN(zenon_Vjn)=PROCESSES))", OF z_Hin z_Hka])
     show FALSE
     proof (rule notE [OF z_Hnn])
      have z_Hlq: "(?z_hcz=?z_hlb)"
      proof (rule zenon_nnpp [of "(?z_hcz=?z_hlb)"])
       assume z_Hlr:"(?z_hcz~=?z_hlb)"
       show FALSE
       proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
        assume z_Hls:"(?z_hlb=?z_hlb)"
        show FALSE
        proof (rule notE [OF z_Hlr])
         have z_Hlt: "(?z_hlb=?z_hcz)"
         proof (rule zenon_nnpp [of "(?z_hlb=?z_hcz)"])
          assume z_Hla:"(?z_hlb~=?z_hcz)"
          show FALSE
          by (rule zenon_L7_ [OF z_Hla z_Hl z_Hi z_Him z_Hin])
         qed
         have z_Hlq: "(?z_hcz=?z_hlb)"
         by (rule subst [where P="(\<lambda>zenon_Vlpm. (zenon_Vlpm=?z_hlb))", OF z_Hlt], fact z_Hls)
         thus "(?z_hcz=?z_hlb)" .
        qed
       next
        assume z_Hlx:"(?z_hlb~=?z_hlb)"
        show FALSE
        by (rule zenon_noteq [OF z_Hlx])
       qed
      qed
      have z_Hnf: "?z_hnf"
      by (rule subst [where P="(\<lambda>zenon_Vypm. (zenon_Vypm=0))", OF z_Hlq], fact z_Hde)
      thus "?z_hnf" .
     qed
    qed
   qed
  qed
 next
  assume z_Hnr:"(~?z_hng)" (is "~(?z_hmx|?z_hnh)")
  have z_Hmw: "(~?z_hmx)"
  by (rule zenon_notor_0 [OF z_Hnr])
  have z_Hns: "(~?z_hnh)" (is "~(?z_hni&?z_hnj)")
  by (rule zenon_notor_1 [OF z_Hnr])
  show FALSE
  proof (rule zenon_notand [OF z_Hns])
   assume z_Hnt:"(((a_Fhash_primea[?z_hcv])[''rank''])~=((a_Fhash_primea[?z_hgi])[''rank'']))" (is "?z_hdk~=?z_hmj")
   show FALSE
   proof (rule zenon_or [OF z_Hcn])
    assume z_Hco:"?z_hco" (is "?z_hcp=_")
    show FALSE
    by (rule zenon_L5_ [OF z_Ho z_Hjc z_Hco z_Hi z_Hl z_Hj z_Hjd])
   next
    assume z_Hcx:"?z_hcx" (is "?z_hcy|?z_hdd")
    show FALSE
    proof (rule zenon_or [OF z_Hcx])
     assume z_Hcy:"?z_hcy" (is "?z_hcz=_")
     show FALSE
     by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hcy z_Hi z_Hl z_Hj z_Hjd])
    next
     assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hdg")
     have z_Hdg: "?z_hdg" (is "?z_hdh|?z_hdm")
     by (rule zenon_and_1 [OF z_Hdd])
     show FALSE
     proof (rule zenon_or [OF z_Hdg])
      assume z_Hdh:"?z_hdh"
      show FALSE
      by (rule zenon_L13_ [OF z_Ho z_Hi z_Hl z_Hj z_Hjd z_Hdh z_Hmw])
     next
      assume z_Hdm:"?z_hdm" (is "?z_hdn&?z_hdo")
      have z_Hdn: "?z_hdn" (is "_=?z_hdi")
      by (rule zenon_and_0 [OF z_Hdm])
      show FALSE
      proof (rule zenon_or [OF z_Ho])
       assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
       have z_Her: "?z_her"
       by (rule zenon_and_1 [OF z_Hej])
       have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
       by (unfold bEx_def)
       have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
       by (unfold z_Hjg_z_Her, fact z_Her)
       have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
       by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
       have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
       by (rule zenon_and_1 [OF z_Hji])
       show FALSE
       proof (rule notE [OF z_Hnt])
        have z_Hmy: "(?z_hdi=?z_hmj)"
        proof (rule zenon_nnpp [of "(?z_hdi=?z_hmj)"])
         assume z_Hmi:"(?z_hdi~=?z_hmj)"
         show FALSE
         by (rule zenon_L10_ [OF z_Hmi z_Hgl z_Hi z_Hl z_Hj z_Hjd])
        qed
        have z_Hni: "?z_hni"
        by (rule subst [where P="(\<lambda>zenon_Vbqm. (?z_hdk=zenon_Vbqm))", OF z_Hmy], fact z_Hdn)
        thus "?z_hni" .
       qed
      next
       assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
       have z_Hfb: "?z_hfb"
       by (rule zenon_and_1 [OF z_Hex])
       have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
       by (unfold bEx_def)
       have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
       by (unfold z_Hkr_z_Hfb, fact z_Hfb)
       have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
       by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
       have z_Hkv: "?z_hkv"
       by (rule zenon_and_1 [OF z_Hkt])
       have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
       by (unfold bEx_def)
       have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
       by (unfold z_Hkw_z_Hkv, fact z_Hkv)
       have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
       by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
       have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
       by (rule zenon_and_1 [OF z_Hky])
       show FALSE
       proof (rule notE [OF z_Hnt])
        have z_Hmy: "(?z_hdi=?z_hmj)"
        proof (rule zenon_nnpp [of "(?z_hdi=?z_hmj)"])
         assume z_Hmi:"(?z_hdi~=?z_hmj)"
         show FALSE
         by (rule zenon_L12_ [OF z_Hmi z_Hin z_Hi z_Hl z_Hj z_Hjd])
        qed
        have z_Hni: "?z_hni"
        by (rule subst [where P="(\<lambda>zenon_Vbqm. (?z_hdk=zenon_Vbqm))", OF z_Hmy], fact z_Hdn)
        thus "?z_hni" .
       qed
      qed
     qed
    qed
   qed
  next
   assume z_Hnx:"(~?z_hnj)"
   show FALSE
   proof (rule zenon_or [OF z_Hcn])
    assume z_Hco:"?z_hco" (is "?z_hcp=_")
    show FALSE
    by (rule zenon_L5_ [OF z_Ho z_Hjc z_Hco z_Hi z_Hl z_Hj z_Hjd])
   next
    assume z_Hcx:"?z_hcx" (is "?z_hcy|?z_hdd")
    show FALSE
    proof (rule zenon_or [OF z_Hcx])
     assume z_Hcy:"?z_hcy" (is "?z_hcz=_")
     show FALSE
     by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hcy z_Hi z_Hl z_Hj z_Hjd])
    next
     assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hdg")
     have z_Hdg: "?z_hdg" (is "?z_hdh|?z_hdm")
     by (rule zenon_and_1 [OF z_Hdd])
     show FALSE
     proof (rule zenon_or [OF z_Hdg])
      assume z_Hdh:"?z_hdh"
      show FALSE
      by (rule zenon_L13_ [OF z_Ho z_Hi z_Hl z_Hj z_Hjd z_Hdh z_Hmw])
     next
      assume z_Hdm:"?z_hdm" (is "?z_hdn&?z_hdo")
      have z_Hdo: "?z_hdo"
      by (rule zenon_and_1 [OF z_Hdm])
      show FALSE
      proof (rule zenon_or [OF z_Ho])
       assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
       have z_Her: "?z_her"
       by (rule zenon_and_1 [OF z_Hej])
       have z_Hjg_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_hjg == _")
       by (unfold bEx_def)
       have z_Hjg: "?z_hjg" (is "\\E x : ?z_hjh(x)")
       by (unfold z_Hjg_z_Her, fact z_Her)
       have z_Hji: "?z_hjh((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hjj&?z_hgl")
       by (rule zenon_ex_choose_0 [of "?z_hjh", OF z_Hjg])
       have z_Hgl: "?z_hgl" (is "?z_heu=?z_hfo")
       by (rule zenon_and_1 [OF z_Hji])
       show FALSE
       proof (rule notE [OF z_Hnx])
        have z_Hkf: "((((told[''arg''])[a_punde_1a])[?z_hcu])=?z_hgi)" (is "?z_hcp=_")
        proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
         assume z_Hkg:"(?z_hcp~=?z_hgi)"
         show FALSE
         by (rule zenon_L9_ [OF z_Hkg z_Hgl z_Hi z_Hl z_Hj z_Hjd])
        qed
        have z_Hnj: "?z_hnj"
        by (rule subst [where P="(\<lambda>zenon_Vdqm. (zenon_Vdqm <= ?z_hcv))", OF z_Hkf], fact z_Hdo)
        thus "?z_hnj" .
       qed
      next
       assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
       have z_Hfb: "?z_hfb"
       by (rule zenon_and_1 [OF z_Hex])
       have z_Hkr_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkr == _")
       by (unfold bEx_def)
       have z_Hkr: "?z_hkr" (is "\\E x : ?z_hks(x)")
       by (unfold z_Hkr_z_Hfb, fact z_Hfb)
       have z_Hkt: "?z_hks((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hku&?z_hkv")
       by (rule zenon_ex_choose_0 [of "?z_hks", OF z_Hkr])
       have z_Hkv: "?z_hkv"
       by (rule zenon_and_1 [OF z_Hkt])
       have z_Hkw_z_Hkv: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkv" (is "?z_hkw == _")
       by (unfold bEx_def)
       have z_Hkw: "?z_hkw" (is "\\E x : ?z_hkx(x)")
       by (unfold z_Hkw_z_Hkv, fact z_Hkv)
       have z_Hky: "?z_hkx((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkz&?z_hin")
       by (rule zenon_ex_choose_0 [of "?z_hkx", OF z_Hkw])
       have z_Hin: "?z_hin" (is "?z_heu=?z_hht")
       by (rule zenon_and_1 [OF z_Hky])
       show FALSE
       proof (rule notE [OF z_Hnx])
        have z_Hkf: "((((told[''arg''])[a_punde_1a])[?z_hcu])=?z_hgi)" (is "?z_hcp=_")
        proof (rule zenon_nnpp [of "(?z_hcp=?z_hgi)"])
         assume z_Hkg:"(?z_hcp~=?z_hgi)"
         show FALSE
         by (rule zenon_L11_ [OF z_Hkg z_Hin z_Hi z_Hl z_Hj z_Hjd])
        qed
        have z_Hnj: "?z_hnj"
        by (rule subst [where P="(\<lambda>zenon_Vdqm. (zenon_Vdqm <= ?z_hcv))", OF z_Hkf], fact z_Hdo)
        thus "?z_hnj" .
       qed
      qed
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 24"; *} qed
lemma ob'26:
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
(* usable definition StateSet suppressed *)
(* usable definition ReturnSet suppressed *)
(* usable definition OpSet suppressed *)
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
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
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
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
(* usable definition Inv suppressed *)
assumes v'105: "(Inv)"
assumes v'106: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'108: "(((\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (i)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret''))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | ((\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> a_tunde_olda \<in> (M) : ((((fapply ((fapply ((a_tunde_olda), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((a_tunde_olda), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((a_tunde_olda), (''sigma''))))) & (((fapply ((t), (''op''))) = ([(fapply ((a_tunde_olda), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (((fapply ((t), (''arg''))) = ([(fapply ((a_tunde_olda), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))) & (((fapply ((t), (''ret''))) = (fapply ((a_tunde_olda), (''ret'')))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'109: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'113: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'114: "((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
assumes v'133: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))) = (fapply ((a_uunde_Ua), (p_1))))) | (((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Ua), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Ua), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Ua), (p_1))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))))))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))) = (fapply ((a_vunde_Ua), (p_1))))) | (((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_vunde_Ua), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_vunde_Ua), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply ((a_vunde_Ua), (p_1))), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))))))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'136: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8'')))"
assumes v'139: "(((a_punde_1a) \<noteq> (p)))"
assumes v'140: "(((fapply ((pc), (a_punde_1a))) = (''U8'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'143: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'144: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'145: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'146: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'147: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'148: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
assumes v'154: "(((((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))) = (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))))))))) & ((((fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))) = (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))))))))))"
assumes v'155: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'156: "(((fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((told), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))"
assumes v'162: "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))"
shows "((((fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))) = (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]]))))))))))))"(is "PROP ?ob'26")
proof -
ML_command {* writeln "*** TLAPS ENTER 26"; *}
show "PROP ?ob'26"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_d667da.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_d667da.znn.out
;; obligation #26
$hyp "v'105" Inv
$hyp "v'106" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'108" (\/ (/\ (TLA.bEx NodeSet ((i) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_pchash_primea (TLA.except pc p "F1"))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "F"))
(= (TLA.fapply t "arg") (TLA.except (TLA.fapply a_tunde_olda "arg") p i))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_dhash_primea d)))
(/\ (TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_pchash_primea (TLA.except pc p "U1")) (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((a_tunde_olda) (/\ (= (TLA.fapply (TLA.fapply a_tunde_olda "ret") p)
BOT) (= (TLA.fapply (TLA.fapply a_tunde_olda "op") p) BOT)
(= (TLA.fapply (TLA.fapply a_tunde_olda "arg") p) BOT)
(= (TLA.fapply t "sigma") (TLA.fapply a_tunde_olda "sigma"))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply a_tunde_olda "op") p "U"))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply a_tunde_olda "arg") p (TLA.tuple i j)))
(= (TLA.fapply t "ret") (TLA.fapply a_tunde_olda "ret")))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'109" (= (TLA.fapply pc p)
"0")
$hyp "v'113" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet)))))))
$hyp "v'114" (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "v'133" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p_1)
"U8") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Ua p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Ua p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p_1))))))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_vunde_Ua p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_vunde_Ua p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p_1))))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'136" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8")
$hyp "v'139" (-. (= a_punde_1a p))
$hyp "v'140" (= (TLA.fapply pc a_punde_1a)
"U8")
$hyp "told_in" (TLA.in told M)
$hyp "v'143" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'144" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'145" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'146" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'147" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'148" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$hyp "v'154" (/\ (\/ (= (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))))))
(\/ (= (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))))
$hyp "v'155" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
$hyp "v'156" (= (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
$hyp "v'162" (TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
$goal (\/ (= (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_vunde_Uhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) "rank"))
(arith.le (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_h889ac679c3d5fa68ecd826c512cbf0a&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&(a_Mhash_primea \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))" (is "_&?z_hba")
 using v'113 by blast
 have z_Hu:"((((((told[''arg''])[a_punde_1a])[1])=(a_uunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])=1)|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''bit''])=0)&((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[1])])[''rank'']))&((((told[''arg''])[a_punde_1a])[1]) <= (a_uunde_Uhash_primea[a_punde_1a])))))))&(((((told[''arg''])[a_punde_1a])[2])=(a_vunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])=1)|((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])=0)&((((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank'']) < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank'']))&((((told[''arg''])[a_punde_1a])[2]) <= (a_vunde_Uhash_primea[a_punde_1a]))))))))" (is "?z_hcn&?z_hdp")
 using v'154 by blast
 have z_Ho:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hej|?z_hex")
 using v'143 by blast
 have z_Hi:"(a_punde_1a \\in PROCESSES)" (is "?z_hi")
 using a_punde_1a_in by blast
 have z_Hl:"(a_punde_1a~=p)"
 using v'139 by blast
 have z_Hj:"(t \\in a_Mhash_primea)" (is "?z_hj")
 using t_in by blast
 have zenon_L1_: "(\\A zenon_Vnec:((zenon_Vnec \\in DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))))<=>(zenon_Vnec \\in PROCESSES))) ==> ?z_hi ==> (~(a_punde_1a \\in DOMAIN((told[''arg''])))) ==> FALSE" (is "?z_hfj ==> _ ==> ?z_hfw ==> FALSE")
 proof -
  assume z_Hfj:"?z_hfj" (is "\\A x : ?z_hfz(x)")
  assume z_Hi:"?z_hi"
  assume z_Hfw:"?z_hfw" (is "~?z_hfx")
  have z_Hga: "?z_hfz(a_punde_1a)" (is "?z_hgb<=>_")
  by (rule zenon_all_0 [of "?z_hfz" "a_punde_1a", OF z_Hfj])
  show FALSE
  proof (rule zenon_equiv [OF z_Hga])
   assume z_Hgc:"(~?z_hgb)"
   assume z_Hgd:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgd z_Hi])
  next
   assume z_Hgb:"?z_hgb"
   assume z_Hi:"?z_hi"
   have z_Hfx: "?z_hfx"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vfvb. (a_punde_1a \\in zenon_Vfvb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))", OF z_Hgb])
   show FALSE
   by (rule notE [OF z_Hfw z_Hfx])
  qed
 qed
 have zenon_L2_: "((((t[''arg''])[a_punde_1a])[2])~=(((told[''arg''])[a_punde_1a])[2])) ==> (\\A zenon_Vwvb:(((t[''arg''])[zenon_Vwvb])=(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))[zenon_Vwvb]))) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))))=PROCESSES) ==> FALSE" (is "?z_hgh ==> ?z_hgk ==> ?z_hl ==> _ ==> ?z_hgp ==> FALSE")
 proof -
  assume z_Hgh:"?z_hgh" (is "?z_hgi~=?z_hdr")
  assume z_Hgk:"?z_hgk" (is "\\A x : ?z_hgq(x)")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hgp:"?z_hgp" (is "?z_hfn=_")
  show FALSE
  proof (rule zenon_noteq [of "?z_hdr"])
   have z_Hgr: "(((t[''arg''])[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hgj=?z_hcq")
   proof (rule zenon_nnpp [of "(?z_hgj=?z_hcq)"])
    assume z_Hgs:"(?z_hgj~=?z_hcq)"
    have z_Hfj: "(\\A zenon_Vnec:((zenon_Vnec \\in ?z_hfn)<=>(zenon_Vnec \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
    by (rule zenon_setequal_0 [of "?z_hfn" "PROCESSES", OF z_Hgp])
    have z_Hgt: "?z_hgq(a_punde_1a)" (is "_=?z_hgu")
    by (rule zenon_all_0 [of "?z_hgq" "a_punde_1a", OF z_Hgk])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vztb. (?z_hgj=zenon_Vztb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hgt])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hgy:"(p=a_punde_1a)"
     assume z_Hgz:"(?z_hgj=(CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "_=?z_hfp")
     show FALSE
     by (rule zenon_eqsym [OF z_Hgy z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hha:"(p~=a_punde_1a)"
     assume z_Hgr:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule notE [OF z_Hgs z_Hgr])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L1_ [OF z_Hfj z_Hi z_Hfw])
    qed
   qed
   have z_Hhb: "(?z_hdr~=?z_hdr)"
   by (rule subst [where P="(\<lambda>zenon_Vlcn. ((zenon_Vlcn[2])~=?z_hdr))", OF z_Hgr], fact z_Hgh)
   thus "(?z_hdr~=?z_hdr)" .
  qed
 qed
 have zenon_L3_: "(\\A zenon_Ven:((zenon_Ven \\in DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)))<=>(zenon_Ven \\in PROCESSES))) ==> ?z_hi ==> (~(a_punde_1a \\in DOMAIN((told[''arg''])))) ==> FALSE" (is "?z_hhg ==> _ ==> ?z_hfw ==> FALSE")
 proof -
  assume z_Hhg:"?z_hhg" (is "\\A x : ?z_hia(x)")
  assume z_Hi:"?z_hi"
  assume z_Hfw:"?z_hfw" (is "~?z_hfx")
  have z_Hib: "?z_hia(a_punde_1a)" (is "?z_hic<=>_")
  by (rule zenon_all_0 [of "?z_hia" "a_punde_1a", OF z_Hhg])
  show FALSE
  proof (rule zenon_equiv [OF z_Hib])
   assume z_Hid:"(~?z_hic)"
   assume z_Hgd:"(~?z_hi)"
   show FALSE
   by (rule notE [OF z_Hgd z_Hi])
  next
   assume z_Hic:"?z_hic"
   assume z_Hi:"?z_hi"
   have z_Hfx: "?z_hfx"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vfvb. (a_punde_1a \\in zenon_Vfvb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>", OF z_Hic])
   show FALSE
   by (rule notE [OF z_Hfw z_Hfx])
  qed
 qed
 have zenon_L4_: "((((t[''arg''])[a_punde_1a])[2])~=(((told[''arg''])[a_punde_1a])[2])) ==> (\\A zenon_Vbe:(((t[''arg''])[zenon_Vbe])=(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)[zenon_Vbe]))) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>))=PROCESSES) ==> FALSE" (is "?z_hgh ==> ?z_hie ==> ?z_hl ==> _ ==> ?z_hij ==> FALSE")
 proof -
  assume z_Hgh:"?z_hgh" (is "?z_hgi~=?z_hdr")
  assume z_Hie:"?z_hie" (is "\\A x : ?z_hik(x)")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hij:"?z_hij" (is "?z_hhk=_")
  show FALSE
  proof (rule zenon_noteq [of "?z_hdr"])
   have z_Hgr: "(((t[''arg''])[a_punde_1a])=((told[''arg''])[a_punde_1a]))" (is "?z_hgj=?z_hcq")
   proof (rule zenon_nnpp [of "(?z_hgj=?z_hcq)"])
    assume z_Hgs:"(?z_hgj~=?z_hcq)"
    have z_Hhg: "(\\A zenon_Ven:((zenon_Ven \\in ?z_hhk)<=>(zenon_Ven \\in PROCESSES)))" (is "\\A x : ?z_hia(x)")
    by (rule zenon_setequal_0 [of "?z_hhk" "PROCESSES", OF z_Hij])
    have z_Hil: "?z_hik(a_punde_1a)" (is "_=?z_him")
    by (rule zenon_all_0 [of "?z_hik" "a_punde_1a", OF z_Hie])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vztb. (?z_hgj=zenon_Vztb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hil])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hgy:"(p=a_punde_1a)"
     assume z_Hin:"(?z_hgj=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hhm")
     show FALSE
     by (rule zenon_eqsym [OF z_Hgy z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hha:"(p~=a_punde_1a)"
     assume z_Hgr:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule notE [OF z_Hgs z_Hgr])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L3_ [OF z_Hhg z_Hi z_Hfw])
    qed
   qed
   have z_Hhb: "(?z_hdr~=?z_hdr)"
   by (rule subst [where P="(\<lambda>zenon_Vlcn. ((zenon_Vlcn[2])~=?z_hdr))", OF z_Hgr], fact z_Hgh)
   thus "(?z_hdr~=?z_hdr)" .
  qed
 qed
 have zenon_L5_: "(?z_hej|?z_hex) ==> ((((t[''arg''])[a_punde_1a])[2])~=(a_vunde_Uhash_primea[a_punde_1a])) ==> ((((told[''arg''])[a_punde_1a])[2])=(a_vunde_Uhash_primea[a_punde_1a])) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_ho ==> ?z_hio ==> ?z_hdq ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hio:"?z_hio" (is "?z_hgi~=?z_hdt")
  assume z_Hdq:"?z_hdq" (is "?z_hdr=_")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
   by (unfold bEx_def)
   have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
   by (unfold z_His_z_Her, fact z_Her)
   have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
   by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
   have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hiu])
   have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
   let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
   have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
   by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
   have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
   using z_Hjd by auto
   have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
   by (unfold prod_def)
   have z_Hji: "?z_hji"
   by (unfold z_Hji_z_Hjh, fact z_Hjh)
   have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
   have z_Hgp: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
   by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hiw z_Hjn])
   have z_Hjt: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(?z_hjo=?z_hfn))&(\\A zenon_Vwvb:((?z_heu[zenon_Vwvb])=(?z_hfo[zenon_Vwvb]))))" (is "?z_hju&?z_hgk")
   by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hiw])
   have z_Hgk: "?z_hgk" (is "\\A x : ?z_hgq(x)")
   by (rule zenon_and_1 [OF z_Hjt])
   show FALSE
   proof (rule notE [OF z_Hio])
    have z_Hjz: "(?z_hdr=?z_hgi)"
    proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
     assume z_Hka:"(?z_hdr~=?z_hgi)"
     show FALSE
     proof (rule zenon_em [of "(?z_hgi=?z_hgi)"])
      assume z_Hkb:"(?z_hgi=?z_hgi)"
      show FALSE
      proof (rule notE [OF z_Hka])
       have z_Hkc: "(?z_hgi=?z_hdr)"
       proof (rule zenon_nnpp [of "(?z_hgi=?z_hdr)"])
        assume z_Hgh:"(?z_hgi~=?z_hdr)"
        show FALSE
        by (rule zenon_L2_ [OF z_Hgh z_Hgk z_Hl z_Hi z_Hgp])
       qed
       have z_Hjz: "(?z_hdr=?z_hgi)"
       by (rule subst [where P="(\<lambda>zenon_Vncn. (zenon_Vncn=?z_hgi))", OF z_Hkc], fact z_Hkb)
       thus "(?z_hdr=?z_hgi)" .
      qed
     next
      assume z_Hkg:"(?z_hgi~=?z_hgi)"
      show FALSE
      by (rule zenon_noteq [OF z_Hkg])
     qed
    qed
    have z_Hkh: "(?z_hgi=?z_hdt)"
    by (rule subst [where P="(\<lambda>zenon_Vocn. (zenon_Vocn=?z_hdt))", OF z_Hjz], fact z_Hdq)
    thus "(?z_hgi=?z_hdt)" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
   by (unfold bEx_def)
   have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
   by (unfold z_Hkl_z_Hfb, fact z_Hfb)
   have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
   by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
   have z_Hkp: "?z_hkp"
   by (rule zenon_and_1 [OF z_Hkn])
   have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
   by (unfold bEx_def)
   have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
   by (unfold z_Hkq_z_Hkp, fact z_Hkp)
   have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
   by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
   have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
   by (rule zenon_and_1 [OF z_Hks])
   have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
   let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
   have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
   by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
   have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
   using z_Hjd by auto
   have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
   by (unfold prod_def)
   have z_Hji: "?z_hji"
   by (unfold z_Hji_z_Hjh, fact z_Hjh)
   have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
   have z_Hij: "(DOMAIN(?z_hhl)=PROCESSES)" (is "?z_hhk=_")
   by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hku z_Hjn])
   have z_Hkv: "(((isAFcn(?z_heu)<=>isAFcn(?z_hhl))&(?z_hjo=?z_hhk))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hhl[zenon_Vbe]))))" (is "?z_hkw&?z_hie")
   by (rule zenon_funequal_0 [of "?z_heu" "?z_hhl", OF z_Hku])
   have z_Hie: "?z_hie" (is "\\A x : ?z_hik(x)")
   by (rule zenon_and_1 [OF z_Hkv])
   show FALSE
   proof (rule notE [OF z_Hio])
    have z_Hjz: "(?z_hdr=?z_hgi)"
    proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
     assume z_Hka:"(?z_hdr~=?z_hgi)"
     show FALSE
     proof (rule zenon_em [of "(?z_hgi=?z_hgi)"])
      assume z_Hkb:"(?z_hgi=?z_hgi)"
      show FALSE
      proof (rule notE [OF z_Hka])
       have z_Hkc: "(?z_hgi=?z_hdr)"
       proof (rule zenon_nnpp [of "(?z_hgi=?z_hdr)"])
        assume z_Hgh:"(?z_hgi~=?z_hdr)"
        show FALSE
        by (rule zenon_L4_ [OF z_Hgh z_Hie z_Hl z_Hi z_Hij])
       qed
       have z_Hjz: "(?z_hdr=?z_hgi)"
       by (rule subst [where P="(\<lambda>zenon_Vncn. (zenon_Vncn=?z_hgi))", OF z_Hkc], fact z_Hkb)
       thus "(?z_hdr=?z_hgi)" .
      qed
     next
      assume z_Hkg:"(?z_hgi~=?z_hgi)"
      show FALSE
      by (rule zenon_noteq [OF z_Hkg])
     qed
    qed
    have z_Hkh: "(?z_hgi=?z_hdt)"
    by (rule subst [where P="(\<lambda>zenon_Vocn. (zenon_Vocn=?z_hdt))", OF z_Hjz], fact z_Hdq)
    thus "(?z_hgi=?z_hdt)" .
   qed
  qed
 qed
 have zenon_L6_: "(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''bit''])~=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])) ==> (\\A zenon_Vwvb:(((t[''arg''])[zenon_Vwvb])=(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))[zenon_Vwvb]))) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x))))))=PROCESSES) ==> FALSE" (is "?z_hla ==> ?z_hgk ==> ?z_hl ==> _ ==> ?z_hgp ==> FALSE")
 proof -
  assume z_Hla:"?z_hla" (is "?z_hlb~=?z_hdx")
  assume z_Hgk:"?z_hgk" (is "\\A x : ?z_hgq(x)")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hgp:"?z_hgp" (is "?z_hfn=_")
  show FALSE
  proof (rule zenon_noteq [of "?z_hdx"])
   have z_Hld: "((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])=(a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])]))" (is "?z_hlc=?z_hdy")
   proof (rule zenon_nnpp [of "(?z_hlc=?z_hdy)"])
    assume z_Hle:"(?z_hlc~=?z_hdy)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hdy"])
     have z_Hkc: "((((t[''arg''])[a_punde_1a])[2])=(((told[''arg''])[a_punde_1a])[2]))" (is "?z_hgi=?z_hdr")
     proof (rule zenon_nnpp [of "(?z_hgi=?z_hdr)"])
      assume z_Hgh:"(?z_hgi~=?z_hdr)"
      show FALSE
      by (rule zenon_L2_ [OF z_Hgh z_Hgk z_Hl z_Hi z_Hgp])
     qed
     have z_Hlf: "(?z_hdy~=?z_hdy)"
     by (rule subst [where P="(\<lambda>zenon_Vrcn. ((a_Fhash_primea[zenon_Vrcn])~=?z_hdy))", OF z_Hkc], fact z_Hle)
     thus "(?z_hdy~=?z_hdy)" .
    qed
   qed
   have z_Hlk: "(?z_hdx~=?z_hdx)"
   by (rule subst [where P="(\<lambda>zenon_Vscn. ((zenon_Vscn[''bit''])~=?z_hdx))", OF z_Hld], fact z_Hla)
   thus "(?z_hdx~=?z_hdx)" .
  qed
 qed
 have zenon_L7_: "(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''bit''])~=((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])) ==> (\\A zenon_Vbe:(((t[''arg''])[zenon_Vbe])=(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)[zenon_Vbe]))) ==> (a_punde_1a~=p) ==> ?z_hi ==> (DOMAIN(except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>))=PROCESSES) ==> FALSE" (is "?z_hla ==> ?z_hie ==> ?z_hl ==> _ ==> ?z_hij ==> FALSE")
 proof -
  assume z_Hla:"?z_hla" (is "?z_hlb~=?z_hdx")
  assume z_Hie:"?z_hie" (is "\\A x : ?z_hik(x)")
  assume z_Hl:"?z_hl"
  assume z_Hi:"?z_hi"
  assume z_Hij:"?z_hij" (is "?z_hhk=_")
  show FALSE
  proof (rule zenon_noteq [of "?z_hdx"])
   have z_Hld: "((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])=(a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])]))" (is "?z_hlc=?z_hdy")
   proof (rule zenon_nnpp [of "(?z_hlc=?z_hdy)"])
    assume z_Hle:"(?z_hlc~=?z_hdy)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hdy"])
     have z_Hkc: "((((t[''arg''])[a_punde_1a])[2])=(((told[''arg''])[a_punde_1a])[2]))" (is "?z_hgi=?z_hdr")
     proof (rule zenon_nnpp [of "(?z_hgi=?z_hdr)"])
      assume z_Hgh:"(?z_hgi~=?z_hdr)"
      show FALSE
      by (rule zenon_L4_ [OF z_Hgh z_Hie z_Hl z_Hi z_Hij])
     qed
     have z_Hlf: "(?z_hdy~=?z_hdy)"
     by (rule subst [where P="(\<lambda>zenon_Vrcn. ((a_Fhash_primea[zenon_Vrcn])~=?z_hdy))", OF z_Hkc], fact z_Hle)
     thus "(?z_hdy~=?z_hdy)" .
    qed
   qed
   have z_Hlk: "(?z_hdx~=?z_hdx)"
   by (rule subst [where P="(\<lambda>zenon_Vscn. ((zenon_Vscn[''bit''])~=?z_hdx))", OF z_Hld], fact z_Hla)
   thus "(?z_hdx~=?z_hdx)" .
  qed
 qed
 have zenon_L8_: "(?z_hej|?z_hex) ==> (((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''bit''])~=1) ==> (((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''bit''])=1) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_ho ==> ?z_hlp ==> ?z_hdw ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hlp:"?z_hlp" (is "?z_hlb~=?z_hcu")
  assume z_Hdw:"?z_hdw" (is "?z_hdx=_")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
   by (unfold bEx_def)
   have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
   by (unfold z_His_z_Her, fact z_Her)
   have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
   by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
   have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hiu])
   have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
   let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
   have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
   by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
   have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
   using z_Hjd by auto
   have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
   by (unfold prod_def)
   have z_Hji: "?z_hji"
   by (unfold z_Hji_z_Hjh, fact z_Hjh)
   have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
   have z_Hgp: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
   by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hiw z_Hjn])
   have z_Hjt: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(?z_hjo=?z_hfn))&(\\A zenon_Vwvb:((?z_heu[zenon_Vwvb])=(?z_hfo[zenon_Vwvb]))))" (is "?z_hju&?z_hgk")
   by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hiw])
   have z_Hgk: "?z_hgk" (is "\\A x : ?z_hgq(x)")
   by (rule zenon_and_1 [OF z_Hjt])
   show FALSE
   proof (rule notE [OF z_Hlp])
    have z_Hlq: "(?z_hdx=?z_hlb)"
    proof (rule zenon_nnpp [of "(?z_hdx=?z_hlb)"])
     assume z_Hlr:"(?z_hdx~=?z_hlb)"
     show FALSE
     proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
      assume z_Hls:"(?z_hlb=?z_hlb)"
      show FALSE
      proof (rule notE [OF z_Hlr])
       have z_Hlt: "(?z_hlb=?z_hdx)"
       proof (rule zenon_nnpp [of "(?z_hlb=?z_hdx)"])
        assume z_Hla:"(?z_hlb~=?z_hdx)"
        show FALSE
        by (rule zenon_L6_ [OF z_Hla z_Hgk z_Hl z_Hi z_Hgp])
       qed
       have z_Hlq: "(?z_hdx=?z_hlb)"
       by (rule subst [where P="(\<lambda>zenon_Vvcn. (zenon_Vvcn=?z_hlb))", OF z_Hlt], fact z_Hls)
       thus "(?z_hdx=?z_hlb)" .
      qed
     next
      assume z_Hlx:"(?z_hlb~=?z_hlb)"
      show FALSE
      by (rule zenon_noteq [OF z_Hlx])
     qed
    qed
    have z_Hly: "(?z_hlb=?z_hcu)"
    by (rule subst [where P="(\<lambda>zenon_Vwcn. (zenon_Vwcn=?z_hcu))", OF z_Hlq], fact z_Hdw)
    thus "(?z_hlb=?z_hcu)" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
   by (unfold bEx_def)
   have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
   by (unfold z_Hkl_z_Hfb, fact z_Hfb)
   have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
   by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
   have z_Hkp: "?z_hkp"
   by (rule zenon_and_1 [OF z_Hkn])
   have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
   by (unfold bEx_def)
   have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
   by (unfold z_Hkq_z_Hkp, fact z_Hkp)
   have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
   by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
   have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
   by (rule zenon_and_1 [OF z_Hks])
   have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
   let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
   let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
   have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
   have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
   by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
   have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
   using z_Hjd by auto
   have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
   by (unfold prod_def)
   have z_Hji: "?z_hji"
   by (unfold z_Hji_z_Hjh, fact z_Hjh)
   have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
   by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
   have z_Hij: "(DOMAIN(?z_hhl)=PROCESSES)" (is "?z_hhk=_")
   by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hku z_Hjn])
   have z_Hkv: "(((isAFcn(?z_heu)<=>isAFcn(?z_hhl))&(?z_hjo=?z_hhk))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hhl[zenon_Vbe]))))" (is "?z_hkw&?z_hie")
   by (rule zenon_funequal_0 [of "?z_heu" "?z_hhl", OF z_Hku])
   have z_Hie: "?z_hie" (is "\\A x : ?z_hik(x)")
   by (rule zenon_and_1 [OF z_Hkv])
   show FALSE
   proof (rule notE [OF z_Hlp])
    have z_Hlq: "(?z_hdx=?z_hlb)"
    proof (rule zenon_nnpp [of "(?z_hdx=?z_hlb)"])
     assume z_Hlr:"(?z_hdx~=?z_hlb)"
     show FALSE
     proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
      assume z_Hls:"(?z_hlb=?z_hlb)"
      show FALSE
      proof (rule notE [OF z_Hlr])
       have z_Hlt: "(?z_hlb=?z_hdx)"
       proof (rule zenon_nnpp [of "(?z_hlb=?z_hdx)"])
        assume z_Hla:"(?z_hlb~=?z_hdx)"
        show FALSE
        by (rule zenon_L7_ [OF z_Hla z_Hie z_Hl z_Hi z_Hij])
       qed
       have z_Hlq: "(?z_hdx=?z_hlb)"
       by (rule subst [where P="(\<lambda>zenon_Vvcn. (zenon_Vvcn=?z_hlb))", OF z_Hlt], fact z_Hls)
       thus "(?z_hdx=?z_hlb)" .
      qed
     next
      assume z_Hlx:"(?z_hlb~=?z_hlb)"
      show FALSE
      by (rule zenon_noteq [OF z_Hlx])
     qed
    qed
    have z_Hly: "(?z_hlb=?z_hcu)"
    by (rule subst [where P="(\<lambda>zenon_Vwcn. (zenon_Vwcn=?z_hcu))", OF z_Hlq], fact z_Hdw)
    thus "(?z_hlb=?z_hcu)" .
   qed
  qed
 qed
 have zenon_L9_: "((((told[''arg''])[a_punde_1a])[2])~=(((t[''arg''])[a_punde_1a])[2])) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hka ==> ?z_hiw ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Hka:"?z_hka" (is "?z_hdr~=?z_hgi")
  assume z_Hiw:"?z_hiw" (is "?z_heu=?z_hfo")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_noteq [of "?z_hgi"])
   have z_Hmc: "(((told[''arg''])[a_punde_1a])=(?z_heu[a_punde_1a]))" (is "?z_hcq=?z_hgj")
   proof (rule zenon_nnpp [of "(?z_hcq=?z_hgj)"])
    assume z_Hmd:"(?z_hcq~=?z_hgj)"
    have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
    let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
    let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
    have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
    have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
    by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
    have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
    using z_Hjd by auto
    have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
    by (unfold prod_def)
    have z_Hji: "?z_hji"
    by (unfold z_Hji_z_Hjh, fact z_Hjh)
    have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
    by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
    have z_Hgp: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
    by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hiw z_Hjn])
    have z_Hjt: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(?z_hjo=?z_hfn))&(\\A zenon_Vwvb:((?z_heu[zenon_Vwvb])=(?z_hfo[zenon_Vwvb]))))" (is "?z_hju&?z_hgk")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hiw])
    have z_Hgk: "?z_hgk" (is "\\A x : ?z_hgq(x)")
    by (rule zenon_and_1 [OF z_Hjt])
    have z_Hfj: "(\\A zenon_Vnec:((zenon_Vnec \\in ?z_hfn)<=>(zenon_Vnec \\in PROCESSES)))" (is "\\A x : ?z_hfz(x)")
    by (rule zenon_setequal_0 [of "?z_hfn" "PROCESSES", OF z_Hgp])
    have z_Hgt: "?z_hgq(a_punde_1a)" (is "_=?z_hgu")
    by (rule zenon_all_0 [of "?z_hgq" "a_punde_1a", OF z_Hgk])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vztb. (?z_hgj=zenon_Vztb))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hgt])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hgy:"(p=a_punde_1a)"
     assume z_Hgz:"(?z_hgj=(CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, x)))))" (is "_=?z_hfp")
     show FALSE
     by (rule zenon_eqsym [OF z_Hgy z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hha:"(p~=a_punde_1a)"
     assume z_Hgr:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule zenon_eqsym [OF z_Hgr z_Hmd])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L1_ [OF z_Hfj z_Hi z_Hfw])
    qed
   qed
   have z_Hkg: "(?z_hgi~=?z_hgi)"
   by (rule subst [where P="(\<lambda>zenon_Vzcn. ((zenon_Vzcn[2])~=?z_hgi))", OF z_Hmc], fact z_Hka)
   thus "(?z_hgi~=?z_hgi)" .
  qed
 qed
 have zenon_L10_: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank''])~=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''rank''])) ==> ((t[''arg''])=except((told[''arg'']), p, (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hmi ==> ?z_hiw ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Hmi:"?z_hmi" (is "?z_hed~=?z_hmj")
  assume z_Hiw:"?z_hiw" (is "?z_heu=?z_hfo")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_noteq [of "?z_hmj"])
   have z_Hmk: "((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])=(a_Fhash_primea[((?z_heu[a_punde_1a])[2])]))" (is "?z_hdy=?z_hlc")
   proof (rule zenon_nnpp [of "(?z_hdy=?z_hlc)"])
    assume z_Hml:"(?z_hdy~=?z_hlc)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hlc"])
     have z_Hjz: "((((told[''arg''])[a_punde_1a])[2])=((?z_heu[a_punde_1a])[2]))" (is "?z_hdr=?z_hgi")
     proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
      assume z_Hka:"(?z_hdr~=?z_hgi)"
      show FALSE
      by (rule zenon_L9_ [OF z_Hka z_Hiw z_Hi z_Hl z_Hj z_Hip])
     qed
     have z_Hmm: "(?z_hlc~=?z_hlc)"
     by (rule subst [where P="(\<lambda>zenon_Vadn. ((a_Fhash_primea[zenon_Vadn])~=?z_hlc))", OF z_Hjz], fact z_Hml)
     thus "(?z_hlc~=?z_hlc)" .
    qed
   qed
   have z_Hmr: "(?z_hmj~=?z_hmj)"
   by (rule subst [where P="(\<lambda>zenon_Vbdn. ((zenon_Vbdn[''rank''])~=?z_hmj))", OF z_Hmk], fact z_Hmi)
   thus "(?z_hmj~=?z_hmj)" .
  qed
 qed
 have zenon_L11_: "((((told[''arg''])[a_punde_1a])[2])~=(((t[''arg''])[a_punde_1a])[2])) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hka ==> ?z_hku ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Hka:"?z_hka" (is "?z_hdr~=?z_hgi")
  assume z_Hku:"?z_hku" (is "?z_heu=?z_hhl")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_noteq [of "?z_hgi"])
   have z_Hmc: "(((told[''arg''])[a_punde_1a])=(?z_heu[a_punde_1a]))" (is "?z_hcq=?z_hgj")
   proof (rule zenon_nnpp [of "(?z_hcq=?z_hgj)"])
    assume z_Hmd:"(?z_hcq~=?z_hgj)"
    have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
    let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
    let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
    have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
    have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
    by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
    have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
    using z_Hjd by auto
    have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
    by (unfold prod_def)
    have z_Hji: "?z_hji"
    by (unfold z_Hji_z_Hjh, fact z_Hjh)
    have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
    by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
    have z_Hij: "(DOMAIN(?z_hhl)=PROCESSES)" (is "?z_hhk=_")
    by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hku z_Hjn])
    have z_Hkv: "(((isAFcn(?z_heu)<=>isAFcn(?z_hhl))&(?z_hjo=?z_hhk))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hhl[zenon_Vbe]))))" (is "?z_hkw&?z_hie")
    by (rule zenon_funequal_0 [of "?z_heu" "?z_hhl", OF z_Hku])
    have z_Hie: "?z_hie" (is "\\A x : ?z_hik(x)")
    by (rule zenon_and_1 [OF z_Hkv])
    have z_Hhg: "(\\A zenon_Ven:((zenon_Ven \\in ?z_hhk)<=>(zenon_Ven \\in PROCESSES)))" (is "\\A x : ?z_hia(x)")
    by (rule zenon_setequal_0 [of "?z_hhk" "PROCESSES", OF z_Hij])
    have z_Hil: "?z_hik(a_punde_1a)" (is "_=?z_him")
    by (rule zenon_all_0 [of "?z_hik" "a_punde_1a", OF z_Hie])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vztb. (?z_hgj=zenon_Vztb))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hil])
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hgy:"(p=a_punde_1a)"
     assume z_Hin:"(?z_hgj=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heu=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heu=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hhm")
     show FALSE
     by (rule zenon_eqsym [OF z_Hgy z_Hl])
    next
     assume z_Hfx:"(a_punde_1a \\in DOMAIN((told[''arg''])))" (is "?z_hfx")
     assume z_Hha:"(p~=a_punde_1a)"
     assume z_Hgr:"(?z_hgj=?z_hcq)"
     show FALSE
     by (rule zenon_eqsym [OF z_Hgr z_Hmd])
    next
     assume z_Hfw:"(~(a_punde_1a \\in DOMAIN((told[''arg'']))))" (is "~?z_hfx")
     show FALSE
     by (rule zenon_L3_ [OF z_Hhg z_Hi z_Hfw])
    qed
   qed
   have z_Hkg: "(?z_hgi~=?z_hgi)"
   by (rule subst [where P="(\<lambda>zenon_Vzcn. ((zenon_Vzcn[2])~=?z_hgi))", OF z_Hmc], fact z_Hka)
   thus "(?z_hgi~=?z_hgi)" .
  qed
 qed
 have zenon_L12_: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank''])~=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''rank''])) ==> ((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> FALSE" (is "?z_hmi ==> ?z_hku ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> FALSE")
 proof -
  assume z_Hmi:"?z_hmi" (is "?z_hed~=?z_hmj")
  assume z_Hku:"?z_hku" (is "?z_heu=?z_hhl")
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  show FALSE
  proof (rule zenon_noteq [of "?z_hmj"])
   have z_Hmk: "((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])=(a_Fhash_primea[((?z_heu[a_punde_1a])[2])]))" (is "?z_hdy=?z_hlc")
   proof (rule zenon_nnpp [of "(?z_hdy=?z_hlc)"])
    assume z_Hml:"(?z_hdy~=?z_hlc)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hlc"])
     have z_Hjz: "((((told[''arg''])[a_punde_1a])[2])=((?z_heu[a_punde_1a])[2]))" (is "?z_hdr=?z_hgi")
     proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
      assume z_Hka:"(?z_hdr~=?z_hgi)"
      show FALSE
      by (rule zenon_L11_ [OF z_Hka z_Hku z_Hi z_Hl z_Hj z_Hip])
     qed
     have z_Hmm: "(?z_hlc~=?z_hlc)"
     by (rule subst [where P="(\<lambda>zenon_Vadn. ((a_Fhash_primea[zenon_Vadn])~=?z_hlc))", OF z_Hjz], fact z_Hml)
     thus "(?z_hlc~=?z_hlc)" .
    qed
   qed
   have z_Hmr: "(?z_hmj~=?z_hmj)"
   by (rule subst [where P="(\<lambda>zenon_Vbdn. ((zenon_Vbdn[''rank''])~=?z_hmj))", OF z_Hmk], fact z_Hmi)
   thus "(?z_hmj~=?z_hmj)" .
  qed
 qed
 have zenon_L13_: "(?z_hej|?z_hex) ==> ?z_hi ==> (a_punde_1a~=p) ==> ?z_hj ==> bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) ==> (((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank'']) < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])) ==> (~(((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''rank'']) < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank'']))) ==> FALSE" (is "?z_ho ==> _ ==> ?z_hl ==> _ ==> ?z_hip ==> ?z_hec ==> ?z_hmw ==> FALSE")
 proof -
  assume z_Ho:"?z_ho"
  assume z_Hi:"?z_hi"
  assume z_Hl:"?z_hl"
  assume z_Hj:"?z_hj"
  assume z_Hip:"?z_hip"
  assume z_Hec:"?z_hec"
  assume z_Hmw:"?z_hmw" (is "~?z_hmx")
  show FALSE
  proof (rule zenon_or [OF z_Ho])
   assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
   have z_Her: "?z_her"
   by (rule zenon_and_1 [OF z_Hej])
   have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
   by (unfold bEx_def)
   have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
   by (unfold z_His_z_Her, fact z_Her)
   have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
   by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
   have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
   by (rule zenon_and_1 [OF z_Hiu])
   show FALSE
   proof (rule notE [OF z_Hmw])
    have z_Hmy: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank''])=((a_Fhash_primea[((?z_heu[a_punde_1a])[2])])[''rank'']))" (is "?z_hed=?z_hmj")
    proof (rule zenon_nnpp [of "(?z_hed=?z_hmj)"])
     assume z_Hmi:"(?z_hed~=?z_hmj)"
     show FALSE
     by (rule zenon_L10_ [OF z_Hmi z_Hiw z_Hi z_Hl z_Hj z_Hip])
    qed
    have z_Hmx: "?z_hmx"
    by (rule subst [where P="(\<lambda>zenon_Vfdn. (zenon_Vfdn < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])))", OF z_Hmy], fact z_Hec)
    thus "?z_hmx" .
   qed
  next
   assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
   have z_Hfb: "?z_hfb"
   by (rule zenon_and_1 [OF z_Hex])
   have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
   by (unfold bEx_def)
   have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
   by (unfold z_Hkl_z_Hfb, fact z_Hfb)
   have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
   by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
   have z_Hkp: "?z_hkp"
   by (rule zenon_and_1 [OF z_Hkn])
   have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
   by (unfold bEx_def)
   have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
   by (unfold z_Hkq_z_Hkp, fact z_Hkp)
   have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
   by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
   have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
   by (rule zenon_and_1 [OF z_Hks])
   show FALSE
   proof (rule notE [OF z_Hmw])
    have z_Hmy: "(((a_Fhash_primea[(((told[''arg''])[a_punde_1a])[2])])[''rank''])=((a_Fhash_primea[((?z_heu[a_punde_1a])[2])])[''rank'']))" (is "?z_hed=?z_hmj")
    proof (rule zenon_nnpp [of "(?z_hed=?z_hmj)"])
     assume z_Hmi:"(?z_hed~=?z_hmj)"
     show FALSE
     by (rule zenon_L12_ [OF z_Hmi z_Hku z_Hi z_Hl z_Hj z_Hip])
    qed
    have z_Hmx: "?z_hmx"
    by (rule subst [where P="(\<lambda>zenon_Vfdn. (zenon_Vfdn < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])))", OF z_Hmy], fact z_Hec)
    thus "?z_hmx" .
   qed
  qed
 qed
 assume z_Hy:"(~(((((t[''arg''])[a_punde_1a])[2])=(a_vunde_Uhash_primea[a_punde_1a]))|((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''bit''])=1)|((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''bit''])=0)&((((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''rank'']) < ((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_vunde_Uhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(((t[''arg''])[a_punde_1a])[2])])[''rank'']))&((((t[''arg''])[a_punde_1a])[2]) <= (a_vunde_Uhash_primea[a_punde_1a]))))))))" (is "~(?z_hkh|?z_hnd)")
 have z_Hba: "?z_hba" (is "_&?z_hbc")
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hbc: "?z_hbc" (is "_&?z_hbe")
 by (rule zenon_and_1 [OF z_Hba])
 have z_Hbe: "?z_hbe" (is "_&?z_hbg")
 by (rule zenon_and_1 [OF z_Hbc])
 have z_Hbg: "?z_hbg" (is "_&?z_hbi")
 by (rule zenon_and_1 [OF z_Hbe])
 have z_Hbi: "?z_hbi" (is "_&?z_hbk")
 by (rule zenon_and_1 [OF z_Hbg])
 have z_Hbk: "?z_hbk" (is "_&?z_hbm")
 by (rule zenon_and_1 [OF z_Hbi])
 have z_Hbm: "?z_hbm" (is "_&?z_hbo")
 by (rule zenon_and_1 [OF z_Hbk])
 have z_Hbo: "?z_hbo" (is "_&?z_hbq")
 by (rule zenon_and_1 [OF z_Hbm])
 have z_Hbq: "?z_hbq" (is "_&?z_hbs")
 by (rule zenon_and_1 [OF z_Hbo])
 have z_Hbs: "?z_hbs" (is "_&?z_hbu")
 by (rule zenon_and_1 [OF z_Hbq])
 have z_Hbu: "?z_hbu"
 by (rule zenon_and_1 [OF z_Hbs])
 have z_Hnk: "(a_Mhash_primea \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hnk")
 by (rule zenon_in_SUBSET_0 [of "a_Mhash_primea" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbu])
 have z_Hip_z_Hnk: "bAll(a_Mhash_primea, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hnk" (is "?z_hip == _")
 by (unfold subset_def)
 have z_Hip: "?z_hip"
 by (unfold z_Hip_z_Hnk, fact z_Hnk)
 have z_Hdp: "?z_hdp" (is "?z_hdq|?z_hdv")
 by (rule zenon_and_1 [OF z_Hu])
 have z_Hio: "((((t[''arg''])[a_punde_1a])[2])~=(a_vunde_Uhash_primea[a_punde_1a]))" (is "?z_hgi~=?z_hdt")
 by (rule zenon_notor_0 [OF z_Hy])
 have z_Hnl: "(~?z_hnd)" (is "~(?z_hly|?z_hne)")
 by (rule zenon_notor_1 [OF z_Hy])
 have z_Hlp: "(((a_Fhash_primea[?z_hgi])[''bit''])~=1)" (is "?z_hlb~=?z_hcu")
 by (rule zenon_notor_0 [OF z_Hnl])
 have z_Hnm: "(~?z_hne)" (is "~(?z_hnf&?z_hng)")
 by (rule zenon_notor_1 [OF z_Hnl])
 show FALSE
 proof (rule zenon_notand [OF z_Hnm])
  assume z_Hnn:"(?z_hlb~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hdp])
   assume z_Hdq:"?z_hdq" (is "?z_hdr=_")
   show FALSE
   by (rule zenon_L5_ [OF z_Ho z_Hio z_Hdq z_Hi z_Hl z_Hj z_Hip])
  next
   assume z_Hdv:"?z_hdv" (is "?z_hdw|?z_hdz")
   show FALSE
   proof (rule zenon_or [OF z_Hdv])
    assume z_Hdw:"?z_hdw" (is "?z_hdx=_")
    show FALSE
    by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hdw z_Hi z_Hl z_Hj z_Hip])
   next
    assume z_Hdz:"?z_hdz" (is "?z_hea&?z_heb")
    have z_Hea: "?z_hea" (is "?z_hdx=_")
    by (rule zenon_and_0 [OF z_Hdz])
    show FALSE
    proof (rule zenon_or [OF z_Ho])
     assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
     have z_Her: "?z_her"
     by (rule zenon_and_1 [OF z_Hej])
     have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
     by (unfold bEx_def)
     have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
     by (unfold z_His_z_Her, fact z_Her)
     have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
     by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
     have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
     by (rule zenon_and_1 [OF z_Hiu])
     have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
     by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
     let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
     let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
     have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
     have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
     by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
     have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
     using z_Hjd by auto
     have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
     by (unfold prod_def)
     have z_Hji: "?z_hji"
     by (unfold z_Hji_z_Hjh, fact z_Hjh)
     have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
     by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
     have z_Hgp: "(DOMAIN(?z_hfo)=PROCESSES)" (is "?z_hfn=_")
     by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hiw z_Hjn])
     have z_Hjt: "(((isAFcn(?z_heu)<=>isAFcn(?z_hfo))&(?z_hjo=?z_hfn))&(\\A zenon_Vwvb:((?z_heu[zenon_Vwvb])=(?z_hfo[zenon_Vwvb]))))" (is "?z_hju&?z_hgk")
     by (rule zenon_funequal_0 [of "?z_heu" "?z_hfo", OF z_Hiw])
     have z_Hgk: "?z_hgk" (is "\\A x : ?z_hgq(x)")
     by (rule zenon_and_1 [OF z_Hjt])
     show FALSE
     proof (rule notE [OF z_Hnn])
      have z_Hlq: "(?z_hdx=?z_hlb)"
      proof (rule zenon_nnpp [of "(?z_hdx=?z_hlb)"])
       assume z_Hlr:"(?z_hdx~=?z_hlb)"
       show FALSE
       proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
        assume z_Hls:"(?z_hlb=?z_hlb)"
        show FALSE
        proof (rule notE [OF z_Hlr])
         have z_Hlt: "(?z_hlb=?z_hdx)"
         proof (rule zenon_nnpp [of "(?z_hlb=?z_hdx)"])
          assume z_Hla:"(?z_hlb~=?z_hdx)"
          show FALSE
          by (rule zenon_L6_ [OF z_Hla z_Hgk z_Hl z_Hi z_Hgp])
         qed
         have z_Hlq: "(?z_hdx=?z_hlb)"
         by (rule subst [where P="(\<lambda>zenon_Vvcn. (zenon_Vvcn=?z_hlb))", OF z_Hlt], fact z_Hls)
         thus "(?z_hdx=?z_hlb)" .
        qed
       next
        assume z_Hlx:"(?z_hlb~=?z_hlb)"
        show FALSE
        by (rule zenon_noteq [OF z_Hlx])
       qed
      qed
      have z_Hnf: "?z_hnf"
      by (rule subst [where P="(\<lambda>zenon_Vidn. (zenon_Vidn=0))", OF z_Hlq], fact z_Hea)
      thus "?z_hnf" .
     qed
    next
     assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
     have z_Hfb: "?z_hfb"
     by (rule zenon_and_1 [OF z_Hex])
     have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
     by (unfold bEx_def)
     have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
     by (unfold z_Hkl_z_Hfb, fact z_Hfb)
     have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
     by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
     have z_Hkp: "?z_hkp"
     by (rule zenon_and_1 [OF z_Hkn])
     have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
     by (unfold bEx_def)
     have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
     by (unfold z_Hkq_z_Hkp, fact z_Hkp)
     have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
     by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
     have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
     by (rule zenon_and_1 [OF z_Hks])
     have z_Hix: "(t \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hix")
     by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hip z_Hj])
     let ?z_hiy = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
     let ?z_hiz = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
     have z_Hja: "(4 \\in DOMAIN(?z_hiy))" by auto
     have z_Hjd: "((t[(?z_hiy[4])]) \\in (?z_hiz[4]))" (is "?z_hjd")
     by (rule zenon_in_recordset_field [OF z_Hix z_Hja])
     have z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hjh")
     using z_Hjd by auto
     have z_Hji_z_Hjh: "(?z_heu \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hjh" (is "?z_hji == _")
     by (unfold prod_def)
     have z_Hji: "?z_hji"
     by (unfold z_Hji_z_Hjh, fact z_Hjh)
     have z_Hjn: "(DOMAIN(?z_heu)=PROCESSES)" (is "?z_hjo=_")
     by (rule zenon_in_funcset_1 [of "?z_heu" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hji])
     have z_Hij: "(DOMAIN(?z_hhl)=PROCESSES)" (is "?z_hhk=_")
     by (rule subst [where P="(\<lambda>zenon_Vxm. (DOMAIN(zenon_Vxm)=PROCESSES))", OF z_Hku z_Hjn])
     have z_Hkv: "(((isAFcn(?z_heu)<=>isAFcn(?z_hhl))&(?z_hjo=?z_hhk))&(\\A zenon_Vbe:((?z_heu[zenon_Vbe])=(?z_hhl[zenon_Vbe]))))" (is "?z_hkw&?z_hie")
     by (rule zenon_funequal_0 [of "?z_heu" "?z_hhl", OF z_Hku])
     have z_Hie: "?z_hie" (is "\\A x : ?z_hik(x)")
     by (rule zenon_and_1 [OF z_Hkv])
     show FALSE
     proof (rule notE [OF z_Hnn])
      have z_Hlq: "(?z_hdx=?z_hlb)"
      proof (rule zenon_nnpp [of "(?z_hdx=?z_hlb)"])
       assume z_Hlr:"(?z_hdx~=?z_hlb)"
       show FALSE
       proof (rule zenon_em [of "(?z_hlb=?z_hlb)"])
        assume z_Hls:"(?z_hlb=?z_hlb)"
        show FALSE
        proof (rule notE [OF z_Hlr])
         have z_Hlt: "(?z_hlb=?z_hdx)"
         proof (rule zenon_nnpp [of "(?z_hlb=?z_hdx)"])
          assume z_Hla:"(?z_hlb~=?z_hdx)"
          show FALSE
          by (rule zenon_L7_ [OF z_Hla z_Hie z_Hl z_Hi z_Hij])
         qed
         have z_Hlq: "(?z_hdx=?z_hlb)"
         by (rule subst [where P="(\<lambda>zenon_Vvcn. (zenon_Vvcn=?z_hlb))", OF z_Hlt], fact z_Hls)
         thus "(?z_hdx=?z_hlb)" .
        qed
       next
        assume z_Hlx:"(?z_hlb~=?z_hlb)"
        show FALSE
        by (rule zenon_noteq [OF z_Hlx])
       qed
      qed
      have z_Hnf: "?z_hnf"
      by (rule subst [where P="(\<lambda>zenon_Vidn. (zenon_Vidn=0))", OF z_Hlq], fact z_Hea)
      thus "?z_hnf" .
     qed
    qed
   qed
  qed
 next
  assume z_Hnr:"(~?z_hng)" (is "~(?z_hmx|?z_hnh)")
  have z_Hmw: "(~?z_hmx)"
  by (rule zenon_notor_0 [OF z_Hnr])
  have z_Hns: "(~?z_hnh)" (is "~(?z_hni&?z_hnj)")
  by (rule zenon_notor_1 [OF z_Hnr])
  show FALSE
  proof (rule zenon_notand [OF z_Hns])
   assume z_Hnt:"(((a_Fhash_primea[?z_hdt])[''rank''])~=((a_Fhash_primea[?z_hgi])[''rank'']))" (is "?z_hee~=?z_hmj")
   show FALSE
   proof (rule zenon_or [OF z_Hdp])
    assume z_Hdq:"?z_hdq" (is "?z_hdr=_")
    show FALSE
    by (rule zenon_L5_ [OF z_Ho z_Hio z_Hdq z_Hi z_Hl z_Hj z_Hip])
   next
    assume z_Hdv:"?z_hdv" (is "?z_hdw|?z_hdz")
    show FALSE
    proof (rule zenon_or [OF z_Hdv])
     assume z_Hdw:"?z_hdw" (is "?z_hdx=_")
     show FALSE
     by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hdw z_Hi z_Hl z_Hj z_Hip])
    next
     assume z_Hdz:"?z_hdz" (is "?z_hea&?z_heb")
     have z_Heb: "?z_heb" (is "?z_hec|?z_heg")
     by (rule zenon_and_1 [OF z_Hdz])
     show FALSE
     proof (rule zenon_or [OF z_Heb])
      assume z_Hec:"?z_hec"
      show FALSE
      by (rule zenon_L13_ [OF z_Ho z_Hi z_Hl z_Hj z_Hip z_Hec z_Hmw])
     next
      assume z_Heg:"?z_heg" (is "?z_heh&?z_hei")
      have z_Heh: "?z_heh" (is "_=?z_hed")
      by (rule zenon_and_0 [OF z_Heg])
      show FALSE
      proof (rule zenon_or [OF z_Ho])
       assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
       have z_Her: "?z_her"
       by (rule zenon_and_1 [OF z_Hej])
       have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
       by (unfold bEx_def)
       have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
       by (unfold z_His_z_Her, fact z_Her)
       have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
       by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
       have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
       by (rule zenon_and_1 [OF z_Hiu])
       show FALSE
       proof (rule notE [OF z_Hnt])
        have z_Hmy: "(?z_hed=?z_hmj)"
        proof (rule zenon_nnpp [of "(?z_hed=?z_hmj)"])
         assume z_Hmi:"(?z_hed~=?z_hmj)"
         show FALSE
         by (rule zenon_L10_ [OF z_Hmi z_Hiw z_Hi z_Hl z_Hj z_Hip])
        qed
        have z_Hni: "?z_hni"
        by (rule subst [where P="(\<lambda>zenon_Vldn. (?z_hee=zenon_Vldn))", OF z_Hmy], fact z_Heh)
        thus "?z_hni" .
       qed
      next
       assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
       have z_Hfb: "?z_hfb"
       by (rule zenon_and_1 [OF z_Hex])
       have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
       by (unfold bEx_def)
       have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
       by (unfold z_Hkl_z_Hfb, fact z_Hfb)
       have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
       by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
       have z_Hkp: "?z_hkp"
       by (rule zenon_and_1 [OF z_Hkn])
       have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
       by (unfold bEx_def)
       have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
       by (unfold z_Hkq_z_Hkp, fact z_Hkp)
       have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
       by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
       have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
       by (rule zenon_and_1 [OF z_Hks])
       show FALSE
       proof (rule notE [OF z_Hnt])
        have z_Hmy: "(?z_hed=?z_hmj)"
        proof (rule zenon_nnpp [of "(?z_hed=?z_hmj)"])
         assume z_Hmi:"(?z_hed~=?z_hmj)"
         show FALSE
         by (rule zenon_L12_ [OF z_Hmi z_Hku z_Hi z_Hl z_Hj z_Hip])
        qed
        have z_Hni: "?z_hni"
        by (rule subst [where P="(\<lambda>zenon_Vldn. (?z_hee=zenon_Vldn))", OF z_Hmy], fact z_Heh)
        thus "?z_hni" .
       qed
      qed
     qed
    qed
   qed
  next
   assume z_Hnx:"(~?z_hnj)"
   show FALSE
   proof (rule zenon_or [OF z_Hdp])
    assume z_Hdq:"?z_hdq" (is "?z_hdr=_")
    show FALSE
    by (rule zenon_L5_ [OF z_Ho z_Hio z_Hdq z_Hi z_Hl z_Hj z_Hip])
   next
    assume z_Hdv:"?z_hdv" (is "?z_hdw|?z_hdz")
    show FALSE
    proof (rule zenon_or [OF z_Hdv])
     assume z_Hdw:"?z_hdw" (is "?z_hdx=_")
     show FALSE
     by (rule zenon_L8_ [OF z_Ho z_Hlp z_Hdw z_Hi z_Hl z_Hj z_Hip])
    next
     assume z_Hdz:"?z_hdz" (is "?z_hea&?z_heb")
     have z_Heb: "?z_heb" (is "?z_hec|?z_heg")
     by (rule zenon_and_1 [OF z_Hdz])
     show FALSE
     proof (rule zenon_or [OF z_Heb])
      assume z_Hec:"?z_hec"
      show FALSE
      by (rule zenon_L13_ [OF z_Ho z_Hi z_Hl z_Hj z_Hip z_Hec z_Hmw])
     next
      assume z_Heg:"?z_heg" (is "?z_heh&?z_hei")
      have z_Hei: "?z_hei"
      by (rule zenon_and_1 [OF z_Heg])
      show FALSE
      proof (rule zenon_or [OF z_Ho])
       assume z_Hej:"?z_hej" (is "?z_hek&?z_her")
       have z_Her: "?z_her"
       by (rule zenon_and_1 [OF z_Hej])
       have z_His_z_Her: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_her" (is "?z_his == _")
       by (unfold bEx_def)
       have z_His: "?z_his" (is "\\E x : ?z_hit(x)")
       by (unfold z_His_z_Her, fact z_Her)
       have z_Hiu: "?z_hit((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hiv&?z_hiw")
       by (rule zenon_ex_choose_0 [of "?z_hit", OF z_His])
       have z_Hiw: "?z_hiw" (is "?z_heu=?z_hfo")
       by (rule zenon_and_1 [OF z_Hiu])
       show FALSE
       proof (rule notE [OF z_Hnx])
        have z_Hjz: "((((told[''arg''])[a_punde_1a])[2])=?z_hgi)" (is "?z_hdr=_")
        proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
         assume z_Hka:"(?z_hdr~=?z_hgi)"
         show FALSE
         by (rule zenon_L9_ [OF z_Hka z_Hiw z_Hi z_Hl z_Hj z_Hip])
        qed
        have z_Hnj: "?z_hnj"
        by (rule subst [where P="(\<lambda>zenon_Vndn. (zenon_Vndn <= ?z_hdt))", OF z_Hjz], fact z_Hei)
        thus "?z_hnj" .
       qed
      next
       assume z_Hex:"?z_hex" (is "?z_hey&?z_hfb")
       have z_Hfb: "?z_hfb"
       by (rule zenon_and_1 [OF z_Hex])
       have z_Hkl_z_Hfb: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hfb" (is "?z_hkl == _")
       by (unfold bEx_def)
       have z_Hkl: "?z_hkl" (is "\\E x : ?z_hkm(x)")
       by (unfold z_Hkl_z_Hfb, fact z_Hfb)
       have z_Hkn: "?z_hkm((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hko&?z_hkp")
       by (rule zenon_ex_choose_0 [of "?z_hkm", OF z_Hkl])
       have z_Hkp: "?z_hkp"
       by (rule zenon_and_1 [OF z_Hkn])
       have z_Hkq_z_Hkp: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hkp" (is "?z_hkq == _")
       by (unfold bEx_def)
       have z_Hkq: "?z_hkq" (is "\\E x : ?z_hkr(x)")
       by (unfold z_Hkq_z_Hkp, fact z_Hkp)
       have z_Hks: "?z_hkr((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hkt&?z_hku")
       by (rule zenon_ex_choose_0 [of "?z_hkr", OF z_Hkq])
       have z_Hku: "?z_hku" (is "?z_heu=?z_hhl")
       by (rule zenon_and_1 [OF z_Hks])
       show FALSE
       proof (rule notE [OF z_Hnx])
        have z_Hjz: "((((told[''arg''])[a_punde_1a])[2])=?z_hgi)" (is "?z_hdr=_")
        proof (rule zenon_nnpp [of "(?z_hdr=?z_hgi)"])
         assume z_Hka:"(?z_hdr~=?z_hgi)"
         show FALSE
         by (rule zenon_L11_ [OF z_Hka z_Hku z_Hi z_Hl z_Hj z_Hip])
        qed
        have z_Hnj: "?z_hnj"
        by (rule subst [where P="(\<lambda>zenon_Vndn. (zenon_Vndn <= ?z_hdt))", OF z_Hjz], fact z_Hei)
        thus "?z_hnj" .
       qed
      qed
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 26"; *} qed
end
