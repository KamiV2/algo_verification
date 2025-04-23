(* automatically generated -- do not edit manually *)
theory URInv_proof imports Constant Zenon begin
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

lemma ob'31:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p))) = (BOT))))))))) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'130: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''0''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) = (BOT))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) = (BOT)))))))))"(is "PROP ?ob'31")
proof -
ML_command {* writeln "*** TLAPS ENTER 31"; *}
show "PROP ?ob'31"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_b58a7a.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_b58a7a.znn.out
;; obligation #31
$hyp "v'108" (/\ TypeOK
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "0")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p) BOT)))))))) a_InvF1a a_InvF2a a_InvF3a
a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a
a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'130" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"0") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
BOT)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"0") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p_1)
BOT))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''0'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=BOT)&(((t[''arg''])[a_punde_1a])=BOT))))))))" (is "?z_hr")
 using v'130 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 31"; *} qed
lemma ob'43:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t)))))))))) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'132: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h8bac10acbab471bf2f6f72e841fa02a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'43")
proof -
ML_command {* writeln "*** TLAPS ENTER 43"; *}
show "PROP ?ob'43"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_b49675.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_b49675.znn.out
;; obligation #43
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF2All p t)))
(=> (= (TLA.fapply pc p) "F2U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF2All p t)))
(=> (= (TLA.fapply pc p) "F2U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF2All p t))) (=> (= (TLA.fapply pc p) "F2U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF2All p t))) (=> (= (TLA.fapply pc p) "F2U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF2All p t)))))))) a_InvF3a a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR
a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR
SigmaRespectsShared SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'132" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F2") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(a_h8bac10acbab471bf2f6f72e841fa02a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F2U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h8bac10acbab471bf2f6f72e841fa02a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F2U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h8bac10acbab471bf2f6f72e841fa02a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F2U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h8bac10acbab471bf2f6f72e841fa02a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F2U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h8bac10acbab471bf2f6f72e841fa02a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(a_h8bac10acbab471bf2f6f72e841fa02a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F2U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1))
(a_h8bac10acbab471bf2f6f72e841fa02a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F2U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h8bac10acbab471bf2f6f72e841fa02a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F2U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(a_h8bac10acbab471bf2f6f72e841fa02a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F2U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h8bac10acbab471bf2f6f72e841fa02a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h8bac10acbab471bf2f6f72e841fa02a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F2U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h8bac10acbab471bf2f6f72e841fa02a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F2U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h8bac10acbab471bf2f6f72e841fa02a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F2U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h8bac10acbab471bf2f6f72e841fa02a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F2U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h8bac10acbab471bf2f6f72e841fa02a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'132 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 43"; *} qed
lemma ob'47:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t)))))))))) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'133: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_hae6d0fa8d477cdeafadc27a5cf9673a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'47")
proof -
ML_command {* writeln "*** TLAPS ENTER 47"; *}
show "PROP ?ob'47"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_7fc9ed.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_7fc9ed.znn.out
;; obligation #47
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F3")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF3All p t)))
(=> (= (TLA.fapply pc p) "F3U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF3All p t)))
(=> (= (TLA.fapply pc p) "F3U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF3All p t))) (=> (= (TLA.fapply pc p) "F3U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF3All p t))) (=> (= (TLA.fapply pc p) "F3U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF3All p t)))))))) a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a
a_InvU2a a_InvU3a a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR
SigmaRespectsShared SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'133" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F3") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(a_hae6d0fa8d477cdeafadc27a5cf9673a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_hae6d0fa8d477cdeafadc27a5cf9673a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_hae6d0fa8d477cdeafadc27a5cf9673a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_hae6d0fa8d477cdeafadc27a5cf9673a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_hae6d0fa8d477cdeafadc27a5cf9673a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F3") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(a_hae6d0fa8d477cdeafadc27a5cf9673a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F3U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1))
(a_hae6d0fa8d477cdeafadc27a5cf9673a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F3U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_hae6d0fa8d477cdeafadc27a5cf9673a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F3U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(a_hae6d0fa8d477cdeafadc27a5cf9673a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F3U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_hae6d0fa8d477cdeafadc27a5cf9673a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F3'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_hae6d0fa8d477cdeafadc27a5cf9673a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F3U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_hae6d0fa8d477cdeafadc27a5cf9673a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F3U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_hae6d0fa8d477cdeafadc27a5cf9673a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F3U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_hae6d0fa8d477cdeafadc27a5cf9673a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F3U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_hae6d0fa8d477cdeafadc27a5cf9673a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'133 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 47"; *} qed
lemma ob'51:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t)))))))))) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'134: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((hc084843bed42138880b04f673bf55a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hc084843bed42138880b04f673bf55a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hc084843bed42138880b04f673bf55a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hc084843bed42138880b04f673bf55a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hc084843bed42138880b04f673bf55a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((hc084843bed42138880b04f673bf55a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((hc084843bed42138880b04f673bf55a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((hc084843bed42138880b04f673bf55a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((hc084843bed42138880b04f673bf55a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((hc084843bed42138880b04f673bf55a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'51")
proof -
ML_command {* writeln "*** TLAPS ENTER 51"; *}
show "PROP ?ob'51"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_047659.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_047659.znn.out
;; obligation #51
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F4")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF4All p t)))
(=> (= (TLA.fapply pc p) "F4U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF4All p t)))
(=> (= (TLA.fapply pc p) "F4U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF4All p t))) (=> (= (TLA.fapply pc p) "F4U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF4All p t))) (=> (= (TLA.fapply pc p) "F4U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF4All p t)))))))) a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a
a_InvU3a a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR
SigmaRespectsShared SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'134" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F4") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(hc084843bed42138880b04f673bf55a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F4U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(hc084843bed42138880b04f673bf55a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F4U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(hc084843bed42138880b04f673bf55a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F4U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(hc084843bed42138880b04f673bf55a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F4U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(hc084843bed42138880b04f673bf55a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F4") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(hc084843bed42138880b04f673bf55a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F4U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1)) (hc084843bed42138880b04f673bf55a p_1
t))) (=> (= (TLA.fapply a_pchash_primea p_1) "F4U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(hc084843bed42138880b04f673bf55a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F4U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(hc084843bed42138880b04f673bf55a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F4U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(hc084843bed42138880b04f673bf55a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F4'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&hc084843bed42138880b04f673bf55a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F4U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&hc084843bed42138880b04f673bf55a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F4U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&hc084843bed42138880b04f673bf55a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F4U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&hc084843bed42138880b04f673bf55a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F4U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&hc084843bed42138880b04f673bf55a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'134 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 51"; *} qed
lemma ob'59:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t)))))))))) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'135: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'59")
proof -
ML_command {* writeln "*** TLAPS ENTER 59"; *}
show "PROP ?ob'59"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_07ae94.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_07ae94.znn.out
;; obligation #59
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F5")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF5All p t)))
(=> (= (TLA.fapply pc p) "F5U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF5All p t)))
(=> (= (TLA.fapply pc p) "F5U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF5All p t))) (=> (= (TLA.fapply pc p) "F5U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF5All p t))) (=> (= (TLA.fapply pc p) "F5U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF5All p t)))))))) a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a
a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'135" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F5") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F5") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F5'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F5U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F5U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F5U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F5U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'135 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 59"; *} qed
lemma ob'77:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t)))))))))) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'136: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((hd3f2544b569777b6bc89285644fd8a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((hd3f2544b569777b6bc89285644fd8a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((hd3f2544b569777b6bc89285644fd8a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((hd3f2544b569777b6bc89285644fd8a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((hd3f2544b569777b6bc89285644fd8a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'77")
proof -
ML_command {* writeln "*** TLAPS ENTER 77"; *}
show "PROP ?ob'77"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_21bac6.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_21bac6.znn.out
;; obligation #77
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F6")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF6All p t)))
(=> (= (TLA.fapply pc p) "F6U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF6All p t)))
(=> (= (TLA.fapply pc p) "F6U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF6All p t))) (=> (= (TLA.fapply pc p) "F6U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF6All p t))) (=> (= (TLA.fapply pc p) "F6U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF6All p t)))))))) a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a
a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'136" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F6U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F6U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(hd3f2544b569777b6bc89285644fd8a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1)) (hd3f2544b569777b6bc89285644fd8a p_1
t))) (=> (= (TLA.fapply a_pchash_primea p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(hd3f2544b569777b6bc89285644fd8a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F6U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(hd3f2544b569777b6bc89285644fd8a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F6U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(hd3f2544b569777b6bc89285644fd8a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F6'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F6U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F6U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F6U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F6U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'136 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 77"; *} qed
lemma ob'95:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t)))))))))) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'137: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'95")
proof -
ML_command {* writeln "*** TLAPS ENTER 95"; *}
show "PROP ?ob'95"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_d7fe82.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_d7fe82.znn.out
;; obligation #95
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF7All p t)))
(=> (= (TLA.fapply pc p) "F7U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (InvF7All p t)))
(=> (= (TLA.fapply pc p) "F7U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF7All p t))) (=> (= (TLA.fapply pc p) "F7U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))
(InvF7All p t))) (=> (= (TLA.fapply pc p) "F7U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))
(InvF7All p t)))))))) InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'137" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F7") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F7") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(a_h922edcc313eb8f84ff6fd24d1bdf68a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F7U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1))
(a_h922edcc313eb8f84ff6fd24d1bdf68a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F7U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h922edcc313eb8f84ff6fd24d1bdf68a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F7U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(a_h922edcc313eb8f84ff6fd24d1bdf68a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F7U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h922edcc313eb8f84ff6fd24d1bdf68a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F7'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F7U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F7U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F7U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F7U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'137 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 95"; *} qed
lemma ob'113:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))))))))) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'138: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (a_punde_1a))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (fapply (((a_uunde_Fhash_primea :: c)), (p_1))))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p_1))), (fapply (((a_uunde_Fhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Fhash_primea :: c)), (p_1))))))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Fhash_primea :: c)), (p_1))))))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1))))))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1))))))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1))))))))))))"(is "PROP ?ob'113")
proof -
ML_command {* writeln "*** TLAPS ENTER 113"; *}
show "PROP ?ob'113"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_cd3072.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_cd3072.znn.out
;; obligation #113
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "FR")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) (TLA.fapply a_uunde_Fa p))
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply a_uunde_Fa p)) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply a_uunde_Fa p)))) (=> (= (TLA.fapply pc p)
"FRU1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply a_uunde_Fa p)))) (=> (= (TLA.fapply pc p)
"FRU2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))))
(=> (= (TLA.fapply pc p) "FRU7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))))
(=> (= (TLA.fapply pc p) "FRU8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p)
(TLA.fapply a_vunde_Ua p))))))))) a_InvU1a a_InvU2a a_InvU3a a_InvU4a
a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'138" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"FR") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "FRU1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "FRU2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "FRU7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "FRU8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"FR") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1)
(TLA.fapply a_uunde_Fhash_primea p_1))
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply a_uunde_Fhash_primea p_1))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Fhash_primea p_1))))
(=> (= (TLA.fapply a_pchash_primea p_1) "FRU1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1)) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Fhash_primea p_1))))
(=> (= (TLA.fapply a_pchash_primea p_1) "FRU2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))))
(=> (= (TLA.fapply a_pchash_primea p_1) "FRU7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))))
(=> (= (TLA.fapply a_pchash_primea p_1) "FRU8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1)
(TLA.fapply a_vunde_Uhash_primea p_1)))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''FR'')=>((((t[''ret''])[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, ((t[''arg''])[a_punde_1a]), (a_uunde_Fhash_primea[a_punde_1a]))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Fhash_primea[a_punde_1a])))))))&((((a_pchash_primea[a_punde_1a])=''FRU1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Fhash_primea[a_punde_1a])))))))&((((a_pchash_primea[a_punde_1a])=''FRU2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))))))&((((a_pchash_primea[a_punde_1a])=''FRU7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])))))))&(((a_pchash_primea[a_punde_1a])=''FRU8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))))))))))))))" (is "?z_hr")
 using v'138 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 113"; *} qed
lemma ob'127:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU2 suppressed *)
(* usable definition InvU3 suppressed *)
(* usable definition InvU4 suppressed *)
(* usable definition InvU5 suppressed *)
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet)))))))))) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'139: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U1''))) \<Longrightarrow> ((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT)))) \<and> (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet)))))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))))))))"(is "PROP ?ob'127")
proof -
ML_command {* writeln "*** TLAPS ENTER 127"; *}
show "PROP ?ob'127"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_f3244d.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_f3244d.znn.out
;; obligation #127
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))))))))
a_InvU2a a_InvU3a a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR
SigmaRespectsShared SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'139" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U1") (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1)
(TLA.prod NodeSet NodeSet))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((((told[''ret''])[p])=ACK)&((t[''sigma''])=(told[''sigma''])))&((t[''ret''])=except((told[''ret'']), p, BOT)))&((t[''op''])=except((told[''op'']), p, BOT)))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))" (is "_=?z_hu")
 using v'113 by blast
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U1'')=>(((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))))))))" (is "?z_hr")
 using v'139 by blast
 assume z_Hs:"(~bAll(PROCESSES, (\<lambda>p_1. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[p_1])=''U1'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&(((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))))))))))" (is "~?z_hcz")
 have z_Hdp_z_Hr: "(\\A x:((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>(((((t[''ret''])[x])=BOT)&(((t[''op''])[x])=''U''))&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))) == ?z_hr" (is "?z_hdp == _")
 by (unfold bAll_def)
 have z_Hdp: "?z_hdp" (is "\\A x : ?z_heg(x)")
 by (unfold z_Hdp_z_Hr, fact z_Hr)
 have z_Heh_z_Hs: "(~(\\A x:((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))))) == (~?z_hcz)" (is "?z_heh == ?z_hs")
 by (unfold bAll_def)
 have z_Heh: "?z_heh" (is "~(\\A x : ?z_hep(x))")
 by (unfold z_Heh_z_Hs, fact z_Hs)
 have z_Heq: "(\\E x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))" (is "\\E x : ?z_hes(x)")
 by (rule zenon_notallex_0 [of "?z_hep", OF z_Heh])
 have z_Het: "?z_hes((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))))))" (is "~(?z_hev=>?z_hew)")
 by (rule zenon_ex_choose_0 [of "?z_hes", OF z_Heq])
 have z_Hev: "?z_hev"
 by (rule zenon_notimply_0 [OF z_Het])
 have z_Hex: "(~?z_hew)"
 by (rule zenon_notimply_1 [OF z_Het])
 have z_Hey_z_Hex: "(~(\\A x:((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U1'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))) == (~?z_hew)" (is "?z_hey == ?z_hex")
 by (unfold bAll_def)
 have z_Hey: "?z_hey" (is "~(\\A x : ?z_hfq(x))")
 by (unfold z_Hey_z_Hex, fact z_Hex)
 have z_Hfr: "(\\E x:(~((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U1'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))" (is "\\E x : ?z_hft(x)")
 by (rule zenon_notallex_0 [of "?z_hfq", OF z_Hey])
 have z_Hfu: "?z_hft((CHOOSE x:(~((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U1'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))))" (is "~(?z_hfw=>?z_hfx)")
 by (rule zenon_ex_choose_0 [of "?z_hft", OF z_Hfr])
 have z_Hfw: "?z_hfw"
 by (rule zenon_notimply_0 [OF z_Hfu])
 have z_Hfy: "(~?z_hfx)" (is "~(?z_hfd=>?z_hfz)")
 by (rule zenon_notimply_1 [OF z_Hfu])
 have z_Hfd: "?z_hfd" (is "?z_hfe=?z_hcn")
 by (rule zenon_notimply_0 [OF z_Hfy])
 have z_Hga: "(~?z_hfz)" (is "~(?z_hgb&?z_hgc)")
 by (rule zenon_notimply_1 [OF z_Hfy])
 show FALSE
 proof (rule zenon_notand [OF z_Hga])
  assume z_Hgd:"((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])~=BOT)" (is "?z_hge~=_")
  have z_Hgg: "?z_heg((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))))))" (is "_=>?z_hgh")
  by (rule zenon_all_0 [of "?z_heg" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))", OF z_Hdp])
  show FALSE
  proof (rule zenon_imply [OF z_Hgg])
   assume z_Hgi:"(~?z_hev)"
   show FALSE
   by (rule notE [OF z_Hgi z_Hev])
  next
   assume z_Hgh:"?z_hgh"
   have z_Hgj: "(?z_hfd=>((?z_hgb&((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U''))&((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))" (is "_=>?z_hgk")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>t. (?z_hfd=>(((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))", OF z_Hgh z_Hfw])
   show FALSE
   proof (rule zenon_imply [OF z_Hgj])
    assume z_Hhc:"(?z_hfe~=?z_hcn)"
    show FALSE
    by (rule notE [OF z_Hhc z_Hfd])
   next
    assume z_Hgk:"?z_hgk" (is "?z_hgl&?z_hgp")
    have z_Hgl: "?z_hgl" (is "_&?z_hgm")
    by (rule zenon_and_0 [OF z_Hgk])
    have z_Hgb: "?z_hgb"
    by (rule zenon_and_0 [OF z_Hgl])
    show FALSE
    by (rule notE [OF z_Hgd z_Hgb])
   qed
  qed
 next
  assume z_Hhd:"(~?z_hgc)" (is "~(?z_hgm&?z_hgp)")
  show FALSE
  proof (rule zenon_notand [OF z_Hhd])
   assume z_Hhe:"((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])~=''U'')" (is "?z_hgn~=?z_hcu")
   have z_Hgg: "?z_heg((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcu)&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))))))" (is "_=>?z_hgh")
   by (rule zenon_all_0 [of "?z_heg" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcu)&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))", OF z_Hdp])
   show FALSE
   proof (rule zenon_imply [OF z_Hgg])
    assume z_Hgi:"(~?z_hev)"
    show FALSE
    by (rule notE [OF z_Hgi z_Hev])
   next
    assume z_Hgh:"?z_hgh"
    have z_Hgj: "(?z_hfd=>((?z_hgb&?z_hgm)&?z_hgp))" (is "_=>?z_hgk")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>t. (?z_hfd=>(((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcu)&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcu)&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=?z_hcu))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcu)&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))", OF z_Hgh z_Hfw])
    show FALSE
    proof (rule zenon_imply [OF z_Hgj])
     assume z_Hhc:"(?z_hfe~=?z_hcn)"
     show FALSE
     by (rule notE [OF z_Hhc z_Hfd])
    next
     assume z_Hgk:"?z_hgk" (is "?z_hgl&_")
     have z_Hgl: "?z_hgl"
     by (rule zenon_and_0 [OF z_Hgk])
     have z_Hgm: "?z_hgm"
     by (rule zenon_and_1 [OF z_Hgl])
     show FALSE
     by (rule notE [OF z_Hhe z_Hgm])
    qed
   qed
  next
   assume z_Hhf:"(~?z_hgp)"
   have z_Hhg: "((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))) \\in ?z_hu)" (is "?z_hhg")
   by (rule subst [where P="(\<lambda>zenon_Vzad. ((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))) \\in zenon_Vzad))", OF z_Hf z_Hfw])
   have z_Hgg: "?z_heg((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))))))))))" (is "_=>?z_hgh")
   by (rule zenon_all_0 [of "?z_heg" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))", OF z_Hdp])
   show FALSE
   proof (rule zenon_imply [OF z_Hgg])
    assume z_Hgi:"(~?z_hev)"
    show FALSE
    by (rule notE [OF z_Hgi z_Hev])
   next
    assume z_Hgh:"?z_hgh"
    have z_Hhk: "bAll(?z_hu, (\<lambda>t. (?z_hfd=>(((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))" (is "?z_hhk")
    by (rule subst [where P="(\<lambda>zenon_Vbbd. bAll(zenon_Vbbd, (\<lambda>t. (?z_hfd=>(((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))", OF z_Hf z_Hgh])
    have z_Hho_z_Hhk: "(\\A x:((x \\in ?z_hu)=>(?z_hfd=>(((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&(((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U''))&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))) == ?z_hhk" (is "?z_hho == _")
    by (unfold bAll_def)
    have z_Hho: "?z_hho" (is "\\A x : ?z_hhu(x)")
    by (unfold z_Hho_z_Hhk, fact z_Hhk)
    have z_Hhv: "?z_hhu((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet)))))))))" (is "_=>?z_hgj")
    by (rule zenon_all_0 [of "?z_hhu" "(CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfd=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))])=''U'')&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))))))))))]) \\in prod(NodeSet, NodeSet))))))))", OF z_Hho])
    show FALSE
    proof (rule zenon_imply [OF z_Hhv])
     assume z_Hhw:"(~?z_hhg)"
     show FALSE
     by (rule notE [OF z_Hhw z_Hhg])
    next
     assume z_Hgj:"?z_hgj" (is "_=>?z_hgk")
     show FALSE
     proof (rule zenon_imply [OF z_Hgj])
      assume z_Hhc:"(?z_hfe~=?z_hcn)"
      show FALSE
      by (rule notE [OF z_Hhc z_Hfd])
     next
      assume z_Hgk:"?z_hgk" (is "?z_hgl&_")
      have z_Hgp: "?z_hgp"
      by (rule zenon_and_1 [OF z_Hgk])
      show FALSE
      by (rule notE [OF z_Hhf z_Hgp])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 127"; *} qed
lemma ob'131:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU3 suppressed *)
(* usable definition InvU4 suppressed *)
(* usable definition InvU5 suppressed *)
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t))))))))) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'140: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U2''))) \<Longrightarrow> ((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT)))) \<and> (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))))) \<and> ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)))))))"(is "PROP ?ob'131")
proof -
ML_command {* writeln "*** TLAPS ENTER 131"; *}
show "PROP ?ob'131"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_ef137c.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_ef137c.znn.out
;; obligation #131
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t))))))) a_InvU3a a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a
InvUR SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'140" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U2") (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))) (h29e700f910ac66eea1136a63914adb a_punde_1a
t)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1
t)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((((told[''ret''])[p])=ACK)&((t[''sigma''])=(told[''sigma''])))&((t[''ret''])=except((told[''ret'']), p, BOT)))&((t[''op''])=except((told[''op'']), p, BOT)))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))" (is "_=?z_hu")
 using v'113 by blast
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U2'')=>((((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb(a_punde_1a, t)))))))" (is "?z_hr")
 using v'140 by blast
 assume z_Hs:"(~bAll(PROCESSES, (\<lambda>p_1. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[p_1])=''U2'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(p_1, t))))))))))" (is "~?z_hdb")
 have z_Hdt_z_Hr: "(\\A x:((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((((t[''ret''])[x])=BOT)&(((t[''op''])[x])=''U''))&(((t[''arg''])[x]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb(x, t))))))) == ?z_hr" (is "?z_hdt == _")
 by (unfold bAll_def)
 have z_Hdt: "?z_hdt" (is "\\A x : ?z_hem(x)")
 by (unfold z_Hdt_z_Hr, fact z_Hr)
 have z_Hen_z_Hs: "(~(\\A x:((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))) == (~?z_hdb)" (is "?z_hen == ?z_hs")
 by (unfold bAll_def)
 have z_Hen: "?z_hen" (is "~(\\A x : ?z_hew(x))")
 by (unfold z_Hen_z_Hs, fact z_Hs)
 have z_Hex: "(\\E x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))" (is "\\E x : ?z_hez(x)")
 by (rule zenon_notallex_0 [of "?z_hew", OF z_Hen])
 have z_Hfa: "?z_hez((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))))" (is "~(?z_hfc=>?z_hfd)")
 by (rule zenon_ex_choose_0 [of "?z_hez", OF z_Hex])
 have z_Hfc: "?z_hfc"
 by (rule zenon_notimply_0 [OF z_Hfa])
 have z_Hfe: "(~?z_hfd)"
 by (rule zenon_notimply_1 [OF z_Hfa])
 have z_Hff_z_Hfe: "(~(\\A x:((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U2'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))) == (~?z_hfd)" (is "?z_hff == ?z_hfe")
 by (unfold bAll_def)
 have z_Hff: "?z_hff" (is "~(\\A x : ?z_hfz(x))")
 by (unfold z_Hff_z_Hfe, fact z_Hfe)
 have z_Hga: "(\\E x:(~((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U2'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))" (is "\\E x : ?z_hgc(x)")
 by (rule zenon_notallex_0 [of "?z_hfz", OF z_Hff])
 have z_Hgd: "?z_hgc((CHOOSE x:(~((x \\in a_Mhash_primea)=>(((a_pchash_primea[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U2'')=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=''U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))))" (is "~(?z_hgf=>?z_hgg)")
 by (rule zenon_ex_choose_0 [of "?z_hgc", OF z_Hga])
 have z_Hgf: "?z_hgf"
 by (rule zenon_notimply_0 [OF z_Hgd])
 have z_Hgh: "(~?z_hgg)" (is "~(?z_hfk=>?z_hgi)")
 by (rule zenon_notimply_1 [OF z_Hgd])
 have z_Hfk: "?z_hfk" (is "?z_hfl=?z_hcn")
 by (rule zenon_notimply_0 [OF z_Hgh])
 have z_Hgj: "(~?z_hgi)" (is "~(?z_hgk&?z_hgl)")
 by (rule zenon_notimply_1 [OF z_Hgh])
 show FALSE
 proof (rule zenon_notand [OF z_Hgj])
  assume z_Hgm:"((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])~=BOT)" (is "?z_hgn~=_")
  have z_Hgp: "?z_hem((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))))" (is "_=>?z_hgq")
  by (rule zenon_all_0 [of "?z_hem" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))", OF z_Hdt])
  show FALSE
  proof (rule zenon_imply [OF z_Hgp])
   assume z_Hgr:"(~?z_hfc)"
   show FALSE
   by (rule notE [OF z_Hgr z_Hfc])
  next
   assume z_Hgq:"?z_hgq"
   have z_Hgs: "(?z_hfk=>(((?z_hgk&((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), (CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))))))" (is "_=>?z_hgt")
   by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t))))", OF z_Hgq z_Hgf])
   show FALSE
   proof (rule zenon_imply [OF z_Hgs])
    assume z_Hhp:"(?z_hfl~=?z_hcn)"
    show FALSE
    by (rule notE [OF z_Hhp z_Hfk])
   next
    assume z_Hgt:"?z_hgt" (is "?z_hgu&?z_hhc")
    have z_Hgu: "?z_hgu" (is "?z_hgv&?z_hgz")
    by (rule zenon_and_0 [OF z_Hgt])
    have z_Hgv: "?z_hgv" (is "_&?z_hgw")
    by (rule zenon_and_0 [OF z_Hgu])
    have z_Hgk: "?z_hgk"
    by (rule zenon_and_0 [OF z_Hgv])
    show FALSE
    by (rule notE [OF z_Hgm z_Hgk])
   qed
  qed
 next
  assume z_Hhq:"(~?z_hgl)" (is "~(?z_hgw&?z_hhr)")
  show FALSE
  proof (rule zenon_notand [OF z_Hhq])
   assume z_Hhs:"((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])~=''U'')" (is "?z_hgx~=?z_hcv")
   have z_Hgp: "?z_hem((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))))" (is "_=>?z_hgq")
   by (rule zenon_all_0 [of "?z_hem" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))", OF z_Hdt])
   show FALSE
   proof (rule zenon_imply [OF z_Hgp])
    assume z_Hgr:"(~?z_hfc)"
    show FALSE
    by (rule notE [OF z_Hgr z_Hfc])
   next
    assume z_Hgq:"?z_hgq"
    have z_Hgs: "(?z_hfk=>(((?z_hgk&?z_hgw)&((((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=?z_hcv)&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), (CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=?z_hcv)&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))))))" (is "_=>?z_hgt")
    by (rule zenon_all_in_0 [of "a_Mhash_primea" "(\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=?z_hcv))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=?z_hcv)&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t))))", OF z_Hgq z_Hgf])
    show FALSE
    proof (rule zenon_imply [OF z_Hgs])
     assume z_Hhp:"(?z_hfl~=?z_hcn)"
     show FALSE
     by (rule notE [OF z_Hhp z_Hfk])
    next
     assume z_Hgt:"?z_hgt" (is "?z_hgu&?z_hhc")
     have z_Hgu: "?z_hgu" (is "?z_hgv&?z_hgz")
     by (rule zenon_and_0 [OF z_Hgt])
     have z_Hgv: "?z_hgv"
     by (rule zenon_and_0 [OF z_Hgu])
     have z_Hgw: "?z_hgw"
     by (rule zenon_and_1 [OF z_Hgv])
     show FALSE
     by (rule notE [OF z_Hhs z_Hgw])
    qed
   qed
  next
   assume z_Hht:"(~?z_hhr)" (is "~(?z_hgz&?z_hhc)")
   show FALSE
   proof (rule zenon_notand [OF z_Hht])
    assume z_Hhu:"(~?z_hgz)"
    have z_Hhv: "((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))) \\in ?z_hu)" (is "?z_hhv")
    by (rule subst [where P="(\<lambda>zenon_Vfkd. ((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))) \\in zenon_Vfkd))", OF z_Hf z_Hgf])
    have z_Hgp: "?z_hem((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))))" (is "_=>?z_hgq")
    by (rule zenon_all_0 [of "?z_hem" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))", OF z_Hdt])
    show FALSE
    proof (rule zenon_imply [OF z_Hgp])
     assume z_Hgr:"(~?z_hfc)"
     show FALSE
     by (rule notE [OF z_Hgr z_Hfc])
    next
     assume z_Hgq:"?z_hgq"
     have z_Hhz: "bAll(?z_hu, (\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t)))))" (is "?z_hhz")
     by (rule subst [where P="(\<lambda>zenon_Vhkd. bAll(zenon_Vhkd, (\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t))))))", OF z_Hf z_Hgq])
     have z_Hid_z_Hhz: "(\\A x:((x \\in ?z_hu)=>(?z_hfk=>((((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))) == ?z_hhz" (is "?z_hid == _")
     by (unfold bAll_def)
     have z_Hid: "?z_hid" (is "\\A x : ?z_hik(x)")
     by (unfold z_Hid_z_Hhz, fact z_Hhz)
     have z_Hil: "?z_hik((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))))" (is "_=>?z_hgs")
     by (rule zenon_all_0 [of "?z_hik" "(CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))", OF z_Hid])
     show FALSE
     proof (rule zenon_imply [OF z_Hil])
      assume z_Him:"(~?z_hhv)"
      show FALSE
      by (rule notE [OF z_Him z_Hhv])
     next
      assume z_Hgs:"?z_hgs" (is "_=>?z_hgt")
      show FALSE
      proof (rule zenon_imply [OF z_Hgs])
       assume z_Hhp:"(?z_hfl~=?z_hcn)"
       show FALSE
       by (rule notE [OF z_Hhp z_Hfk])
      next
       assume z_Hgt:"?z_hgt" (is "?z_hgu&_")
       have z_Hgu: "?z_hgu" (is "?z_hgv&_")
       by (rule zenon_and_0 [OF z_Hgt])
       have z_Hgz: "?z_hgz"
       by (rule zenon_and_1 [OF z_Hgu])
       show FALSE
       by (rule notE [OF z_Hhu z_Hgz])
      qed
     qed
    qed
   next
    assume z_Hin:"(~?z_hhc)"
    have z_Hhv: "((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))) \\in ?z_hu)" (is "?z_hhv")
    by (rule subst [where P="(\<lambda>zenon_Vfkd. ((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))) \\in zenon_Vfkd))", OF z_Hf z_Hgf])
    have z_Hgp: "?z_hem((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))))" (is "_=>?z_hgq")
    by (rule zenon_all_0 [of "?z_hem" "(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))", OF z_Hdt])
    show FALSE
    proof (rule zenon_imply [OF z_Hgp])
     assume z_Hgr:"(~?z_hfc)"
     show FALSE
     by (rule notE [OF z_Hgr z_Hfc])
    next
     assume z_Hgq:"?z_hgq"
     have z_Hhz: "bAll(?z_hu, (\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t)))))" (is "?z_hhz")
     by (rule subst [where P="(\<lambda>zenon_Vhkd. bAll(zenon_Vhkd, (\<lambda>t. (?z_hfk=>((((((t[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((t[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((t[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), t))))))", OF z_Hf z_Hgq])
     have z_Hid_z_Hhz: "(\\A x:((x \\in ?z_hu)=>(?z_hfk=>((((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&(((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U''))&(((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))) == ?z_hhz" (is "?z_hid == _")
     by (unfold bAll_def)
     have z_Hid: "?z_hid" (is "\\A x : ?z_hik(x)")
     by (unfold z_Hid_z_Hhz, fact z_Hhz)
     have z_Hil: "?z_hik((CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x)))))))))" (is "_=>?z_hgs")
     by (rule zenon_all_0 [of "?z_hik" "(CHOOSE x:(~((x \\in a_Mhash_primea)=>(?z_hfk=>((((x[''ret''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=BOT)&((((x[''op''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))])=''U'')&((((x[''arg''])[(CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t))))))))))]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb((CHOOSE x:(~((x \\in PROCESSES)=>bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[x])=?z_hcn)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&h29e700f910ac66eea1136a63914adb(x, t)))))))))), x))))))))", OF z_Hid])
     show FALSE
     proof (rule zenon_imply [OF z_Hil])
      assume z_Him:"(~?z_hhv)"
      show FALSE
      by (rule notE [OF z_Him z_Hhv])
     next
      assume z_Hgs:"?z_hgs" (is "_=>?z_hgt")
      show FALSE
      proof (rule zenon_imply [OF z_Hgs])
       assume z_Hhp:"(?z_hfl~=?z_hcn)"
       show FALSE
       by (rule notE [OF z_Hhp z_Hfk])
      next
       assume z_Hgt:"?z_hgt" (is "?z_hgu&_")
       have z_Hhc: "?z_hhc"
       by (rule zenon_and_1 [OF z_Hgt])
       show FALSE
       by (rule notE [OF z_Hin z_Hhc])
      qed
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 131"; *} qed
lemma ob'135:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU4 suppressed *)
(* usable definition InvU5 suppressed *)
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))))))) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'141: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U3''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & (((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & (((((fapply ((fapply ((t), (''ret''))), (p_1))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))))))))))"(is "PROP ?ob'135")
proof -
ML_command {* writeln "*** TLAPS ENTER 135"; *}
show "PROP ?ob'135"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_f5cb2b.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_f5cb2b.znn.out
;; obligation #135
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U3")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(SameRoot t (TLA.fapply a_uunde_Ua p) (TLA.fapply a_vunde_Ua p)))))))))
a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'141" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U3") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(=> (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) ACK) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U3") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea p_1)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea p_1))
(=> (= (TLA.fapply (TLA.fapply t "ret") p_1) ACK) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea p_1)
(TLA.fapply a_vunde_Uhash_primea p_1)))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U3'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[1]), (a_uunde_Uhash_primea[a_punde_1a]))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[2]), (a_vunde_Uhash_primea[a_punde_1a]))&((((t[''ret''])[a_punde_1a])=ACK)=>SameRoot(t, (a_uunde_Uhash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))))))))))))" (is "?z_hr")
 using v'141 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 135"; *} qed
lemma ob'139:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU5 suppressed *)
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p)))))))) & (((fapply ((a_uunde_Ua), (p))) \<noteq> (fapply ((a_vunde_Ua), (p)))))))))) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'142: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U4''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & (((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))) & (((fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))) \<noteq> (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & (((((fapply ((fapply ((t), (''ret''))), (p_1))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))))) & (((fapply (((a_uunde_Uhash_primea :: c)), (p_1))) \<noteq> (fapply (((a_vunde_Uhash_primea :: c)), (p_1))))))))))"(is "PROP ?ob'139")
proof -
ML_command {* writeln "*** TLAPS ENTER 139"; *}
show "PROP ?ob'139"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_114931.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_114931.znn.out
;; obligation #139
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U4")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(SameRoot t (TLA.fapply a_uunde_Ua p) (TLA.fapply a_vunde_Ua p)))
(-. (= (TLA.fapply a_uunde_Ua p) (TLA.fapply a_vunde_Ua p))))))))) a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'142" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U4") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(=> (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) ACK) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(-. (= (TLA.fapply a_uunde_Uhash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U4") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea p_1)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea p_1))
(=> (= (TLA.fapply (TLA.fapply t "ret") p_1) ACK) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1)))
(-. (= (TLA.fapply a_uunde_Uhash_primea p_1)
(TLA.fapply a_vunde_Uhash_primea p_1)))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U4'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[1]), (a_uunde_Uhash_primea[a_punde_1a]))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[2]), (a_vunde_Uhash_primea[a_punde_1a]))&(((((t[''ret''])[a_punde_1a])=ACK)=>SameRoot(t, (a_uunde_Uhash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))&((a_uunde_Uhash_primea[a_punde_1a])~=(a_vunde_Uhash_primea[a_punde_1a])))))))))))))" (is "?z_hr")
 using v'142 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 139"; *} qed
lemma ob'143:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU6 suppressed *)
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU5All ((p), (t))))))))) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'143: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U5''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((hd4f96f0019bcc1ecafb8f028e16eed ((a_punde_1a), (t)) :: c)))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((hd4f96f0019bcc1ecafb8f028e16eed ((p_1), (t)) :: c)))))))"(is "PROP ?ob'143")
proof -
ML_command {* writeln "*** TLAPS ENTER 143"; *}
show "PROP ?ob'143"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_e79c9a.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_e79c9a.znn.out
;; obligation #143
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U5")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU5All p t))))))) a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'143" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (hd4f96f0019bcc1ecafb8f028e16eed a_punde_1a
t)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(hd4f96f0019bcc1ecafb8f028e16eed p_1
t)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U5'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&hd4f96f0019bcc1ecafb8f028e16eed(a_punde_1a, t)))))))))" (is "?z_hr")
 using v'143 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 143"; *} qed
lemma ob'147:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU7 suppressed *)
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU6All ((p), (t))))))))) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'144: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U6''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_h1d5063f2363b05258ced046cd4a5e9a ((a_punde_1a), (t)) :: c)))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_h1d5063f2363b05258ced046cd4a5e9a ((p_1), (t)) :: c)))))))"(is "PROP ?ob'147")
proof -
ML_command {* writeln "*** TLAPS ENTER 147"; *}
show "PROP ?ob'147"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_9181c7.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_9181c7.znn.out
;; obligation #147
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U6")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU6All p t))))))) a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'144" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U6") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_h1d5063f2363b05258ced046cd4a5e9a a_punde_1a
t)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U6") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_h1d5063f2363b05258ced046cd4a5e9a p_1
t)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U6'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&a_h1d5063f2363b05258ced046cd4a5e9a(a_punde_1a, t)))))))))" (is "?z_hr")
 using v'144 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 147"; *} qed
lemma ob'151:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition InvU8 suppressed *)
(* usable definition InvUR suppressed *)
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t))))))))) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'145: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U7''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)))))))"(is "PROP ?ob'151")
proof -
ML_command {* writeln "*** TLAPS ENTER 151"; *}
show "PROP ?ob'151"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_46f4d4.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_46f4d4.znn.out
;; obligation #151
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U7") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t))))))) a_InvU8a InvUR SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'145" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U7") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a
t)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U7") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1
t)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)))))))))" (is "?z_hr")
 using v'145 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 151"; *} qed
lemma ob'155:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t))))))))) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'146: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U8''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)))))))"(is "PROP ?ob'155")
proof -
ML_command {* writeln "*** TLAPS ENTER 155"; *}
show "PROP ?ob'155"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_0b597d.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_0b597d.znn.out
;; obligation #155
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t))))))) InvUR SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'146" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"U8") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a
t)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"U8") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1
t)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)))))))))" (is "?z_hr")
 using v'146 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 155"; *} qed
lemma ob'159:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
(* usable definition Linearizable suppressed *)
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''UR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))))) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'147: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''UR''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (ACK))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''UR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (ACK))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))))))))"(is "PROP ?ob'159")
proof -
ML_command {* writeln "*** TLAPS ENTER 159"; *}
show "PROP ?ob'159"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_c16347.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_c16347.znn.out
;; obligation #159
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "UR")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (SameRoot t (TLA.fapply a_uunde_Ua p)
(TLA.fapply a_vunde_Ua p)))))))) SigmaRespectsShared SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'147" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"UR") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) ACK)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea p_1)
"UR") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) ACK)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Uhash_primea p_1)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Uhash_primea p_1)) (SameRoot t
(TLA.fapply a_uunde_Uhash_primea p_1)
(TLA.fapply a_vunde_Uhash_primea p_1))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''UR'')=>((((t[''ret''])[a_punde_1a])=ACK)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[1]), (a_uunde_Uhash_primea[a_punde_1a]))&(SameRoot(t, (((t[''arg''])[a_punde_1a])[2]), (a_vunde_Uhash_primea[a_punde_1a]))&SameRoot(t, (a_uunde_Uhash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))))))))))))" (is "?z_hr")
 using v'147 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 159"; *} qed
lemma ob'162:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (\<forall> t \<in> (M) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply ((F), (i))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((F), (i))), (''parent''))))))))) & (((((fapply ((fapply ((F), (i))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (i)))))))) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'148: "((\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> (\<And> i :: c. i \<in> (NodeSet) \<Longrightarrow> ((((((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''parent''))))))))) & (((((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (i)))))))))"
shows "(\<forall> t \<in> ((a_Mhash_primea :: c)) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''parent''))))))))) & (((((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (i))))))))"(is "PROP ?ob'162")
proof -
ML_command {* writeln "*** TLAPS ENTER 162"; *}
show "PROP ?ob'162"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_763fc4.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_763fc4.znn.out
;; obligation #162
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR
(TLA.bAll M ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply F i) "bit")
0) (= (TLA.fapply (TLA.fapply t "sigma") i)
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply F i) "parent"))))
(=> (= (TLA.fapply (TLA.fapply F i) "bit") (TLA.fapply TLA.Succ 0))
(= (TLA.fapply (TLA.fapply t "sigma") i) i))))))) SharedRespectsSigma
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'148" (TLA.bAll a_Mhash_primea ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
0) (= (TLA.fapply (TLA.fapply t "sigma") i)
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_Fhash_primea i) "parent"))))
(=> (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
(TLA.fapply TLA.Succ 0)) (= (TLA.fapply (TLA.fapply t "sigma") i)
i)))))))
$goal (TLA.bAll a_Mhash_primea ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
0) (= (TLA.fapply (TLA.fapply t "sigma") i)
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_Fhash_primea i) "parent"))))
(=> (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
(TLA.fapply TLA.Succ 0)) (= (TLA.fapply (TLA.fapply t "sigma") i)
i)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(a_Mhash_primea, (\<lambda>t. bAll(NodeSet, (\<lambda>i. (((((a_Fhash_primea[i])[''bit''])=0)=>(((t[''sigma''])[i])=((t[''sigma''])[((a_Fhash_primea[i])[''parent''])])))&((((a_Fhash_primea[i])[''bit''])=1)=>(((t[''sigma''])[i])=i)))))))" (is "?z_hr")
 using v'148 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 162"; *} qed
lemma ob'165:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (\<forall> t \<in> (M) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply ((t), (''sigma''))), (i))) = (i))) \<Rightarrow> (((fapply ((fapply ((F), (i))), (''bit''))) = ((Succ[0]))))))))) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'149: "((\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> (\<And> i :: c. i \<in> (NodeSet) \<Longrightarrow> ((((fapply ((fapply ((t), (''sigma''))), (i))) = (i))) \<Longrightarrow> (((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((Succ[0]))))))))"
shows "(\<forall> t \<in> ((a_Mhash_primea :: c)) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply ((t), (''sigma''))), (i))) = (i))) \<Rightarrow> (((fapply ((fapply (((a_Fhash_primea :: c)), (i))), (''bit''))) = ((Succ[0])))))))))"(is "PROP ?ob'165")
proof -
ML_command {* writeln "*** TLAPS ENTER 165"; *}
show "PROP ?ob'165"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_c88009.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_c88009.znn.out
;; obligation #165
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
(TLA.bAll M ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply t "sigma") i)
i) (= (TLA.fapply (TLA.fapply F i) "bit") (TLA.fapply TLA.Succ 0))))))))
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'149" (TLA.bAll a_Mhash_primea ((t) (TLA.bAll NodeSet ((i) (=> (= (TLA.fapply (TLA.fapply t "sigma") i)
i) (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
(TLA.fapply TLA.Succ 0)))))))
$goal (TLA.bAll a_Mhash_primea ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply t "sigma") i)
i) (= (TLA.fapply (TLA.fapply a_Fhash_primea i) "bit")
(TLA.fapply TLA.Succ 0))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(a_Mhash_primea, (\<lambda>t. bAll(NodeSet, (\<lambda>i. ((((t[''sigma''])[i])=i)=>(((a_Fhash_primea[i])[''bit''])=1))))))" (is "?z_hr")
 using v'149 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 165"; *} qed
lemma ob'167:
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
(* usable definition ArgSet suppressed *)
(* usable definition Configs suppressed *)
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
(* usable definition Valid_M suppressed *)
(* usable definition TypeOK suppressed *)
(* usable definition SameRoot suppressed *)
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (((M) \<noteq> ({}))))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'152: "(((fapply ((fapply ((told), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet)))))"
assumes v'153: "(((fapply ((fapply ((told), (''ret''))), (p))) = (ACK)))"
assumes v'154: "(((fapply ((fapply ((told), (''op''))), (p))) = (''U'')))"
assumes v'158: "(((((''sigma'' :> (fapply ((told), (''sigma'')))) @@ (''ret'' :> ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)])) @@ (''op'' :> ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)])) @@ (''arg'' :> ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))) \<in> ((a_Mhash_primea :: c))))"
shows "((((a_Mhash_primea :: c)) \<noteq> ({})))"(is "PROP ?ob'167")
proof -
ML_command {* writeln "*** TLAPS ENTER 167"; *}
show "PROP ?ob'167"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_cb5898.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_cb5898.znn.out
;; obligation #167
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared SharedRespectsSigma
(-. (= M TLA.emptyset)))
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "told_in" (TLA.in told M)
$hyp "v'152" (TLA.in (TLA.fapply (TLA.fapply told "arg") p)
(TLA.prod NodeSet NodeSet))
$hyp "v'153" (= (TLA.fapply (TLA.fapply told "ret") p)
ACK)
$hyp "v'154" (= (TLA.fapply (TLA.fapply told "op") p)
"U")
$hyp "v'158" (TLA.in (TLA.record "sigma" (TLA.fapply told "sigma") "ret" (TLA.except (TLA.fapply told "ret") p BOT) "op" (TLA.except (TLA.fapply told "op") p BOT) "arg" (TLA.except (TLA.fapply told "arg") p BOT))
a_Mhash_primea)
$goal (-. (= a_Mhash_primea
TLA.emptyset))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((((told[''ret''])[p])=ACK)&((t[''sigma''])=(told[''sigma''])))&((t[''ret''])=except((told[''ret'']), p, BOT)))&((t[''op''])=except((told[''op'']), p, BOT)))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))" (is "_=?z_hy")
 using v'113 by blast
 have z_Hv:"((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in a_Mhash_primea)" (is "?z_hv")
 using v'158 by blast
 assume z_Hw:"(~(a_Mhash_primea~={}))" (is "~~?z_hck")
 have z_Hck: "?z_hck"
 by (rule zenon_notnot_0 [OF z_Hw])
 have z_Hcl: "(?z_hy={})"
 by (rule subst [where P="(\<lambda>zenon_Vra. (zenon_Vra={}))", OF z_Hf z_Hck])
 have z_Hcp: "((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in ?z_hy)" (is "?z_hcp")
 by (rule subst [where P="(\<lambda>zenon_Vh. ((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in zenon_Vh))", OF z_Hf z_Hv])
 have z_Hct: "((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in {})" (is "?z_hct")
 by (rule subst [where P="(\<lambda>zenon_Vh. ((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in zenon_Vh))", OF z_Hcl z_Hcp])
 show FALSE
 by (rule zenon_in_emptyset [of "(''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))", OF z_Hct])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 167"; *} qed
lemma ob'170:
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
assumes v'102: "(((a_Validunde_pca) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'106: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'107: "((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'113: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'114: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'115: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'116: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'117: "((((a_dhash_primea :: c)) = (d)))"
assumes v'121: "(((a_h889ac679c3d5fa68ecd826c512cbf0a :: c)) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'146: "(((fapply ((fapply ((told), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet)))))"
assumes v'147: "(((fapply ((fapply ((told), (''ret''))), (p))) = (ACK)))"
assumes v'148: "(((fapply ((fapply ((told), (''op''))), (p))) = (''U'')))"
assumes v'154: "(((told) \<in> ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))"
shows "(((((''sigma'' :> (fapply ((told), (''sigma'')))) @@ (''ret'' :> ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)])) @@ (''op'' :> ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)])) @@ (''arg'' :> ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))) \<in> ((a_Mhash_primea :: c))))"(is "PROP ?ob'170")
proof -
ML_command {* writeln "*** TLAPS ENTER 170"; *}
show "PROP ?ob'170"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_a81ce5.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_a81ce5.znn.out
;; obligation #170
$hyp "v'102" (/\ (/\ a_Validunde_pca a_Validunde_Fa a_Validunde_uunde_Fa
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
SharedRespectsSigma Linearizable)
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (= (TLA.fapply pc p) "UR")
$hyp "v'106" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'107" (= a_Mhash_primea
(TLA.subsetOf (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))) ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'113" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'114" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'115" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'116" (= a_chash_primea a_ca)
$hyp "v'117" (= a_dhash_primea
d)
$hyp "v'121" (/\ a_h889ac679c3d5fa68ecd826c512cbf0a
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
(TLA.in a_Mhash_primea
(TLA.SUBSET (TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))))
$hyp "told_in" (TLA.in told M)
$hyp "v'146" (TLA.in (TLA.fapply (TLA.fapply told "arg") p)
(TLA.prod NodeSet NodeSet))
$hyp "v'147" (= (TLA.fapply (TLA.fapply told "ret") p)
ACK)
$hyp "v'148" (= (TLA.fapply (TLA.fapply told "op") p)
"U")
$hyp "v'154" (TLA.in told
(TLA.recordset "sigma" (TLA.subsetOf (TLA.FuncSet NodeSet NodeSet) ((A) (TLA.bAll NodeSet ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))) "ret" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup NodeSet
(TLA.set BOT))
(TLA.set ACK))) "op" (TLA.FuncSet PROCESSES (TLA.set "F" "U" BOT)) "arg" (TLA.FuncSet PROCESSES (TLA.cup (TLA.cup (TLA.set BOT)
NodeSet)
(TLA.prod NodeSet NodeSet)))))
$goal (TLA.in (TLA.record "sigma" (TLA.fapply told "sigma") "ret" (TLA.except (TLA.fapply told "ret") p BOT) "op" (TLA.except (TLA.fapply told "op") p BOT) "arg" (TLA.except (TLA.fapply told "arg") p BOT))
a_Mhash_primea)
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(a_Mhash_primea=subsetOf([''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))], (\<lambda>t. bEx(M, (\<lambda>told. (((((((told[''ret''])[p])=ACK)&((t[''sigma''])=(told[''sigma''])))&((t[''ret''])=except((told[''ret'']), p, BOT)))&((t[''op''])=except((told[''op'']), p, BOT)))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))" (is "_=?z_hy")
 using v'107 by blast
 have z_Ht:"(((told[''ret''])[p])=ACK)" (is "?z_hcn=_")
 using v'147 by blast
 have z_Hv:"(told \\in [''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))])" (is "?z_hv")
 using v'154 by blast
 have z_Hr:"(told \\in M)" (is "?z_hr")
 using told_in by blast
 have zenon_L1_: "(~isAFcn((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))))) ==> FALSE" (is "?z_hdg ==> FALSE")
 proof -
  assume z_Hdg:"?z_hdg" (is "~?z_hdh")
  show FALSE using z_Hdg by auto
 qed
 have zenon_L2_: "(DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))))~={''sigma'', ''ret'', ''op'', ''arg''}) ==> FALSE" (is "?z_hdj ==> FALSE")
 proof -
  assume z_Hdj:"?z_hdj" (is "?z_hdk~=?z_hdl")
  have z_Hdm: "(?z_hdk=?z_hdl)"
  by auto
  have z_Hdn: "(?z_hdl~=?z_hdl)"
  by (rule subst [where P="(\<lambda>zenon_Vro. (zenon_Vro~=?z_hdl))", OF z_Hdm z_Hdj])
  show FALSE
  by (rule zenon_noteq [OF z_Hdn])
 qed
 have zenon_L3_: "(~(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))) ==> ((told[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))) ==> FALSE" (is "?z_hdr ==> ?z_hdu ==> FALSE")
 proof -
  assume z_Hdr:"?z_hdr" (is "~?z_hds")
  assume z_Hdu:"?z_hdu"
  have z_Hdv: "((''sigma'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''sigma''])=(told[''sigma''])))" (is "?z_hdw&?z_hdx")
  by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
  have z_Hdx: "?z_hdx" (is "?z_hdt=?z_hcu")
  by (rule conjD2 [OF z_Hdv])
  have z_Hdy: "(~?z_hdu)"
  by (rule subst [where P="(\<lambda>zenon_Vco. (~(zenon_Vco \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))))", OF z_Hdx z_Hdr])
  show FALSE
  by (rule notE [OF z_Hdy z_Hdu])
 qed
 have zenon_L4_: "(~(BOT \\in {BOT})) ==> FALSE" (is "?z_hed ==> FALSE")
 proof -
  assume z_Hed:"?z_hed" (is "~?z_hee")
  have z_Hef: "(BOT~=BOT)"
  by (rule zenon_notin_addElt_0 [of "BOT" "BOT" "{}", OF z_Hed])
  show FALSE
  by (rule zenon_noteq [OF z_Hef])
 qed
 have zenon_L5_: "(~(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))) ==> ((told[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT})) ==> FALSE" (is "?z_heh ==> ?z_hek ==> FALSE")
 proof -
  assume z_Heh:"?z_heh" (is "~?z_hei")
  assume z_Hek:"?z_hek"
  have z_Hel: "((''op'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''op''])=except((told[''op'']), p, BOT)))" (is "?z_hem&?z_hen")
  by (rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
  have z_Hen: "?z_hen" (is "?z_hej=?z_hda")
  by (rule conjD2 [OF z_Hel])
  have z_Heo: "(~(?z_hda \\in FuncSet(PROCESSES, {''F'', ''U'', BOT})))" (is "~?z_hep")
  by (rule subst [where P="(\<lambda>zenon_Vto. (~(zenon_Vto \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))))", OF z_Hen z_Heh])
  show FALSE
  proof (rule zenon_except_notin_funcset [of "(told[''op''])" "p" "BOT" "PROCESSES" "{''F'', ''U'', BOT}", OF z_Heo])
   assume z_Heu:"(~?z_hek)"
   show FALSE
   by (rule notE [OF z_Heu z_Hek])
  next
   assume z_Hev:"(~(BOT \\in {''F'', ''U'', BOT}))" (is "~?z_hew")
   have z_Hex: "(~(BOT \\in {''U'', BOT}))" (is "~?z_hey")
   by (rule zenon_notin_addElt_1 [of "BOT" "''F''" "{''U'', BOT}", OF z_Hev])
   have z_Hed: "(~(BOT \\in {BOT}))" (is "~?z_hee")
   by (rule zenon_notin_addElt_1 [of "BOT" "''U''" "{BOT}", OF z_Hex])
   have z_Hef: "(BOT~=BOT)"
   by (rule zenon_notin_addElt_0 [of "BOT" "BOT" "{}", OF z_Hed])
   show FALSE
   by (rule zenon_noteq [OF z_Hef])
  qed
 qed
 have zenon_L6_: "(~(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))) ==> ((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) ==> FALSE" (is "?z_hfa ==> ?z_hfd ==> FALSE")
 proof -
  assume z_Hfa:"?z_hfa" (is "~?z_hfb")
  assume z_Hfd:"?z_hfd"
  have z_Hfi: "((''arg'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''arg''])=except((told[''arg'']), p, BOT)))" (is "?z_hfj&?z_hfk")
  by (rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
  have z_Hfk: "?z_hfk" (is "?z_hfc=?z_hde")
  by (rule conjD2 [OF z_Hfi])
  have z_Hfl: "(~(?z_hde \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))))" (is "~?z_hfm")
  by (rule subst [where P="(\<lambda>zenon_Vdk. (~(zenon_Vdk \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))))", OF z_Hfk z_Hfa])
  have z_Hfr_z_Hfl: "(~(?z_hde \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))))) == (~?z_hfm)" (is "?z_hfr == ?z_hfl")
  by (unfold prod_def)
  have z_Hfr: "?z_hfr" (is "~?z_hfs")
  by (unfold z_Hfr_z_Hfl, fact z_Hfl)
  show FALSE
  proof (rule zenon_except_notin_funcset [of "(told[''arg''])" "p" "BOT" "PROCESSES" "(({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))", OF z_Hfr])
   assume z_Hft:"(~?z_hfd)"
   show FALSE
   by (rule notE [OF z_Hft z_Hfd])
  next
   assume z_Hfu:"(~(BOT \\in (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>))))" (is "~?z_hfv")
   have z_Hfw: "(~(BOT \\in ({BOT} \\cup NodeSet)))" (is "~?z_hfx")
   by (rule zenon_notin_cup_0 [of "BOT" "({BOT} \\cup NodeSet)" "Product(<<NodeSet, NodeSet>>)", OF z_Hfu])
   have z_Hed: "(~(BOT \\in {BOT}))" (is "~?z_hee")
   by (rule zenon_notin_cup_0 [of "BOT" "{BOT}" "NodeSet", OF z_Hfw])
   show FALSE
   by (rule zenon_L4_ [OF z_Hed])
  qed
 qed
 assume z_Hw:"(~((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in a_Mhash_primea))" (is "~?z_hfy")
 let ?z_hfz = "<<''sigma'', ''ret'', ''op'', ''arg''>>"
 let ?z_hga = "<<subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))), FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})), FuncSet(PROCESSES, {''F'', ''U'', BOT}), FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet)))>>"
 have z_Hgb: "(1 \\in DOMAIN(?z_hfz))" by auto
 have z_Hge: "((told[(?z_hfz[1])]) \\in (?z_hga[1]))" (is "?z_hge")
 by (rule zenon_in_recordset_field [OF z_Hv z_Hgb])
 have z_Hdu: "((told[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))" (is "?z_hdu")
 using z_Hge by auto
 have z_Hgi: "(2 \\in DOMAIN(?z_hfz))" by auto
 have z_Hgk: "((told[(?z_hfz[2])]) \\in (?z_hga[2]))" (is "?z_hgk")
 by (rule zenon_in_recordset_field [OF z_Hv z_Hgi])
 have z_Hgo: "((told[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))" (is "?z_hgo")
 using z_Hgk by auto
 have z_Hgp: "(3 \\in DOMAIN(?z_hfz))" by auto
 have z_Hgr: "((told[(?z_hfz[3])]) \\in (?z_hga[3]))" (is "?z_hgr")
 by (rule zenon_in_recordset_field [OF z_Hv z_Hgp])
 have z_Hek: "((told[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))" (is "?z_hek")
 using z_Hgr by auto
 have z_Hgv: "(4 \\in DOMAIN(?z_hfz))" by auto
 have z_Hgx: "((told[(?z_hfz[4])]) \\in (?z_hga[4]))" (is "?z_hgx")
 by (rule zenon_in_recordset_field [OF z_Hv z_Hgv])
 have z_Hhb: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hhb")
 using z_Hgx by auto
 have z_Hhc: "((told[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {?z_hcn})))" (is "?z_hhc")
 by (rule ssubst [where P="(\<lambda>zenon_Vkv. ((told[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {zenon_Vkv}))))", OF z_Ht z_Hgo])
 have z_Hfd_z_Hhb: "((told[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup Product(<<NodeSet, NodeSet>>)))) == ?z_hhb" (is "?z_hfd == _")
 by (unfold prod_def)
 have z_Hfd: "?z_hfd"
 by (unfold z_Hfd_z_Hhb, fact z_Hhb)
 have z_Hhm: "(~((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in ?z_hy))" (is "~?z_hhn")
 by (rule subst [where P="(\<lambda>zenon_Vmv. (~((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in zenon_Vmv)))", OF z_Hf z_Hw])
 show FALSE
 proof (rule zenon_notin_subsetof [of "(''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))" "[''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]" "(\<lambda>t. bEx(M, (\<lambda>told. (((((((told[''ret''])[p])=ACK)&((t[''sigma''])=(told[''sigma''])))&((t[''ret''])=except((told[''ret'']), p, BOT)))&((t[''op''])=except((told[''op'']), p, BOT)))&((t[''arg''])=except((told[''arg'']), p, BOT))))))", OF z_Hhm])
  assume z_Hhs:"(~((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT))) \\in [''sigma'' : (subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i]))))))), ''ret'' : (FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))), ''op'' : (FuncSet(PROCESSES, {''F'', ''U'', BOT})), ''arg'' : (FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))]))" (is "~?z_hht")
  let ?z_hdi = "(''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))"
  have z_Hdh: "isAFcn(?z_hdi)" (is "?z_hdh")
  proof (rule zenon_nnpp)
   assume z_Hdg: "(~?z_hdh)"
   show FALSE
   by (rule zenon_L1_ [OF z_Hdg])
  qed
  have z_Hdm: "(DOMAIN(?z_hdi)={''sigma'', ''ret'', ''op'', ''arg''})" (is "?z_hdk=?z_hdl")
  proof (rule zenon_nnpp)
   assume z_Hdj: "(?z_hdk~=?z_hdl)"
   show FALSE
   by (rule zenon_L2_ [OF z_Hdj])
  qed
  have z_Hds: "((?z_hdi[''sigma'']) \\in subsetOf(FuncSet(NodeSet, NodeSet), (\<lambda>A. bAll(NodeSet, (\<lambda>i. ((A[(A[i])])=(A[i])))))))" (is "?z_hds")
  proof (rule zenon_nnpp)
   assume z_Hdr: "(~?z_hds)"
   show FALSE
   by (rule zenon_L3_ [OF z_Hdr z_Hdu])
  qed
  have z_Hhu: "((?z_hdi[''ret'']) \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))" (is "?z_hhu")
  proof (rule zenon_nnpp)
   assume z_Hhw: "(~?z_hhu)"
   have z_Hhx: "((''ret'' \\in ?z_hdk)&((?z_hdi[''ret''])=except((told[''ret'']), p, BOT)))" (is "?z_hhy&?z_hhz")
   by (rule zenon_recfield_1, rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
   have z_Hhz: "?z_hhz" (is "?z_hhv=?z_hcx")
   by (rule conjD2 [OF z_Hhx])
   have z_Hia: "(~(?z_hcx \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK}))))" (is "~?z_hib")
   by (rule subst [where P="(\<lambda>zenon_Vcr. (~(zenon_Vcr \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {ACK})))))", OF z_Hhz z_Hhw])
   have z_Hig: "(~(?z_hcx \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {?z_hcn}))))" (is "~?z_hih")
   by (rule ssubst [where P="(\<lambda>zenon_Vov. (~(?z_hcx \\in FuncSet(PROCESSES, ((NodeSet \\cup {BOT}) \\cup {zenon_Vov})))))", OF z_Ht z_Hia])
   show FALSE
   proof (rule zenon_except_notin_funcset [of "(told[''ret''])" "p" "BOT" "PROCESSES" "((NodeSet \\cup {BOT}) \\cup {?z_hcn})", OF z_Hig])
    assume z_Hip:"(~?z_hhc)"
    show FALSE
    by (rule notE [OF z_Hip z_Hhc])
   next
    assume z_Hiq:"(~(BOT \\in ((NodeSet \\cup {BOT}) \\cup {?z_hcn})))" (is "~?z_hir")
    have z_His: "(~(BOT \\in (NodeSet \\cup {BOT})))" (is "~?z_hit")
    by (rule zenon_notin_cup_0 [of "BOT" "(NodeSet \\cup {BOT})" "{?z_hcn}", OF z_Hiq])
    have z_Hed: "(~(BOT \\in {BOT}))" (is "~?z_hee")
    by (rule zenon_notin_cup_1 [of "BOT" "NodeSet" "{BOT}", OF z_His])
    show FALSE
    by (rule zenon_L4_ [OF z_Hed])
   qed
  qed
  have z_Hei: "((?z_hdi[''op'']) \\in FuncSet(PROCESSES, {''F'', ''U'', BOT}))" (is "?z_hei")
  proof (rule zenon_nnpp)
   assume z_Heh: "(~?z_hei)"
   show FALSE
   by (rule zenon_L5_ [OF z_Heh z_Hek])
  qed
  have z_Hfb: "((?z_hdi[''arg'']) \\in FuncSet(PROCESSES, (({BOT} \\cup NodeSet) \\cup prod(NodeSet, NodeSet))))" (is "?z_hfb")
  proof (rule zenon_nnpp)
   assume z_Hfa: "(~?z_hfb)"
   show FALSE
   by (rule zenon_L6_ [OF z_Hfa z_Hfd])
  qed
  show FALSE by (rule notE [OF z_Hhs],
                 rule zenon_inrecordsetI4 [OF z_Hdh z_Hdm z_Hds z_Hhu z_Hei z_Hfb ])
 next
  assume z_Hiu:"(~bEx(M, (\<lambda>zenon_Vti. (((((((zenon_Vti[''ret''])[p])=ACK)&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''sigma''])=(zenon_Vti[''sigma''])))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''ret''])=except((zenon_Vti[''ret'']), p, BOT)))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''op''])=except((zenon_Vti[''op'']), p, BOT)))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''arg''])=except((zenon_Vti[''arg'']), p, BOT))))))" (is "~?z_hiv")
  have z_Hjp_z_Hiu: "(~(\\E x:((x \\in M)&(((((((x[''ret''])[p])=ACK)&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''sigma''])=(x[''sigma''])))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''ret''])=except((x[''ret'']), p, BOT)))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''op''])=except((x[''op'']), p, BOT)))&(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''arg''])=except((x[''arg'']), p, BOT)))))) == (~?z_hiv)" (is "?z_hjp == ?z_hiu")
  by (unfold bEx_def)
  have z_Hjp: "?z_hjp" (is "~(\\E x : ?z_hkl(x))")
  by (unfold z_Hjp_z_Hiu, fact z_Hiu)
  have z_Hkm: "~?z_hkl(told)" (is "~(_&?z_hkn)")
  by (rule zenon_notex_0 [of "?z_hkl" "told", OF z_Hjp])
  show FALSE
  proof (rule zenon_notand [OF z_Hkm])
   assume z_Hko:"(~?z_hr)"
   show FALSE
   by (rule notE [OF z_Hko z_Hr])
  next
   assume z_Hkp:"(~?z_hkn)" (is "~(?z_hkq&?z_hfk)")
   show FALSE
   proof (rule zenon_notand [OF z_Hkp])
    assume z_Hkr:"(~?z_hkq)" (is "~(?z_hks&?z_hen)")
    show FALSE
    proof (rule zenon_notand [OF z_Hkr])
     assume z_Hkt:"(~?z_hks)" (is "~(?z_hku&?z_hhz)")
     show FALSE
     proof (rule zenon_notand [OF z_Hkt])
      assume z_Hkv:"(~?z_hku)" (is "~(?z_ht&?z_hdx)")
      show FALSE
      proof (rule zenon_notand [OF z_Hkv])
       assume z_Hkw:"(?z_hcn~=ACK)"
       show FALSE
       by (rule notE [OF z_Hkw z_Ht])
      next
       assume z_Hkx:"(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''sigma''])~=(told[''sigma'']))" (is "?z_hdt~=?z_hcu")
       have z_Hdv: "((''sigma'' \\in DOMAIN((''sigma'' :> (?z_hcu) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&?z_hdx)" (is "?z_hdw&_")
       by ((rule zenon_recfield_1)+, rule zenon_recfield_2b)
       have z_Hdx: "?z_hdx"
       by (rule conjD2 [OF z_Hdv])
       have z_Hky: "(?z_hcu~=?z_hcu)"
       by (rule subst [where P="(\<lambda>zenon_Vwj. (zenon_Vwj~=?z_hcu))", OF z_Hdx z_Hkx])
       show FALSE
       by (rule zenon_noteq [OF z_Hky])
      qed
     next
      assume z_Hlc:"(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''ret''])~=except((told[''ret'']), p, BOT))" (is "?z_hhv~=?z_hcx")
      have z_Hhx: "((''ret'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (?z_hcx) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&?z_hhz)" (is "?z_hhy&_")
      by (rule zenon_recfield_1, rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
      have z_Hhz: "?z_hhz"
      by (rule conjD2 [OF z_Hhx])
      have z_Hld: "(?z_hcx~=?z_hcx)"
      by (rule subst [where P="(\<lambda>zenon_Vzj. (zenon_Vzj~=?z_hcx))", OF z_Hhz z_Hlc])
      show FALSE
      by (rule zenon_noteq [OF z_Hld])
     qed
    next
     assume z_Hlh:"(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''op''])~=except((told[''op'']), p, BOT))" (is "?z_hej~=?z_hda")
     have z_Hel: "((''op'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (?z_hda) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))))&?z_hen)" (is "?z_hem&_")
     by (rule zenon_recfield_1, rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
     have z_Hen: "?z_hen"
     by (rule conjD2 [OF z_Hel])
     have z_Hli: "(?z_hda~=?z_hda)"
     by (rule subst [where P="(\<lambda>zenon_Vxj. (zenon_Vxj~=?z_hda))", OF z_Hen z_Hlh])
     show FALSE
     by (rule zenon_noteq [OF z_Hli])
    qed
   next
    assume z_Hlm:"(((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (except((told[''arg'']), p, BOT)))[''arg''])~=except((told[''arg'']), p, BOT))" (is "?z_hfc~=?z_hde")
    have z_Hfi: "((''arg'' \\in DOMAIN((''sigma'' :> ((told[''sigma''])) @@ ''ret'' :> (except((told[''ret'']), p, BOT)) @@ ''op'' :> (except((told[''op'']), p, BOT)) @@ ''arg'' :> (?z_hde))))&?z_hfk)" (is "?z_hfj&_")
    by (rule zenon_recfield_2, ((rule zenon_recfield_3)+)?, rule zenon_recfield_3b, auto)
    have z_Hfk: "?z_hfk"
    by (rule conjD2 [OF z_Hfi])
    have z_Hln: "(?z_hde~=?z_hde)"
    by (rule subst [where P="(\<lambda>zenon_Vtj. (zenon_Vtj~=?z_hde))", OF z_Hfk z_Hlm])
    show FALSE
    by (rule zenon_noteq [OF z_Hln])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 170"; *} qed
end
