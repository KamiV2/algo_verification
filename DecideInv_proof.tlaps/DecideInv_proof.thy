(* automatically generated -- do not edit manually *)
theory DecideInv_proof imports Constant Zenon begin
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

lemma ob'9:
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
assumes v'102: "(((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & (\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))))) \<and> (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) \<and> (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | (((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))))) \<and> (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))))) \<and> (((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'106: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'110: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'129: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U6'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'134: "(((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))"
assumes v'135: "(((fapply ((fapply ((told), (''ret''))), (p))) = (BOT)))"
assumes v'136: "(((fapply ((fapply ((told), (''op''))), (p))) = (BOT)))"
assumes v'137: "(((fapply ((fapply ((told), (''arg''))), (p))) = (BOT)))"
assumes v'138: "(((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma'')))))"
assumes v'139: "(((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))"
assumes v'146: "(((a_punde_1a) \<noteq> (p)))"
assumes v'147: "(((fapply ((pc), (a_punde_1a))) = (''U6'')))"
shows "(((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) = (fapply ((fapply ((told), (''arg''))), (a_punde_1a)))))"(is "PROP ?ob'9")
proof -
ML_command {* writeln "*** TLAPS ENTER 9"; *}
show "PROP ?ob'9"

(* BEGIN ZENON INPUT
;; file=DecideInv_proof.tlaps/tlapm_eaaf8a.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >DecideInv_proof.tlaps/tlapm_eaaf8a.znn.out
;; obligation #9
$hyp "v'102" (/\ (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
a_Validunde_aunde_Fa a_Validunde_bunde_Fa a_Validunde_uunde_Ua
a_Validunde_vunde_Ua a_Validunde_aunde_Ua a_Validunde_bunde_Ua a_Validunde_ca
a_Validunde_da (TLA.in M
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet) (TLA.prod NodeSet NodeSet))))))) InvDecide a_InvF1a a_InvF2a
a_InvF3a a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a
a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (\/ (/\ (= a_pchash_primea (TLA.except pc p "F1"))
(TLA.bEx NodeSet ((i) (/\ (= a_chash_primea (TLA.except a_ca p i))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
BOT) (= (TLA.fapply (TLA.fapply told "op") p) BOT))
(= (TLA.fapply (TLA.fapply told "arg") p) BOT)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))) (= (TLA.fapply t "ret")
(TLA.fapply told "ret")))))))))))) (/\ (= a_Fhash_primea F)
(= a_uunde_Fhash_primea a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa)
(= a_bunde_Fhash_primea a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua)
(= a_vunde_Uhash_primea a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua)
(= a_bunde_Uhash_primea a_bunde_Ua) (= a_dhash_primea d)))
(/\ (= a_pchash_primea (TLA.except pc p "U1"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (/\ (= a_chash_primea
(TLA.except a_ca p i)) (= a_dhash_primea (TLA.except d p j))
(= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
BOT) (= (TLA.fapply (TLA.fapply told "op") p) BOT))
(= (TLA.fapply (TLA.fapply told "arg") p) BOT)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i j))))
(= (TLA.fapply t "ret") (TLA.fapply told "ret"))))))))))))))
(/\ (= a_Fhash_primea F) (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua))))
$hyp "v'106" (= (TLA.fapply pc p)
"0")
$hyp "v'110" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" StateSet "ret" ReturnSet "op" OpSet "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'129" (= (TLA.fapply a_pchash_primea a_punde_1a)
"U6")
$hyp "told_in" (TLA.in told M)
$hyp "v'134" (\/ (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "F"))
(TLA.bEx NodeSet ((i) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p i))))) (/\ (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p "U"))
(TLA.bEx NodeSet ((i) (TLA.bEx NodeSet ((j) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p (TLA.tuple i
j)))))))))
$hyp "v'135" (= (TLA.fapply (TLA.fapply told "ret") p)
BOT)
$hyp "v'136" (= (TLA.fapply (TLA.fapply told "op") p)
BOT)
$hyp "v'137" (= (TLA.fapply (TLA.fapply told "arg") p)
BOT)
$hyp "v'138" (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma"))
$hyp "v'139" (= (TLA.fapply t "ret")
(TLA.fapply told "ret"))
$hyp "v'146" (-. (= a_punde_1a p))
$hyp "v'147" (= (TLA.fapply pc a_punde_1a)
"U6")
$goal (= (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.fapply (TLA.fapply told "arg") a_punde_1a))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"((a_Validunde_pca&(a_Validunde_Fa&(a_Validunde_uunde_Fa&(a_Validunde_aunde_Fa&(a_Validunde_bunde_Fa&(a_Validunde_uunde_Ua&(a_Validunde_vunde_Ua&(a_Validunde_aunde_Ua&(a_Validunde_bunde_Ua&(a_Validunde_ca&(a_Validunde_da&(M \\in SUBSET([''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])))))))))))))&(InvDecide&(a_InvF1a&(a_InvF2a&(a_InvF3a&(a_InvF4a&(a_InvF5a&(a_InvF6a&(a_InvF7a&(InvFR&(a_InvU1a&(a_InvU2a&(a_InvU3a&(a_InvU4a&(a_InvU5a&(a_InvU6a&(a_InvU7a&(a_InvU8a&(InvUR&(SigmaRespectsShared&Linearizable))))))))))))))))))))" (is "?z_ht&?z_hci")
 using v'102 by blast
 have z_Hk:"((((t[''op''])=except((told[''op'']), p, ''F''))&bEx(NodeSet, (\<lambda>i. ((t[''arg''])=except((told[''arg'']), p, i)))))|(((t[''op''])=except((told[''op'']), p, ''U''))&bEx(NodeSet, (\<lambda>i. bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<i, j>>))))))))" (is "?z_hdv|?z_hel")
 using v'134 by blast
 have z_Hq:"(a_punde_1a~=p)"
 using v'146 by blast
 have z_Hg:"(a_punde_1a \\in PROCESSES)" (is "?z_hg")
 using a_punde_1a_in by blast
 have z_Hj:"(told \\in M)" (is "?z_hj")
 using told_in by blast
 have zenon_L1_: "(\\A zenon_Vig:((zenon_Vig \\in DOMAIN((told[''arg''])))<=>(zenon_Vig \\in PROCESSES))) ==> ?z_hg ==> (~(a_punde_1a \\in DOMAIN((told[''arg''])))) ==> FALSE" (is "?z_hey ==> _ ==> ?z_hfe ==> FALSE")
 proof -
  assume z_Hey:"?z_hey" (is "\\A x : ?z_hfg(x)")
  assume z_Hg:"?z_hg"
  assume z_Hfe:"?z_hfe" (is "~?z_hff")
  have z_Hfh: "?z_hfg(a_punde_1a)"
  by (rule zenon_all_0 [of "?z_hfg" "a_punde_1a", OF z_Hey])
  show FALSE
  proof (rule zenon_equiv [OF z_Hfh])
   assume z_Hfe:"?z_hfe"
   assume z_Hfi:"(~?z_hg)"
   show FALSE
   by (rule notE [OF z_Hfi z_Hg])
  next
   assume z_Hff:"?z_hff"
   assume z_Hg:"?z_hg"
   show FALSE
   by (rule notE [OF z_Hfe z_Hff])
  qed
 qed
 assume z_Hs:"(((t[''arg''])[a_punde_1a])~=((told[''arg''])[a_punde_1a]))" (is "?z_hfj~=?z_hfk")
 have z_Ht: "?z_ht" (is "_&?z_hv")
 by (rule zenon_and_0 [OF z_Ha])
 have z_Hv: "?z_hv" (is "_&?z_hx")
 by (rule zenon_and_1 [OF z_Ht])
 have z_Hx: "?z_hx" (is "_&?z_hz")
 by (rule zenon_and_1 [OF z_Hv])
 have z_Hz: "?z_hz" (is "_&?z_hbb")
 by (rule zenon_and_1 [OF z_Hx])
 have z_Hbb: "?z_hbb" (is "_&?z_hbd")
 by (rule zenon_and_1 [OF z_Hz])
 have z_Hbd: "?z_hbd" (is "_&?z_hbf")
 by (rule zenon_and_1 [OF z_Hbb])
 have z_Hbf: "?z_hbf" (is "_&?z_hbh")
 by (rule zenon_and_1 [OF z_Hbd])
 have z_Hbh: "?z_hbh" (is "_&?z_hbj")
 by (rule zenon_and_1 [OF z_Hbf])
 have z_Hbj: "?z_hbj" (is "_&?z_hbl")
 by (rule zenon_and_1 [OF z_Hbh])
 have z_Hbl: "?z_hbl" (is "_&?z_hbn")
 by (rule zenon_and_1 [OF z_Hbj])
 have z_Hbn: "?z_hbn" (is "_&?z_hbp")
 by (rule zenon_and_1 [OF z_Hbl])
 have z_Hbp: "?z_hbp"
 by (rule zenon_and_1 [OF z_Hbn])
 have z_Hfl: "(M \\subseteq [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hfl")
 by (rule zenon_in_SUBSET_0 [of "M" "[''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]", OF z_Hbp])
 have z_Hfm_z_Hfl: "bAll(M, (\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))) == ?z_hfl" (is "?z_hfm == _")
 by (unfold subset_def)
 have z_Hfm: "?z_hfm"
 by (unfold z_Hfm_z_Hfl, fact z_Hfl)
 show FALSE
 proof (rule zenon_or [OF z_Hk])
  assume z_Hdv:"?z_hdv" (is "?z_hdw&?z_hee")
  have z_Hee: "?z_hee"
  by (rule zenon_and_1 [OF z_Hdv])
  have z_Hfq_z_Hee: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))) == ?z_hee" (is "?z_hfq == _")
  by (unfold bEx_def)
  have z_Hfq: "?z_hfq" (is "\\E x : ?z_hfv(x)")
  by (unfold z_Hfq_z_Hee, fact z_Hee)
  have z_Hfw: "?z_hfv((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, x)))))" (is "?z_hfy&?z_hfz")
  by (rule zenon_ex_choose_0 [of "?z_hfv", OF z_Hfq])
  have z_Hfz: "?z_hfz" (is "?z_heh=?z_hga")
  by (rule zenon_and_1 [OF z_Hfw])
  have z_Hgb: "(told \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hgb")
  by (rule zenon_all_in_0 [of "M" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hfm z_Hj])
  let ?z_hgc = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
  let ?z_hgd = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
  have z_Hge: "(4 \\in DOMAIN(?z_hgc))" by auto
  have z_Hgh: "((told[(?z_hgc[4])]) \\in (?z_hgd[4]))" (is "?z_hgh")
  by (rule zenon_in_recordset_field [OF z_Hgb z_Hge])
  have z_Hgl: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hgl")
  using z_Hgh by auto
  have z_Hgm_z_Hgl: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hgl" (is "?z_hgm == _")
  by (unfold prod_def)
  have z_Hgm: "?z_hgm"
  by (unfold z_Hgm_z_Hgl, fact z_Hgl)
  have z_Hgr: "(DOMAIN((told[''arg'']))=PROCESSES)" (is "?z_hfc=_")
  by (rule zenon_in_funcset_1 [of "(told[''arg''])" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hgm])
  have z_Hgs: "(((isAFcn(?z_heh)<=>isAFcn(?z_hga))&(DOMAIN(?z_heh)=DOMAIN(?z_hga)))&(\\A zenon_Vuaa:((?z_heh[zenon_Vuaa])=(?z_hga[zenon_Vuaa]))))" (is "?z_hgt&?z_hha")
  by (rule zenon_funequal_0 [of "?z_heh" "?z_hga", OF z_Hfz])
  have z_Hha: "?z_hha" (is "\\A x : ?z_hhf(x)")
  by (rule zenon_and_1 [OF z_Hgs])
  have z_Hey: "(\\A zenon_Vig:((zenon_Vig \\in ?z_hfc)<=>(zenon_Vig \\in PROCESSES)))" (is "\\A x : ?z_hfg(x)")
  by (rule zenon_setequal_0 [of "?z_hfc" "PROCESSES", OF z_Hgr])
  have z_Hhg: "?z_hhf(a_punde_1a)" (is "_=?z_hhh")
  by (rule zenon_all_0 [of "?z_hhf" "a_punde_1a", OF z_Hha])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vkz. (?z_hfj=zenon_Vkz))" "(told[''arg''])" "p" "(CHOOSE x:((x \\in NodeSet)&(?z_heh=except((told[''arg'']), p, x))))" "a_punde_1a", OF z_Hhg])
   assume z_Hff:"(a_punde_1a \\in ?z_hfc)" (is "?z_hff")
   assume z_Hhl:"(p=a_punde_1a)"
   assume z_Hhm:"(?z_hfj=(CHOOSE x:((x \\in NodeSet)&(?z_heh=except((told[''arg'']), p, x)))))" (is "_=?z_hfx")
   show FALSE
   by (rule zenon_eqsym [OF z_Hhl z_Hq])
  next
   assume z_Hff:"(a_punde_1a \\in ?z_hfc)" (is "?z_hff")
   assume z_Hhn:"(p~=a_punde_1a)"
   assume z_Hho:"(?z_hfj=?z_hfk)"
   show FALSE
   by (rule notE [OF z_Hs z_Hho])
  next
   assume z_Hfe:"(~(a_punde_1a \\in ?z_hfc))" (is "~?z_hff")
   show FALSE
   by (rule zenon_L1_ [OF z_Hey z_Hg z_Hfe])
  qed
 next
  assume z_Hel:"?z_hel" (is "?z_hem&?z_hep")
  have z_Hep: "?z_hep"
  by (rule zenon_and_1 [OF z_Hel])
  have z_Hhp_z_Hep: "(\\E x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))) == ?z_hep" (is "?z_hhp == _")
  by (unfold bEx_def)
  have z_Hhp: "?z_hhp" (is "\\E x : ?z_hhw(x)")
  by (unfold z_Hhp_z_Hep, fact z_Hep)
  have z_Hhx: "?z_hhw((CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))))" (is "?z_hhz&?z_hia")
  by (rule zenon_ex_choose_0 [of "?z_hhw", OF z_Hhp])
  have z_Hia: "?z_hia"
  by (rule zenon_and_1 [OF z_Hhx])
  have z_Hib_z_Hia: "(\\E x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))) == ?z_hia" (is "?z_hib == _")
  by (unfold bEx_def)
  have z_Hib: "?z_hib" (is "\\E x : ?z_hig(x)")
  by (unfold z_Hib_z_Hia, fact z_Hia)
  have z_Hih: "?z_hig((CHOOSE x:((x \\in NodeSet)&((t[''arg''])=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. ((t[''arg''])=except((told[''arg'']), p, <<x, j>>)))))), x>>)))))" (is "?z_hij&?z_hik")
  by (rule zenon_ex_choose_0 [of "?z_hig", OF z_Hib])
  have z_Hik: "?z_hik" (is "?z_heh=?z_hil")
  by (rule zenon_and_1 [OF z_Hih])
  have z_Hgb: "(told \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hgb")
  by (rule zenon_all_in_0 [of "M" "(\<lambda>x. (x \\in [''sigma'' : (StateSet), ''ret'' : (ReturnSet), ''op'' : (OpSet), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))", OF z_Hfm z_Hj])
  let ?z_hgc = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
  let ?z_hgd = "<<StateSet, ReturnSet, OpSet, FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
  have z_Hge: "(4 \\in DOMAIN(?z_hgc))" by auto
  have z_Hgh: "((told[(?z_hgc[4])]) \\in (?z_hgd[4]))" (is "?z_hgh")
  by (rule zenon_in_recordset_field [OF z_Hgb z_Hge])
  have z_Hgl: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hgl")
  using z_Hgh by auto
  have z_Hgm_z_Hgl: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hgl" (is "?z_hgm == _")
  by (unfold prod_def)
  have z_Hgm: "?z_hgm"
  by (unfold z_Hgm_z_Hgl, fact z_Hgl)
  have z_Hgr: "(DOMAIN((told[''arg'']))=PROCESSES)" (is "?z_hfc=_")
  by (rule zenon_in_funcset_1 [of "(told[''arg''])" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hgm])
  have z_Him: "(((isAFcn(?z_heh)<=>isAFcn(?z_hil))&(DOMAIN(?z_heh)=DOMAIN(?z_hil)))&(\\A zenon_Vsd:((?z_heh[zenon_Vsd])=(?z_hil[zenon_Vsd]))))" (is "?z_hin&?z_his")
  by (rule zenon_funequal_0 [of "?z_heh" "?z_hil", OF z_Hik])
  have z_His: "?z_his" (is "\\A x : ?z_hix(x)")
  by (rule zenon_and_1 [OF z_Him])
  have z_Hey: "(\\A zenon_Vig:((zenon_Vig \\in ?z_hfc)<=>(zenon_Vig \\in PROCESSES)))" (is "\\A x : ?z_hfg(x)")
  by (rule zenon_setequal_0 [of "?z_hfc" "PROCESSES", OF z_Hgr])
  have z_Hiy: "?z_hix(a_punde_1a)" (is "_=?z_hiz")
  by (rule zenon_all_0 [of "?z_hix" "a_punde_1a", OF z_His])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vkz. (?z_hfj=zenon_Vkz))" "(told[''arg''])" "p" "<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heh=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heh=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heh=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>" "a_punde_1a", OF z_Hiy])
   assume z_Hff:"(a_punde_1a \\in ?z_hfc)" (is "?z_hff")
   assume z_Hhl:"(p=a_punde_1a)"
   assume z_Hjb:"(?z_hfj=<<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heh=except((told[''arg'']), p, <<x, j>>)))))), (CHOOSE x:((x \\in NodeSet)&(?z_heh=except((told[''arg'']), p, <<(CHOOSE x:((x \\in NodeSet)&bEx(NodeSet, (\<lambda>j. (?z_heh=except((told[''arg'']), p, <<x, j>>)))))), x>>))))>>)" (is "_=?z_hja")
   show FALSE
   by (rule zenon_eqsym [OF z_Hhl z_Hq])
  next
   assume z_Hff:"(a_punde_1a \\in ?z_hfc)" (is "?z_hff")
   assume z_Hhn:"(p~=a_punde_1a)"
   assume z_Hho:"(?z_hfj=?z_hfk)"
   show FALSE
   by (rule notE [OF z_Hs z_Hho])
  next
   assume z_Hfe:"(~(a_punde_1a \\in ?z_hfc))" (is "~?z_hff")
   show FALSE
   by (rule zenon_L1_ [OF z_Hey z_Hg z_Hfe])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 9"; *} qed
lemma ob'5:
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
assumes v'97: "(((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (a_Validunde_Ma)) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p))) = (BOT))))))))) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'98: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'100: "((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1'')]))) & (\<exists> i \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i_1 \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i_1))))) = (fapply ((A), (i_1)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))))) \<and> (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) \<and> (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_dhash_primea :: c)) = (d))))) | (((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U1'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((((a_chash_primea :: c)) = ([(a_ca) EXCEPT ![(p)] = (i)]))) & ((((a_dhash_primea :: c)) = ([(d) EXCEPT ![(p)] = (j)]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i_1 \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i_1))))) = (fapply ((A), (i_1)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))))) \<and> (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)]))))) \<and> (((fapply ((t), (''ret''))) = (fapply ((told), (''ret'')))))))))))))))) & (((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))))))"
assumes v'101: "(((fapply ((pc), (p))) = (''0'')))"
assumes v'105: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'124: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U6'')))"
shows "(\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((told), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((told), (''arg''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''F'')]))) & (\<exists> i \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (i)]))))) | ((((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (''U'')]))) & (\<exists> i \<in> (NodeSet) : (\<exists> j \<in> (NodeSet) : (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (<<(i), (j)>>)])))))))))"(is "PROP ?ob'5")
proof -
ML_command {* writeln "*** TLAPS ENTER 5"; *}
show "PROP ?ob'5"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 5"; *} qed
end
