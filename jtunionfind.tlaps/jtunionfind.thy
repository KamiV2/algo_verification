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

lemma ob'61:
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
(* usable definition Valid_M suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition InvF2All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'99: "(((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (a_Validunde_Ma)) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((t), (''arg''))), (p))))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p))))))))))) & (((((fapply ((pc), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p))))))))))) & (((((fapply ((pc), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p))))))))))) & (((((fapply ((pc), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p))))))))))) & (((((fapply ((pc), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p)))))))))))))) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'100: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'102: "((((((((((fapply ((pc), (p))) = (''FR''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))))) \<and> ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)]))))))))))) | (((((((((fapply ((pc), (p))) = (''FRU1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U2'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U8'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'103: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'104: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'105: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'106: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'107: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'108: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'109: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'110: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'111: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'112: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'113: "((((a_dhash_primea :: c)) = (d)))"
assumes v'117: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'131: "(((fapply ((pc), (p))) \<noteq> (''FR'')))"
shows "((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a))))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))))))))))"(is "PROP ?ob'61")
proof -
ML_command {* writeln "*** TLAPS ENTER 61"; *}
show "PROP ?ob'61"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_8b02a8.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_8b02a8.znn.out
;; obligation #61
$hyp "v'99" (/\ (/\ (TLA.in pc
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
a_Validunde_Fa a_Validunde_uunde_Fa a_Validunde_aunde_Fa a_Validunde_bunde_Fa
a_Validunde_uunde_Ua a_Validunde_vunde_Ua a_Validunde_aunde_Ua
a_Validunde_bunde_Ua a_Validunde_ca a_Validunde_da a_Validunde_Ma) InvDecide
a_InvF1a a_InvF2a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F3")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply t "arg") p)))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p)) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p))))))
(=> (= (TLA.fapply pc p) "F3U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p)) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p))))))
(=> (= (TLA.fapply pc p) "F3U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p)) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p))))))
(=> (= (TLA.fapply pc p) "F3U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p)) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p))))))
(=> (= (TLA.fapply pc p) "F3U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p)) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p)))))))))))
a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a
a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'100" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'102" (\/ (/\ (/\ (/\ (= (TLA.fapply pc p) "FR") (= a_pchash_primea
(TLA.except pc p "0"))) (= a_uunde_Uhash_primea a_uunde_Ua))
(= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
(TLA.fapply a_uunde_Fa p)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "ret")
(TLA.except (TLA.fapply told "ret") p BOT)) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p BOT)) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU1") (= a_pchash_primea
(TLA.except pc p "U2"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU2") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU7") (= a_pchash_primea
(TLA.except pc p "U8"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU8") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea
M)))
$hyp "v'103" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'104" (= a_Fhash_primea F)
$hyp "v'105" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'106" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'107" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'108" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'109" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'110" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'111" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'112" (= a_chash_primea a_ca)
$hyp "v'113" (= a_dhash_primea d)
$hyp "v'117" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'131" (-. (= (TLA.fapply pc p)
"FR"))
$goal (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply t "arg") a_punde_1a)))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a))))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a))))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a))))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(=> (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a))))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F3U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") a_punde_1a) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(=> (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hp:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hu&?z_hdb")
 using v'117 by blast
 have z_Hd:"((((((pc[p])=''FR'')&(a_pchash_primea=except(pc, p, ''0'')))&(a_uunde_Uhash_primea=a_uunde_Ua))&(a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. ((((told[''ret''])[p])=(a_uunde_Fa[p]))&(((t[''sigma''])=(told[''sigma'']))&(((t[''ret''])=except((told[''ret'']), p, BOT))&(((t[''op''])=except((told[''op'']), p, BOT))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))))))|((((((pc[p])=''FRU1'')&(a_pchash_primea=except(pc, p, ''U2'')))&(a_uunde_Uhash_primea=except(a_uunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|((((((pc[p])=''FRU2'')&(a_pchash_primea=except(pc, p, ''U3'')))&(a_vunde_Uhash_primea=except(a_vunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|((((((pc[p])=''FRU7'')&(a_pchash_primea=except(pc, p, ''U8'')))&(a_uunde_Uhash_primea=except(a_uunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|(((((pc[p])=''FRU8'')&(a_pchash_primea=except(pc, p, ''U3'')))&(a_vunde_Uhash_primea=except(a_vunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))))))" (is "?z_hdw|?z_hfs")
 using v'102 by blast
 have z_Hs:"((pc[p])~=''FR'')" (is "?z_hea~=?z_hbh")
 using v'131 by blast
 have z_He:"(a_pchash_primea=except(pc, p, ''0''))" (is "_=?z_hed")
 using v'103 by blast
 have z_Hc:"(p \\in PROCESSES)" (is "?z_hc")
 using p_in by blast
 have zenon_L1_: "(''0''=''U2'') ==> FALSE" (is "?z_hgy ==> FALSE")
 proof -
  assume z_Hgy:"?z_hgy" (is "?z_hz=?z_hbj")
  have z_Hgz: "(?z_hz~=?z_hbj)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hgz z_Hgy])
 qed
 have zenon_L2_: "(DOMAIN(?z_hed)=PROCESSES) ==> (~(p \\in DOMAIN(pc))) ==> ?z_hc ==> FALSE" (is "?z_hha ==> ?z_hhc ==> _ ==> FALSE")
 proof -
  assume z_Hha:"?z_hha" (is "?z_hhb=_")
  assume z_Hhc:"?z_hhc" (is "~?z_hhd")
  assume z_Hc:"?z_hc"
  have z_Hhf: "(\\A zenon_Vnc:((zenon_Vnc \\in ?z_hhb)<=>(zenon_Vnc \\in PROCESSES)))" (is "\\A x : ?z_hhk(x)")
  by (rule zenon_setequal_0 [of "?z_hhb" "PROCESSES", OF z_Hha])
  have z_Hhl: "?z_hhk(p)" (is "?z_hhm<=>_")
  by (rule zenon_all_0 [of "?z_hhk" "p", OF z_Hhf])
  show FALSE
  proof (rule zenon_equiv [OF z_Hhl])
   assume z_Hhn:"(~?z_hhm)"
   assume z_Hho:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hho z_Hc])
  next
   assume z_Hhm:"?z_hhm"
   assume z_Hc:"?z_hc"
   have z_Hhd: "?z_hhd"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vbka. (p \\in zenon_Vbka))" "pc" "p" "''0''", OF z_Hhm])
   show FALSE
   by (rule notE [OF z_Hhc z_Hhd])
  qed
 qed
 have zenon_L3_: "(''0''=''U3'') ==> FALSE" (is "?z_hhs ==> FALSE")
 proof -
  assume z_Hhs:"?z_hhs" (is "?z_hz=?z_hbk")
  have z_Hht: "(?z_hz~=?z_hbk)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hht z_Hhs])
 qed
 have zenon_L4_: "(a_pchash_primea=?z_hed) ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''U3'')) ==> ?z_hu ==> FALSE" (is "?z_he ==> _ ==> ?z_hgh ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hc:"?z_hc"
  assume z_Hgh:"?z_hgh" (is "_=?z_hgi")
  assume z_Hu:"?z_hu"
  have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
  by (rule subst [where P="(\<lambda>zenon_Vang. (zenon_Vang \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
  have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
  have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
  by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
  have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
  by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
  show FALSE
  proof (rule zenon_imply [OF z_Hif])
   assume z_Hho:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hho z_Hc])
  next
   assume z_Hig:"?z_hig"
   have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
   by (rule subst [where P="(\<lambda>zenon_Vcng. ((zenon_Vcng[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vrl. (zenon_Vrl \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
    assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
    assume z_Hiq:"(p=p)"
    assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
    have z_His: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgi))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hgi)))&(\\A zenon_Vub:((a_pchash_primea[zenon_Vub])=(?z_hgi[zenon_Vub]))))" (is "?z_hit&?z_hja")
    by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgi", OF z_Hgh])
    have z_Hja: "?z_hja" (is "\\A x : ?z_hjf(x)")
    by (rule zenon_and_1 [OF z_His])
    have z_Hjg: "?z_hjf(p)" (is "?z_hjh=?z_hji")
    by (rule zenon_all_0 [of "?z_hjf" "p", OF z_Hja])
    have z_Hjj: "((?z_hed[p])=?z_hji)" (is "?z_hii=_")
    by (rule subst [where P="(\<lambda>zenon_Vkng. ((zenon_Vkng[p])=?z_hji))", OF z_He z_Hjg])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vode. (zenon_Vode=?z_hji))" "pc" "p" "''0''" "p", OF z_Hjj])
     assume z_Hhd:"?z_hhd"
     assume z_Hiq:"(p=p)"
     assume z_Hjr:"(''0''=?z_hji)" (is "?z_hz=_")
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpde. (?z_hz=zenon_Vpde))" "pc" "p" "''U3''" "p", OF z_Hjr])
      assume z_Hhd:"?z_hhd"
      assume z_Hiq:"(p=p)"
      assume z_Hhs:"(?z_hz=''U3'')" (is "_=?z_hbk")
      show FALSE
      by (rule zenon_L3_ [OF z_Hhs])
     next
      assume z_Hhd:"?z_hhd"
      assume z_Hjv:"(p~=p)"
      assume z_Hjw:"(?z_hz=?z_hea)"
      show FALSE
      by (rule zenon_noteq [OF z_Hjv])
     next
      assume z_Hhc:"(~?z_hhd)"
      show FALSE
      by (rule notE [OF z_Hhc z_Hhd])
     qed
    next
     assume z_Hhd:"?z_hhd"
     assume z_Hjv:"(p~=p)"
     assume z_Hjx:"(?z_hea=?z_hji)"
     show FALSE
     by (rule zenon_noteq [OF z_Hjv])
    next
     assume z_Hhc:"(~?z_hhd)"
     show FALSE
     by (rule notE [OF z_Hhc z_Hhd])
    qed
   next
    assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
    assume z_Hjv:"(p~=p)"
    assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
    show FALSE
    by (rule zenon_noteq [OF z_Hjv])
   next
    assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
    show FALSE
    by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
   qed
  qed
 qed
 have zenon_L5_: "(''0''=''U8'') ==> FALSE" (is "?z_hjz ==> FALSE")
 proof -
  assume z_Hjz:"?z_hjz" (is "?z_hz=?z_hbp")
  have z_Hka: "(?z_hz~=?z_hbp)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hka z_Hjz])
 qed
 assume z_Ht:"(~((((a_pchash_primea[a_punde_1a])=''F3'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&((((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[((t[''arg''])[a_punde_1a])]))&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])]))))))))&((((a_pchash_primea[a_punde_1a])=''F3U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&((((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])]))&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])]))))))))&((((a_pchash_primea[a_punde_1a])=''F3U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[1])])=((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])]))&(((t[''sigma''])[(((t[''arg''])[a_punde_1a])[2])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])])))&((((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])]))&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])])))))))))&((((a_pchash_primea[a_punde_1a])=''F3U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[1])])=((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])]))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[2])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])]))&((((t[''ret''])[a_punde_1a])=ACK)=>(((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])])))))&((((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])]))&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])])))))))))&(((a_pchash_primea[a_punde_1a])=''F3U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[1])])=((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])]))&((((t[''sigma''])[(((t[''arg''])[a_punde_1a])[2])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])]))&((((t[''ret''])[a_punde_1a])=ACK)=>(((t[''sigma''])[(a_uunde_Uhash_primea[a_punde_1a])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])])))))&((((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_vunde_Uhash_primea[a_punde_1a])]))&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])]))))))))))))))" (is "~(?z_hkc&?z_hli)")
 have z_Hu: "?z_hu"
 by (rule zenon_and_0 [OF z_Hp])
 show FALSE
 proof (rule zenon_or [OF z_Hd])
  assume z_Hdw:"?z_hdw" (is "?z_hdx&?z_heg")
  have z_Hdx: "?z_hdx" (is "?z_hdy&?z_hj")
  by (rule zenon_and_0 [OF z_Hdw])
  have z_Hdy: "?z_hdy" (is "?z_hdz&?z_he")
  by (rule zenon_and_0 [OF z_Hdx])
  have z_Hdz: "?z_hdz"
  by (rule zenon_and_0 [OF z_Hdy])
  show FALSE
  by (rule notE [OF z_Hs z_Hdz])
 next
  assume z_Hfs:"?z_hfs" (is "?z_hft|?z_hgc")
  show FALSE
  proof (rule zenon_or [OF z_Hfs])
   assume z_Hft:"?z_hft" (is "?z_hfu&?z_hgb")
   have z_Hfu: "?z_hfu" (is "?z_hfv&?z_hfz")
   by (rule zenon_and_0 [OF z_Hft])
   have z_Hfv: "?z_hfv" (is "?z_hfw&?z_hfx")
   by (rule zenon_and_0 [OF z_Hfu])
   have z_Hfx: "?z_hfx" (is "_=?z_hfy")
   by (rule zenon_and_1 [OF z_Hfv])
   have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
   by (rule subst [where P="(\<lambda>zenon_Vang. (zenon_Vang \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
   have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
   by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
   have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
   by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
   have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
   by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
   show FALSE
   proof (rule zenon_imply [OF z_Hif])
    assume z_Hho:"(~?z_hc)"
    show FALSE
    by (rule notE [OF z_Hho z_Hc])
   next
    assume z_Hig:"?z_hig"
    have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
    by (rule subst [where P="(\<lambda>zenon_Vcng. ((zenon_Vcng[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vrl. (zenon_Vrl \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
     assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
     assume z_Hiq:"(p=p)"
     assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
     have z_Hnl: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfy))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hfy)))&(\\A zenon_Vujf:((a_pchash_primea[zenon_Vujf])=(?z_hfy[zenon_Vujf]))))" (is "?z_hnm&?z_hnr")
     by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfy", OF z_Hfx])
     have z_Hnr: "?z_hnr" (is "\\A x : ?z_hnw(x)")
     by (rule zenon_and_1 [OF z_Hnl])
     have z_Hnx: "?z_hnw(p)" (is "?z_hjh=?z_hny")
     by (rule zenon_all_0 [of "?z_hnw" "p", OF z_Hnr])
     have z_Hnz: "((?z_hed[p])=?z_hny)" (is "?z_hii=_")
     by (rule subst [where P="(\<lambda>zenon_Veng. ((zenon_Veng[p])=?z_hny))", OF z_He z_Hnx])
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzkg. (zenon_Vzkg=?z_hny))" "pc" "p" "''0''" "p", OF z_Hnz])
      assume z_Hhd:"?z_hhd"
      assume z_Hiq:"(p=p)"
      assume z_Hoh:"(''0''=?z_hny)" (is "?z_hz=_")
      show FALSE
      proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpde. (?z_hz=zenon_Vpde))" "pc" "p" "''U2''" "p", OF z_Hoh])
       assume z_Hhd:"?z_hhd"
       assume z_Hiq:"(p=p)"
       assume z_Hgy:"(?z_hz=''U2'')" (is "_=?z_hbj")
       show FALSE
       by (rule zenon_L1_ [OF z_Hgy])
      next
       assume z_Hhd:"?z_hhd"
       assume z_Hjv:"(p~=p)"
       assume z_Hjw:"(?z_hz=?z_hea)"
       show FALSE
       by (rule zenon_noteq [OF z_Hjv])
      next
       assume z_Hhc:"(~?z_hhd)"
       show FALSE
       by (rule notE [OF z_Hhc z_Hhd])
      qed
     next
      assume z_Hhd:"?z_hhd"
      assume z_Hjv:"(p~=p)"
      assume z_Hoi:"(?z_hea=?z_hny)"
      show FALSE
      by (rule zenon_noteq [OF z_Hjv])
     next
      assume z_Hhc:"(~?z_hhd)"
      show FALSE
      by (rule notE [OF z_Hhc z_Hhd])
     qed
    next
     assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
     assume z_Hjv:"(p~=p)"
     assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
     show FALSE
     by (rule zenon_noteq [OF z_Hjv])
    next
     assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
     show FALSE
     by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
    qed
   qed
  next
   assume z_Hgc:"?z_hgc" (is "?z_hgd|?z_hgn")
   show FALSE
   proof (rule zenon_or [OF z_Hgc])
    assume z_Hgd:"?z_hgd" (is "?z_hge&?z_hgb")
    have z_Hge: "?z_hge" (is "?z_hgf&?z_hgj")
    by (rule zenon_and_0 [OF z_Hgd])
    have z_Hgf: "?z_hgf" (is "?z_hgg&?z_hgh")
    by (rule zenon_and_0 [OF z_Hge])
    have z_Hgh: "?z_hgh" (is "_=?z_hgi")
    by (rule zenon_and_1 [OF z_Hgf])
    show FALSE
    by (rule zenon_L4_ [OF z_He z_Hc z_Hgh z_Hu])
   next
    assume z_Hgn:"?z_hgn" (is "?z_hgo|?z_hgu")
    show FALSE
    proof (rule zenon_or [OF z_Hgn])
     assume z_Hgo:"?z_hgo" (is "?z_hgp&?z_hgb")
     have z_Hgp: "?z_hgp" (is "?z_hgq&?z_hfz")
     by (rule zenon_and_0 [OF z_Hgo])
     have z_Hgq: "?z_hgq" (is "?z_hgr&?z_hgs")
     by (rule zenon_and_0 [OF z_Hgp])
     have z_Hgs: "?z_hgs" (is "_=?z_hgt")
     by (rule zenon_and_1 [OF z_Hgq])
     have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
     by (rule subst [where P="(\<lambda>zenon_Vang. (zenon_Vang \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
     have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
     by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
     have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
     by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
     have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
     by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
     show FALSE
     proof (rule zenon_imply [OF z_Hif])
      assume z_Hho:"(~?z_hc)"
      show FALSE
      by (rule notE [OF z_Hho z_Hc])
     next
      assume z_Hig:"?z_hig"
      have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
      by (rule subst [where P="(\<lambda>zenon_Vcng. ((zenon_Vcng[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
      show FALSE
      proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vrl. (zenon_Vrl \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
       assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
       assume z_Hiq:"(p=p)"
       assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
       have z_Hoj: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgt))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hgt)))&(\\A zenon_Vdge:((a_pchash_primea[zenon_Vdge])=(?z_hgt[zenon_Vdge]))))" (is "?z_hok&?z_hop")
       by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgt", OF z_Hgs])
       have z_Hop: "?z_hop" (is "\\A x : ?z_hou(x)")
       by (rule zenon_and_1 [OF z_Hoj])
       have z_Hov: "?z_hou(p)" (is "?z_hjh=?z_how")
       by (rule zenon_all_0 [of "?z_hou" "p", OF z_Hop])
       have z_Hox: "((?z_hed[p])=?z_how)" (is "?z_hii=_")
       by (rule subst [where P="(\<lambda>zenon_Vqng. ((zenon_Vqng[p])=?z_how))", OF z_He z_Hov])
       show FALSE
       proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vjhf. (zenon_Vjhf=?z_how))" "pc" "p" "''0''" "p", OF z_Hox])
        assume z_Hhd:"?z_hhd"
        assume z_Hiq:"(p=p)"
        assume z_Hpf:"(''0''=?z_how)" (is "?z_hz=_")
        show FALSE
        proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpde. (?z_hz=zenon_Vpde))" "pc" "p" "''U8''" "p", OF z_Hpf])
         assume z_Hhd:"?z_hhd"
         assume z_Hiq:"(p=p)"
         assume z_Hjz:"(?z_hz=''U8'')" (is "_=?z_hbp")
         show FALSE
         by (rule zenon_L5_ [OF z_Hjz])
        next
         assume z_Hhd:"?z_hhd"
         assume z_Hjv:"(p~=p)"
         assume z_Hjw:"(?z_hz=?z_hea)"
         show FALSE
         by (rule zenon_noteq [OF z_Hjv])
        next
         assume z_Hhc:"(~?z_hhd)"
         show FALSE
         by (rule notE [OF z_Hhc z_Hhd])
        qed
       next
        assume z_Hhd:"?z_hhd"
        assume z_Hjv:"(p~=p)"
        assume z_Hpg:"(?z_hea=?z_how)"
        show FALSE
        by (rule zenon_noteq [OF z_Hjv])
       next
        assume z_Hhc:"(~?z_hhd)"
        show FALSE
        by (rule notE [OF z_Hhc z_Hhd])
       qed
      next
       assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
       assume z_Hjv:"(p~=p)"
       assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
       show FALSE
       by (rule zenon_noteq [OF z_Hjv])
      next
       assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
       show FALSE
       by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
      qed
     qed
    next
     assume z_Hgu:"?z_hgu" (is "?z_hgv&?z_hgb")
     have z_Hgv: "?z_hgv" (is "?z_hgw&?z_hgj")
     by (rule zenon_and_0 [OF z_Hgu])
     have z_Hgw: "?z_hgw" (is "?z_hgx&?z_hgh")
     by (rule zenon_and_0 [OF z_Hgv])
     have z_Hgh: "?z_hgh" (is "_=?z_hgi")
     by (rule zenon_and_1 [OF z_Hgw])
     show FALSE
     by (rule zenon_L4_ [OF z_He z_Hc z_Hgh z_Hu])
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 61"; *} qed
lemma ob'175:
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
(* usable definition Valid_M suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition InvF2All suppressed *)
(* usable definition InvF3All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'100: "(((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (a_Validunde_Fa) & (a_Validunde_uunde_Fa) & (a_Validunde_aunde_Fa) & (a_Validunde_bunde_Fa) & (a_Validunde_uunde_Ua) & (a_Validunde_vunde_Ua) & (a_Validunde_aunde_Ua) & (a_Validunde_bunde_Ua) & (a_Validunde_ca) & (a_Validunde_da) & (a_Validunde_Ma)) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((t), (''arg''))), (p))))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p)))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p))))))) & ((InvF6All ((p), (t)))))))))) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'101: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'103: "((((((((((fapply ((pc), (p))) = (''FR''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))))) \<and> ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)]))))))))))) | (((((((((fapply ((pc), (p))) = (''FRU1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U2'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U8'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'104: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'105: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'106: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'107: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'108: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'109: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'110: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'111: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'112: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'113: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'114: "((((a_dhash_primea :: c)) = (d)))"
assumes v'118: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply ((pc), (p))) \<noteq> (''FR'')))"
shows "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6''))) \<Rightarrow> ((((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT)))) \<and> (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))))) \<and> (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a))))))))) \<and> ((hd3f2544b569777b6bc89285644fd8a ((a_punde_1a), (t)) :: c))))))"(is "PROP ?ob'175")
proof -
ML_command {* writeln "*** TLAPS ENTER 175"; *}
show "PROP ?ob'175"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_2858e5.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_2858e5.znn.out
;; obligation #175
$hyp "v'100" (/\ (/\ (TLA.in pc
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
a_Validunde_Fa a_Validunde_uunde_Fa a_Validunde_aunde_Fa a_Validunde_bunde_Fa
a_Validunde_uunde_Ua a_Validunde_vunde_Ua a_Validunde_aunde_Ua
a_Validunde_bunde_Ua a_Validunde_ca a_Validunde_da a_Validunde_Ma) InvDecide
a_InvF1a a_InvF2a a_InvF3a a_InvF4a a_InvF5a
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F6")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply t "arg") p)))
(InvF6All p t))) (=> (= (TLA.fapply pc p) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))) (InvF6All p
t))) (=> (= (TLA.fapply pc p) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p))) (InvF6All p
t))) (=> (= (TLA.fapply pc p) "F6U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))) (InvF6All p
t))) (=> (= (TLA.fapply pc p) "F6U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0)))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))
(=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p)))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p))) (InvF6All p
t)))))))) a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'101" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'103" (\/ (/\ (/\ (/\ (= (TLA.fapply pc p) "FR") (= a_pchash_primea
(TLA.except pc p "0"))) (= a_uunde_Uhash_primea a_uunde_Ua))
(= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
(TLA.fapply a_uunde_Fa p)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "ret")
(TLA.except (TLA.fapply told "ret") p BOT)) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p BOT)) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU1") (= a_pchash_primea
(TLA.except pc p "U2"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU2") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU7") (= a_pchash_primea
(TLA.except pc p "U8"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU8") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea
M)))
$hyp "v'104" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'105" (= a_Fhash_primea F)
$hyp "v'106" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'107" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'108" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'109" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'110" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'111" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'112" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'113" (= a_chash_primea a_ca)
$hyp "v'114" (= a_dhash_primea d)
$hyp "v'118" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (-. (= (TLA.fapply pc p)
"FR"))
$goal (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F6")
(/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply t "arg") a_punde_1a))))
(hd3f2544b569777b6bc89285644fd8a a_punde_1a
t)))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hp:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hu&?z_hdb")
 using v'118 by blast
 have z_Hd:"((((((pc[p])=''FR'')&(a_pchash_primea=except(pc, p, ''0'')))&(a_uunde_Uhash_primea=a_uunde_Ua))&(a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. ((((told[''ret''])[p])=(a_uunde_Fa[p]))&(((t[''sigma''])=(told[''sigma'']))&(((t[''ret''])=except((told[''ret'']), p, BOT))&(((t[''op''])=except((told[''op'']), p, BOT))&((t[''arg''])=except((told[''arg'']), p, BOT))))))))))))|((((((pc[p])=''FRU1'')&(a_pchash_primea=except(pc, p, ''U2'')))&(a_uunde_Uhash_primea=except(a_uunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|((((((pc[p])=''FRU2'')&(a_pchash_primea=except(pc, p, ''U3'')))&(a_vunde_Uhash_primea=except(a_vunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|((((((pc[p])=''FRU7'')&(a_pchash_primea=except(pc, p, ''U8'')))&(a_uunde_Uhash_primea=except(a_uunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))|(((((pc[p])=''FRU8'')&(a_pchash_primea=except(pc, p, ''U3'')))&(a_vunde_Uhash_primea=except(a_vunde_Ua, p, (a_uunde_Fa[p]))))&(a_Mhash_primea=M))))))" (is "?z_hdw|?z_hfs")
 using v'103 by blast
 have z_Hs:"((pc[p])~=''FR'')" (is "?z_hea~=?z_hbh")
 using v'137 by blast
 have z_He:"(a_pchash_primea=except(pc, p, ''0''))" (is "_=?z_hed")
 using v'104 by blast
 have z_Hc:"(p \\in PROCESSES)" (is "?z_hc")
 using p_in by blast
 have zenon_L1_: "(''0''=''U2'') ==> FALSE" (is "?z_hgy ==> FALSE")
 proof -
  assume z_Hgy:"?z_hgy" (is "?z_hz=?z_hbj")
  have z_Hgz: "(?z_hz~=?z_hbj)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hgz z_Hgy])
 qed
 have zenon_L2_: "(DOMAIN(?z_hed)=PROCESSES) ==> (~(p \\in DOMAIN(pc))) ==> ?z_hc ==> FALSE" (is "?z_hha ==> ?z_hhc ==> _ ==> FALSE")
 proof -
  assume z_Hha:"?z_hha" (is "?z_hhb=_")
  assume z_Hhc:"?z_hhc" (is "~?z_hhd")
  assume z_Hc:"?z_hc"
  have z_Hhf: "(\\A zenon_Vkc:((zenon_Vkc \\in ?z_hhb)<=>(zenon_Vkc \\in PROCESSES)))" (is "\\A x : ?z_hhk(x)")
  by (rule zenon_setequal_0 [of "?z_hhb" "PROCESSES", OF z_Hha])
  have z_Hhl: "?z_hhk(p)" (is "?z_hhm<=>_")
  by (rule zenon_all_0 [of "?z_hhk" "p", OF z_Hhf])
  show FALSE
  proof (rule zenon_equiv [OF z_Hhl])
   assume z_Hhn:"(~?z_hhm)"
   assume z_Hho:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hho z_Hc])
  next
   assume z_Hhm:"?z_hhm"
   assume z_Hc:"?z_hc"
   have z_Hhd: "?z_hhd"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Voha. (p \\in zenon_Voha))" "pc" "p" "''0''", OF z_Hhm])
   show FALSE
   by (rule notE [OF z_Hhc z_Hhd])
  qed
 qed
 have zenon_L3_: "(''0''=''U3'') ==> FALSE" (is "?z_hhs ==> FALSE")
 proof -
  assume z_Hhs:"?z_hhs" (is "?z_hz=?z_hbk")
  have z_Hht: "(?z_hz~=?z_hbk)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hht z_Hhs])
 qed
 have zenon_L4_: "(a_pchash_primea=?z_hed) ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''U3'')) ==> ?z_hu ==> FALSE" (is "?z_he ==> _ ==> ?z_hgh ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hc:"?z_hc"
  assume z_Hgh:"?z_hgh" (is "_=?z_hgi")
  assume z_Hu:"?z_hu"
  have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
  by (rule subst [where P="(\<lambda>zenon_Vueg. (zenon_Vueg \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
  have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
  have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
  by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
  have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
  by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
  show FALSE
  proof (rule zenon_imply [OF z_Hif])
   assume z_Hho:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hho z_Hc])
  next
   assume z_Hig:"?z_hig"
   have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
   by (rule subst [where P="(\<lambda>zenon_Vweg. ((zenon_Vweg[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vtk. (zenon_Vtk \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
    assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
    assume z_Hiq:"(p=p)"
    assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
    have z_His: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgi))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hgi)))&(\\A zenon_Vxb:((a_pchash_primea[zenon_Vxb])=(?z_hgi[zenon_Vxb]))))" (is "?z_hit&?z_hja")
    by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgi", OF z_Hgh])
    have z_Hja: "?z_hja" (is "\\A x : ?z_hjf(x)")
    by (rule zenon_and_1 [OF z_His])
    have z_Hjg: "?z_hjf(p)" (is "?z_hjh=?z_hji")
    by (rule zenon_all_0 [of "?z_hjf" "p", OF z_Hja])
    have z_Hjj: "((?z_hed[p])=?z_hji)" (is "?z_hii=_")
    by (rule subst [where P="(\<lambda>zenon_Vefg. ((zenon_Vefg[p])=?z_hji))", OF z_He z_Hjg])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhxd. (zenon_Vhxd=?z_hji))" "pc" "p" "''0''" "p", OF z_Hjj])
     assume z_Hhd:"?z_hhd"
     assume z_Hiq:"(p=p)"
     assume z_Hjr:"(''0''=?z_hji)" (is "?z_hz=_")
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vjxd. (?z_hz=zenon_Vjxd))" "pc" "p" "''U3''" "p", OF z_Hjr])
      assume z_Hhd:"?z_hhd"
      assume z_Hiq:"(p=p)"
      assume z_Hhs:"(?z_hz=''U3'')" (is "_=?z_hbk")
      show FALSE
      by (rule zenon_L3_ [OF z_Hhs])
     next
      assume z_Hhd:"?z_hhd"
      assume z_Hjv:"(p~=p)"
      assume z_Hjw:"(?z_hz=?z_hea)"
      show FALSE
      by (rule zenon_noteq [OF z_Hjv])
     next
      assume z_Hhc:"(~?z_hhd)"
      show FALSE
      by (rule notE [OF z_Hhc z_Hhd])
     qed
    next
     assume z_Hhd:"?z_hhd"
     assume z_Hjv:"(p~=p)"
     assume z_Hjx:"(?z_hea=?z_hji)"
     show FALSE
     by (rule zenon_noteq [OF z_Hjv])
    next
     assume z_Hhc:"(~?z_hhd)"
     show FALSE
     by (rule notE [OF z_Hhc z_Hhd])
    qed
   next
    assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
    assume z_Hjv:"(p~=p)"
    assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
    show FALSE
    by (rule zenon_noteq [OF z_Hjv])
   next
    assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
    show FALSE
    by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
   qed
  qed
 qed
 have zenon_L5_: "(''0''=''U8'') ==> FALSE" (is "?z_hjz ==> FALSE")
 proof -
  assume z_Hjz:"?z_hjz" (is "?z_hz=?z_hbp")
  have z_Hka: "(?z_hz~=?z_hbp)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hka z_Hjz])
 qed
 assume z_Ht:"(~(((a_pchash_primea[a_punde_1a])=''F6'')=>(((((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''F''))&(((t[''arg''])[a_punde_1a]) \\in NodeSet))&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[((t[''arg''])[a_punde_1a])])))&hd3f2544b569777b6bc89285644fd8a(a_punde_1a, t))))" (is "~(?z_hkc=>?z_hkf)")
 have z_Hu: "?z_hu"
 by (rule zenon_and_0 [OF z_Hp])
 show FALSE
 proof (rule zenon_or [OF z_Hd])
  assume z_Hdw:"?z_hdw" (is "?z_hdx&?z_heg")
  have z_Hdx: "?z_hdx" (is "?z_hdy&?z_hj")
  by (rule zenon_and_0 [OF z_Hdw])
  have z_Hdy: "?z_hdy" (is "?z_hdz&?z_he")
  by (rule zenon_and_0 [OF z_Hdx])
  have z_Hdz: "?z_hdz"
  by (rule zenon_and_0 [OF z_Hdy])
  show FALSE
  by (rule notE [OF z_Hs z_Hdz])
 next
  assume z_Hfs:"?z_hfs" (is "?z_hft|?z_hgc")
  show FALSE
  proof (rule zenon_or [OF z_Hfs])
   assume z_Hft:"?z_hft" (is "?z_hfu&?z_hgb")
   have z_Hfu: "?z_hfu" (is "?z_hfv&?z_hfz")
   by (rule zenon_and_0 [OF z_Hft])
   have z_Hfv: "?z_hfv" (is "?z_hfw&?z_hfx")
   by (rule zenon_and_0 [OF z_Hfu])
   have z_Hfx: "?z_hfx" (is "_=?z_hfy")
   by (rule zenon_and_1 [OF z_Hfv])
   have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
   by (rule subst [where P="(\<lambda>zenon_Vueg. (zenon_Vueg \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
   have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
   by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
   have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
   by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
   have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
   by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
   show FALSE
   proof (rule zenon_imply [OF z_Hif])
    assume z_Hho:"(~?z_hc)"
    show FALSE
    by (rule notE [OF z_Hho z_Hc])
   next
    assume z_Hig:"?z_hig"
    have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
    by (rule subst [where P="(\<lambda>zenon_Vweg. ((zenon_Vweg[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vtk. (zenon_Vtk \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
     assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
     assume z_Hiq:"(p=p)"
     assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
     have z_Hkx: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfy))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hfy)))&(\\A zenon_Vkcf:((a_pchash_primea[zenon_Vkcf])=(?z_hfy[zenon_Vkcf]))))" (is "?z_hky&?z_hld")
     by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfy", OF z_Hfx])
     have z_Hld: "?z_hld" (is "\\A x : ?z_hli(x)")
     by (rule zenon_and_1 [OF z_Hkx])
     have z_Hlj: "?z_hli(p)" (is "?z_hjh=?z_hlk")
     by (rule zenon_all_0 [of "?z_hli" "p", OF z_Hld])
     have z_Hll: "((?z_hed[p])=?z_hlk)" (is "?z_hii=_")
     by (rule subst [where P="(\<lambda>zenon_Vyeg. ((zenon_Vyeg[p])=?z_hlk))", OF z_He z_Hlj])
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vucg. (zenon_Vucg=?z_hlk))" "pc" "p" "''0''" "p", OF z_Hll])
      assume z_Hhd:"?z_hhd"
      assume z_Hiq:"(p=p)"
      assume z_Hlt:"(''0''=?z_hlk)" (is "?z_hz=_")
      show FALSE
      proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vjxd. (?z_hz=zenon_Vjxd))" "pc" "p" "''U2''" "p", OF z_Hlt])
       assume z_Hhd:"?z_hhd"
       assume z_Hiq:"(p=p)"
       assume z_Hgy:"(?z_hz=''U2'')" (is "_=?z_hbj")
       show FALSE
       by (rule zenon_L1_ [OF z_Hgy])
      next
       assume z_Hhd:"?z_hhd"
       assume z_Hjv:"(p~=p)"
       assume z_Hjw:"(?z_hz=?z_hea)"
       show FALSE
       by (rule zenon_noteq [OF z_Hjv])
      next
       assume z_Hhc:"(~?z_hhd)"
       show FALSE
       by (rule notE [OF z_Hhc z_Hhd])
      qed
     next
      assume z_Hhd:"?z_hhd"
      assume z_Hjv:"(p~=p)"
      assume z_Hlu:"(?z_hea=?z_hlk)"
      show FALSE
      by (rule zenon_noteq [OF z_Hjv])
     next
      assume z_Hhc:"(~?z_hhd)"
      show FALSE
      by (rule notE [OF z_Hhc z_Hhd])
     qed
    next
     assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
     assume z_Hjv:"(p~=p)"
     assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
     show FALSE
     by (rule zenon_noteq [OF z_Hjv])
    next
     assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
     show FALSE
     by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
    qed
   qed
  next
   assume z_Hgc:"?z_hgc" (is "?z_hgd|?z_hgn")
   show FALSE
   proof (rule zenon_or [OF z_Hgc])
    assume z_Hgd:"?z_hgd" (is "?z_hge&?z_hgb")
    have z_Hge: "?z_hge" (is "?z_hgf&?z_hgj")
    by (rule zenon_and_0 [OF z_Hgd])
    have z_Hgf: "?z_hgf" (is "?z_hgg&?z_hgh")
    by (rule zenon_and_0 [OF z_Hge])
    have z_Hgh: "?z_hgh" (is "_=?z_hgi")
    by (rule zenon_and_1 [OF z_Hgf])
    show FALSE
    by (rule zenon_L4_ [OF z_He z_Hc z_Hgh z_Hu])
   next
    assume z_Hgn:"?z_hgn" (is "?z_hgo|?z_hgu")
    show FALSE
    proof (rule zenon_or [OF z_Hgn])
     assume z_Hgo:"?z_hgo" (is "?z_hgp&?z_hgb")
     have z_Hgp: "?z_hgp" (is "?z_hgq&?z_hfz")
     by (rule zenon_and_0 [OF z_Hgo])
     have z_Hgq: "?z_hgq" (is "?z_hgr&?z_hgs")
     by (rule zenon_and_0 [OF z_Hgp])
     have z_Hgs: "?z_hgs" (is "_=?z_hgt")
     by (rule zenon_and_1 [OF z_Hgq])
     have z_Hhu: "(?z_hed \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hhu")
     by (rule subst [where P="(\<lambda>zenon_Vueg. (zenon_Vueg \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hu])
     have z_Hha: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hhb=_")
     by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hhu])
     have z_Hhy: "(\\A zenon_Vnb:((zenon_Vnb \\in PROCESSES)=>((a_pchash_primea[zenon_Vnb]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))" (is "\\A x : ?z_hie(x)")
     by (rule zenon_in_funcset_2 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hu])
     have z_Hif: "?z_hie(p)" (is "_=>?z_hig")
     by (rule zenon_all_0 [of "?z_hie" "p", OF z_Hhy])
     show FALSE
     proof (rule zenon_imply [OF z_Hif])
      assume z_Hho:"(~?z_hc)"
      show FALSE
      by (rule notE [OF z_Hho z_Hc])
     next
      assume z_Hig:"?z_hig"
      have z_Hih: "((?z_hed[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hih")
      by (rule subst [where P="(\<lambda>zenon_Vweg. ((zenon_Vweg[p]) \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))", OF z_He z_Hig])
      show FALSE
      proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vtk. (zenon_Vtk \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" "pc" "p" "''0''" "p", OF z_Hih])
       assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
       assume z_Hiq:"(p=p)"
       assume z_Hir:"(''0'' \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hir")
       have z_Hlv: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgt))&(DOMAIN(a_pchash_primea)=DOMAIN(?z_hgt)))&(\\A zenon_Vpzd:((a_pchash_primea[zenon_Vpzd])=(?z_hgt[zenon_Vpzd]))))" (is "?z_hlw&?z_hmb")
       by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgt", OF z_Hgs])
       have z_Hmb: "?z_hmb" (is "\\A x : ?z_hmg(x)")
       by (rule zenon_and_1 [OF z_Hlv])
       have z_Hmh: "?z_hmg(p)" (is "?z_hjh=?z_hmi")
       by (rule zenon_all_0 [of "?z_hmg" "p", OF z_Hmb])
       have z_Hmj: "((?z_hed[p])=?z_hmi)" (is "?z_hii=_")
       by (rule subst [where P="(\<lambda>zenon_Vkfg. ((zenon_Vkfg[p])=?z_hmi))", OF z_He z_Hmh])
       show FALSE
       proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyze. (zenon_Vyze=?z_hmi))" "pc" "p" "''0''" "p", OF z_Hmj])
        assume z_Hhd:"?z_hhd"
        assume z_Hiq:"(p=p)"
        assume z_Hmr:"(''0''=?z_hmi)" (is "?z_hz=_")
        show FALSE
        proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vjxd. (?z_hz=zenon_Vjxd))" "pc" "p" "''U8''" "p", OF z_Hmr])
         assume z_Hhd:"?z_hhd"
         assume z_Hiq:"(p=p)"
         assume z_Hjz:"(?z_hz=''U8'')" (is "_=?z_hbp")
         show FALSE
         by (rule zenon_L5_ [OF z_Hjz])
        next
         assume z_Hhd:"?z_hhd"
         assume z_Hjv:"(p~=p)"
         assume z_Hjw:"(?z_hz=?z_hea)"
         show FALSE
         by (rule zenon_noteq [OF z_Hjv])
        next
         assume z_Hhc:"(~?z_hhd)"
         show FALSE
         by (rule notE [OF z_Hhc z_Hhd])
        qed
       next
        assume z_Hhd:"?z_hhd"
        assume z_Hjv:"(p~=p)"
        assume z_Hms:"(?z_hea=?z_hmi)"
        show FALSE
        by (rule zenon_noteq [OF z_Hjv])
       next
        assume z_Hhc:"(~?z_hhd)"
        show FALSE
        by (rule notE [OF z_Hhc z_Hhd])
       qed
      next
       assume z_Hhd:"(p \\in DOMAIN(pc))" (is "?z_hhd")
       assume z_Hjv:"(p~=p)"
       assume z_Hjy:"(?z_hea \\in {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbh, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})" (is "?z_hjy")
       show FALSE
       by (rule zenon_noteq [OF z_Hjv])
      next
       assume z_Hhc:"(~(p \\in DOMAIN(pc)))" (is "~?z_hhd")
       show FALSE
       by (rule zenon_L2_ [OF z_Hha z_Hhc z_Hc])
      qed
     qed
    next
     assume z_Hgu:"?z_hgu" (is "?z_hgv&?z_hgb")
     have z_Hgv: "?z_hgv" (is "?z_hgw&?z_hgj")
     by (rule zenon_and_0 [OF z_Hgu])
     have z_Hgw: "?z_hgw" (is "?z_hgx&?z_hgh")
     by (rule zenon_and_0 [OF z_Hgv])
     have z_Hgh: "?z_hgh" (is "_=?z_hgi")
     by (rule zenon_and_1 [OF z_Hgw])
     show FALSE
     by (rule zenon_L4_ [OF z_He z_Hc z_Hgh z_Hu])
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 175"; *} qed
lemma ob'209:
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
assumes v'108: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "((((((((((fapply ((pc), (p))) = (''FR''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))))) \<and> ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)]))))))))))) | (((((((((fapply ((pc), (p))) = (''FRU1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U2'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U8'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'114: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'115: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'116: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'117: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'118: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'119: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'120: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'121: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'122: "((((a_dhash_primea :: c)) = (d)))"
assumes v'126: "((a_hef12f5554781c2213604492856f635a :: c))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'145: "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7''))) \<Rightarrow> ((((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT)))) \<and> (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))))) \<and> ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))))) \<and> ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"
assumes v'146: "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U1''))) \<Rightarrow> ((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U'')))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))))) \<and> ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))) \<and> ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"
assumes v'147: "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U2''))) \<Rightarrow> ((((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U'')))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))))) \<and> ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)))) \<and> ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))) \<and> ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"
assumes v'148: "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U7''))) \<Rightarrow> ((((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U'')))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))))) \<and> ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)))) \<and> ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))))) \<and> ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"
assumes v'149: "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U8''))) \<Rightarrow> ((((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U'')))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))))) \<and> ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)))) \<and> ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))))) \<and> ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"
shows "((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))))"(is "PROP ?ob'209")
proof -
ML_command {* writeln "*** TLAPS ENTER 209"; *}
show "PROP ?ob'209"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_9a59d7.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_9a59d7.znn.out
;; obligation #209
$hyp "v'108" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a a_InvU5a
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (\/ (/\ (/\ (/\ (= (TLA.fapply pc p) "FR") (= a_pchash_primea
(TLA.except pc p "0"))) (= a_uunde_Uhash_primea a_uunde_Ua))
(= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
(TLA.fapply a_uunde_Fa p)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "ret")
(TLA.except (TLA.fapply told "ret") p BOT)) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p BOT)) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU1") (= a_pchash_primea
(TLA.except pc p "U2"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU2") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU7") (= a_pchash_primea
(TLA.except pc p "U8"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU8") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea
M)))
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Fhash_primea F)
$hyp "v'114" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'115" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'116" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'117" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'118" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'119" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'120" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'121" (= a_chash_primea a_ca)
$hyp "v'122" (= a_dhash_primea
d)
$hyp "v'126" a_hef12f5554781c2213604492856f635a
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'145" (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7")
(/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a)))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t)))
$hyp "v'146" (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U1")
(/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t)))
$hyp "v'147" (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U2")
(/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))) (h29e700f910ac66eea1136a63914adb a_punde_1a t))
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t)))
$hyp "v'148" (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U7")
(/\ (/\ (/\ (/\ (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a
t)) (SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a)))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t)))
$hyp "v'149" (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7U8")
(/\ (/\ (/\ (/\ (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.set BOT ACK)) (= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet))) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a
t)) (SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a)))
(a_h922edcc313eb8f84ff6fd24d1bdf68a a_punde_1a
t)))
$goal (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
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
t))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hs:"(((a_pchash_primea[a_punde_1a])=''F7'')=>(((((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''F''))&(((t[''arg''])[a_punde_1a]) \\in NodeSet))&SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a])))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))" (is "?z_hy=>?z_hbd")
 using v'145 by blast
 have z_Hu:"(((a_pchash_primea[a_punde_1a])=''F7U2'')=>((((((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))&h29e700f910ac66eea1136a63914adb(a_punde_1a, t))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))" (is "?z_hcb=>?z_hcd")
 using v'147 by blast
 have z_Hw:"(((a_pchash_primea[a_punde_1a])=''F7U8'')=>((((((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))&a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))" (is "?z_hcq=>?z_hcs")
 using v'149 by blast
 have z_Hv:"(((a_pchash_primea[a_punde_1a])=''F7U7'')=>((((((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))&a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))" (is "?z_hdb=>?z_hdd")
 using v'148 by blast
 have z_Ht:"(((a_pchash_primea[a_punde_1a])=''F7U1'')=>(((((((t[''ret''])[a_punde_1a])=BOT)&(((t[''op''])[a_punde_1a])=''U''))&(((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)))&SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))" (is "?z_hdk=>?z_hdm")
 using v'146 by blast
 have zenon_L1_: "(~(?z_hy=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))) ==> ((a_pchash_primea[a_punde_1a])~=''F7'') ==> FALSE" (is "?z_hdo ==> ?z_hdu ==> FALSE")
 proof -
  assume z_Hdo:"?z_hdo" (is "~(_=>?z_hdq)")
  assume z_Hdu:"?z_hdu" (is "?z_hz~=?z_hbc")
  have z_Hy: "?z_hy"
  by (rule zenon_notimply_0 [OF z_Hdo])
  show FALSE
  by (rule notE [OF z_Hdu z_Hy])
 qed
 have zenon_L2_: "(~(?z_hdk=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))) ==> ((a_pchash_primea[a_punde_1a])~=''F7U1'') ==> FALSE" (is "?z_hdv ==> ?z_heb ==> FALSE")
 proof -
  assume z_Hdv:"?z_hdv" (is "~(_=>?z_hdx)")
  assume z_Heb:"?z_heb" (is "?z_hz~=?z_hdl")
  have z_Hdk: "?z_hdk"
  by (rule zenon_notimply_0 [OF z_Hdv])
  show FALSE
  by (rule notE [OF z_Heb z_Hdk])
 qed
 have zenon_L3_: "(~(?z_hcb=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> ((a_pchash_primea[a_punde_1a])~=''F7U2'') ==> FALSE" (is "?z_hec ==> ?z_hej ==> FALSE")
 proof -
  assume z_Hec:"?z_hec" (is "~(_=>?z_hee)")
  assume z_Hej:"?z_hej" (is "?z_hz~=?z_hcc")
  have z_Hcb: "?z_hcb"
  by (rule zenon_notimply_0 [OF z_Hec])
  show FALSE
  by (rule notE [OF z_Hej z_Hcb])
 qed
 have zenon_L4_: "(~(?z_hdb=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> ((a_pchash_primea[a_punde_1a])~=''F7U7'') ==> FALSE" (is "?z_hek ==> ?z_heq ==> FALSE")
 proof -
  assume z_Hek:"?z_hek" (is "~(_=>?z_hem)")
  assume z_Heq:"?z_heq" (is "?z_hz~=?z_hdc")
  have z_Hdb: "?z_hdb"
  by (rule zenon_notimply_0 [OF z_Hek])
  show FALSE
  by (rule notE [OF z_Heq z_Hdb])
 qed
 have zenon_L5_: "(~(?z_hcq=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> ((a_pchash_primea[a_punde_1a])~=''F7U8'') ==> FALSE" (is "?z_her ==> ?z_hex ==> FALSE")
 proof -
  assume z_Her:"?z_her" (is "~(_=>?z_het)")
  assume z_Hex:"?z_hex" (is "?z_hz~=?z_hcr")
  have z_Hcq: "?z_hcq"
  by (rule zenon_notimply_0 [OF z_Her])
  show FALSE
  by (rule notE [OF z_Hex z_Hcq])
 qed
 have zenon_L6_: "(~(?z_hcq=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> (((t[''ret''])[a_punde_1a]) \\in {BOT, ACK}) ==> (((t[''op''])[a_punde_1a])=''U'') ==> (((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)) ==> a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t) ==> SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])) ==> a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t) ==> FALSE" (is "?z_her ==> ?z_hcx ==> ?z_hci ==> ?z_hck ==> ?z_hda ==> ?z_hcn ==> ?z_hca ==> FALSE")
 proof -
  assume z_Her:"?z_her" (is "~(_=>?z_het)")
  assume z_Hcx:"?z_hcx"
  assume z_Hci:"?z_hci" (is "?z_hbo=?z_hcj")
  assume z_Hck:"?z_hck"
  assume z_Hda:"?z_hda"
  assume z_Hcn:"?z_hcn"
  assume z_Hca:"?z_hca"
  have z_Hey: "(~?z_het)" (is "~(_&?z_heu)")
  by (rule zenon_notimply_1 [OF z_Her])
  show FALSE
  proof (rule zenon_notand [OF z_Hey])
   assume z_Hez:"(~?z_hcx)"
   show FALSE
   by (rule notE [OF z_Hez z_Hcx])
  next
   assume z_Hfa:"(~?z_heu)" (is "~(_&?z_hev)")
   show FALSE
   proof (rule zenon_notand [OF z_Hfa])
    assume z_Hfb:"(?z_hbo~=?z_hcj)"
    show FALSE
    by (rule notE [OF z_Hfb z_Hci])
   next
    assume z_Hfc:"(~?z_hev)" (is "~(_&?z_hew)")
    show FALSE
    proof (rule zenon_notand [OF z_Hfc])
     assume z_Hfd:"(~?z_hck)"
     show FALSE
     by (rule notE [OF z_Hfd z_Hck])
    next
     assume z_Hfe:"(~?z_hew)" (is "~(_&?z_hei)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfe])
      assume z_Hff:"(~?z_hda)"
      show FALSE
      by (rule notE [OF z_Hff z_Hda])
     next
      assume z_Hfg:"(~?z_hei)"
      show FALSE
      proof (rule zenon_notand [OF z_Hfg])
       assume z_Hfh:"(~?z_hcn)"
       show FALSE
       by (rule notE [OF z_Hfh z_Hcn])
      next
       assume z_Hfi:"(~?z_hca)"
       show FALSE
       by (rule notE [OF z_Hfi z_Hca])
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L7_: "(~(?z_hdb=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> (((t[''ret''])[a_punde_1a]) \\in {BOT, ACK}) ==> (((t[''op''])[a_punde_1a])=''U'') ==> (((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)) ==> a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t) ==> SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])) ==> a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t) ==> FALSE" (is "?z_hek ==> ?z_hcx ==> ?z_hci ==> ?z_hck ==> ?z_hdg ==> ?z_hdh ==> ?z_hca ==> FALSE")
 proof -
  assume z_Hek:"?z_hek" (is "~(_=>?z_hem)")
  assume z_Hcx:"?z_hcx"
  assume z_Hci:"?z_hci" (is "?z_hbo=?z_hcj")
  assume z_Hck:"?z_hck"
  assume z_Hdg:"?z_hdg"
  assume z_Hdh:"?z_hdh"
  assume z_Hca:"?z_hca"
  have z_Hfj: "(~?z_hem)" (is "~(_&?z_hen)")
  by (rule zenon_notimply_1 [OF z_Hek])
  show FALSE
  proof (rule zenon_notand [OF z_Hfj])
   assume z_Hez:"(~?z_hcx)"
   show FALSE
   by (rule notE [OF z_Hez z_Hcx])
  next
   assume z_Hfk:"(~?z_hen)" (is "~(_&?z_heo)")
   show FALSE
   proof (rule zenon_notand [OF z_Hfk])
    assume z_Hfb:"(?z_hbo~=?z_hcj)"
    show FALSE
    by (rule notE [OF z_Hfb z_Hci])
   next
    assume z_Hfl:"(~?z_heo)" (is "~(_&?z_hep)")
    show FALSE
    proof (rule zenon_notand [OF z_Hfl])
     assume z_Hfd:"(~?z_hck)"
     show FALSE
     by (rule notE [OF z_Hfd z_Hck])
    next
     assume z_Hfm:"(~?z_hep)" (is "~(_&?z_hea)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfm])
      assume z_Hfn:"(~?z_hdg)"
      show FALSE
      by (rule notE [OF z_Hfn z_Hdg])
     next
      assume z_Hfo:"(~?z_hea)"
      show FALSE
      proof (rule zenon_notand [OF z_Hfo])
       assume z_Hfp:"(~?z_hdh)"
       show FALSE
       by (rule notE [OF z_Hfp z_Hdh])
      next
       assume z_Hfi:"(~?z_hca)"
       show FALSE
       by (rule notE [OF z_Hfi z_Hca])
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L8_: "(~(?z_hcb=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))) ==> (((t[''ret''])[a_punde_1a])=BOT) ==> (((t[''op''])[a_punde_1a])=''U'') ==> (((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)) ==> h29e700f910ac66eea1136a63914adb(a_punde_1a, t) ==> SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a])) ==> a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t) ==> FALSE" (is "?z_hec ==> ?z_hbh ==> ?z_hci ==> ?z_hck ==> ?z_hcm ==> ?z_hcn ==> ?z_hca ==> FALSE")
 proof -
  assume z_Hec:"?z_hec" (is "~(_=>?z_hee)")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  assume z_Hci:"?z_hci" (is "?z_hbo=?z_hcj")
  assume z_Hck:"?z_hck"
  assume z_Hcm:"?z_hcm"
  assume z_Hcn:"?z_hcn"
  assume z_Hca:"?z_hca"
  have z_Hfq: "(~?z_hee)" (is "~(_&?z_hef)")
  by (rule zenon_notimply_1 [OF z_Hec])
  show FALSE
  proof (rule zenon_notand [OF z_Hfq])
   assume z_Hfr:"(?z_hbi~=BOT)"
   show FALSE
   by (rule notE [OF z_Hfr z_Hbh])
  next
   assume z_Hfs:"(~?z_hef)" (is "~(_&?z_heg)")
   show FALSE
   proof (rule zenon_notand [OF z_Hfs])
    assume z_Hfb:"(?z_hbo~=?z_hcj)"
    show FALSE
    by (rule notE [OF z_Hfb z_Hci])
   next
    assume z_Hft:"(~?z_heg)" (is "~(_&?z_heh)")
    show FALSE
    proof (rule zenon_notand [OF z_Hft])
     assume z_Hfd:"(~?z_hck)"
     show FALSE
     by (rule notE [OF z_Hfd z_Hck])
    next
     assume z_Hfu:"(~?z_heh)" (is "~(_&?z_hei)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfu])
      assume z_Hfv:"(~?z_hcm)"
      show FALSE
      by (rule notE [OF z_Hfv z_Hcm])
     next
      assume z_Hfg:"(~?z_hei)"
      show FALSE
      proof (rule zenon_notand [OF z_Hfg])
       assume z_Hfh:"(~?z_hcn)"
       show FALSE
       by (rule notE [OF z_Hfh z_Hcn])
      next
       assume z_Hfi:"(~?z_hca)"
       show FALSE
       by (rule notE [OF z_Hfi z_Hca])
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L9_: "(~(?z_hdk=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))) ==> (((t[''ret''])[a_punde_1a])=BOT) ==> (((t[''op''])[a_punde_1a])=''U'') ==> (((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)) ==> SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])) ==> a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t) ==> FALSE" (is "?z_hdv ==> ?z_hbh ==> ?z_hci ==> ?z_hck ==> ?z_hdh ==> ?z_hca ==> FALSE")
 proof -
  assume z_Hdv:"?z_hdv" (is "~(_=>?z_hdx)")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  assume z_Hci:"?z_hci" (is "?z_hbo=?z_hcj")
  assume z_Hck:"?z_hck"
  assume z_Hdh:"?z_hdh"
  assume z_Hca:"?z_hca"
  have z_Hfw: "(~?z_hdx)" (is "~(_&?z_hdy)")
  by (rule zenon_notimply_1 [OF z_Hdv])
  show FALSE
  proof (rule zenon_notand [OF z_Hfw])
   assume z_Hfr:"(?z_hbi~=BOT)"
   show FALSE
   by (rule notE [OF z_Hfr z_Hbh])
  next
   assume z_Hfx:"(~?z_hdy)" (is "~(_&?z_hdz)")
   show FALSE
   proof (rule zenon_notand [OF z_Hfx])
    assume z_Hfb:"(?z_hbo~=?z_hcj)"
    show FALSE
    by (rule notE [OF z_Hfb z_Hci])
   next
    assume z_Hfy:"(~?z_hdz)" (is "~(_&?z_hea)")
    show FALSE
    proof (rule zenon_notand [OF z_Hfy])
     assume z_Hfd:"(~?z_hck)"
     show FALSE
     by (rule notE [OF z_Hfd z_Hck])
    next
     assume z_Hfo:"(~?z_hea)"
     show FALSE
     proof (rule zenon_notand [OF z_Hfo])
      assume z_Hfp:"(~?z_hdh)"
      show FALSE
      by (rule notE [OF z_Hfp z_Hdh])
     next
      assume z_Hfi:"(~?z_hca)"
      show FALSE
      by (rule notE [OF z_Hfi z_Hca])
     qed
    qed
   qed
  qed
 qed
 have zenon_L10_: "(?z_hcb=>?z_hcd) ==> (?z_hcq=>?z_hcs) ==> ((a_pchash_primea[a_punde_1a])~=''F7'') ==> (((t[''ret''])[a_punde_1a])=BOT) ==> (((t[''op''])[a_punde_1a])=''U'') ==> (((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet)) ==> SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a])) ==> a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t) ==> (~((?z_hy=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((?z_hdk=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((?z_hcb=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&((?z_hdb=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&(?z_hcq=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))))))) ==> (?z_hdb=>?z_hdd) ==> FALSE" (is "?z_hu ==> ?z_hw ==> ?z_hdu ==> ?z_hbh ==> ?z_hci ==> ?z_hck ==> ?z_hdh ==> ?z_hca ==> ?z_hx ==> ?z_hv ==> FALSE")
 proof -
  assume z_Hu:"?z_hu"
  assume z_Hw:"?z_hw"
  assume z_Hdu:"?z_hdu" (is "?z_hz~=?z_hbc")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  assume z_Hci:"?z_hci" (is "?z_hbo=?z_hcj")
  assume z_Hck:"?z_hck"
  assume z_Hdh:"?z_hdh"
  assume z_Hca:"?z_hca"
  assume z_Hx:"?z_hx" (is "~(?z_hdp&?z_hga)")
  assume z_Hv:"?z_hv"
  show FALSE
  proof (rule zenon_imply [OF z_Hu])
   assume z_Hej:"(?z_hz~=''F7U2'')" (is "_~=?z_hcc")
   show FALSE
   proof (rule zenon_imply [OF z_Hv])
    assume z_Heq:"(?z_hz~=''F7U7'')" (is "_~=?z_hdc")
    show FALSE
    proof (rule zenon_imply [OF z_Hw])
     assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L3_ [OF z_Hec z_Hej])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L4_ [OF z_Hek z_Heq])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L5_ [OF z_Her z_Hex])
        qed
       qed
      qed
     qed
    next
     assume z_Hcs:"?z_hcs" (is "?z_hct&_")
     have z_Hct: "?z_hct" (is "?z_hcu&?z_hcn")
     by (rule zenon_and_0 [OF z_Hcs])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hcs])
     have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hda")
     by (rule zenon_and_0 [OF z_Hct])
     have z_Hcn: "?z_hcn"
     by (rule zenon_and_1 [OF z_Hct])
     have z_Hcv: "?z_hcv" (is "?z_hcw&_")
     by (rule zenon_and_0 [OF z_Hcu])
     have z_Hda: "?z_hda"
     by (rule zenon_and_1 [OF z_Hcu])
     have z_Hcw: "?z_hcw" (is "?z_hcx&_")
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hcx: "?z_hcx"
     by (rule zenon_and_0 [OF z_Hcw])
     have z_Hci: "?z_hci"
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L3_ [OF z_Hec z_Hej])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L4_ [OF z_Hek z_Heq])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hdd:"?z_hdd" (is "?z_hde&_")
    have z_Hde: "?z_hde" (is "?z_hdf&_")
    by (rule zenon_and_0 [OF z_Hdd])
    have z_Hca: "?z_hca"
    by (rule zenon_and_1 [OF z_Hdd])
    have z_Hdf: "?z_hdf" (is "?z_hcv&?z_hdg")
    by (rule zenon_and_0 [OF z_Hde])
    have z_Hdh: "?z_hdh"
    by (rule zenon_and_1 [OF z_Hde])
    have z_Hcv: "?z_hcv" (is "?z_hcw&_")
    by (rule zenon_and_0 [OF z_Hdf])
    have z_Hdg: "?z_hdg"
    by (rule zenon_and_1 [OF z_Hdf])
    have z_Hcw: "?z_hcw" (is "?z_hcx&_")
    by (rule zenon_and_0 [OF z_Hcv])
    have z_Hck: "?z_hck"
    by (rule zenon_and_1 [OF z_Hcv])
    have z_Hcx: "?z_hcx"
    by (rule zenon_and_0 [OF z_Hcw])
    have z_Hci: "?z_hci"
    by (rule zenon_and_1 [OF z_Hcw])
    show FALSE
    proof (rule zenon_imply [OF z_Hw])
     assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L3_ [OF z_Hec z_Hej])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L5_ [OF z_Her z_Hex])
        qed
       qed
      qed
     qed
    next
     assume z_Hcs:"?z_hcs" (is "?z_hct&_")
     have z_Hct: "?z_hct" (is "?z_hcu&?z_hcn")
     by (rule zenon_and_0 [OF z_Hcs])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hcs])
     have z_Hcu: "?z_hcu" (is "_&?z_hda")
     by (rule zenon_and_0 [OF z_Hct])
     have z_Hcn: "?z_hcn"
     by (rule zenon_and_1 [OF z_Hct])
     have z_Hcv: "?z_hcv"
     by (rule zenon_and_0 [OF z_Hcu])
     have z_Hda: "?z_hda"
     by (rule zenon_and_1 [OF z_Hcu])
     have z_Hcw: "?z_hcw"
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hcx: "?z_hcx"
     by (rule zenon_and_0 [OF z_Hcw])
     have z_Hci: "?z_hci"
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L3_ [OF z_Hec z_Hej])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
        qed
       qed
      qed
     qed
    qed
   qed
  next
   assume z_Hcd:"?z_hcd" (is "?z_hce&_")
   have z_Hce: "?z_hce" (is "?z_hcf&?z_hcn")
   by (rule zenon_and_0 [OF z_Hcd])
   have z_Hca: "?z_hca"
   by (rule zenon_and_1 [OF z_Hcd])
   have z_Hcf: "?z_hcf" (is "?z_hcg&?z_hcm")
   by (rule zenon_and_0 [OF z_Hce])
   have z_Hcn: "?z_hcn"
   by (rule zenon_and_1 [OF z_Hce])
   have z_Hcg: "?z_hcg" (is "?z_hch&_")
   by (rule zenon_and_0 [OF z_Hcf])
   have z_Hcm: "?z_hcm"
   by (rule zenon_and_1 [OF z_Hcf])
   have z_Hch: "?z_hch"
   by (rule zenon_and_0 [OF z_Hcg])
   have z_Hck: "?z_hck"
   by (rule zenon_and_1 [OF z_Hcg])
   have z_Hbh: "?z_hbh"
   by (rule zenon_and_0 [OF z_Hch])
   have z_Hci: "?z_hci"
   by (rule zenon_and_1 [OF z_Hch])
   show FALSE
   proof (rule zenon_imply [OF z_Hv])
    assume z_Heq:"(?z_hz~=''F7U7'')" (is "_~=?z_hdc")
    show FALSE
    proof (rule zenon_imply [OF z_Hw])
     assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L4_ [OF z_Hek z_Heq])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L5_ [OF z_Her z_Hex])
        qed
       qed
      qed
     qed
    next
     assume z_Hcs:"?z_hcs" (is "?z_hct&_")
     have z_Hct: "?z_hct" (is "?z_hcu&_")
     by (rule zenon_and_0 [OF z_Hcs])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hcs])
     have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hda")
     by (rule zenon_and_0 [OF z_Hct])
     have z_Hcn: "?z_hcn"
     by (rule zenon_and_1 [OF z_Hct])
     have z_Hcv: "?z_hcv" (is "?z_hcw&_")
     by (rule zenon_and_0 [OF z_Hcu])
     have z_Hda: "?z_hda"
     by (rule zenon_and_1 [OF z_Hcu])
     have z_Hcw: "?z_hcw" (is "?z_hcx&_")
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hcx: "?z_hcx"
     by (rule zenon_and_0 [OF z_Hcw])
     have z_Hci: "?z_hci"
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L4_ [OF z_Hek z_Heq])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hdd:"?z_hdd" (is "?z_hde&_")
    have z_Hde: "?z_hde" (is "?z_hdf&_")
    by (rule zenon_and_0 [OF z_Hdd])
    have z_Hca: "?z_hca"
    by (rule zenon_and_1 [OF z_Hdd])
    have z_Hdf: "?z_hdf" (is "?z_hcv&?z_hdg")
    by (rule zenon_and_0 [OF z_Hde])
    have z_Hdh: "?z_hdh"
    by (rule zenon_and_1 [OF z_Hde])
    have z_Hcv: "?z_hcv" (is "?z_hcw&_")
    by (rule zenon_and_0 [OF z_Hdf])
    have z_Hdg: "?z_hdg"
    by (rule zenon_and_1 [OF z_Hdf])
    have z_Hcw: "?z_hcw" (is "?z_hcx&_")
    by (rule zenon_and_0 [OF z_Hcv])
    have z_Hck: "?z_hck"
    by (rule zenon_and_1 [OF z_Hcv])
    have z_Hcx: "?z_hcx"
    by (rule zenon_and_0 [OF z_Hcw])
    have z_Hci: "?z_hci"
    by (rule zenon_and_1 [OF z_Hcw])
    show FALSE
    proof (rule zenon_imply [OF z_Hw])
     assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L5_ [OF z_Her z_Hex])
        qed
       qed
      qed
     qed
    next
     assume z_Hcs:"?z_hcs" (is "?z_hct&_")
     have z_Hct: "?z_hct" (is "?z_hcu&_")
     by (rule zenon_and_0 [OF z_Hcs])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hcs])
     have z_Hcu: "?z_hcu" (is "_&?z_hda")
     by (rule zenon_and_0 [OF z_Hct])
     have z_Hcn: "?z_hcn"
     by (rule zenon_and_1 [OF z_Hct])
     have z_Hcv: "?z_hcv"
     by (rule zenon_and_0 [OF z_Hcu])
     have z_Hda: "?z_hda"
     by (rule zenon_and_1 [OF z_Hcu])
     have z_Hcw: "?z_hcw"
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hcx: "?z_hcx"
     by (rule zenon_and_0 [OF z_Hcw])
     have z_Hci: "?z_hci"
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     proof (rule zenon_notand [OF z_Hx])
      assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
      show FALSE
      by (rule zenon_L1_ [OF z_Hdo z_Hdu])
     next
      assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
      show FALSE
      proof (rule zenon_notand [OF z_Hgd])
       assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
       show FALSE
       by (rule zenon_L9_ [OF z_Hdv z_Hbh z_Hci z_Hck z_Hdh z_Hca])
      next
       assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
       show FALSE
       proof (rule zenon_notand [OF z_Hge])
        assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
        show FALSE
        by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
       next
        assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgf])
         assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
         show FALSE
         by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
        next
         assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
         show FALSE
         by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
        qed
       qed
      qed
     qed
    qed
   qed
  qed
 qed
 have zenon_L11_: "(((t[''op''])[a_punde_1a])=''F'') ==> (((t[''op''])[a_punde_1a])=''U'') ==> FALSE" (is "?z_hbn ==> ?z_hci ==> FALSE")
 proof -
  assume z_Hbn:"?z_hbn" (is "?z_hbo=?z_hbr")
  assume z_Hci:"?z_hci" (is "_=?z_hcj")
  have z_Hgg: "(?z_hcj~=?z_hbr)"
  by auto
  have z_Hgh: "(?z_hbo~=?z_hbo)"
  by (rule zenon_stringdiffll [OF z_Hgg z_Hci z_Hbn])
   show FALSE
   by (rule zenon_noteq [OF z_Hgh])
 qed
 assume z_Hx:"(~((?z_hy=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((?z_hdk=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((?z_hcb=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&((?z_hdb=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&(?z_hcq=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))))))))" (is "~(?z_hdp&?z_hga)")
 show FALSE
 proof (rule zenon_imply [OF z_Hs])
  assume z_Hdu:"((a_pchash_primea[a_punde_1a])~=''F7'')" (is "?z_hz~=?z_hbc")
  show FALSE
  proof (rule zenon_imply [OF z_Ht])
   assume z_Heb:"(?z_hz~=''F7U1'')" (is "_~=?z_hdl")
   show FALSE
   proof (rule zenon_imply [OF z_Hu])
    assume z_Hej:"(?z_hz~=''F7U2'')" (is "_~=?z_hcc")
    show FALSE
    proof (rule zenon_imply [OF z_Hv])
     assume z_Heq:"(?z_hz~=''F7U7'')" (is "_~=?z_hdc")
     show FALSE
     proof (rule zenon_imply [OF z_Hw])
      assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L3_ [OF z_Hec z_Hej])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L4_ [OF z_Hek z_Heq])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L5_ [OF z_Her z_Hex])
         qed
        qed
       qed
      qed
     next
      assume z_Hcs:"?z_hcs" (is "?z_hct&?z_hca")
      have z_Hct: "?z_hct" (is "?z_hcu&?z_hcn")
      by (rule zenon_and_0 [OF z_Hcs])
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hcs])
      have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hda")
      by (rule zenon_and_0 [OF z_Hct])
      have z_Hcn: "?z_hcn"
      by (rule zenon_and_1 [OF z_Hct])
      have z_Hcv: "?z_hcv" (is "?z_hcw&?z_hck")
      by (rule zenon_and_0 [OF z_Hcu])
      have z_Hda: "?z_hda"
      by (rule zenon_and_1 [OF z_Hcu])
      have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hci")
      by (rule zenon_and_0 [OF z_Hcv])
      have z_Hck: "?z_hck"
      by (rule zenon_and_1 [OF z_Hcv])
      have z_Hcx: "?z_hcx"
      by (rule zenon_and_0 [OF z_Hcw])
      have z_Hci: "?z_hci" (is "?z_hbo=?z_hcj")
      by (rule zenon_and_1 [OF z_Hcw])
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L3_ [OF z_Hec z_Hej])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L4_ [OF z_Hek z_Heq])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hdd:"?z_hdd" (is "?z_hde&?z_hca")
     have z_Hde: "?z_hde" (is "?z_hdf&?z_hdh")
     by (rule zenon_and_0 [OF z_Hdd])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hdd])
     have z_Hdf: "?z_hdf" (is "?z_hcv&?z_hdg")
     by (rule zenon_and_0 [OF z_Hde])
     have z_Hdh: "?z_hdh"
     by (rule zenon_and_1 [OF z_Hde])
     have z_Hcv: "?z_hcv" (is "?z_hcw&?z_hck")
     by (rule zenon_and_0 [OF z_Hdf])
     have z_Hdg: "?z_hdg"
     by (rule zenon_and_1 [OF z_Hdf])
     have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hci")
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hcx: "?z_hcx"
     by (rule zenon_and_0 [OF z_Hcw])
     have z_Hci: "?z_hci" (is "?z_hbo=?z_hcj")
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     proof (rule zenon_imply [OF z_Hw])
      assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L3_ [OF z_Hec z_Hej])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L5_ [OF z_Her z_Hex])
         qed
        qed
       qed
      qed
     next
      assume z_Hcs:"?z_hcs" (is "?z_hct&_")
      have z_Hct: "?z_hct" (is "?z_hcu&?z_hcn")
      by (rule zenon_and_0 [OF z_Hcs])
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hcs])
      have z_Hcu: "?z_hcu" (is "_&?z_hda")
      by (rule zenon_and_0 [OF z_Hct])
      have z_Hcn: "?z_hcn"
      by (rule zenon_and_1 [OF z_Hct])
      have z_Hcv: "?z_hcv"
      by (rule zenon_and_0 [OF z_Hcu])
      have z_Hda: "?z_hda"
      by (rule zenon_and_1 [OF z_Hcu])
      have z_Hcw: "?z_hcw"
      by (rule zenon_and_0 [OF z_Hcv])
      have z_Hck: "?z_hck"
      by (rule zenon_and_1 [OF z_Hcv])
      have z_Hcx: "?z_hcx"
      by (rule zenon_and_0 [OF z_Hcw])
      have z_Hci: "?z_hci"
      by (rule zenon_and_1 [OF z_Hcw])
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L3_ [OF z_Hec z_Hej])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L7_ [OF z_Hek z_Hcx z_Hci z_Hck z_Hdg z_Hdh z_Hca])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
         qed
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hcd:"?z_hcd" (is "?z_hce&?z_hca")
    have z_Hce: "?z_hce" (is "?z_hcf&?z_hcn")
    by (rule zenon_and_0 [OF z_Hcd])
    have z_Hca: "?z_hca"
    by (rule zenon_and_1 [OF z_Hcd])
    have z_Hcf: "?z_hcf" (is "?z_hcg&?z_hcm")
    by (rule zenon_and_0 [OF z_Hce])
    have z_Hcn: "?z_hcn"
    by (rule zenon_and_1 [OF z_Hce])
    have z_Hcg: "?z_hcg" (is "?z_hch&?z_hck")
    by (rule zenon_and_0 [OF z_Hcf])
    have z_Hcm: "?z_hcm"
    by (rule zenon_and_1 [OF z_Hcf])
    have z_Hch: "?z_hch" (is "?z_hbh&?z_hci")
    by (rule zenon_and_0 [OF z_Hcg])
    have z_Hck: "?z_hck"
    by (rule zenon_and_1 [OF z_Hcg])
    have z_Hbh: "?z_hbh" (is "?z_hbi=_")
    by (rule zenon_and_0 [OF z_Hch])
    have z_Hci: "?z_hci" (is "?z_hbo=?z_hcj")
    by (rule zenon_and_1 [OF z_Hch])
    show FALSE
    proof (rule zenon_imply [OF z_Hv])
     assume z_Heq:"(?z_hz~=''F7U7'')" (is "_~=?z_hdc")
     show FALSE
     proof (rule zenon_imply [OF z_Hw])
      assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L4_ [OF z_Hek z_Heq])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L5_ [OF z_Her z_Hex])
         qed
        qed
       qed
      qed
     next
      assume z_Hcs:"?z_hcs" (is "?z_hct&_")
      have z_Hct: "?z_hct" (is "?z_hcu&_")
      by (rule zenon_and_0 [OF z_Hcs])
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hcs])
      have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hda")
      by (rule zenon_and_0 [OF z_Hct])
      have z_Hcn: "?z_hcn"
      by (rule zenon_and_1 [OF z_Hct])
      have z_Hcv: "?z_hcv" (is "?z_hcw&_")
      by (rule zenon_and_0 [OF z_Hcu])
      have z_Hda: "?z_hda"
      by (rule zenon_and_1 [OF z_Hcu])
      have z_Hcw: "?z_hcw" (is "?z_hcx&_")
      by (rule zenon_and_0 [OF z_Hcv])
      have z_Hck: "?z_hck"
      by (rule zenon_and_1 [OF z_Hcv])
      have z_Hcx: "?z_hcx"
      by (rule zenon_and_0 [OF z_Hcw])
      have z_Hci: "?z_hci"
      by (rule zenon_and_1 [OF z_Hcw])
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       show FALSE
       by (rule zenon_L1_ [OF z_Hdo z_Hdu])
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L8_ [OF z_Hec z_Hbh z_Hci z_Hck z_Hcm z_Hcn z_Hca])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L4_ [OF z_Hek z_Heq])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L6_ [OF z_Her z_Hcx z_Hci z_Hck z_Hda z_Hcn z_Hca])
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hdd:"?z_hdd" (is "?z_hde&_")
     have z_Hde: "?z_hde" (is "?z_hdf&?z_hdh")
     by (rule zenon_and_0 [OF z_Hdd])
     have z_Hca: "?z_hca"
     by (rule zenon_and_1 [OF z_Hdd])
     have z_Hdf: "?z_hdf" (is "?z_hcv&?z_hdg")
     by (rule zenon_and_0 [OF z_Hde])
     have z_Hdh: "?z_hdh"
     by (rule zenon_and_1 [OF z_Hde])
     have z_Hcv: "?z_hcv" (is "?z_hcw&_")
     by (rule zenon_and_0 [OF z_Hdf])
     have z_Hcw: "?z_hcw" (is "?z_hcx&_")
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hck: "?z_hck"
     by (rule zenon_and_1 [OF z_Hcv])
     have z_Hci: "?z_hci"
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     by (rule zenon_L10_ [OF z_Hu z_Hw z_Hdu z_Hbh z_Hci z_Hck z_Hdh z_Hca z_Hx z_Hv])
    qed
   qed
  next
   assume z_Hdm:"?z_hdm" (is "?z_hdn&?z_hca")
   have z_Hdn: "?z_hdn" (is "?z_hcg&?z_hdh")
   by (rule zenon_and_0 [OF z_Hdm])
   have z_Hca: "?z_hca"
   by (rule zenon_and_1 [OF z_Hdm])
   have z_Hcg: "?z_hcg" (is "?z_hch&?z_hck")
   by (rule zenon_and_0 [OF z_Hdn])
   have z_Hdh: "?z_hdh"
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hch: "?z_hch" (is "?z_hbh&?z_hci")
   by (rule zenon_and_0 [OF z_Hcg])
   have z_Hck: "?z_hck"
   by (rule zenon_and_1 [OF z_Hcg])
   have z_Hbh: "?z_hbh" (is "?z_hbi=_")
   by (rule zenon_and_0 [OF z_Hch])
   have z_Hci: "?z_hci" (is "?z_hbo=?z_hcj")
   by (rule zenon_and_1 [OF z_Hch])
   show FALSE
   by (rule zenon_L10_ [OF z_Hu z_Hw z_Hdu z_Hbh z_Hci z_Hck z_Hdh z_Hca z_Hx z_Hv])
  qed
 next
  assume z_Hbd:"?z_hbd" (is "?z_hbe&?z_hca")
  have z_Hbe: "?z_hbe" (is "?z_hbf&?z_hbx")
  by (rule zenon_and_0 [OF z_Hbd])
  have z_Hca: "?z_hca"
  by (rule zenon_and_1 [OF z_Hbd])
  have z_Hbf: "?z_hbf" (is "?z_hbg&?z_hbs")
  by (rule zenon_and_0 [OF z_Hbe])
  have z_Hbx: "?z_hbx"
  by (rule zenon_and_1 [OF z_Hbe])
  have z_Hbg: "?z_hbg" (is "?z_hbh&?z_hbn")
  by (rule zenon_and_0 [OF z_Hbf])
  have z_Hbs: "?z_hbs"
  by (rule zenon_and_1 [OF z_Hbf])
  have z_Hbh: "?z_hbh" (is "?z_hbi=_")
  by (rule zenon_and_0 [OF z_Hbg])
  have z_Hbn: "?z_hbn" (is "?z_hbo=?z_hbr")
  by (rule zenon_and_1 [OF z_Hbg])
  show FALSE
  proof (rule zenon_imply [OF z_Ht])
   assume z_Heb:"((a_pchash_primea[a_punde_1a])~=''F7U1'')" (is "?z_hz~=?z_hdl")
   show FALSE
   proof (rule zenon_imply [OF z_Hu])
    assume z_Hej:"(?z_hz~=''F7U2'')" (is "_~=?z_hcc")
    show FALSE
    proof (rule zenon_imply [OF z_Hv])
     assume z_Heq:"(?z_hz~=''F7U7'')" (is "_~=?z_hdc")
     show FALSE
     proof (rule zenon_imply [OF z_Hw])
      assume z_Hex:"(?z_hz~=''F7U8'')" (is "_~=?z_hcr")
      show FALSE
      proof (rule zenon_notand [OF z_Hx])
       assume z_Hdo:"(~?z_hdp)" (is "~(_=>?z_hdq)")
       have z_Hgi: "(~?z_hdq)" (is "~(_&?z_hdr)")
       by (rule zenon_notimply_1 [OF z_Hdo])
       show FALSE
       proof (rule zenon_notand [OF z_Hgi])
        assume z_Hfr:"(?z_hbi~=BOT)"
        show FALSE
        by (rule notE [OF z_Hfr z_Hbh])
       next
        assume z_Hgj:"(~?z_hdr)" (is "~(_&?z_hds)")
        show FALSE
        proof (rule zenon_notand [OF z_Hgj])
         assume z_Hgk:"(?z_hbo~=?z_hbr)"
         show FALSE
         by (rule notE [OF z_Hgk z_Hbn])
        next
         assume z_Hgl:"(~?z_hds)" (is "~(_&?z_hdt)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgl])
          assume z_Hgm:"(~?z_hbs)"
          show FALSE
          by (rule notE [OF z_Hgm z_Hbs])
         next
          assume z_Hgn:"(~?z_hdt)"
          show FALSE
          proof (rule zenon_notand [OF z_Hgn])
           assume z_Hgo:"(~?z_hbx)"
           show FALSE
           by (rule notE [OF z_Hgo z_Hbx])
          next
           assume z_Hfi:"(~?z_hca)"
           show FALSE
           by (rule notE [OF z_Hfi z_Hca])
          qed
         qed
        qed
       qed
      next
       assume z_Hgd:"(~?z_hga)" (is "~(?z_hdw&?z_hgb)")
       show FALSE
       proof (rule zenon_notand [OF z_Hgd])
        assume z_Hdv:"(~?z_hdw)" (is "~(_=>?z_hdx)")
        show FALSE
        by (rule zenon_L2_ [OF z_Hdv z_Heb])
       next
        assume z_Hge:"(~?z_hgb)" (is "~(?z_hed&?z_hgc)")
        show FALSE
        proof (rule zenon_notand [OF z_Hge])
         assume z_Hec:"(~?z_hed)" (is "~(_=>?z_hee)")
         show FALSE
         by (rule zenon_L3_ [OF z_Hec z_Hej])
        next
         assume z_Hgf:"(~?z_hgc)" (is "~(?z_hel&?z_hes)")
         show FALSE
         proof (rule zenon_notand [OF z_Hgf])
          assume z_Hek:"(~?z_hel)" (is "~(_=>?z_hem)")
          show FALSE
          by (rule zenon_L4_ [OF z_Hek z_Heq])
         next
          assume z_Her:"(~?z_hes)" (is "~(_=>?z_het)")
          show FALSE
          by (rule zenon_L5_ [OF z_Her z_Hex])
         qed
        qed
       qed
      qed
     next
      assume z_Hcs:"?z_hcs" (is "?z_hct&_")
      have z_Hct: "?z_hct" (is "?z_hcu&?z_hcn")
      by (rule zenon_and_0 [OF z_Hcs])
      have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hda")
      by (rule zenon_and_0 [OF z_Hct])
      have z_Hcv: "?z_hcv" (is "?z_hcw&?z_hck")
      by (rule zenon_and_0 [OF z_Hcu])
      have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hci")
      by (rule zenon_and_0 [OF z_Hcv])
      have z_Hci: "?z_hci" (is "_=?z_hcj")
      by (rule zenon_and_1 [OF z_Hcw])
      show FALSE
      by (rule zenon_L11_ [OF z_Hbn z_Hci])
     qed
    next
     assume z_Hdd:"?z_hdd" (is "?z_hde&_")
     have z_Hde: "?z_hde" (is "?z_hdf&?z_hdh")
     by (rule zenon_and_0 [OF z_Hdd])
     have z_Hdf: "?z_hdf" (is "?z_hcv&?z_hdg")
     by (rule zenon_and_0 [OF z_Hde])
     have z_Hcv: "?z_hcv" (is "?z_hcw&?z_hck")
     by (rule zenon_and_0 [OF z_Hdf])
     have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hci")
     by (rule zenon_and_0 [OF z_Hcv])
     have z_Hci: "?z_hci" (is "_=?z_hcj")
     by (rule zenon_and_1 [OF z_Hcw])
     show FALSE
     by (rule zenon_L11_ [OF z_Hbn z_Hci])
    qed
   next
    assume z_Hcd:"?z_hcd" (is "?z_hce&_")
    have z_Hce: "?z_hce" (is "?z_hcf&?z_hcn")
    by (rule zenon_and_0 [OF z_Hcd])
    have z_Hcf: "?z_hcf" (is "?z_hcg&?z_hcm")
    by (rule zenon_and_0 [OF z_Hce])
    have z_Hcg: "?z_hcg" (is "?z_hch&?z_hck")
    by (rule zenon_and_0 [OF z_Hcf])
    have z_Hch: "?z_hch" (is "_&?z_hci")
    by (rule zenon_and_0 [OF z_Hcg])
    have z_Hci: "?z_hci" (is "_=?z_hcj")
    by (rule zenon_and_1 [OF z_Hch])
    show FALSE
    by (rule zenon_L11_ [OF z_Hbn z_Hci])
   qed
  next
   assume z_Hdm:"?z_hdm" (is "?z_hdn&_")
   have z_Hdn: "?z_hdn" (is "?z_hcg&?z_hdh")
   by (rule zenon_and_0 [OF z_Hdm])
   have z_Hcg: "?z_hcg" (is "?z_hch&?z_hck")
   by (rule zenon_and_0 [OF z_Hdn])
   have z_Hch: "?z_hch" (is "_&?z_hci")
   by (rule zenon_and_0 [OF z_Hcg])
   have z_Hci: "?z_hci" (is "_=?z_hcj")
   by (rule zenon_and_1 [OF z_Hch])
   show FALSE
   by (rule zenon_L11_ [OF z_Hbn z_Hci])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 209"; *} qed
lemma ob'215:
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
assumes v'107: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t)))))))))) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'108: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'110: "((((((((((fapply ((pc), (p))) = (''FR''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))))) \<and> ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((fapply ((fapply ((told), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))) & (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)]))))))))))) | (((((((((fapply ((pc), (p))) = (''FRU1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U2'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U8'')]))))) \<and> ((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))) | (((((((((fapply ((pc), (p))) = (''FRU8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U3'')]))))) \<and> ((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((a_uunde_Fa), (p)))]))))) \<and> ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'111: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'112: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'113: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'114: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'117: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'118: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'119: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'120: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'121: "((((a_dhash_primea :: c)) = (d)))"
assumes v'125: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'135: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h922edcc313eb8f84ff6fd24d1bdf68a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'215")
proof -
ML_command {* writeln "*** TLAPS ENTER 215"; *}
show "PROP ?ob'215"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_718226.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_718226.znn.out
;; obligation #215
$hyp "v'107" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
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
a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'108" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'110" (\/ (/\ (/\ (/\ (= (TLA.fapply pc p) "FR") (= a_pchash_primea
(TLA.except pc p "0"))) (= a_uunde_Uhash_primea a_uunde_Ua))
(= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
(TLA.fapply a_uunde_Fa p)) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "ret")
(TLA.except (TLA.fapply told "ret") p BOT)) (= (TLA.fapply t "op")
(TLA.except (TLA.fapply told "op") p BOT)) (= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU1") (= a_pchash_primea
(TLA.except pc p "U2"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU2") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU7") (= a_pchash_primea
(TLA.except pc p "U8"))) (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea M))
(/\ (/\ (/\ (= (TLA.fapply pc p) "FRU8") (= a_pchash_primea
(TLA.except pc p "U3"))) (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply a_uunde_Fa p)))) (= a_Mhash_primea
M)))
$hyp "v'111" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'112" (= a_Fhash_primea F)
$hyp "v'113" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'114" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'117" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'118" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'119" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'120" (= a_chash_primea a_ca)
$hyp "v'121" (= a_dhash_primea
d)
$hyp "v'125" a_hef12f5554781c2213604492856f635a
$hyp "v'135" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
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
 have z_Hq:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F7'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F7U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F7U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F7U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F7U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h922edcc313eb8f84ff6fd24d1bdf68a(a_punde_1a, t)))))))))))))))" (is "?z_hq")
 using v'135 by blast
 assume z_Hr:"(~?z_hq)"
 show FALSE
 by (rule notE [OF z_Hr z_Hq])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 215"; *} qed
end
