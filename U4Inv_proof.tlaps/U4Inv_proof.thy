(* automatically generated -- do not edit manually *)
theory U4Inv_proof imports Constant Zenon begin
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

lemma ob'605:
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
(* usable definition FR suppressed *)
(* usable definition U1 suppressed *)
(* usable definition U2 suppressed *)
(* usable definition U3 suppressed *)
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
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
(* usable definition InvF1All suppressed *)
(* usable definition InvF2All suppressed *)
(* usable definition InvF3All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'104: "(Inv)"
assumes v'105: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'107: "(((fapply ((pc), (p))) = (''U4'')))"
assumes v'108: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U5'')])))"
assumes v'109: "((((a_aunde_Uhash_primea :: c)) = ([(a_aunde_Ua) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Ua), (p)))))])))"
assumes v'110: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'111: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'112: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'113: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'114: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'115: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'116: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'117: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'118: "((((a_dhash_primea :: c)) = (d)))"
assumes v'119: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'123: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'133: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1)))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1)))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1)))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1)))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'140: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F7'')))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'605")
proof -
ML_command {* writeln "*** TLAPS ENTER 605"; *}
show "PROP ?ob'605"

(* BEGIN ZENON INPUT
;; file=U4Inv_proof.tlaps/tlapm_a50c6e.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U4Inv_proof.tlaps/tlapm_a50c6e.znn.out
;; obligation #605
$hyp "v'104" Inv
$hyp "v'105" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'107" (= (TLA.fapply pc p) "U4")
$hyp "v'108" (= a_pchash_primea
(TLA.except pc p "U5"))
$hyp "v'109" (= a_aunde_Uhash_primea
(TLA.except a_aunde_Ua p (TLA.fapply F (TLA.fapply a_uunde_Ua p))))
$hyp "v'110" (= a_Fhash_primea F)
$hyp "v'111" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'112" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'113" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'114" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'115" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'116" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'117" (= a_chash_primea a_ca)
$hyp "v'118" (= a_dhash_primea d)
$hyp "v'119" (= a_Mhash_primea M)
$hyp "v'123" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'133" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F7") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(\/ (= (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank"))
(arith.le (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))))))
(\/ (= (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F7U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(\/ (= (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank"))
(arith.le (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))))))
(\/ (= (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F7U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(\/ (= (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank"))
(arith.le (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))))))
(\/ (= (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F7U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(\/ (= (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank"))
(arith.le (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))))))
(\/ (= (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F7U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(\/ (= (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca p_1)) "rank"))
(arith.le (TLA.fapply a_ca p_1) (TLA.fapply a_uunde_Fa p_1))))))
(\/ (= (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa p_1)
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'140" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F7")
$goal (\/ (= (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_chash_primea a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_chash_primea a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_chash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_chash_primea a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hq:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hw&?z_hdd")
 using v'123 by blast
 have z_Hh:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'111 by blast
 have z_Hp:"(a_Mhash_primea=M)"
 using v'119 by blast
 have z_He:"(a_pchash_primea=except(pc, p, ''U5''))" (is "_=?z_hec")
 using v'108 by blast
 have z_Hg:"(a_Fhash_primea=F)"
 using v'110 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'117 by blast
 have z_Hr:"bAll(PROCESSES, (\<lambda>p_1. bAll(M, (\<lambda>t. ((((pc[p_1])=''F7'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''F'')&((((t[''arg''])[p_1]) \\in NodeSet)&((((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))&((((a_ca[p_1])=(a_uunde_Fa[p_1]))|((((F[(a_ca[p_1])])[''bit''])=1)|((((F[(a_ca[p_1])])[''bit''])=0)&((((F[(a_ca[p_1])])[''rank'']) < ((F[(a_uunde_Fa[p_1])])[''rank'']))|((((F[(a_uunde_Fa[p_1])])[''rank''])=((F[(a_ca[p_1])])[''rank'']))&((a_ca[p_1]) <= (a_uunde_Fa[p_1])))))))&(((a_uunde_Fa[p_1])=((a_aunde_Fa[p_1])[''parent'']))|((((F[(a_uunde_Fa[p_1])])[''bit''])=1)|((((F[(a_uunde_Fa[p_1])])[''bit''])=0)&((((F[(a_uunde_Fa[p_1])])[''rank'']) < ((F[((a_aunde_Fa[p_1])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[p_1])[''parent''])])[''rank''])=((F[(a_uunde_Fa[p_1])])[''rank'']))&((a_uunde_Fa[p_1]) <= ((a_aunde_Fa[p_1])[''parent'']))))))))))))))&((((pc[p_1])=''F7U1'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))&((((a_ca[p_1])=(a_uunde_Fa[p_1]))|((((F[(a_ca[p_1])])[''bit''])=1)|((((F[(a_ca[p_1])])[''bit''])=0)&((((F[(a_ca[p_1])])[''rank'']) < ((F[(a_uunde_Fa[p_1])])[''rank'']))|((((F[(a_uunde_Fa[p_1])])[''rank''])=((F[(a_ca[p_1])])[''rank'']))&((a_ca[p_1]) <= (a_uunde_Fa[p_1])))))))&(((a_uunde_Fa[p_1])=((a_aunde_Fa[p_1])[''parent'']))|((((F[(a_uunde_Fa[p_1])])[''bit''])=1)|((((F[(a_uunde_Fa[p_1])])[''bit''])=0)&((((F[(a_uunde_Fa[p_1])])[''rank'']) < ((F[((a_aunde_Fa[p_1])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[p_1])[''parent''])])[''rank''])=((F[(a_uunde_Fa[p_1])])[''rank'']))&((a_uunde_Fa[p_1]) <= ((a_aunde_Fa[p_1])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_uunde_Ua[p_1])])))))))&((((pc[p_1])=''F7U2'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU2All(p_1, t)&(((((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))&((((a_ca[p_1])=(a_uunde_Fa[p_1]))|((((F[(a_ca[p_1])])[''bit''])=1)|((((F[(a_ca[p_1])])[''bit''])=0)&((((F[(a_ca[p_1])])[''rank'']) < ((F[(a_uunde_Fa[p_1])])[''rank'']))|((((F[(a_uunde_Fa[p_1])])[''rank''])=((F[(a_ca[p_1])])[''rank'']))&((a_ca[p_1]) <= (a_uunde_Fa[p_1])))))))&(((a_uunde_Fa[p_1])=((a_aunde_Fa[p_1])[''parent'']))|((((F[(a_uunde_Fa[p_1])])[''bit''])=1)|((((F[(a_uunde_Fa[p_1])])[''bit''])=0)&((((F[(a_uunde_Fa[p_1])])[''rank'']) < ((F[((a_aunde_Fa[p_1])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[p_1])[''parent''])])[''rank''])=((F[(a_uunde_Fa[p_1])])[''rank'']))&((a_uunde_Fa[p_1]) <= ((a_aunde_Fa[p_1])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_vunde_Ua[p_1])]))))))))&((((pc[p_1])=''F7U7'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU7All(p_1, t)&(((((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))&((((a_ca[p_1])=(a_uunde_Fa[p_1]))|((((F[(a_ca[p_1])])[''bit''])=1)|((((F[(a_ca[p_1])])[''bit''])=0)&((((F[(a_ca[p_1])])[''rank'']) < ((F[(a_uunde_Fa[p_1])])[''rank'']))|((((F[(a_uunde_Fa[p_1])])[''rank''])=((F[(a_ca[p_1])])[''rank'']))&((a_ca[p_1]) <= (a_uunde_Fa[p_1])))))))&(((a_uunde_Fa[p_1])=((a_aunde_Fa[p_1])[''parent'']))|((((F[(a_uunde_Fa[p_1])])[''bit''])=1)|((((F[(a_uunde_Fa[p_1])])[''bit''])=0)&((((F[(a_uunde_Fa[p_1])])[''rank'']) < ((F[((a_aunde_Fa[p_1])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[p_1])[''parent''])])[''rank''])=((F[(a_uunde_Fa[p_1])])[''rank'']))&((a_uunde_Fa[p_1]) <= ((a_aunde_Fa[p_1])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_uunde_Ua[p_1])]))))))))&(((pc[p_1])=''F7U8'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU8All(p_1, t)&(((((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[p_1])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))&((((a_ca[p_1])=(a_uunde_Fa[p_1]))|((((F[(a_ca[p_1])])[''bit''])=1)|((((F[(a_ca[p_1])])[''bit''])=0)&((((F[(a_ca[p_1])])[''rank'']) < ((F[(a_uunde_Fa[p_1])])[''rank'']))|((((F[(a_uunde_Fa[p_1])])[''rank''])=((F[(a_ca[p_1])])[''rank'']))&((a_ca[p_1]) <= (a_uunde_Fa[p_1])))))))&(((a_uunde_Fa[p_1])=((a_aunde_Fa[p_1])[''parent'']))|((((F[(a_uunde_Fa[p_1])])[''bit''])=1)|((((F[(a_uunde_Fa[p_1])])[''bit''])=0)&((((F[(a_uunde_Fa[p_1])])[''rank'']) < ((F[((a_aunde_Fa[p_1])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[p_1])[''parent''])])[''rank''])=((F[(a_uunde_Fa[p_1])])[''rank'']))&((a_uunde_Fa[p_1]) <= ((a_aunde_Fa[p_1])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_vunde_Ua[p_1])]))))))))))))))))" (is "?z_hr")
 using v'133 by blast
 have z_Hu:"((a_pchash_primea[a_punde_1a])=''F7'')" (is "?z_hiz=?z_hbi")
 using v'140 by blast
 have z_Hs:"(a_punde_1a \\in PROCESSES)" (is "?z_hs")
 using a_punde_1a_in by blast
 have z_Ht:"(t \\in a_Mhash_primea)" (is "?z_ht")
 using t_in by blast
 have zenon_L1_: "(''U5''=?z_hbi) ==> FALSE" (is "?z_hjb ==> FALSE")
 proof -
  assume z_Hjb:"?z_hjb" (is "?z_hbo=_")
  have z_Hjc: "(?z_hbo~=?z_hbi)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hjc z_Hjb])
 qed
 have zenon_L2_: "(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a]))))))) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=0) ==> FALSE" (is "?z_hjd ==> ?z_hjv ==> ?z_hjw ==> ?z_hjx ==> FALSE")
 proof -
  assume z_Hjd:"?z_hjd" (is "?z_hje|?z_hjh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hjw:"?z_hjw" (is "?z_hjj~=?z_hgh")
  assume z_Hjx:"?z_hjx"
  show FALSE
  proof (rule zenon_or [OF z_Hjd])
   assume z_Hje:"?z_hje"
   show FALSE
   by (rule notE [OF z_Hjv z_Hje])
  next
   assume z_Hjh:"?z_hjh" (is "?z_hji|?z_hjl")
   show FALSE
   proof (rule zenon_or [OF z_Hjh])
    assume z_Hji:"?z_hji"
    show FALSE
    by (rule notE [OF z_Hjw z_Hji])
   next
    assume z_Hjl:"?z_hjl" (is "?z_hjm&?z_hjn")
    have z_Hjm: "?z_hjm"
    by (rule zenon_and_0 [OF z_Hjl])
    show FALSE
    by (rule notE [OF z_Hjx z_Hjm])
   qed
  qed
 qed
 have zenon_L3_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=?z_hbi)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))))))&((((pc[x])=''F7U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&((((pc[x])=''F7U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))&((((pc[x])=''F7U7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))))&(((pc[x])=''F7U8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))))))))))) ==> ?z_hs ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=0) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> ((pc[a_punde_1a])=?z_hbi) ==> (t \\in M) ==> FALSE" (is "?z_hjy ==> _ ==> ?z_hjx ==> ?z_hjw ==> ?z_hjv ==> ?z_hnu ==> ?z_hnw ==> FALSE")
 proof -
  assume z_Hjy:"?z_hjy" (is "\\A x : ?z_hnx(x)")
  assume z_Hs:"?z_hs"
  assume z_Hjx:"?z_hjx" (is "?z_hjj~=_")
  assume z_Hjw:"?z_hjw" (is "_~=?z_hgh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hnu:"?z_hnu" (is "?z_hnv=_")
  assume z_Hnw:"?z_hnw"
  have z_Hny: "?z_hnx(a_punde_1a)" (is "_=>?z_hnz")
  by (rule zenon_all_0 [of "?z_hnx" "a_punde_1a", OF z_Hjy])
  show FALSE
  proof (rule zenon_imply [OF z_Hny])
   assume z_Hoa:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hoa z_Hs])
  next
   assume z_Hnz:"?z_hnz"
   have z_Hob_z_Hnz: "(\\A x:((x \\in M)=>((?z_hnu=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&((((F[?z_hjf])[''rank'']) < ((F[?z_hjg])[''rank'']))|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))))))&(((?z_hnv=''F7U1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&((((F[?z_hjf])[''rank'']) < ((F[?z_hjg])[''rank'']))|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&(((?z_hnv=''F7U2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&((((F[?z_hjf])[''rank'']) < ((F[?z_hjg])[''rank'']))|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))&(((?z_hnv=''F7U7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&((((F[?z_hjf])[''rank'']) < ((F[?z_hjg])[''rank'']))|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))))&((?z_hnv=''F7U8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&((((F[?z_hjf])[''rank'']) < ((F[?z_hjg])[''rank'']))|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))))))))) == ?z_hnz" (is "?z_hob == _")
   by (unfold bAll_def)
   have z_Hob: "?z_hob" (is "\\A x : ?z_hre(x)")
   by (unfold z_Hob_z_Hnz, fact z_Hnz)
   have z_Hrf: "?z_hre(t)" (is "_=>?z_hrg")
   by (rule zenon_all_0 [of "?z_hre" "t", OF z_Hob])
   show FALSE
   proof (rule zenon_imply [OF z_Hrf])
    assume z_Hrh:"(~?z_hnw)"
    show FALSE
    by (rule notE [OF z_Hrh z_Hnw])
   next
    assume z_Hrg:"?z_hrg" (is "?z_hri&?z_hrj")
    have z_Hri: "?z_hri" (is "_=>?z_hrk")
    by (rule zenon_and_0 [OF z_Hrg])
    show FALSE
    proof (rule zenon_imply [OF z_Hri])
     assume z_Hrl:"(?z_hnv~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hrl z_Hnu])
    next
     assume z_Hrk:"?z_hrk" (is "?z_hrm&?z_hrn")
     have z_Hrn: "?z_hrn" (is "?z_hro&?z_hrp")
     by (rule zenon_and_1 [OF z_Hrk])
     have z_Hrp: "?z_hrp" (is "?z_hrq&?z_hrr")
     by (rule zenon_and_1 [OF z_Hrn])
     have z_Hrr: "?z_hrr" (is "?z_hrs&?z_hrt")
     by (rule zenon_and_1 [OF z_Hrp])
     have z_Hrt: "?z_hrt" (is "?z_hru&?z_hpc")
     by (rule zenon_and_1 [OF z_Hrr])
     have z_Hpc: "?z_hpc" (is "?z_hjd&?z_hpd")
     by (rule zenon_and_1 [OF z_Hrt])
     have z_Hjd: "?z_hjd" (is "?z_hje|?z_hjh")
     by (rule zenon_and_0 [OF z_Hpc])
     show FALSE
     by (rule zenon_L2_ [OF z_Hjd z_Hjv z_Hjw z_Hjx])
    qed
   qed
  qed
 qed
 have zenon_L4_: "(DOMAIN(?z_hec)=PROCESSES) ==> (~(a_punde_1a \\in DOMAIN(pc))) ==> ?z_hs ==> FALSE" (is "?z_hrv ==> ?z_hrx ==> _ ==> FALSE")
 proof -
  assume z_Hrv:"?z_hrv" (is "?z_hrw=_")
  assume z_Hrx:"?z_hrx" (is "~?z_hry")
  assume z_Hs:"?z_hs"
  have z_Hsa: "(\\A zenon_Vnd:((zenon_Vnd \\in ?z_hrw)<=>(zenon_Vnd \\in PROCESSES)))" (is "\\A x : ?z_hsf(x)")
  by (rule zenon_setequal_0 [of "?z_hrw" "PROCESSES", OF z_Hrv])
  have z_Hsg: "?z_hsf(a_punde_1a)" (is "?z_hsh<=>_")
  by (rule zenon_all_0 [of "?z_hsf" "a_punde_1a", OF z_Hsa])
  show FALSE
  proof (rule zenon_equiv [OF z_Hsg])
   assume z_Hsi:"(~?z_hsh)"
   assume z_Hoa:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hoa z_Hs])
  next
   assume z_Hsh:"?z_hsh"
   assume z_Hs:"?z_hs"
   have z_Hry: "?z_hry"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vtka. (a_punde_1a \\in zenon_Vtka))" "pc" "p" "''U5''", OF z_Hsh])
   show FALSE
   by (rule notE [OF z_Hrx z_Hry])
  qed
 qed
 have zenon_L5_: "(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a]))))))) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank''])~=((F[(a_ca[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hjd ==> ?z_hjv ==> ?z_hjw ==> ?z_hsm ==> ?z_hsn ==> FALSE")
 proof -
  assume z_Hjd:"?z_hjd" (is "?z_hje|?z_hjh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hjw:"?z_hjw" (is "?z_hjj~=?z_hgh")
  assume z_Hsm:"?z_hsm" (is "~?z_hjo")
  assume z_Hsn:"?z_hsn" (is "?z_hjq~=?z_hjp")
  show FALSE
  proof (rule zenon_or [OF z_Hjd])
   assume z_Hje:"?z_hje"
   show FALSE
   by (rule notE [OF z_Hjv z_Hje])
  next
   assume z_Hjh:"?z_hjh" (is "?z_hji|?z_hjl")
   show FALSE
   proof (rule zenon_or [OF z_Hjh])
    assume z_Hji:"?z_hji"
    show FALSE
    by (rule notE [OF z_Hjw z_Hji])
   next
    assume z_Hjl:"?z_hjl" (is "?z_hjm&?z_hjn")
    have z_Hjn: "?z_hjn" (is "_|?z_hjs")
    by (rule zenon_and_1 [OF z_Hjl])
    show FALSE
    proof (rule zenon_or [OF z_Hjn])
     assume z_Hjo:"?z_hjo"
     show FALSE
     by (rule notE [OF z_Hsm z_Hjo])
    next
     assume z_Hjs:"?z_hjs" (is "?z_hjt&?z_hju")
     have z_Hjt: "?z_hjt"
     by (rule zenon_and_0 [OF z_Hjs])
     show FALSE
     by (rule notE [OF z_Hsn z_Hjt])
    qed
   qed
  qed
 qed
 have zenon_L6_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=?z_hbi)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))))))&((((pc[x])=''F7U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&((((pc[x])=''F7U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))&((((pc[x])=''F7U7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))))&(((pc[x])=''F7U8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))))))))))) ==> ?z_hs ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank''])~=((F[(a_ca[a_punde_1a])])[''rank''])) ==> (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> ((pc[a_punde_1a])=?z_hbi) ==> (t \\in M) ==> FALSE" (is "?z_hjy ==> _ ==> ?z_hsn ==> ?z_hsm ==> ?z_hjw ==> ?z_hjv ==> ?z_hnu ==> ?z_hnw ==> FALSE")
 proof -
  assume z_Hjy:"?z_hjy" (is "\\A x : ?z_hnx(x)")
  assume z_Hs:"?z_hs"
  assume z_Hsn:"?z_hsn" (is "?z_hjq~=?z_hjp")
  assume z_Hsm:"?z_hsm" (is "~?z_hjo")
  assume z_Hjw:"?z_hjw" (is "?z_hjj~=?z_hgh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hnu:"?z_hnu" (is "?z_hnv=_")
  assume z_Hnw:"?z_hnw"
  have z_Hny: "?z_hnx(a_punde_1a)" (is "_=>?z_hnz")
  by (rule zenon_all_0 [of "?z_hnx" "a_punde_1a", OF z_Hjy])
  show FALSE
  proof (rule zenon_imply [OF z_Hny])
   assume z_Hoa:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hoa z_Hs])
  next
   assume z_Hnz:"?z_hnz"
   have z_Hob_z_Hnz: "(\\A x:((x \\in M)=>((?z_hnu=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((?z_hjq=?z_hjp)&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((?z_hjq < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=?z_hjq)&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))))))&(((?z_hnv=''F7U1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((?z_hjq=?z_hjp)&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((?z_hjq < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=?z_hjq)&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&(((?z_hnv=''F7U2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((?z_hjq=?z_hjp)&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((?z_hjq < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=?z_hjq)&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))&(((?z_hnv=''F7U7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((?z_hjq=?z_hjp)&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((?z_hjq < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=?z_hjq)&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))))&((?z_hnv=''F7U8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((?z_hjq=?z_hjp)&(?z_hjf <= ?z_hjg))))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((?z_hjq < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=?z_hjq)&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))))))))) == ?z_hnz" (is "?z_hob == _")
   by (unfold bAll_def)
   have z_Hob: "?z_hob" (is "\\A x : ?z_hre(x)")
   by (unfold z_Hob_z_Hnz, fact z_Hnz)
   have z_Hrf: "?z_hre(t)" (is "_=>?z_hrg")
   by (rule zenon_all_0 [of "?z_hre" "t", OF z_Hob])
   show FALSE
   proof (rule zenon_imply [OF z_Hrf])
    assume z_Hrh:"(~?z_hnw)"
    show FALSE
    by (rule notE [OF z_Hrh z_Hnw])
   next
    assume z_Hrg:"?z_hrg" (is "?z_hri&?z_hrj")
    have z_Hri: "?z_hri" (is "_=>?z_hrk")
    by (rule zenon_and_0 [OF z_Hrg])
    show FALSE
    proof (rule zenon_imply [OF z_Hri])
     assume z_Hrl:"(?z_hnv~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hrl z_Hnu])
    next
     assume z_Hrk:"?z_hrk" (is "?z_hrm&?z_hrn")
     have z_Hrn: "?z_hrn" (is "?z_hro&?z_hrp")
     by (rule zenon_and_1 [OF z_Hrk])
     have z_Hrp: "?z_hrp" (is "?z_hrq&?z_hrr")
     by (rule zenon_and_1 [OF z_Hrn])
     have z_Hrr: "?z_hrr" (is "?z_hrs&?z_hrt")
     by (rule zenon_and_1 [OF z_Hrp])
     have z_Hrt: "?z_hrt" (is "?z_hru&?z_hpc")
     by (rule zenon_and_1 [OF z_Hrr])
     have z_Hpc: "?z_hpc" (is "?z_hjd&?z_hpd")
     by (rule zenon_and_1 [OF z_Hrt])
     have z_Hjd: "?z_hjd" (is "?z_hje|?z_hjh")
     by (rule zenon_and_0 [OF z_Hpc])
     show FALSE
     by (rule zenon_L5_ [OF z_Hjd z_Hjv z_Hjw z_Hsm z_Hsn])
    qed
   qed
  qed
 qed
 have zenon_L7_: "(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a]))))))) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))) ==> (~((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a]))) ==> FALSE" (is "?z_hjd ==> ?z_hjv ==> ?z_hjw ==> ?z_hsm ==> ?z_hso ==> FALSE")
 proof -
  assume z_Hjd:"?z_hjd" (is "?z_hje|?z_hjh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hjw:"?z_hjw" (is "?z_hjj~=?z_hgh")
  assume z_Hsm:"?z_hsm" (is "~?z_hjo")
  assume z_Hso:"?z_hso" (is "~?z_hju")
  show FALSE
  proof (rule zenon_or [OF z_Hjd])
   assume z_Hje:"?z_hje"
   show FALSE
   by (rule notE [OF z_Hjv z_Hje])
  next
   assume z_Hjh:"?z_hjh" (is "?z_hji|?z_hjl")
   show FALSE
   proof (rule zenon_or [OF z_Hjh])
    assume z_Hji:"?z_hji"
    show FALSE
    by (rule notE [OF z_Hjw z_Hji])
   next
    assume z_Hjl:"?z_hjl" (is "?z_hjm&?z_hjn")
    have z_Hjn: "?z_hjn" (is "_|?z_hjs")
    by (rule zenon_and_1 [OF z_Hjl])
    show FALSE
    proof (rule zenon_or [OF z_Hjn])
     assume z_Hjo:"?z_hjo"
     show FALSE
     by (rule notE [OF z_Hsm z_Hjo])
    next
     assume z_Hjs:"?z_hjs" (is "?z_hjt&_")
     have z_Hju: "?z_hju"
     by (rule zenon_and_1 [OF z_Hjs])
     show FALSE
     by (rule notE [OF z_Hso z_Hju])
    qed
   qed
  qed
 qed
 have zenon_L8_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=?z_hbi)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))))))&((((pc[x])=''F7U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&((((pc[x])=''F7U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))&((((pc[x])=''F7U7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))))&(((pc[x])=''F7U8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))))))))))) ==> ?z_hs ==> (~((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a]))) ==> (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''bit''])~=1) ==> ((a_ca[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> ((pc[a_punde_1a])=?z_hbi) ==> (t \\in M) ==> FALSE" (is "?z_hjy ==> _ ==> ?z_hso ==> ?z_hsm ==> ?z_hjw ==> ?z_hjv ==> ?z_hnu ==> ?z_hnw ==> FALSE")
 proof -
  assume z_Hjy:"?z_hjy" (is "\\A x : ?z_hnx(x)")
  assume z_Hs:"?z_hs"
  assume z_Hso:"?z_hso" (is "~?z_hju")
  assume z_Hsm:"?z_hsm" (is "~?z_hjo")
  assume z_Hjw:"?z_hjw" (is "?z_hjj~=?z_hgh")
  assume z_Hjv:"?z_hjv" (is "?z_hjf~=?z_hjg")
  assume z_Hnu:"?z_hnu" (is "?z_hnv=_")
  assume z_Hnw:"?z_hnw"
  have z_Hny: "?z_hnx(a_punde_1a)" (is "_=>?z_hnz")
  by (rule zenon_all_0 [of "?z_hnx" "a_punde_1a", OF z_Hjy])
  show FALSE
  proof (rule zenon_imply [OF z_Hny])
   assume z_Hoa:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hoa z_Hs])
  next
   assume z_Hnz:"?z_hnz"
   have z_Hob_z_Hnz: "(\\A x:((x \\in M)=>((?z_hnu=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&?z_hju)))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))))))&(((?z_hnv=''F7U1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&?z_hju)))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&(((?z_hnv=''F7U2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&?z_hju)))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))&(((?z_hnv=''F7U7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&?z_hju)))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))))&((?z_hnv=''F7U8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((((x[''sigma''])[?z_hjf])=((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])]))&((((x[''sigma''])[((a_aunde_Fa[a_punde_1a])[''parent''])])=((x[''sigma''])[?z_hjg]))&(((?z_hjf=?z_hjg)|((?z_hjj=?z_hgh)|((?z_hjj=0)&(?z_hjo|((((F[?z_hjg])[''rank''])=((F[?z_hjf])[''rank'']))&?z_hju)))))&((?z_hjg=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[?z_hjg])[''bit''])=?z_hgh)|((((F[?z_hjg])[''bit''])=0)&((((F[?z_hjg])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[?z_hjg])[''rank'']))&(?z_hjg <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))))))))&(((x[''sigma''])[?z_hjf])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))))))))) == ?z_hnz" (is "?z_hob == _")
   by (unfold bAll_def)
   have z_Hob: "?z_hob" (is "\\A x : ?z_hre(x)")
   by (unfold z_Hob_z_Hnz, fact z_Hnz)
   have z_Hrf: "?z_hre(t)" (is "_=>?z_hrg")
   by (rule zenon_all_0 [of "?z_hre" "t", OF z_Hob])
   show FALSE
   proof (rule zenon_imply [OF z_Hrf])
    assume z_Hrh:"(~?z_hnw)"
    show FALSE
    by (rule notE [OF z_Hrh z_Hnw])
   next
    assume z_Hrg:"?z_hrg" (is "?z_hri&?z_hrj")
    have z_Hri: "?z_hri" (is "_=>?z_hrk")
    by (rule zenon_and_0 [OF z_Hrg])
    show FALSE
    proof (rule zenon_imply [OF z_Hri])
     assume z_Hrl:"(?z_hnv~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hrl z_Hnu])
    next
     assume z_Hrk:"?z_hrk" (is "?z_hrm&?z_hrn")
     have z_Hrn: "?z_hrn" (is "?z_hro&?z_hrp")
     by (rule zenon_and_1 [OF z_Hrk])
     have z_Hrp: "?z_hrp" (is "?z_hrq&?z_hrr")
     by (rule zenon_and_1 [OF z_Hrn])
     have z_Hrr: "?z_hrr" (is "?z_hrs&?z_hrt")
     by (rule zenon_and_1 [OF z_Hrp])
     have z_Hrt: "?z_hrt" (is "?z_hru&?z_hpc")
     by (rule zenon_and_1 [OF z_Hrr])
     have z_Hpc: "?z_hpc" (is "?z_hjd&?z_hpd")
     by (rule zenon_and_1 [OF z_Hrt])
     have z_Hjd: "?z_hjd" (is "?z_hje|?z_hjh")
     by (rule zenon_and_0 [OF z_Hpc])
     show FALSE
     by (rule zenon_L7_ [OF z_Hjd z_Hjv z_Hjw z_Hsm z_Hso])
    qed
   qed
  qed
 qed
 assume z_Hv:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_hsq|?z_hst)")
 have z_Hw: "?z_hw"
 by (rule zenon_and_0 [OF z_Hq])
 have z_Hjy_z_Hr: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=?z_hbi)=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))))))&((((pc[x])=''F7U1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&((((pc[x])=''F7U2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))&((((pc[x])=''F7U7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))))&(((pc[x])=''F7U8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[((a_aunde_Fa[x])[''parent''])]))&((((t[''sigma''])[((a_aunde_Fa[x])[''parent''])])=((t[''sigma''])[(a_uunde_Fa[x])]))&((((a_ca[x])=(a_uunde_Fa[x]))|((((F[(a_ca[x])])[''bit''])=1)|((((F[(a_ca[x])])[''bit''])=0)&((((F[(a_ca[x])])[''rank'']) < ((F[(a_uunde_Fa[x])])[''rank'']))|((((F[(a_uunde_Fa[x])])[''rank''])=((F[(a_ca[x])])[''rank'']))&((a_ca[x]) <= (a_uunde_Fa[x])))))))&(((a_uunde_Fa[x])=((a_aunde_Fa[x])[''parent'']))|((((F[(a_uunde_Fa[x])])[''bit''])=1)|((((F[(a_uunde_Fa[x])])[''bit''])=0)&((((F[(a_uunde_Fa[x])])[''rank'']) < ((F[((a_aunde_Fa[x])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[x])[''parent''])])[''rank''])=((F[(a_uunde_Fa[x])])[''rank'']))&((a_uunde_Fa[x]) <= ((a_aunde_Fa[x])[''parent'']))))))))))&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))))))))))) == ?z_hr" (is "?z_hjy == _")
 by (unfold bAll_def)
 have z_Hjy: "?z_hjy" (is "\\A x : ?z_hnx(x)")
 by (unfold z_Hjy_z_Hr, fact z_Hr)
 have z_Hth: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hsr~=?z_hss")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hti: "(~?z_hst)" (is "~(?z_hsu|?z_hsx)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Htj: "(((a_Fhash_primea[?z_hsr])[''bit''])~=1)" (is "?z_hsv~=?z_hgh")
 by (rule zenon_notor_0 [OF z_Hti])
 have z_Htk: "(~?z_hsx)" (is "~(?z_hsy&?z_hsz)")
 by (rule zenon_notor_1 [OF z_Hti])
 show FALSE
 proof (rule zenon_notand [OF z_Htk])
  assume z_Htl:"(?z_hsv~=0)"
  have z_Htm: "(((F[?z_hsr])[''bit''])~=0)" (is "?z_htn~=_")
  by (rule subst [where P="(\<lambda>zenon_Vsjb. (((zenon_Vsjb[?z_hsr])[''bit''])~=0))", OF z_Hg z_Htl])
  have z_Hjx: "(((F[(a_ca[a_punde_1a])])[''bit''])~=0)" (is "?z_hjj~=_")
  by (rule subst [where P="(\<lambda>zenon_Vujb. (((F[(zenon_Vujb[a_punde_1a])])[''bit''])~=0))", OF z_Hn z_Htm])
  have z_Hua: "((a_ca[a_punde_1a])~=?z_hss)" (is "?z_hjf~=_")
  by (rule subst [where P="(\<lambda>zenon_Vwjb. ((zenon_Vwjb[a_punde_1a])~=?z_hss))", OF z_Hn z_Hth])
  have z_Hjv: "(?z_hjf~=(a_uunde_Fa[a_punde_1a]))" (is "_~=?z_hjg")
  by (rule subst [where P="(\<lambda>zenon_Vyjb. (?z_hjf~=(zenon_Vyjb[a_punde_1a])))", OF z_Hh z_Hua])
  have z_Huj: "(?z_htn~=?z_hgh)"
  by (rule subst [where P="(\<lambda>zenon_Vakb. (((zenon_Vakb[?z_hsr])[''bit''])~=?z_hgh))", OF z_Hg z_Htj])
  have z_Hjw: "(?z_hjj~=?z_hgh)"
  by (rule subst [where P="(\<lambda>zenon_Vckb. (((F[(zenon_Vckb[a_punde_1a])])[''bit''])~=?z_hgh))", OF z_Hn z_Huj])
  have z_Huv: "(?z_hec \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_huv")
  by (rule subst [where P="(\<lambda>zenon_Vekb. (zenon_Vekb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hw])
  have z_Hrv: "(DOMAIN(?z_hec)=PROCESSES)" (is "?z_hrw=_")
  by (rule zenon_in_funcset_1 [of "?z_hec" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Huv])
  have z_Hnw: "(t \\in M)" (is "?z_hnw")
  by (rule subst [where P="(\<lambda>zenon_Vgkb. (t \\in zenon_Vgkb))", OF z_Hp z_Ht])
  have z_Hvc: "((?z_hec[a_punde_1a])=?z_hbi)" (is "?z_hvd=_")
  by (rule subst [where P="(\<lambda>zenon_Vmjb. ((zenon_Vmjb[a_punde_1a])=?z_hbi))", OF z_He z_Hu])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vbe. (zenon_Vbe=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hvc])
   assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
   assume z_Hvl:"(p=a_punde_1a)"
   assume z_Hjb:"(''U5''=?z_hbi)" (is "?z_hbo=_")
   show FALSE
   by (rule zenon_L1_ [OF z_Hjb])
  next
   assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
   assume z_Hvm:"(p~=a_punde_1a)"
   assume z_Hnu:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hnv=_")
   show FALSE
   by (rule zenon_L3_ [OF z_Hjy z_Hs z_Hjx z_Hjw z_Hjv z_Hnu z_Hnw])
  next
   assume z_Hrx:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hry")
   show FALSE
   by (rule zenon_L4_ [OF z_Hrv z_Hrx z_Hs])
  qed
 next
  assume z_Hvn:"(~?z_hsz)" (is "~(?z_hta|?z_hte)")
  have z_Hvo: "(~?z_hta)"
  by (rule zenon_notor_0 [OF z_Hvn])
  have z_Hvp: "(~?z_hte)" (is "~(?z_htf&?z_htg)")
  by (rule zenon_notor_1 [OF z_Hvn])
  show FALSE
  proof (rule zenon_notand [OF z_Hvp])
   assume z_Hvq:"(((a_Fhash_primea[?z_hss])[''rank''])~=((a_Fhash_primea[?z_hsr])[''rank'']))" (is "?z_htc~=?z_htb")
   have z_Hvr: "(((F[?z_hss])[''rank''])~=?z_htb)" (is "?z_hvs~=_")
   by (rule subst [where P="(\<lambda>zenon_Vkkb. (((zenon_Vkkb[?z_hss])[''rank''])~=?z_htb))", OF z_Hg z_Hvq])
   have z_Hvz: "(((F[(a_uunde_Fa[a_punde_1a])])[''rank''])~=?z_htb)" (is "?z_hjq~=_")
   by (rule subst [where P="(\<lambda>zenon_Vmkb. (((F[(zenon_Vmkb[a_punde_1a])])[''rank''])~=?z_htb))", OF z_Hh z_Hvr])
   have z_Hwg: "(?z_hjq~=((F[?z_hsr])[''rank'']))" (is "_~=?z_hwh")
   by (rule subst [where P="(\<lambda>zenon_Vokb. (?z_hjq~=((zenon_Vokb[?z_hsr])[''rank''])))", OF z_Hg z_Hvz])
   have z_Hsn: "(?z_hjq~=((F[(a_ca[a_punde_1a])])[''rank'']))" (is "_~=?z_hjp")
   by (rule subst [where P="(\<lambda>zenon_Vqkb. (?z_hjq~=((F[(zenon_Vqkb[a_punde_1a])])[''rank''])))", OF z_Hn z_Hwg])
   have z_Hwt: "(~(?z_hwh < ?z_htc))" (is "~?z_hwu")
   by (rule subst [where P="(\<lambda>zenon_Vskb. (~(((zenon_Vskb[?z_hsr])[''rank'']) < ?z_htc)))", OF z_Hg z_Hvo])
   have z_Hxb: "(~(?z_hjp < ?z_htc))" (is "~?z_hxc")
   by (rule subst [where P="(\<lambda>zenon_Vukb. (~(((F[(zenon_Vukb[a_punde_1a])])[''rank'']) < ?z_htc)))", OF z_Hn z_Hwt])
   have z_Hxk: "(~(?z_hjp < ?z_hvs))" (is "~?z_hxl")
   by (rule subst [where P="(\<lambda>zenon_Vwkb. (~(?z_hjp < ((zenon_Vwkb[?z_hss])[''rank'']))))", OF z_Hg z_Hxb])
   have z_Hsm: "(~(?z_hjp < ?z_hjq))" (is "~?z_hjo")
   by (rule subst [where P="(\<lambda>zenon_Vykb. (~(?z_hjp < ((F[(zenon_Vykb[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hxk])
   have z_Hua: "((a_ca[a_punde_1a])~=?z_hss)" (is "?z_hjf~=_")
   by (rule subst [where P="(\<lambda>zenon_Vwjb. ((zenon_Vwjb[a_punde_1a])~=?z_hss))", OF z_Hn z_Hth])
   have z_Hjv: "(?z_hjf~=(a_uunde_Fa[a_punde_1a]))" (is "_~=?z_hjg")
   by (rule subst [where P="(\<lambda>zenon_Vyjb. (?z_hjf~=(zenon_Vyjb[a_punde_1a])))", OF z_Hh z_Hua])
   have z_Huj: "(((F[?z_hsr])[''bit''])~=?z_hgh)" (is "?z_htn~=_")
   by (rule subst [where P="(\<lambda>zenon_Vakb. (((zenon_Vakb[?z_hsr])[''bit''])~=?z_hgh))", OF z_Hg z_Htj])
   have z_Hjw: "(((F[?z_hjf])[''bit''])~=?z_hgh)" (is "?z_hjj~=_")
   by (rule subst [where P="(\<lambda>zenon_Vckb. (((F[(zenon_Vckb[a_punde_1a])])[''bit''])~=?z_hgh))", OF z_Hn z_Huj])
   have z_Huv: "(?z_hec \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_huv")
   by (rule subst [where P="(\<lambda>zenon_Vekb. (zenon_Vekb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hw])
   have z_Hrv: "(DOMAIN(?z_hec)=PROCESSES)" (is "?z_hrw=_")
   by (rule zenon_in_funcset_1 [of "?z_hec" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Huv])
   have z_Hnw: "(t \\in M)" (is "?z_hnw")
   by (rule subst [where P="(\<lambda>zenon_Vgkb. (t \\in zenon_Vgkb))", OF z_Hp z_Ht])
   have z_Hvc: "((?z_hec[a_punde_1a])=?z_hbi)" (is "?z_hvd=_")
   by (rule subst [where P="(\<lambda>zenon_Vmjb. ((zenon_Vmjb[a_punde_1a])=?z_hbi))", OF z_He z_Hu])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vbe. (zenon_Vbe=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hvc])
    assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
    assume z_Hvl:"(p=a_punde_1a)"
    assume z_Hjb:"(''U5''=?z_hbi)" (is "?z_hbo=_")
    show FALSE
    by (rule zenon_L1_ [OF z_Hjb])
   next
    assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
    assume z_Hvm:"(p~=a_punde_1a)"
    assume z_Hnu:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hnv=_")
    show FALSE
    by (rule zenon_L6_ [OF z_Hjy z_Hs z_Hsn z_Hsm z_Hjw z_Hjv z_Hnu z_Hnw])
   next
    assume z_Hrx:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hry")
    show FALSE
    by (rule zenon_L4_ [OF z_Hrv z_Hrx z_Hs])
   qed
  next
   assume z_Hxz:"(~?z_htg)"
   have z_Hya: "(~((a_ca[a_punde_1a]) <= ?z_hss))" (is "~?z_hyb")
   by (rule subst [where P="(\<lambda>zenon_Volb. (~((zenon_Volb[a_punde_1a]) <= ?z_hss)))", OF z_Hn z_Hxz])
   have z_Hso: "(~((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))" (is "~?z_hju")
   by (rule subst [where P="(\<lambda>zenon_Vqlb. (~((a_ca[a_punde_1a]) <= (zenon_Vqlb[a_punde_1a]))))", OF z_Hh z_Hya])
   have z_Hwt: "(~(((F[?z_hsr])[''rank'']) < ((a_Fhash_primea[?z_hss])[''rank''])))" (is "~?z_hwu")
   by (rule subst [where P="(\<lambda>zenon_Vskb. (~(((zenon_Vskb[?z_hsr])[''rank'']) < ((a_Fhash_primea[?z_hss])[''rank'']))))", OF z_Hg z_Hvo])
   have z_Hxb: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[?z_hss])[''rank''])))" (is "~?z_hxc")
   by (rule subst [where P="(\<lambda>zenon_Vukb. (~(((F[(zenon_Vukb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[?z_hss])[''rank'']))))", OF z_Hn z_Hwt])
   have z_Hxk: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[?z_hss])[''rank''])))" (is "~?z_hxl")
   by (rule subst [where P="(\<lambda>zenon_Vwkb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vwkb[?z_hss])[''rank'']))))", OF z_Hg z_Hxb])
   have z_Hsm: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])))" (is "~?z_hjo")
   by (rule subst [where P="(\<lambda>zenon_Vykb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vykb[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hxk])
   have z_Hua: "((a_ca[a_punde_1a])~=?z_hss)" (is "?z_hjf~=_")
   by (rule subst [where P="(\<lambda>zenon_Vwjb. ((zenon_Vwjb[a_punde_1a])~=?z_hss))", OF z_Hn z_Hth])
   have z_Hjv: "(?z_hjf~=(a_uunde_Fa[a_punde_1a]))" (is "_~=?z_hjg")
   by (rule subst [where P="(\<lambda>zenon_Vyjb. (?z_hjf~=(zenon_Vyjb[a_punde_1a])))", OF z_Hh z_Hua])
   have z_Huj: "(((F[?z_hsr])[''bit''])~=?z_hgh)" (is "?z_htn~=_")
   by (rule subst [where P="(\<lambda>zenon_Vakb. (((zenon_Vakb[?z_hsr])[''bit''])~=?z_hgh))", OF z_Hg z_Htj])
   have z_Hjw: "(((F[?z_hjf])[''bit''])~=?z_hgh)" (is "?z_hjj~=_")
   by (rule subst [where P="(\<lambda>zenon_Vckb. (((F[(zenon_Vckb[a_punde_1a])])[''bit''])~=?z_hgh))", OF z_Hn z_Huj])
   have z_Huv: "(?z_hec \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_huv")
   by (rule subst [where P="(\<lambda>zenon_Vekb. (zenon_Vekb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hw])
   have z_Hrv: "(DOMAIN(?z_hec)=PROCESSES)" (is "?z_hrw=_")
   by (rule zenon_in_funcset_1 [of "?z_hec" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ?z_hbi, ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Huv])
   have z_Hnw: "(t \\in M)" (is "?z_hnw")
   by (rule subst [where P="(\<lambda>zenon_Vgkb. (t \\in zenon_Vgkb))", OF z_Hp z_Ht])
   have z_Hvc: "((?z_hec[a_punde_1a])=?z_hbi)" (is "?z_hvd=_")
   by (rule subst [where P="(\<lambda>zenon_Vmjb. ((zenon_Vmjb[a_punde_1a])=?z_hbi))", OF z_He z_Hu])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vbe. (zenon_Vbe=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hvc])
    assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
    assume z_Hvl:"(p=a_punde_1a)"
    assume z_Hjb:"(''U5''=?z_hbi)" (is "?z_hbo=_")
    show FALSE
    by (rule zenon_L1_ [OF z_Hjb])
   next
    assume z_Hry:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hry")
    assume z_Hvm:"(p~=a_punde_1a)"
    assume z_Hnu:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hnv=_")
    show FALSE
    by (rule zenon_L8_ [OF z_Hjy z_Hs z_Hso z_Hsm z_Hjw z_Hjv z_Hnu z_Hnw])
   next
    assume z_Hrx:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hry")
    show FALSE
    by (rule zenon_L4_ [OF z_Hrv z_Hrx z_Hs])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 605"; *} qed
lemma ob'677:
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
(* usable definition FR suppressed *)
(* usable definition U1 suppressed *)
(* usable definition U2 suppressed *)
(* usable definition U3 suppressed *)
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
(* usable definition EdgeOK suppressed *)
(* usable definition EdgesMonotone suppressed *)
(* usable definition SigmaRespectsShared suppressed *)
(* usable definition SharedRespectsSigma suppressed *)
(* usable definition InvF1All suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'106: "(Inv)"
assumes v'107: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'109: "(((fapply ((pc), (p))) = (''U4'')))"
assumes v'110: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U5'')])))"
assumes v'111: "((((a_aunde_Uhash_primea :: c)) = ([(a_aunde_Ua) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Ua), (p)))))])))"
assumes v'112: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'113: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'114: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'115: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'116: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'117: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'118: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'119: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'120: "((((a_dhash_primea :: c)) = (d)))"
assumes v'121: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'125: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'136: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
shows "(((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''FR''))) \<Rightarrow> ((((((((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))) \<and> (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))))) \<and> (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))))) \<and> (((fapply ((fapply ((t), (''sigma''))), (fapply (((a_chash_primea :: c)), (a_punde_1a))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'677")
proof -
ML_command {* writeln "*** TLAPS ENTER 677"; *}
show "PROP ?ob'677"

(* BEGIN ZENON INPUT
;; file=U4Inv_proof.tlaps/tlapm_e3a333.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U4Inv_proof.tlaps/tlapm_e3a333.znn.out
;; obligation #677
$hyp "v'106" Inv
$hyp "v'107" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'109" (= (TLA.fapply pc p) "U4")
$hyp "v'110" (= a_pchash_primea
(TLA.except pc p "U5"))
$hyp "v'111" (= a_aunde_Uhash_primea
(TLA.except a_aunde_Ua p (TLA.fapply F (TLA.fapply a_uunde_Ua p))))
$hyp "v'112" (= a_Fhash_primea F)
$hyp "v'113" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'114" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'115" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'116" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'117" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'118" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'119" (= a_chash_primea a_ca)
$hyp "v'120" (= a_dhash_primea d)
$hyp "v'121" (= a_Mhash_primea M)
$hyp "v'125" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
h6d4c4cb96f3fa83008da51bad83fbb a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'136" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"FR") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1)
(TLA.fapply a_uunde_Fa p_1)) (= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))))
(=> (= (TLA.fapply pc p_1) "FRU1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "FRU2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t) (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "FRU7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t) (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "FRU8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t) (= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$goal (=> (= (TLA.fapply a_pchash_primea a_punde_1a) "FR")
(/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.fapply a_uunde_Fhash_primea a_punde_1a)))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F"))
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_chash_primea a_punde_1a))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fhash_primea a_punde_1a)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hq:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&(h6d4c4cb96f3fa83008da51bad83fbb&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hv&?z_hdc")
 using v'125 by blast
 have z_Hh:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'113 by blast
 have z_Hp:"(a_Mhash_primea=M)"
 using v'121 by blast
 have z_He:"(a_pchash_primea=except(pc, p, ''U5''))" (is "_=?z_heb")
 using v'110 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'119 by blast
 have z_Hr:"bAll(PROCESSES, (\<lambda>p_1. bAll(M, (\<lambda>t. ((((pc[p_1])=''FR'')=>((((t[''ret''])[p_1])=(a_uunde_Fa[p_1]))&((((t[''op''])[p_1])=''F'')&((((t[''arg''])[p_1]) \\in NodeSet)&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_uunde_Fa[p_1])]))))))&((((pc[p_1])=''FRU1'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[p_1])])=((t[''sigma''])[(a_uunde_Ua[p_1])]))))))&((((pc[p_1])=''FRU2'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU2All(p_1, t)&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_vunde_Ua[p_1])])))))))&((((pc[p_1])=''FRU7'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU7All(p_1, t)&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_uunde_Ua[p_1])])))))))&(((pc[p_1])=''FRU8'')=>((((t[''ret''])[p_1])=BOT)&((((t[''op''])[p_1])=''U'')&((((t[''arg''])[p_1]) \\in prod(NodeSet, NodeSet))&(InvU8All(p_1, t)&(((t[''sigma''])[(a_ca[p_1])])=((t[''sigma''])[(a_vunde_Ua[p_1])])))))))))))))))" (is "?z_hr")
 using v'136 by blast
 have z_Hs:"(a_punde_1a \\in PROCESSES)" (is "?z_hs")
 using a_punde_1a_in by blast
 have z_Ht:"(t \\in a_Mhash_primea)" (is "?z_ht")
 using t_in by blast
 have zenon_L1_: "(''U5''=''FR'') ==> FALSE" (is "?z_hhg ==> FALSE")
 proof -
  assume z_Hhg:"?z_hhg" (is "?z_hbn=?z_hbi")
  have z_Hhh: "(?z_hbn~=?z_hbi)"
  by (simp only: zenon_sa_1 zenon_sa_2,
      ((rule zenon_sa_diff_2)+)?,
      (rule zenon_sa_diff_3, auto)?,
      (rule zenon_sa_diff_1, auto)?,
      (rule zenon_sa_diff_0a)?, (rule zenon_sa_diff_0b)?)
  show FALSE
  by (rule notE [OF z_Hhh z_Hhg])
 qed
 have zenon_L2_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=''FR'')=>((((t[''ret''])[x])=(a_uunde_Fa[x]))&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Fa[x])]))))))&((((pc[x])=''FRU1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))&((((pc[x])=''FRU2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))&((((pc[x])=''FRU7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&(((pc[x])=''FRU8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))))))))) ==> ?z_hs ==> (((t[''ret''])[a_punde_1a])~=(a_uunde_Fa[a_punde_1a])) ==> ((pc[a_punde_1a])=''FR'') ==> (t \\in M) ==> FALSE" (is "?z_hhi ==> _ ==> ?z_hjt ==> ?z_hjw ==> ?z_hjy ==> FALSE")
 proof -
  assume z_Hhi:"?z_hhi" (is "\\A x : ?z_hjz(x)")
  assume z_Hs:"?z_hs"
  assume z_Hjt:"?z_hjt" (is "?z_hju~=?z_hjv")
  assume z_Hjw:"?z_hjw" (is "?z_hjx=?z_hbi")
  assume z_Hjy:"?z_hjy"
  have z_Hka: "?z_hjz(a_punde_1a)" (is "_=>?z_hkb")
  by (rule zenon_all_0 [of "?z_hjz" "a_punde_1a", OF z_Hhi])
  show FALSE
  proof (rule zenon_imply [OF z_Hka])
   assume z_Hkc:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hkc z_Hs])
  next
   assume z_Hkb:"?z_hkb"
   have z_Hkd_z_Hkb: "(\\A x:((x \\in M)=>((?z_hjw=>((((x[''ret''])[a_punde_1a])=?z_hjv)&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[?z_hjv]))))))&(((?z_hjx=''FRU1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((x[''sigma''])[?z_hjv])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))&(((?z_hjx=''FRU2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))&(((?z_hjx=''FRU7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&((?z_hjx=''FRU8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))))))) == ?z_hkb" (is "?z_hkd == _")
   by (unfold bAll_def)
   have z_Hkd: "?z_hkd" (is "\\A x : ?z_hmm(x)")
   by (unfold z_Hkd_z_Hkb, fact z_Hkb)
   have z_Hmn: "?z_hmm(t)" (is "_=>?z_hmo")
   by (rule zenon_all_0 [of "?z_hmm" "t", OF z_Hkd])
   show FALSE
   proof (rule zenon_imply [OF z_Hmn])
    assume z_Hmp:"(~?z_hjy)"
    show FALSE
    by (rule notE [OF z_Hmp z_Hjy])
   next
    assume z_Hmo:"?z_hmo" (is "?z_hmq&?z_hmr")
    have z_Hmq: "?z_hmq" (is "_=>?z_hms")
    by (rule zenon_and_0 [OF z_Hmo])
    show FALSE
    proof (rule zenon_imply [OF z_Hmq])
     assume z_Hmt:"(?z_hjx~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hmt z_Hjw])
    next
     assume z_Hms:"?z_hms" (is "?z_hmu&?z_hmv")
     have z_Hmu: "?z_hmu"
     by (rule zenon_and_0 [OF z_Hms])
     show FALSE
     by (rule notE [OF z_Hjt z_Hmu])
    qed
   qed
  qed
 qed
 have zenon_L3_: "(DOMAIN(?z_heb)=PROCESSES) ==> (~(a_punde_1a \\in DOMAIN(pc))) ==> ?z_hs ==> FALSE" (is "?z_hmw ==> ?z_hmy ==> _ ==> FALSE")
 proof -
  assume z_Hmw:"?z_hmw" (is "?z_hmx=_")
  assume z_Hmy:"?z_hmy" (is "~?z_hmz")
  assume z_Hs:"?z_hs"
  have z_Hnb: "(\\A zenon_Vrc:((zenon_Vrc \\in ?z_hmx)<=>(zenon_Vrc \\in PROCESSES)))" (is "\\A x : ?z_hng(x)")
  by (rule zenon_setequal_0 [of "?z_hmx" "PROCESSES", OF z_Hmw])
  have z_Hnh: "?z_hng(a_punde_1a)" (is "?z_hni<=>_")
  by (rule zenon_all_0 [of "?z_hng" "a_punde_1a", OF z_Hnb])
  show FALSE
  proof (rule zenon_equiv [OF z_Hnh])
   assume z_Hnj:"(~?z_hni)"
   assume z_Hkc:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hkc z_Hs])
  next
   assume z_Hni:"?z_hni"
   assume z_Hs:"?z_hs"
   have z_Hmz: "?z_hmz"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Veja. (a_punde_1a \\in zenon_Veja))" "pc" "p" "''U5''", OF z_Hni])
   show FALSE
   by (rule notE [OF z_Hmy z_Hmz])
  qed
 qed
 have zenon_L4_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=''FR'')=>((((t[''ret''])[x])=(a_uunde_Fa[x]))&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Fa[x])]))))))&((((pc[x])=''FRU1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))&((((pc[x])=''FRU2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))&((((pc[x])=''FRU7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&(((pc[x])=''FRU8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))))))))) ==> ?z_hs ==> (((t[''op''])[a_punde_1a])~=''F'') ==> ((pc[a_punde_1a])=''FR'') ==> (t \\in M) ==> FALSE" (is "?z_hhi ==> _ ==> ?z_hnn ==> ?z_hjw ==> ?z_hjy ==> FALSE")
 proof -
  assume z_Hhi:"?z_hhi" (is "\\A x : ?z_hjz(x)")
  assume z_Hs:"?z_hs"
  assume z_Hnn:"?z_hnn" (is "?z_hno~=?z_hfa")
  assume z_Hjw:"?z_hjw" (is "?z_hjx=?z_hbi")
  assume z_Hjy:"?z_hjy"
  have z_Hka: "?z_hjz(a_punde_1a)" (is "_=>?z_hkb")
  by (rule zenon_all_0 [of "?z_hjz" "a_punde_1a", OF z_Hhi])
  show FALSE
  proof (rule zenon_imply [OF z_Hka])
   assume z_Hkc:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hkc z_Hs])
  next
   assume z_Hkb:"?z_hkb"
   have z_Hkd_z_Hkb: "(\\A x:((x \\in M)=>((?z_hjw=>((((x[''ret''])[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))&((((x[''op''])[a_punde_1a])=?z_hfa)&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Fa[a_punde_1a])]))))))&(((?z_hjx=''FRU1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((x[''sigma''])[(a_uunde_Fa[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))&(((?z_hjx=''FRU2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))&(((?z_hjx=''FRU7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&((?z_hjx=''FRU8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))))))) == ?z_hkb" (is "?z_hkd == _")
   by (unfold bAll_def)
   have z_Hkd: "?z_hkd" (is "\\A x : ?z_hmm(x)")
   by (unfold z_Hkd_z_Hkb, fact z_Hkb)
   have z_Hmn: "?z_hmm(t)" (is "_=>?z_hmo")
   by (rule zenon_all_0 [of "?z_hmm" "t", OF z_Hkd])
   show FALSE
   proof (rule zenon_imply [OF z_Hmn])
    assume z_Hmp:"(~?z_hjy)"
    show FALSE
    by (rule notE [OF z_Hmp z_Hjy])
   next
    assume z_Hmo:"?z_hmo" (is "?z_hmq&?z_hmr")
    have z_Hmq: "?z_hmq" (is "_=>?z_hms")
    by (rule zenon_and_0 [OF z_Hmo])
    show FALSE
    proof (rule zenon_imply [OF z_Hmq])
     assume z_Hmt:"(?z_hjx~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hmt z_Hjw])
    next
     assume z_Hms:"?z_hms" (is "?z_hmu&?z_hmv")
     have z_Hmv: "?z_hmv" (is "?z_hnp&?z_hnq")
     by (rule zenon_and_1 [OF z_Hms])
     have z_Hnp: "?z_hnp"
     by (rule zenon_and_0 [OF z_Hmv])
     show FALSE
     by (rule notE [OF z_Hnn z_Hnp])
    qed
   qed
  qed
 qed
 have zenon_L5_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=''FR'')=>((((t[''ret''])[x])=(a_uunde_Fa[x]))&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Fa[x])]))))))&((((pc[x])=''FRU1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))&((((pc[x])=''FRU2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))&((((pc[x])=''FRU7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&(((pc[x])=''FRU8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))))))))) ==> ?z_hs ==> (~(((t[''arg''])[a_punde_1a]) \\in NodeSet)) ==> ((pc[a_punde_1a])=''FR'') ==> (t \\in M) ==> FALSE" (is "?z_hhi ==> _ ==> ?z_hnr ==> ?z_hjw ==> ?z_hjy ==> FALSE")
 proof -
  assume z_Hhi:"?z_hhi" (is "\\A x : ?z_hjz(x)")
  assume z_Hs:"?z_hs"
  assume z_Hnr:"?z_hnr" (is "~?z_hns")
  assume z_Hjw:"?z_hjw" (is "?z_hjx=?z_hbi")
  assume z_Hjy:"?z_hjy"
  have z_Hka: "?z_hjz(a_punde_1a)" (is "_=>?z_hkb")
  by (rule zenon_all_0 [of "?z_hjz" "a_punde_1a", OF z_Hhi])
  show FALSE
  proof (rule zenon_imply [OF z_Hka])
   assume z_Hkc:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hkc z_Hs])
  next
   assume z_Hkb:"?z_hkb"
   have z_Hkd_z_Hkb: "(\\A x:((x \\in M)=>((?z_hjw=>((((x[''ret''])[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Fa[a_punde_1a])]))))))&(((?z_hjx=''FRU1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((x[''sigma''])[(a_uunde_Fa[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))&(((?z_hjx=''FRU2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))&(((?z_hjx=''FRU7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&((?z_hjx=''FRU8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))))))) == ?z_hkb" (is "?z_hkd == _")
   by (unfold bAll_def)
   have z_Hkd: "?z_hkd" (is "\\A x : ?z_hmm(x)")
   by (unfold z_Hkd_z_Hkb, fact z_Hkb)
   have z_Hmn: "?z_hmm(t)" (is "_=>?z_hmo")
   by (rule zenon_all_0 [of "?z_hmm" "t", OF z_Hkd])
   show FALSE
   proof (rule zenon_imply [OF z_Hmn])
    assume z_Hmp:"(~?z_hjy)"
    show FALSE
    by (rule notE [OF z_Hmp z_Hjy])
   next
    assume z_Hmo:"?z_hmo" (is "?z_hmq&?z_hmr")
    have z_Hmq: "?z_hmq" (is "_=>?z_hms")
    by (rule zenon_and_0 [OF z_Hmo])
    show FALSE
    proof (rule zenon_imply [OF z_Hmq])
     assume z_Hmt:"(?z_hjx~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hmt z_Hjw])
    next
     assume z_Hms:"?z_hms" (is "?z_hmu&?z_hmv")
     have z_Hmv: "?z_hmv" (is "?z_hnp&?z_hnq")
     by (rule zenon_and_1 [OF z_Hms])
     have z_Hnq: "?z_hnq" (is "_&?z_hnu")
     by (rule zenon_and_1 [OF z_Hmv])
     have z_Hns: "?z_hns"
     by (rule zenon_and_0 [OF z_Hnq])
     show FALSE
     by (rule notE [OF z_Hnr z_Hns])
    qed
   qed
  qed
 qed
 have zenon_L6_: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=''FR'')=>((((t[''ret''])[x])=(a_uunde_Fa[x]))&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Fa[x])]))))))&((((pc[x])=''FRU1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))&((((pc[x])=''FRU2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))&((((pc[x])=''FRU7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&(((pc[x])=''FRU8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))))))))) ==> ?z_hs ==> (((t[''sigma''])[(a_ca[a_punde_1a])])~=((t[''sigma''])[(a_uunde_Fa[a_punde_1a])])) ==> ((pc[a_punde_1a])=''FR'') ==> (t \\in M) ==> FALSE" (is "?z_hhi ==> _ ==> ?z_hnv ==> ?z_hjw ==> ?z_hjy ==> FALSE")
 proof -
  assume z_Hhi:"?z_hhi" (is "\\A x : ?z_hjz(x)")
  assume z_Hs:"?z_hs"
  assume z_Hnv:"?z_hnv" (is "?z_hnw~=?z_hnx")
  assume z_Hjw:"?z_hjw" (is "?z_hjx=?z_hbi")
  assume z_Hjy:"?z_hjy"
  have z_Hka: "?z_hjz(a_punde_1a)" (is "_=>?z_hkb")
  by (rule zenon_all_0 [of "?z_hjz" "a_punde_1a", OF z_Hhi])
  show FALSE
  proof (rule zenon_imply [OF z_Hka])
   assume z_Hkc:"(~?z_hs)"
   show FALSE
   by (rule notE [OF z_Hkc z_Hs])
  next
   assume z_Hkb:"?z_hkb"
   have z_Hkd_z_Hkb: "(\\A x:((x \\in M)=>((?z_hjw=>((((x[''ret''])[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))&((((x[''op''])[a_punde_1a])=''F'')&((((x[''arg''])[a_punde_1a]) \\in NodeSet)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Fa[a_punde_1a])]))))))&(((?z_hjx=''FRU1'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(((x[''sigma''])[(a_uunde_Fa[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])]))))))&(((?z_hjx=''FRU2'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU2All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])])))))))&(((?z_hjx=''FRU7'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU7All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_uunde_Ua[a_punde_1a])])))))))&((?z_hjx=''FRU8'')=>((((x[''ret''])[a_punde_1a])=BOT)&((((x[''op''])[a_punde_1a])=''U'')&((((x[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(InvU8All(a_punde_1a, x)&(((x[''sigma''])[(a_ca[a_punde_1a])])=((x[''sigma''])[(a_vunde_Ua[a_punde_1a])]))))))))))))) == ?z_hkb" (is "?z_hkd == _")
   by (unfold bAll_def)
   have z_Hkd: "?z_hkd" (is "\\A x : ?z_hmm(x)")
   by (unfold z_Hkd_z_Hkb, fact z_Hkb)
   have z_Hmn: "?z_hmm(t)" (is "_=>?z_hmo")
   by (rule zenon_all_0 [of "?z_hmm" "t", OF z_Hkd])
   show FALSE
   proof (rule zenon_imply [OF z_Hmn])
    assume z_Hmp:"(~?z_hjy)"
    show FALSE
    by (rule notE [OF z_Hmp z_Hjy])
   next
    assume z_Hmo:"?z_hmo" (is "?z_hmq&?z_hmr")
    have z_Hmq: "?z_hmq" (is "_=>?z_hms")
    by (rule zenon_and_0 [OF z_Hmo])
    show FALSE
    proof (rule zenon_imply [OF z_Hmq])
     assume z_Hmt:"(?z_hjx~=?z_hbi)"
     show FALSE
     by (rule notE [OF z_Hmt z_Hjw])
    next
     assume z_Hms:"?z_hms" (is "?z_hmu&?z_hmv")
     have z_Hmv: "?z_hmv" (is "?z_hnp&?z_hnq")
     by (rule zenon_and_1 [OF z_Hms])
     have z_Hnq: "?z_hnq" (is "?z_hns&?z_hnu")
     by (rule zenon_and_1 [OF z_Hmv])
     have z_Hnu: "?z_hnu"
     by (rule zenon_and_1 [OF z_Hnq])
     show FALSE
     by (rule notE [OF z_Hnv z_Hnu])
    qed
   qed
  qed
 qed
 assume z_Hu:"(~(((a_pchash_primea[a_punde_1a])=''FR'')=>((((((t[''ret''])[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))&(((t[''op''])[a_punde_1a])=''F''))&(((t[''arg''])[a_punde_1a]) \\in NodeSet))&(((t[''sigma''])[(a_chash_primea[a_punde_1a])])=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])])))))" (is "~(?z_hnz=>?z_hob)")
 have z_Hv: "?z_hv"
 by (rule zenon_and_0 [OF z_Hq])
 have z_Hhi_z_Hr: "(\\A x:((x \\in PROCESSES)=>bAll(M, (\<lambda>t. ((((pc[x])=''FR'')=>((((t[''ret''])[x])=(a_uunde_Fa[x]))&((((t[''op''])[x])=''F'')&((((t[''arg''])[x]) \\in NodeSet)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Fa[x])]))))))&((((pc[x])=''FRU1'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(((t[''sigma''])[(a_uunde_Fa[x])])=((t[''sigma''])[(a_uunde_Ua[x])]))))))&((((pc[x])=''FRU2'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU2All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])])))))))&((((pc[x])=''FRU7'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU7All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_uunde_Ua[x])])))))))&(((pc[x])=''FRU8'')=>((((t[''ret''])[x])=BOT)&((((t[''op''])[x])=''U'')&((((t[''arg''])[x]) \\in prod(NodeSet, NodeSet))&(InvU8All(x, t)&(((t[''sigma''])[(a_ca[x])])=((t[''sigma''])[(a_vunde_Ua[x])]))))))))))))))) == ?z_hr" (is "?z_hhi == _")
 by (unfold bAll_def)
 have z_Hhi: "?z_hhi" (is "\\A x : ?z_hjz(x)")
 by (unfold z_Hhi_z_Hr, fact z_Hr)
 have z_Hnz: "?z_hnz" (is "?z_hoa=?z_hbi")
 by (rule zenon_notimply_0 [OF z_Hu])
 have z_Hok: "(~?z_hob)" (is "~(?z_hoc&?z_hog)")
 by (rule zenon_notimply_1 [OF z_Hu])
 show FALSE
 proof (rule zenon_notand [OF z_Hok])
  assume z_Hol:"(~?z_hoc)" (is "~(?z_hod&?z_hns)")
  show FALSE
  proof (rule zenon_notand [OF z_Hol])
   assume z_Hom:"(~?z_hod)" (is "~(?z_hoe&?z_hnp)")
   show FALSE
   proof (rule zenon_notand [OF z_Hom])
    assume z_Hon:"(((t[''ret''])[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hju~=?z_hof")
    have z_Hjt: "(?z_hju~=(a_uunde_Fa[a_punde_1a]))" (is "_~=?z_hjv")
    by (rule subst [where P="(\<lambda>zenon_Vtxj. (?z_hju~=(zenon_Vtxj[a_punde_1a])))", OF z_Hh z_Hon])
    have z_Hos: "((?z_heb[a_punde_1a])=?z_hbi)" (is "?z_hot=_")
    by (rule subst [where P="(\<lambda>zenon_Vtwj. ((zenon_Vtwj[a_punde_1a])=?z_hbi))", OF z_He z_Hnz])
    have z_Hoy: "(?z_heb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hoy")
    by (rule subst [where P="(\<lambda>zenon_Vxxj. (zenon_Vxxj \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hv])
    have z_Hmw: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hmx=_")
    by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hoy])
    have z_Hjy: "(t \\in M)" (is "?z_hjy")
    by (rule subst [where P="(\<lambda>zenon_Vmwj. (t \\in zenon_Vmwj))", OF z_Hp z_Ht])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vha. (zenon_Vha=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hos])
     assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
     assume z_Hpi:"(p=a_punde_1a)"
     assume z_Hhg:"(''U5''=?z_hbi)" (is "?z_hbn=_")
     show FALSE
     by (rule zenon_L1_ [OF z_Hhg])
    next
     assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
     assume z_Hpj:"(p~=a_punde_1a)"
     assume z_Hjw:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hjx=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hhi z_Hs z_Hjt z_Hjw z_Hjy])
    next
     assume z_Hmy:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hmz")
     show FALSE
     by (rule zenon_L3_ [OF z_Hmw z_Hmy z_Hs])
    qed
   next
    assume z_Hnn:"(((t[''op''])[a_punde_1a])~=''F'')" (is "?z_hno~=?z_hfa")
    have z_Hos: "((?z_heb[a_punde_1a])=?z_hbi)" (is "?z_hot=_")
    by (rule subst [where P="(\<lambda>zenon_Vtwj. ((zenon_Vtwj[a_punde_1a])=?z_hbi))", OF z_He z_Hnz])
    have z_Hoy: "(?z_heb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hoy")
    by (rule subst [where P="(\<lambda>zenon_Vxxj. (zenon_Vxxj \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hv])
    have z_Hmw: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hmx=_")
    by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hoy])
    have z_Hjy: "(t \\in M)" (is "?z_hjy")
    by (rule subst [where P="(\<lambda>zenon_Vmwj. (t \\in zenon_Vmwj))", OF z_Hp z_Ht])
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vha. (zenon_Vha=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hos])
     assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
     assume z_Hpi:"(p=a_punde_1a)"
     assume z_Hhg:"(''U5''=?z_hbi)" (is "?z_hbn=_")
     show FALSE
     by (rule zenon_L1_ [OF z_Hhg])
    next
     assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
     assume z_Hpj:"(p~=a_punde_1a)"
     assume z_Hjw:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hjx=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hhi z_Hs z_Hnn z_Hjw z_Hjy])
    next
     assume z_Hmy:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hmz")
     show FALSE
     by (rule zenon_L3_ [OF z_Hmw z_Hmy z_Hs])
    qed
   qed
  next
   assume z_Hnr:"(~?z_hns)"
   have z_Hos: "((?z_heb[a_punde_1a])=?z_hbi)" (is "?z_hot=_")
   by (rule subst [where P="(\<lambda>zenon_Vtwj. ((zenon_Vtwj[a_punde_1a])=?z_hbi))", OF z_He z_Hnz])
   have z_Hoy: "(?z_heb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hoy")
   by (rule subst [where P="(\<lambda>zenon_Vxxj. (zenon_Vxxj \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hv])
   have z_Hmw: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hmx=_")
   by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hoy])
   have z_Hjy: "(t \\in M)" (is "?z_hjy")
   by (rule subst [where P="(\<lambda>zenon_Vmwj. (t \\in zenon_Vmwj))", OF z_Hp z_Ht])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vha. (zenon_Vha=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hos])
    assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
    assume z_Hpi:"(p=a_punde_1a)"
    assume z_Hhg:"(''U5''=?z_hbi)" (is "?z_hbn=_")
    show FALSE
    by (rule zenon_L1_ [OF z_Hhg])
   next
    assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
    assume z_Hpj:"(p~=a_punde_1a)"
    assume z_Hjw:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hjx=_")
    show FALSE
    by (rule zenon_L5_ [OF z_Hhi z_Hs z_Hnr z_Hjw z_Hjy])
   next
    assume z_Hmy:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hmz")
    show FALSE
    by (rule zenon_L3_ [OF z_Hmw z_Hmy z_Hs])
   qed
  qed
 next
  assume z_Hpk:"(((t[''sigma''])[(a_chash_primea[a_punde_1a])])~=((t[''sigma''])[(a_uunde_Fhash_primea[a_punde_1a])]))" (is "?z_hoh~=?z_hoj")
  have z_Hpl: "(((t[''sigma''])[(a_ca[a_punde_1a])])~=?z_hoj)" (is "?z_hnw~=_")
  by (rule subst [where P="(\<lambda>zenon_Vnyj. (((t[''sigma''])[(zenon_Vnyj[a_punde_1a])])~=?z_hoj))", OF z_Hn z_Hpk])
  have z_Hnv: "(?z_hnw~=((t[''sigma''])[(a_uunde_Fa[a_punde_1a])]))" (is "_~=?z_hnx")
  by (rule subst [where P="(\<lambda>zenon_Vpyj. (?z_hnw~=((t[''sigma''])[(zenon_Vpyj[a_punde_1a])])))", OF z_Hh z_Hpl])
  have z_Hos: "((?z_heb[a_punde_1a])=?z_hbi)" (is "?z_hot=_")
  by (rule subst [where P="(\<lambda>zenon_Vtwj. ((zenon_Vtwj[a_punde_1a])=?z_hbi))", OF z_He z_Hnz])
  have z_Hoy: "(?z_heb \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))" (is "?z_hoy")
  by (rule subst [where P="(\<lambda>zenon_Vxxj. (zenon_Vxxj \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''})))", OF z_He z_Hv])
  have z_Hmw: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hmx=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ?z_hbi, ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hoy])
  have z_Hjy: "(t \\in M)" (is "?z_hjy")
  by (rule subst [where P="(\<lambda>zenon_Vmwj. (t \\in zenon_Vmwj))", OF z_Hp z_Ht])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vha. (zenon_Vha=?z_hbi))" "pc" "p" "''U5''" "a_punde_1a", OF z_Hos])
   assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
   assume z_Hpi:"(p=a_punde_1a)"
   assume z_Hhg:"(''U5''=?z_hbi)" (is "?z_hbn=_")
   show FALSE
   by (rule zenon_L1_ [OF z_Hhg])
  next
   assume z_Hmz:"(a_punde_1a \\in DOMAIN(pc))" (is "?z_hmz")
   assume z_Hpj:"(p~=a_punde_1a)"
   assume z_Hjw:"((pc[a_punde_1a])=?z_hbi)" (is "?z_hjx=_")
   show FALSE
   by (rule zenon_L6_ [OF z_Hhi z_Hs z_Hnv z_Hjw z_Hjy])
  next
   assume z_Hmy:"(~(a_punde_1a \\in DOMAIN(pc)))" (is "~?z_hmz")
   show FALSE
   by (rule zenon_L3_ [OF z_Hmw z_Hmy z_Hs])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 677"; *} qed
end
