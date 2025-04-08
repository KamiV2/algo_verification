(* automatically generated -- do not edit manually *)
theory tlapm_8dd80e imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

lemma ob'587: (* 8f6e856017f02378b7e0995e58fc4d99 *)
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
(* usable definition InvF2All suppressed *)
(* usable definition InvF3All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'103: "(Inv)"
assumes v'104: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'106: "((((((fapply ((pc), (p))) = (''F3''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U1''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U1'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U1'')]))))))) | (((((fapply ((pc), (p))) = (''F3U2''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U2'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U2'')]))))))) | (((((fapply ((pc), (p))) = (''F3U7''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U7'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U8''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U8'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U8'')]))))))))"
assumes v'107: "((((a_aunde_Fhash_primea :: c)) = ([(a_aunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Fa), (p)))))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'111: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'112: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'113: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'114: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'115: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'116: "((((a_dhash_primea :: c)) = (d)))"
assumes v'117: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'121: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'130: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'140: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U7'')))"
assumes v'159: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'587")
proof -
show "PROP ?ob'587"
using assms by auto
qed
end
