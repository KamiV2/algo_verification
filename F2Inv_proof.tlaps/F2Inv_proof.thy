(* automatically generated -- do not edit manually *)
theory F2Inv_proof imports Constant Zenon begin
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

lemma ob'33:
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
assumes v'98: "(((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) & (InvDecide) & (a_InvF1a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t)))))))))) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'99: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'101: "((cond((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0])))), ((((((fapply ((pc), (p))) = (''F2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FR'')]))))) | (((((fapply ((pc), (p))) = (''F2U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU1'')]))))) | (((((fapply ((pc), (p))) = (''F2U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU2'')]))))) | (((((fapply ((pc), (p))) = (''F2U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU7'')]))))) | (((((fapply ((pc), (p))) = (''F2U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU8'')])))))), ((((((fapply ((pc), (p))) = (''F2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3'')]))))) | (((((fapply ((pc), (p))) = (''F2U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U1'')]))))) | (((((fapply ((pc), (p))) = (''F2U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U2'')]))))) | (((((fapply ((pc), (p))) = (''F2U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U7'')]))))) | (((((fapply ((pc), (p))) = (''F2U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U8'')])))))))) & (cond((((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0])))) \<and> (((fapply ((pc), (p))) = (''F2''))))), ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((told), (''arg''))), (p)))))]))))) \<and> (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))))) \<and> (((fapply ((t), (''arg''))) = (fapply ((told), (''arg''))))))))))))), ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'102: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'103: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'104: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'105: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'108: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'109: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'110: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'111: "((((a_dhash_primea :: c)) = (d)))"
assumes v'115: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'120: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''0'')))"
assumes v'126: "(((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0]))))"
assumes v'127: "(((fapply ((pc), (p))) = (''F2'')))"
shows "(\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((told), (''arg''))), (p)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))"(is "PROP ?ob'33")
proof -
ML_command {* writeln "*** TLAPS ENTER 33"; *}
show "PROP ?ob'33"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 33"; *} qed
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
(* usable definition FieldSet suppressed *)
(* usable definition InitState suppressed *)
(* usable definition InitF suppressed *)
(* usable definition InitRet suppressed *)
(* usable definition InitOp suppressed *)
(* usable definition InitArg suppressed *)
(* usable definition Init suppressed *)
(* usable definition F1 suppressed *)
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
assumes v'98: "(((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])])))))) & (InvDecide) & (a_InvF1a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t)))))))))) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'99: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'101: "((cond((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0])))), ((((((fapply ((pc), (p))) = (''F2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FR'')]))))) | (((((fapply ((pc), (p))) = (''F2U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU1'')]))))) | (((((fapply ((pc), (p))) = (''F2U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU2'')]))))) | (((((fapply ((pc), (p))) = (''F2U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU7'')]))))) | (((((fapply ((pc), (p))) = (''F2U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''FRU8'')])))))), ((((((fapply ((pc), (p))) = (''F2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3'')]))))) | (((((fapply ((pc), (p))) = (''F2U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U1'')]))))) | (((((fapply ((pc), (p))) = (''F2U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U2'')]))))) | (((((fapply ((pc), (p))) = (''F2U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U7'')]))))) | (((((fapply ((pc), (p))) = (''F2U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F3U8'')])))))))) & (cond((((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0])))) \<and> (((fapply ((pc), (p))) = (''F2''))))), ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((told), (''arg''))), (p)))))]))))) \<and> (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))))) \<and> (((fapply ((t), (''arg''))) = (fapply ((told), (''arg''))))))))))))), ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'102: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'103: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'104: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'105: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'108: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'109: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'110: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'111: "((((a_dhash_primea :: c)) = (d)))"
assumes v'115: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((((a_Mhash_primea :: c)) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'126: "(((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((Succ[0]))))"
assumes v'127: "(((fapply ((pc), (p))) = (''F2'')))"
shows "(\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((told), (''arg''))), (p)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))"(is "PROP ?ob'43")
proof -
ML_command {* writeln "*** TLAPS ENTER 43"; *}
show "PROP ?ob'43"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 43"; *} qed
end
