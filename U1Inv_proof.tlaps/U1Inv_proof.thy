(* automatically generated -- do not edit manually *)
theory U1Inv_proof imports Constant Zenon begin
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

lemma ob'332:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((((a_bunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'136: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6'')))"
assumes v'156: "((((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent'')))))))))))"
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'332")
proof -
ML_command {* writeln "*** TLAPS ENTER 332"; *}
show "PROP ?ob'332"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_16bc62.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_16bc62.znn.out
;; obligation #332
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'136" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6")
$hyp "v'156" (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hk:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'111 by blast
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbk")
 using v'156 by blast
 have zenon_L1_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hk ==> ?z_hj ==> ?z_hcc ==> _ ==> FALSE")
 proof -
  assume z_Hk:"?z_hk"
  assume z_Hj:"?z_hj"
  assume z_Hcc:"?z_hcc" (is "?z_hcd~=?z_hcf")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
  have z_Hch: "(?z_hbe~=?z_hcf)"
  by (rule subst [where P="(\<lambda>zenon_Vad. (((zenon_Vad[a_punde_1a])[''parent''])~=?z_hcf))", OF z_Hj z_Hcc])
  have z_Hcn: "(?z_hbe~=?z_hbi)"
  by (rule subst [where P="(\<lambda>zenon_Vcd. (?z_hbe~=((zenon_Vcd[a_punde_1a])[''parent''])))", OF z_Hk z_Hch])
  show FALSE
  by (rule notE [OF z_Hcn z_Hbd])
 qed
 have zenon_L2_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> FALSE" (is "?z_hj ==> ?z_hh ==> ?z_hct ==> ?z_hbl ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hbp")
  assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
  have z_Hcw: "(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp)" (is "?z_hcx~=_")
  by (rule subst [where P="(\<lambda>zenon_Ved. (((zenon_Ved[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hh z_Hct])
  have z_Hde: "(?z_hbm~=?z_hbp)"
  by (rule subst [where P="(\<lambda>zenon_Vgd. (((F[((zenon_Vgd[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hj z_Hcw])
  show FALSE
  by (rule notE [OF z_Hde z_Hbl])
 qed
 have zenon_L3_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hj ==> ?z_hk ==> ?z_hh ==> ?z_hdm ==> ?z_hbu ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hk:"?z_hk"
  assume z_Hh:"?z_hh"
  assume z_Hdm:"?z_hdm" (is "~?z_hdn")
  assume z_Hbu:"?z_hbu"
  have z_Hdr: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hds")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdm])
  have z_Hea: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heb")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[((zenon_Vod[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hdr])
  have z_Hek: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hel")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((zenon_Vqd[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hea])
  have z_Heu: "(~?z_hbu)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hk z_Hek])
  show FALSE
  by (rule notE [OF z_Heu z_Hbu])
 qed
 assume z_Hw:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hfe|?z_hff)")
 have z_Hcc: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcd~=?z_hcf")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfn: "(~?z_hff)" (is "~(?z_hfg|?z_hfh)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hct: "(((a_Fhash_primea[?z_hcd])[''bit''])~=1)" (is "?z_hcu~=?z_hbp")
 by (rule zenon_notor_0 [OF z_Hfn])
 have z_Hfo: "(~?z_hfh)" (is "~(?z_hfi&?z_hfj)")
 by (rule zenon_notor_1 [OF z_Hfn])
 show FALSE
 proof (rule zenon_notand [OF z_Hfo])
  assume z_Hfp:"(?z_hcu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
   show FALSE
   by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
  next
   assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
   show FALSE
   proof (rule zenon_or [OF z_Hbk])
    assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
   next
    assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
    have z_Hbr: "?z_hbr" (is "?z_hbm=_")
    by (rule zenon_and_0 [OF z_Hbq])
    have z_Hfq: "(((F[?z_hcd])[''bit''])~=0)" (is "?z_hcx~=_")
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((zenon_Vwc[?z_hcd])[''bit''])~=0))", OF z_Hh z_Hfp])
    have z_Hfw: "(?z_hbm~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[((zenon_Vwc[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_Hj z_Hfq])
    show FALSE
    by (rule notE [OF z_Hfw z_Hbr])
   qed
  qed
 next
  assume z_Hgd:"(~?z_hfj)" (is "~(?z_hdn|?z_hfk)")
  have z_Hdm: "(~?z_hdn)"
  by (rule zenon_notor_0 [OF z_Hgd])
  have z_Hge: "(~?z_hfk)" (is "~(?z_hfl&?z_hfm)")
  by (rule zenon_notor_1 [OF z_Hgd])
  show FALSE
  proof (rule zenon_notand [OF z_Hge])
   assume z_Hgf:"(((a_Fhash_primea[?z_hcf])[''rank''])~=((a_Fhash_primea[?z_hcd])[''rank'']))" (is "?z_hdp~=?z_hdo")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hca: "?z_hca" (is "?z_hbx=?z_hbv")
      by (rule zenon_and_0 [OF z_Hbz])
      have z_Hgg: "(((F[?z_hcf])[''rank''])~=?z_hdo)" (is "?z_hem~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcf])[''rank''])~=?z_hdo))", OF z_Hh z_Hgf])
      have z_Hgm: "(?z_hbx~=?z_hdo)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdo))", OF z_Hk z_Hgg])
      have z_Hgu: "(?z_hbx~=((F[?z_hcd])[''rank'']))" (is "_~=?z_hdt")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbx~=((zenon_Vyd[?z_hcd])[''rank''])))", OF z_Hh z_Hgm])
      have z_Hha: "(?z_hbx~=?z_hbv)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbx~=((F[((zenon_Vae[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hj z_Hgu])
      show FALSE
      by (rule notE [OF z_Hha z_Hca])
     qed
    qed
   qed
  next
   assume z_Hhi:"(~?z_hfm)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hcb: "?z_hcb"
      by (rule zenon_and_1 [OF z_Hbz])
      have z_Hhj: "(~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ?z_hcf))" (is "~?z_hhk")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~(((zenon_Vce[a_punde_1a])[''parent'']) <= ?z_hcf)))", OF z_Hj z_Hhi])
      have z_Hhr: "(~?z_hcb)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hk z_Hhj])
      show FALSE
      by (rule notE [OF z_Hhr z_Hcb])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 332"; *} qed
lemma ob'361:
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
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_u_U suppressed *)
(* usable definition Valid_v_U suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_b_U suppressed *)
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((((a_chash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U1'')))"
assumes v'154: "((((fapply ((a_ca), (a_punde_1a))) = (fapply ((a_uunde_Fa), (a_punde_1a))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (a_punde_1a))), (fapply ((a_ca), (a_punde_1a)))))))))))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'361")
proof -
ML_command {* writeln "*** TLAPS ENTER 361"; *}
show "PROP ?ob'361"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_3bf7fa.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_3bf7fa.znn.out
;; obligation #361
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) h6d4c4cb96f3fa83008da51bad83fbb
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea (TLA.in a_chash_primea
(TLA.FuncSet PROCESSES NodeSet)) a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U1")
$hyp "v'154" (\/ (= (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))))))
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
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbd|?z_hbh")
 using v'154 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbd ==> FALSE" (is "?z_hi ==> ?z_hn ==> ?z_hbz ==> _ ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hn:"?z_hn"
  assume z_Hbz:"?z_hbz" (is "?z_hca~=?z_hcb")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcc: "(?z_hbe~=?z_hcb)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcb))", OF z_Hn z_Hbz])
  have z_Hch: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=(zenon_Vpb[a_punde_1a])))", OF z_Hi z_Hcc])
  show FALSE
  by (rule notE [OF z_Hch z_Hbd])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hn ==> ?z_hh ==> ?z_hcm ==> ?z_hbi ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hh:"?z_hh"
  assume z_Hcm:"?z_hcm" (is "?z_hcn~=?z_hbm")
  assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
  have z_Hcp: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm)" (is "?z_hcq~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hh z_Hcm])
  have z_Hcx: "(?z_hbj~=?z_hbm)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hn z_Hcp])
  show FALSE
  by (rule notE [OF z_Hcx z_Hbi])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hn ==> ?z_hi ==> ?z_hh ==> ?z_hde ==> ?z_hbr ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hde:"?z_hde" (is "~?z_hdf")
  assume z_Hbr:"?z_hbr"
  have z_Hdj: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdk")
  by (rule subst [where P="(\<lambda>zenon_Vsa. (~(((zenon_Vsa[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hde])
  have z_Hds: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdt")
  by (rule subst [where P="(\<lambda>zenon_Vfb. (~(((F[(zenon_Vfb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hn z_Hdj])
  have z_Heb: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hec")
  by (rule subst [where P="(\<lambda>zenon_Vgb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vgb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hds])
  have z_Hel: "(~?z_hbr)"
  by (rule subst [where P="(\<lambda>zenon_Vhb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vhb[a_punde_1a])])[''rank'']))))", OF z_Hi z_Heb])
  show FALSE
  by (rule notE [OF z_Hel z_Hbr])
 qed
 assume z_Hw:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_heu|?z_hev)")
 have z_Hbz: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hca~=?z_hcb")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfd: "(~?z_hev)" (is "~(?z_hew|?z_hex)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcm: "(((a_Fhash_primea[?z_hca])[''bit''])~=1)" (is "?z_hcn~=?z_hbm")
 by (rule zenon_notor_0 [OF z_Hfd])
 have z_Hfe: "(~?z_hex)" (is "~(?z_hey&?z_hez)")
 by (rule zenon_notor_1 [OF z_Hfd])
 show FALSE
 proof (rule zenon_notand [OF z_Hfe])
  assume z_Hff:"(?z_hcn~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
  next
   assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
   show FALSE
   proof (rule zenon_or [OF z_Hbh])
    assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
   next
    assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
    have z_Hbo: "?z_hbo" (is "?z_hbj=_")
    by (rule zenon_and_0 [OF z_Hbn])
    have z_Hfg: "(((F[?z_hca])[''bit''])~=0)" (is "?z_hcq~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hca])[''bit''])~=0))", OF z_Hh z_Hff])
    have z_Hfm: "(?z_hbj~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[(zenon_Vwc[a_punde_1a])])[''bit''])~=0))", OF z_Hn z_Hfg])
    show FALSE
    by (rule notE [OF z_Hfm z_Hbo])
   qed
  qed
 next
  assume z_Hft:"(~?z_hez)" (is "~(?z_hdf|?z_hfa)")
  have z_Hde: "(~?z_hdf)"
  by (rule zenon_notor_0 [OF z_Hft])
  have z_Hfu: "(~?z_hfa)" (is "~(?z_hfb&?z_hfc)")
  by (rule zenon_notor_1 [OF z_Hft])
  show FALSE
  proof (rule zenon_notand [OF z_Hfu])
   assume z_Hfv:"(((a_Fhash_primea[?z_hcb])[''rank''])~=((a_Fhash_primea[?z_hca])[''rank'']))" (is "?z_hdh~=?z_hdg")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hbx: "?z_hbx" (is "?z_hbu=?z_hbs")
      by (rule zenon_and_0 [OF z_Hbw])
      have z_Hfw: "(((F[?z_hcb])[''rank''])~=?z_hdg)" (is "?z_hed~=_")
      by (rule subst [where P="(\<lambda>zenon_Vac. (((zenon_Vac[?z_hcb])[''rank''])~=?z_hdg))", OF z_Hh z_Hfv])
      have z_Hgc: "(?z_hbu~=?z_hdg)"
      by (rule subst [where P="(\<lambda>zenon_Vic. (((F[(zenon_Vic[a_punde_1a])])[''rank''])~=?z_hdg))", OF z_Hi z_Hfw])
      have z_Hgj: "(?z_hbu~=((F[?z_hca])[''rank'']))" (is "_~=?z_hdl")
      by (rule subst [where P="(\<lambda>zenon_Vjc. (?z_hbu~=((zenon_Vjc[?z_hca])[''rank''])))", OF z_Hh z_Hgc])
      have z_Hgp: "(?z_hbu~=?z_hbs)"
      by (rule subst [where P="(\<lambda>zenon_Vkc. (?z_hbu~=((F[(zenon_Vkc[a_punde_1a])])[''rank''])))", OF z_Hn z_Hgj])
      show FALSE
      by (rule notE [OF z_Hgp z_Hbx])
     qed
    qed
   qed
  next
   assume z_Hgw:"(~?z_hfc)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hby: "?z_hby"
      by (rule zenon_and_1 [OF z_Hbw])
      have z_Hgx: "(~((a_ca[a_punde_1a]) <= ?z_hcb))" (is "~?z_hgy")
      by (rule subst [where P="(\<lambda>zenon_Vta. (~((zenon_Vta[a_punde_1a]) <= ?z_hcb)))", OF z_Hn z_Hgw])
      have z_Hhe: "(~?z_hby)"
      by (rule subst [where P="(\<lambda>zenon_Vbb. (~((a_ca[a_punde_1a]) <= (zenon_Vbb[a_punde_1a]))))", OF z_Hi z_Hgx])
      show FALSE
      by (rule notE [OF z_Hhe z_Hby])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 361"; *} qed
lemma ob'364:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U1'')))"
assumes v'155: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'364")
proof -
ML_command {* writeln "*** TLAPS ENTER 364"; *}
show "PROP ?ob'364"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_ae6495.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_ae6495.znn.out
;; obligation #364
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Fhash_primea
(TLA.FuncSet PROCESSES FieldSet)) a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U1")
$hyp "v'155" (\/ (= (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_uunde_Fa[a_punde_1a])=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1)|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbj")
 using v'155 by blast
 have zenon_L1_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hj ==> ?z_hi ==> ?z_hcb ==> _ ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hi:"?z_hi"
  assume z_Hcb:"?z_hcb" (is "?z_hcc~=?z_hcd")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcf: "(?z_hbe~=?z_hcd)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcd))", OF z_Hi z_Hcb])
  have z_Hck: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=((zenon_Vpb[a_punde_1a])[''parent''])))", OF z_Hj z_Hcf])
  show FALSE
  by (rule notE [OF z_Hck z_Hbd])
 qed
 have zenon_L2_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hi ==> ?z_hh ==> ?z_hcq ==> ?z_hbk ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hcq:"?z_hcq" (is "?z_hcr~=?z_hbo")
  assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
  have z_Hct: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo)" (is "?z_hcu~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hh z_Hcq])
  have z_Hdb: "(?z_hbl~=?z_hbo)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hi z_Hct])
  show FALSE
  by (rule notE [OF z_Hdb z_Hbk])
 qed
 have zenon_L3_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hi ==> ?z_hj ==> ?z_hh ==> ?z_hdi ==> ?z_hbt ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hdi:"?z_hdi" (is "~?z_hdj")
  assume z_Hbt:"?z_hbt"
  have z_Hdn: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdo")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdi])
  have z_Hdw: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[(zenon_Vod[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hi z_Hdn])
  have z_Hef: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heg")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vqd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdw])
  have z_Hep: "(~?z_hbt)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hef])
  show FALSE
  by (rule notE [OF z_Hep z_Hbt])
 qed
 assume z_Hw:"(~(((a_uunde_Fhash_primea[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))&((a_uunde_Fhash_primea[a_punde_1a]) <= ((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hez|?z_hfa)")
 have z_Hcb: "((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcc~=?z_hcd")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfi: "(~?z_hfa)" (is "~(?z_hfb|?z_hfc)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcq: "(((a_Fhash_primea[?z_hcc])[''bit''])~=1)" (is "?z_hcr~=?z_hbo")
 by (rule zenon_notor_0 [OF z_Hfi])
 have z_Hfj: "(~?z_hfc)" (is "~(?z_hfd&?z_hfe)")
 by (rule zenon_notor_1 [OF z_Hfi])
 show FALSE
 proof (rule zenon_notand [OF z_Hfj])
  assume z_Hfk:"(?z_hcr~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
  next
   assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
   show FALSE
   proof (rule zenon_or [OF z_Hbj])
    assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
   next
    assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
    have z_Hbq: "?z_hbq" (is "?z_hbl=_")
    by (rule zenon_and_0 [OF z_Hbp])
    have z_Hfl: "(((F[?z_hcc])[''bit''])~=0)" (is "?z_hcu~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hcc])[''bit''])~=0))", OF z_Hh z_Hfk])
    have z_Hfr: "(?z_hbl~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vkd. (((F[(zenon_Vkd[a_punde_1a])])[''bit''])~=0))", OF z_Hi z_Hfl])
    show FALSE
    by (rule notE [OF z_Hfr z_Hbq])
   qed
  qed
 next
  assume z_Hfy:"(~?z_hfe)" (is "~(?z_hdj|?z_hff)")
  have z_Hdi: "(~?z_hdj)"
  by (rule zenon_notor_0 [OF z_Hfy])
  have z_Hfz: "(~?z_hff)" (is "~(?z_hfg&?z_hfh)")
  by (rule zenon_notor_1 [OF z_Hfy])
  show FALSE
  proof (rule zenon_notand [OF z_Hfz])
   assume z_Hga:"(((a_Fhash_primea[?z_hcd])[''rank''])~=((a_Fhash_primea[?z_hcc])[''rank'']))" (is "?z_hdl~=?z_hdk")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hbz: "?z_hbz" (is "?z_hbw=?z_hbu")
      by (rule zenon_and_0 [OF z_Hby])
      have z_Hgb: "(((F[?z_hcd])[''rank''])~=?z_hdk)" (is "?z_heh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcd])[''rank''])~=?z_hdk))", OF z_Hh z_Hga])
      have z_Hgh: "(?z_hbw~=?z_hdk)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdk))", OF z_Hj z_Hgb])
      have z_Hgp: "(?z_hbw~=((F[?z_hcc])[''rank'']))" (is "_~=?z_hdp")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbw~=((zenon_Vyd[?z_hcc])[''rank''])))", OF z_Hh z_Hgh])
      have z_Hgv: "(?z_hbw~=?z_hbu)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbw~=((F[(zenon_Vae[a_punde_1a])])[''rank''])))", OF z_Hi z_Hgp])
      show FALSE
      by (rule notE [OF z_Hgv z_Hbz])
     qed
    qed
   qed
  next
   assume z_Hhc:"(~?z_hfh)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hby])
      have z_Hhd: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hcd))" (is "~?z_hhe")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~((zenon_Vce[a_punde_1a]) <= ?z_hcd)))", OF z_Hi z_Hhc])
      have z_Hhk: "(~?z_hca)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hj z_Hhd])
      show FALSE
      by (rule notE [OF z_Hhk z_Hca])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 364"; *} qed
lemma ob'367:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((((a_bunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'137: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U1'')))"
assumes v'156: "((((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent'')))))))))))"
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'367")
proof -
ML_command {* writeln "*** TLAPS ENTER 367"; *}
show "PROP ?ob'367"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_452faa.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_452faa.znn.out
;; obligation #367
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'137" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U1")
$hyp "v'156" (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hk:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'111 by blast
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbk")
 using v'156 by blast
 have zenon_L1_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hk ==> ?z_hj ==> ?z_hcc ==> _ ==> FALSE")
 proof -
  assume z_Hk:"?z_hk"
  assume z_Hj:"?z_hj"
  assume z_Hcc:"?z_hcc" (is "?z_hcd~=?z_hcf")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
  have z_Hch: "(?z_hbe~=?z_hcf)"
  by (rule subst [where P="(\<lambda>zenon_Vad. (((zenon_Vad[a_punde_1a])[''parent''])~=?z_hcf))", OF z_Hj z_Hcc])
  have z_Hcn: "(?z_hbe~=?z_hbi)"
  by (rule subst [where P="(\<lambda>zenon_Vcd. (?z_hbe~=((zenon_Vcd[a_punde_1a])[''parent''])))", OF z_Hk z_Hch])
  show FALSE
  by (rule notE [OF z_Hcn z_Hbd])
 qed
 have zenon_L2_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> FALSE" (is "?z_hj ==> ?z_hh ==> ?z_hct ==> ?z_hbl ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hbp")
  assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
  have z_Hcw: "(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp)" (is "?z_hcx~=_")
  by (rule subst [where P="(\<lambda>zenon_Ved. (((zenon_Ved[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hh z_Hct])
  have z_Hde: "(?z_hbm~=?z_hbp)"
  by (rule subst [where P="(\<lambda>zenon_Vgd. (((F[((zenon_Vgd[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hj z_Hcw])
  show FALSE
  by (rule notE [OF z_Hde z_Hbl])
 qed
 have zenon_L3_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hj ==> ?z_hk ==> ?z_hh ==> ?z_hdm ==> ?z_hbu ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hk:"?z_hk"
  assume z_Hh:"?z_hh"
  assume z_Hdm:"?z_hdm" (is "~?z_hdn")
  assume z_Hbu:"?z_hbu"
  have z_Hdr: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hds")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdm])
  have z_Hea: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heb")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[((zenon_Vod[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hdr])
  have z_Hek: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hel")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((zenon_Vqd[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hea])
  have z_Heu: "(~?z_hbu)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hk z_Hek])
  show FALSE
  by (rule notE [OF z_Heu z_Hbu])
 qed
 assume z_Hw:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hfe|?z_hff)")
 have z_Hcc: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcd~=?z_hcf")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfn: "(~?z_hff)" (is "~(?z_hfg|?z_hfh)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hct: "(((a_Fhash_primea[?z_hcd])[''bit''])~=1)" (is "?z_hcu~=?z_hbp")
 by (rule zenon_notor_0 [OF z_Hfn])
 have z_Hfo: "(~?z_hfh)" (is "~(?z_hfi&?z_hfj)")
 by (rule zenon_notor_1 [OF z_Hfn])
 show FALSE
 proof (rule zenon_notand [OF z_Hfo])
  assume z_Hfp:"(?z_hcu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
   show FALSE
   by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
  next
   assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
   show FALSE
   proof (rule zenon_or [OF z_Hbk])
    assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
   next
    assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
    have z_Hbr: "?z_hbr" (is "?z_hbm=_")
    by (rule zenon_and_0 [OF z_Hbq])
    have z_Hfq: "(((F[?z_hcd])[''bit''])~=0)" (is "?z_hcx~=_")
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((zenon_Vwc[?z_hcd])[''bit''])~=0))", OF z_Hh z_Hfp])
    have z_Hfw: "(?z_hbm~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[((zenon_Vwc[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_Hj z_Hfq])
    show FALSE
    by (rule notE [OF z_Hfw z_Hbr])
   qed
  qed
 next
  assume z_Hgd:"(~?z_hfj)" (is "~(?z_hdn|?z_hfk)")
  have z_Hdm: "(~?z_hdn)"
  by (rule zenon_notor_0 [OF z_Hgd])
  have z_Hge: "(~?z_hfk)" (is "~(?z_hfl&?z_hfm)")
  by (rule zenon_notor_1 [OF z_Hgd])
  show FALSE
  proof (rule zenon_notand [OF z_Hge])
   assume z_Hgf:"(((a_Fhash_primea[?z_hcf])[''rank''])~=((a_Fhash_primea[?z_hcd])[''rank'']))" (is "?z_hdp~=?z_hdo")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hca: "?z_hca" (is "?z_hbx=?z_hbv")
      by (rule zenon_and_0 [OF z_Hbz])
      have z_Hgg: "(((F[?z_hcf])[''rank''])~=?z_hdo)" (is "?z_hem~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcf])[''rank''])~=?z_hdo))", OF z_Hh z_Hgf])
      have z_Hgm: "(?z_hbx~=?z_hdo)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdo))", OF z_Hk z_Hgg])
      have z_Hgu: "(?z_hbx~=((F[?z_hcd])[''rank'']))" (is "_~=?z_hdt")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbx~=((zenon_Vyd[?z_hcd])[''rank''])))", OF z_Hh z_Hgm])
      have z_Hha: "(?z_hbx~=?z_hbv)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbx~=((F[((zenon_Vae[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hj z_Hgu])
      show FALSE
      by (rule notE [OF z_Hha z_Hca])
     qed
    qed
   qed
  next
   assume z_Hhi:"(~?z_hfm)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hcb: "?z_hcb"
      by (rule zenon_and_1 [OF z_Hbz])
      have z_Hhj: "(~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ?z_hcf))" (is "~?z_hhk")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~(((zenon_Vce[a_punde_1a])[''parent'']) <= ?z_hcf)))", OF z_Hj z_Hhi])
      have z_Hhr: "(~?z_hcb)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hk z_Hhj])
      show FALSE
      by (rule notE [OF z_Hhr z_Hcb])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 367"; *} qed
lemma ob'399:
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
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_u_U suppressed *)
(* usable definition Valid_v_U suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_b_U suppressed *)
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((((a_chash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'138: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U2'')))"
assumes v'156: "((((fapply ((a_ca), (a_punde_1a))) = (fapply ((a_uunde_Fa), (a_punde_1a))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (a_punde_1a))), (fapply ((a_ca), (a_punde_1a)))))))))))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'399")
proof -
ML_command {* writeln "*** TLAPS ENTER 399"; *}
show "PROP ?ob'399"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_6c3480.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_6c3480.znn.out
;; obligation #399
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) h6d4c4cb96f3fa83008da51bad83fbb
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea (TLA.in a_chash_primea
(TLA.FuncSet PROCESSES NodeSet)) a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'138" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U2")
$hyp "v'156" (\/ (= (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))))))
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
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbd|?z_hbh")
 using v'156 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbd ==> FALSE" (is "?z_hi ==> ?z_hn ==> ?z_hbz ==> _ ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hn:"?z_hn"
  assume z_Hbz:"?z_hbz" (is "?z_hca~=?z_hcb")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcc: "(?z_hbe~=?z_hcb)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcb))", OF z_Hn z_Hbz])
  have z_Hch: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=(zenon_Vpb[a_punde_1a])))", OF z_Hi z_Hcc])
  show FALSE
  by (rule notE [OF z_Hch z_Hbd])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hn ==> ?z_hh ==> ?z_hcm ==> ?z_hbi ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hh:"?z_hh"
  assume z_Hcm:"?z_hcm" (is "?z_hcn~=?z_hbm")
  assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
  have z_Hcp: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm)" (is "?z_hcq~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hh z_Hcm])
  have z_Hcx: "(?z_hbj~=?z_hbm)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hn z_Hcp])
  show FALSE
  by (rule notE [OF z_Hcx z_Hbi])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hn ==> ?z_hi ==> ?z_hh ==> ?z_hde ==> ?z_hbr ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hde:"?z_hde" (is "~?z_hdf")
  assume z_Hbr:"?z_hbr"
  have z_Hdj: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdk")
  by (rule subst [where P="(\<lambda>zenon_Vsa. (~(((zenon_Vsa[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hde])
  have z_Hds: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdt")
  by (rule subst [where P="(\<lambda>zenon_Vfb. (~(((F[(zenon_Vfb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hn z_Hdj])
  have z_Heb: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hec")
  by (rule subst [where P="(\<lambda>zenon_Vgb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vgb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hds])
  have z_Hel: "(~?z_hbr)"
  by (rule subst [where P="(\<lambda>zenon_Vhb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vhb[a_punde_1a])])[''rank'']))))", OF z_Hi z_Heb])
  show FALSE
  by (rule notE [OF z_Hel z_Hbr])
 qed
 assume z_Hw:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_heu|?z_hev)")
 have z_Hbz: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hca~=?z_hcb")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfd: "(~?z_hev)" (is "~(?z_hew|?z_hex)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcm: "(((a_Fhash_primea[?z_hca])[''bit''])~=1)" (is "?z_hcn~=?z_hbm")
 by (rule zenon_notor_0 [OF z_Hfd])
 have z_Hfe: "(~?z_hex)" (is "~(?z_hey&?z_hez)")
 by (rule zenon_notor_1 [OF z_Hfd])
 show FALSE
 proof (rule zenon_notand [OF z_Hfe])
  assume z_Hff:"(?z_hcn~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
  next
   assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
   show FALSE
   proof (rule zenon_or [OF z_Hbh])
    assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
   next
    assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
    have z_Hbo: "?z_hbo" (is "?z_hbj=_")
    by (rule zenon_and_0 [OF z_Hbn])
    have z_Hfg: "(((F[?z_hca])[''bit''])~=0)" (is "?z_hcq~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hca])[''bit''])~=0))", OF z_Hh z_Hff])
    have z_Hfm: "(?z_hbj~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[(zenon_Vwc[a_punde_1a])])[''bit''])~=0))", OF z_Hn z_Hfg])
    show FALSE
    by (rule notE [OF z_Hfm z_Hbo])
   qed
  qed
 next
  assume z_Hft:"(~?z_hez)" (is "~(?z_hdf|?z_hfa)")
  have z_Hde: "(~?z_hdf)"
  by (rule zenon_notor_0 [OF z_Hft])
  have z_Hfu: "(~?z_hfa)" (is "~(?z_hfb&?z_hfc)")
  by (rule zenon_notor_1 [OF z_Hft])
  show FALSE
  proof (rule zenon_notand [OF z_Hfu])
   assume z_Hfv:"(((a_Fhash_primea[?z_hcb])[''rank''])~=((a_Fhash_primea[?z_hca])[''rank'']))" (is "?z_hdh~=?z_hdg")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hbx: "?z_hbx" (is "?z_hbu=?z_hbs")
      by (rule zenon_and_0 [OF z_Hbw])
      have z_Hfw: "(((F[?z_hcb])[''rank''])~=?z_hdg)" (is "?z_hed~=_")
      by (rule subst [where P="(\<lambda>zenon_Vac. (((zenon_Vac[?z_hcb])[''rank''])~=?z_hdg))", OF z_Hh z_Hfv])
      have z_Hgc: "(?z_hbu~=?z_hdg)"
      by (rule subst [where P="(\<lambda>zenon_Vic. (((F[(zenon_Vic[a_punde_1a])])[''rank''])~=?z_hdg))", OF z_Hi z_Hfw])
      have z_Hgj: "(?z_hbu~=((F[?z_hca])[''rank'']))" (is "_~=?z_hdl")
      by (rule subst [where P="(\<lambda>zenon_Vjc. (?z_hbu~=((zenon_Vjc[?z_hca])[''rank''])))", OF z_Hh z_Hgc])
      have z_Hgp: "(?z_hbu~=?z_hbs)"
      by (rule subst [where P="(\<lambda>zenon_Vkc. (?z_hbu~=((F[(zenon_Vkc[a_punde_1a])])[''rank''])))", OF z_Hn z_Hgj])
      show FALSE
      by (rule notE [OF z_Hgp z_Hbx])
     qed
    qed
   qed
  next
   assume z_Hgw:"(~?z_hfc)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hby: "?z_hby"
      by (rule zenon_and_1 [OF z_Hbw])
      have z_Hgx: "(~((a_ca[a_punde_1a]) <= ?z_hcb))" (is "~?z_hgy")
      by (rule subst [where P="(\<lambda>zenon_Vta. (~((zenon_Vta[a_punde_1a]) <= ?z_hcb)))", OF z_Hn z_Hgw])
      have z_Hhe: "(~?z_hby)"
      by (rule subst [where P="(\<lambda>zenon_Vbb. (~((a_ca[a_punde_1a]) <= (zenon_Vbb[a_punde_1a]))))", OF z_Hi z_Hgx])
      show FALSE
      by (rule notE [OF z_Hhe z_Hby])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 399"; *} qed
lemma ob'402:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'138: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U2'')))"
assumes v'157: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'402")
proof -
ML_command {* writeln "*** TLAPS ENTER 402"; *}
show "PROP ?ob'402"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_36831a.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_36831a.znn.out
;; obligation #402
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Fhash_primea
(TLA.FuncSet PROCESSES FieldSet)) a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'138" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U2")
$hyp "v'157" (\/ (= (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_uunde_Fa[a_punde_1a])=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1)|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbj")
 using v'157 by blast
 have zenon_L1_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hj ==> ?z_hi ==> ?z_hcb ==> _ ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hi:"?z_hi"
  assume z_Hcb:"?z_hcb" (is "?z_hcc~=?z_hcd")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcf: "(?z_hbe~=?z_hcd)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcd))", OF z_Hi z_Hcb])
  have z_Hck: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=((zenon_Vpb[a_punde_1a])[''parent''])))", OF z_Hj z_Hcf])
  show FALSE
  by (rule notE [OF z_Hck z_Hbd])
 qed
 have zenon_L2_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hi ==> ?z_hh ==> ?z_hcq ==> ?z_hbk ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hcq:"?z_hcq" (is "?z_hcr~=?z_hbo")
  assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
  have z_Hct: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo)" (is "?z_hcu~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hh z_Hcq])
  have z_Hdb: "(?z_hbl~=?z_hbo)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hi z_Hct])
  show FALSE
  by (rule notE [OF z_Hdb z_Hbk])
 qed
 have zenon_L3_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hi ==> ?z_hj ==> ?z_hh ==> ?z_hdi ==> ?z_hbt ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hdi:"?z_hdi" (is "~?z_hdj")
  assume z_Hbt:"?z_hbt"
  have z_Hdn: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdo")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdi])
  have z_Hdw: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[(zenon_Vod[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hi z_Hdn])
  have z_Hef: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heg")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vqd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdw])
  have z_Hep: "(~?z_hbt)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hef])
  show FALSE
  by (rule notE [OF z_Hep z_Hbt])
 qed
 assume z_Hw:"(~(((a_uunde_Fhash_primea[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))&((a_uunde_Fhash_primea[a_punde_1a]) <= ((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hez|?z_hfa)")
 have z_Hcb: "((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcc~=?z_hcd")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfi: "(~?z_hfa)" (is "~(?z_hfb|?z_hfc)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcq: "(((a_Fhash_primea[?z_hcc])[''bit''])~=1)" (is "?z_hcr~=?z_hbo")
 by (rule zenon_notor_0 [OF z_Hfi])
 have z_Hfj: "(~?z_hfc)" (is "~(?z_hfd&?z_hfe)")
 by (rule zenon_notor_1 [OF z_Hfi])
 show FALSE
 proof (rule zenon_notand [OF z_Hfj])
  assume z_Hfk:"(?z_hcr~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
  next
   assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
   show FALSE
   proof (rule zenon_or [OF z_Hbj])
    assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
   next
    assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
    have z_Hbq: "?z_hbq" (is "?z_hbl=_")
    by (rule zenon_and_0 [OF z_Hbp])
    have z_Hfl: "(((F[?z_hcc])[''bit''])~=0)" (is "?z_hcu~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hcc])[''bit''])~=0))", OF z_Hh z_Hfk])
    have z_Hfr: "(?z_hbl~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vkd. (((F[(zenon_Vkd[a_punde_1a])])[''bit''])~=0))", OF z_Hi z_Hfl])
    show FALSE
    by (rule notE [OF z_Hfr z_Hbq])
   qed
  qed
 next
  assume z_Hfy:"(~?z_hfe)" (is "~(?z_hdj|?z_hff)")
  have z_Hdi: "(~?z_hdj)"
  by (rule zenon_notor_0 [OF z_Hfy])
  have z_Hfz: "(~?z_hff)" (is "~(?z_hfg&?z_hfh)")
  by (rule zenon_notor_1 [OF z_Hfy])
  show FALSE
  proof (rule zenon_notand [OF z_Hfz])
   assume z_Hga:"(((a_Fhash_primea[?z_hcd])[''rank''])~=((a_Fhash_primea[?z_hcc])[''rank'']))" (is "?z_hdl~=?z_hdk")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hbz: "?z_hbz" (is "?z_hbw=?z_hbu")
      by (rule zenon_and_0 [OF z_Hby])
      have z_Hgb: "(((F[?z_hcd])[''rank''])~=?z_hdk)" (is "?z_heh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcd])[''rank''])~=?z_hdk))", OF z_Hh z_Hga])
      have z_Hgh: "(?z_hbw~=?z_hdk)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdk))", OF z_Hj z_Hgb])
      have z_Hgp: "(?z_hbw~=((F[?z_hcc])[''rank'']))" (is "_~=?z_hdp")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbw~=((zenon_Vyd[?z_hcc])[''rank''])))", OF z_Hh z_Hgh])
      have z_Hgv: "(?z_hbw~=?z_hbu)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbw~=((F[(zenon_Vae[a_punde_1a])])[''rank''])))", OF z_Hi z_Hgp])
      show FALSE
      by (rule notE [OF z_Hgv z_Hbz])
     qed
    qed
   qed
  next
   assume z_Hhc:"(~?z_hfh)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hby])
      have z_Hhd: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hcd))" (is "~?z_hhe")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~((zenon_Vce[a_punde_1a]) <= ?z_hcd)))", OF z_Hi z_Hhc])
      have z_Hhk: "(~?z_hca)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hj z_Hhd])
      show FALSE
      by (rule notE [OF z_Hhk z_Hca])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 402"; *} qed
lemma ob'405:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((((a_bunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'138: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U2'')))"
assumes v'158: "((((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent'')))))))))))"
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'405")
proof -
ML_command {* writeln "*** TLAPS ENTER 405"; *}
show "PROP ?ob'405"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_75a3c5.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_75a3c5.znn.out
;; obligation #405
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'138" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U2")
$hyp "v'158" (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hk:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'111 by blast
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbk")
 using v'158 by blast
 have zenon_L1_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hk ==> ?z_hj ==> ?z_hcc ==> _ ==> FALSE")
 proof -
  assume z_Hk:"?z_hk"
  assume z_Hj:"?z_hj"
  assume z_Hcc:"?z_hcc" (is "?z_hcd~=?z_hcf")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
  have z_Hch: "(?z_hbe~=?z_hcf)"
  by (rule subst [where P="(\<lambda>zenon_Vad. (((zenon_Vad[a_punde_1a])[''parent''])~=?z_hcf))", OF z_Hj z_Hcc])
  have z_Hcn: "(?z_hbe~=?z_hbi)"
  by (rule subst [where P="(\<lambda>zenon_Vcd. (?z_hbe~=((zenon_Vcd[a_punde_1a])[''parent''])))", OF z_Hk z_Hch])
  show FALSE
  by (rule notE [OF z_Hcn z_Hbd])
 qed
 have zenon_L2_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> FALSE" (is "?z_hj ==> ?z_hh ==> ?z_hct ==> ?z_hbl ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hbp")
  assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
  have z_Hcw: "(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp)" (is "?z_hcx~=_")
  by (rule subst [where P="(\<lambda>zenon_Ved. (((zenon_Ved[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hh z_Hct])
  have z_Hde: "(?z_hbm~=?z_hbp)"
  by (rule subst [where P="(\<lambda>zenon_Vgd. (((F[((zenon_Vgd[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hj z_Hcw])
  show FALSE
  by (rule notE [OF z_Hde z_Hbl])
 qed
 have zenon_L3_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hj ==> ?z_hk ==> ?z_hh ==> ?z_hdm ==> ?z_hbu ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hk:"?z_hk"
  assume z_Hh:"?z_hh"
  assume z_Hdm:"?z_hdm" (is "~?z_hdn")
  assume z_Hbu:"?z_hbu"
  have z_Hdr: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hds")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdm])
  have z_Hea: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heb")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[((zenon_Vod[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hdr])
  have z_Hek: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hel")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((zenon_Vqd[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hea])
  have z_Heu: "(~?z_hbu)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hk z_Hek])
  show FALSE
  by (rule notE [OF z_Heu z_Hbu])
 qed
 assume z_Hw:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hfe|?z_hff)")
 have z_Hcc: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcd~=?z_hcf")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfn: "(~?z_hff)" (is "~(?z_hfg|?z_hfh)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hct: "(((a_Fhash_primea[?z_hcd])[''bit''])~=1)" (is "?z_hcu~=?z_hbp")
 by (rule zenon_notor_0 [OF z_Hfn])
 have z_Hfo: "(~?z_hfh)" (is "~(?z_hfi&?z_hfj)")
 by (rule zenon_notor_1 [OF z_Hfn])
 show FALSE
 proof (rule zenon_notand [OF z_Hfo])
  assume z_Hfp:"(?z_hcu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
   show FALSE
   by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
  next
   assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
   show FALSE
   proof (rule zenon_or [OF z_Hbk])
    assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
   next
    assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
    have z_Hbr: "?z_hbr" (is "?z_hbm=_")
    by (rule zenon_and_0 [OF z_Hbq])
    have z_Hfq: "(((F[?z_hcd])[''bit''])~=0)" (is "?z_hcx~=_")
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((zenon_Vwc[?z_hcd])[''bit''])~=0))", OF z_Hh z_Hfp])
    have z_Hfw: "(?z_hbm~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[((zenon_Vwc[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_Hj z_Hfq])
    show FALSE
    by (rule notE [OF z_Hfw z_Hbr])
   qed
  qed
 next
  assume z_Hgd:"(~?z_hfj)" (is "~(?z_hdn|?z_hfk)")
  have z_Hdm: "(~?z_hdn)"
  by (rule zenon_notor_0 [OF z_Hgd])
  have z_Hge: "(~?z_hfk)" (is "~(?z_hfl&?z_hfm)")
  by (rule zenon_notor_1 [OF z_Hgd])
  show FALSE
  proof (rule zenon_notand [OF z_Hge])
   assume z_Hgf:"(((a_Fhash_primea[?z_hcf])[''rank''])~=((a_Fhash_primea[?z_hcd])[''rank'']))" (is "?z_hdp~=?z_hdo")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hca: "?z_hca" (is "?z_hbx=?z_hbv")
      by (rule zenon_and_0 [OF z_Hbz])
      have z_Hgg: "(((F[?z_hcf])[''rank''])~=?z_hdo)" (is "?z_hem~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcf])[''rank''])~=?z_hdo))", OF z_Hh z_Hgf])
      have z_Hgm: "(?z_hbx~=?z_hdo)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdo))", OF z_Hk z_Hgg])
      have z_Hgu: "(?z_hbx~=((F[?z_hcd])[''rank'']))" (is "_~=?z_hdt")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbx~=((zenon_Vyd[?z_hcd])[''rank''])))", OF z_Hh z_Hgm])
      have z_Hha: "(?z_hbx~=?z_hbv)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbx~=((F[((zenon_Vae[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hj z_Hgu])
      show FALSE
      by (rule notE [OF z_Hha z_Hca])
     qed
    qed
   qed
  next
   assume z_Hhi:"(~?z_hfm)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hcb: "?z_hcb"
      by (rule zenon_and_1 [OF z_Hbz])
      have z_Hhj: "(~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ?z_hcf))" (is "~?z_hhk")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~(((zenon_Vce[a_punde_1a])[''parent'']) <= ?z_hcf)))", OF z_Hj z_Hhi])
      have z_Hhr: "(~?z_hcb)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hk z_Hhj])
      show FALSE
      by (rule notE [OF z_Hhr z_Hcb])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 405"; *} qed
lemma ob'437:
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
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_u_U suppressed *)
(* usable definition Valid_v_U suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_b_U suppressed *)
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((((a_chash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'139: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U7'')))"
assumes v'157: "((((fapply ((a_ca), (a_punde_1a))) = (fapply ((a_uunde_Fa), (a_punde_1a))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (a_punde_1a))), (fapply ((a_ca), (a_punde_1a)))))))))))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'437")
proof -
ML_command {* writeln "*** TLAPS ENTER 437"; *}
show "PROP ?ob'437"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_b92e14.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_b92e14.znn.out
;; obligation #437
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) h6d4c4cb96f3fa83008da51bad83fbb
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea (TLA.in a_chash_primea
(TLA.FuncSet PROCESSES NodeSet)) a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'139" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U7")
$hyp "v'157" (\/ (= (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))))))
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
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbd|?z_hbh")
 using v'157 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbd ==> FALSE" (is "?z_hi ==> ?z_hn ==> ?z_hbz ==> _ ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hn:"?z_hn"
  assume z_Hbz:"?z_hbz" (is "?z_hca~=?z_hcb")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcc: "(?z_hbe~=?z_hcb)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcb))", OF z_Hn z_Hbz])
  have z_Hch: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=(zenon_Vpb[a_punde_1a])))", OF z_Hi z_Hcc])
  show FALSE
  by (rule notE [OF z_Hch z_Hbd])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hn ==> ?z_hh ==> ?z_hcm ==> ?z_hbi ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hh:"?z_hh"
  assume z_Hcm:"?z_hcm" (is "?z_hcn~=?z_hbm")
  assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
  have z_Hcp: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm)" (is "?z_hcq~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hh z_Hcm])
  have z_Hcx: "(?z_hbj~=?z_hbm)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hn z_Hcp])
  show FALSE
  by (rule notE [OF z_Hcx z_Hbi])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hn ==> ?z_hi ==> ?z_hh ==> ?z_hde ==> ?z_hbr ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hde:"?z_hde" (is "~?z_hdf")
  assume z_Hbr:"?z_hbr"
  have z_Hdj: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdk")
  by (rule subst [where P="(\<lambda>zenon_Vsa. (~(((zenon_Vsa[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hde])
  have z_Hds: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdt")
  by (rule subst [where P="(\<lambda>zenon_Vfb. (~(((F[(zenon_Vfb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hn z_Hdj])
  have z_Heb: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hec")
  by (rule subst [where P="(\<lambda>zenon_Vgb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vgb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hds])
  have z_Hel: "(~?z_hbr)"
  by (rule subst [where P="(\<lambda>zenon_Vhb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vhb[a_punde_1a])])[''rank'']))))", OF z_Hi z_Heb])
  show FALSE
  by (rule notE [OF z_Hel z_Hbr])
 qed
 assume z_Hw:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_heu|?z_hev)")
 have z_Hbz: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hca~=?z_hcb")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfd: "(~?z_hev)" (is "~(?z_hew|?z_hex)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcm: "(((a_Fhash_primea[?z_hca])[''bit''])~=1)" (is "?z_hcn~=?z_hbm")
 by (rule zenon_notor_0 [OF z_Hfd])
 have z_Hfe: "(~?z_hex)" (is "~(?z_hey&?z_hez)")
 by (rule zenon_notor_1 [OF z_Hfd])
 show FALSE
 proof (rule zenon_notand [OF z_Hfe])
  assume z_Hff:"(?z_hcn~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
  next
   assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
   show FALSE
   proof (rule zenon_or [OF z_Hbh])
    assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
   next
    assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
    have z_Hbo: "?z_hbo" (is "?z_hbj=_")
    by (rule zenon_and_0 [OF z_Hbn])
    have z_Hfg: "(((F[?z_hca])[''bit''])~=0)" (is "?z_hcq~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hca])[''bit''])~=0))", OF z_Hh z_Hff])
    have z_Hfm: "(?z_hbj~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[(zenon_Vwc[a_punde_1a])])[''bit''])~=0))", OF z_Hn z_Hfg])
    show FALSE
    by (rule notE [OF z_Hfm z_Hbo])
   qed
  qed
 next
  assume z_Hft:"(~?z_hez)" (is "~(?z_hdf|?z_hfa)")
  have z_Hde: "(~?z_hdf)"
  by (rule zenon_notor_0 [OF z_Hft])
  have z_Hfu: "(~?z_hfa)" (is "~(?z_hfb&?z_hfc)")
  by (rule zenon_notor_1 [OF z_Hft])
  show FALSE
  proof (rule zenon_notand [OF z_Hfu])
   assume z_Hfv:"(((a_Fhash_primea[?z_hcb])[''rank''])~=((a_Fhash_primea[?z_hca])[''rank'']))" (is "?z_hdh~=?z_hdg")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hbx: "?z_hbx" (is "?z_hbu=?z_hbs")
      by (rule zenon_and_0 [OF z_Hbw])
      have z_Hfw: "(((F[?z_hcb])[''rank''])~=?z_hdg)" (is "?z_hed~=_")
      by (rule subst [where P="(\<lambda>zenon_Vac. (((zenon_Vac[?z_hcb])[''rank''])~=?z_hdg))", OF z_Hh z_Hfv])
      have z_Hgc: "(?z_hbu~=?z_hdg)"
      by (rule subst [where P="(\<lambda>zenon_Vic. (((F[(zenon_Vic[a_punde_1a])])[''rank''])~=?z_hdg))", OF z_Hi z_Hfw])
      have z_Hgj: "(?z_hbu~=((F[?z_hca])[''rank'']))" (is "_~=?z_hdl")
      by (rule subst [where P="(\<lambda>zenon_Vjc. (?z_hbu~=((zenon_Vjc[?z_hca])[''rank''])))", OF z_Hh z_Hgc])
      have z_Hgp: "(?z_hbu~=?z_hbs)"
      by (rule subst [where P="(\<lambda>zenon_Vkc. (?z_hbu~=((F[(zenon_Vkc[a_punde_1a])])[''rank''])))", OF z_Hn z_Hgj])
      show FALSE
      by (rule notE [OF z_Hgp z_Hbx])
     qed
    qed
   qed
  next
   assume z_Hgw:"(~?z_hfc)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hby: "?z_hby"
      by (rule zenon_and_1 [OF z_Hbw])
      have z_Hgx: "(~((a_ca[a_punde_1a]) <= ?z_hcb))" (is "~?z_hgy")
      by (rule subst [where P="(\<lambda>zenon_Vta. (~((zenon_Vta[a_punde_1a]) <= ?z_hcb)))", OF z_Hn z_Hgw])
      have z_Hhe: "(~?z_hby)"
      by (rule subst [where P="(\<lambda>zenon_Vbb. (~((a_ca[a_punde_1a]) <= (zenon_Vbb[a_punde_1a]))))", OF z_Hi z_Hgx])
      show FALSE
      by (rule notE [OF z_Hhe z_Hby])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 437"; *} qed
lemma ob'440:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'139: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U7'')))"
assumes v'158: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'440")
proof -
ML_command {* writeln "*** TLAPS ENTER 440"; *}
show "PROP ?ob'440"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_461502.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_461502.znn.out
;; obligation #440
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Fhash_primea
(TLA.FuncSet PROCESSES FieldSet)) a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'139" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U7")
$hyp "v'158" (\/ (= (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_uunde_Fa[a_punde_1a])=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1)|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbj")
 using v'158 by blast
 have zenon_L1_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hj ==> ?z_hi ==> ?z_hcb ==> _ ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hi:"?z_hi"
  assume z_Hcb:"?z_hcb" (is "?z_hcc~=?z_hcd")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcf: "(?z_hbe~=?z_hcd)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcd))", OF z_Hi z_Hcb])
  have z_Hck: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=((zenon_Vpb[a_punde_1a])[''parent''])))", OF z_Hj z_Hcf])
  show FALSE
  by (rule notE [OF z_Hck z_Hbd])
 qed
 have zenon_L2_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hi ==> ?z_hh ==> ?z_hcq ==> ?z_hbk ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hcq:"?z_hcq" (is "?z_hcr~=?z_hbo")
  assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
  have z_Hct: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo)" (is "?z_hcu~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hh z_Hcq])
  have z_Hdb: "(?z_hbl~=?z_hbo)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hi z_Hct])
  show FALSE
  by (rule notE [OF z_Hdb z_Hbk])
 qed
 have zenon_L3_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hi ==> ?z_hj ==> ?z_hh ==> ?z_hdi ==> ?z_hbt ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hdi:"?z_hdi" (is "~?z_hdj")
  assume z_Hbt:"?z_hbt"
  have z_Hdn: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdo")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdi])
  have z_Hdw: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[(zenon_Vod[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hi z_Hdn])
  have z_Hef: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heg")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vqd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdw])
  have z_Hep: "(~?z_hbt)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hef])
  show FALSE
  by (rule notE [OF z_Hep z_Hbt])
 qed
 assume z_Hw:"(~(((a_uunde_Fhash_primea[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))&((a_uunde_Fhash_primea[a_punde_1a]) <= ((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hez|?z_hfa)")
 have z_Hcb: "((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcc~=?z_hcd")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfi: "(~?z_hfa)" (is "~(?z_hfb|?z_hfc)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcq: "(((a_Fhash_primea[?z_hcc])[''bit''])~=1)" (is "?z_hcr~=?z_hbo")
 by (rule zenon_notor_0 [OF z_Hfi])
 have z_Hfj: "(~?z_hfc)" (is "~(?z_hfd&?z_hfe)")
 by (rule zenon_notor_1 [OF z_Hfi])
 show FALSE
 proof (rule zenon_notand [OF z_Hfj])
  assume z_Hfk:"(?z_hcr~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
  next
   assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
   show FALSE
   proof (rule zenon_or [OF z_Hbj])
    assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
   next
    assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
    have z_Hbq: "?z_hbq" (is "?z_hbl=_")
    by (rule zenon_and_0 [OF z_Hbp])
    have z_Hfl: "(((F[?z_hcc])[''bit''])~=0)" (is "?z_hcu~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hcc])[''bit''])~=0))", OF z_Hh z_Hfk])
    have z_Hfr: "(?z_hbl~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vkd. (((F[(zenon_Vkd[a_punde_1a])])[''bit''])~=0))", OF z_Hi z_Hfl])
    show FALSE
    by (rule notE [OF z_Hfr z_Hbq])
   qed
  qed
 next
  assume z_Hfy:"(~?z_hfe)" (is "~(?z_hdj|?z_hff)")
  have z_Hdi: "(~?z_hdj)"
  by (rule zenon_notor_0 [OF z_Hfy])
  have z_Hfz: "(~?z_hff)" (is "~(?z_hfg&?z_hfh)")
  by (rule zenon_notor_1 [OF z_Hfy])
  show FALSE
  proof (rule zenon_notand [OF z_Hfz])
   assume z_Hga:"(((a_Fhash_primea[?z_hcd])[''rank''])~=((a_Fhash_primea[?z_hcc])[''rank'']))" (is "?z_hdl~=?z_hdk")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hbz: "?z_hbz" (is "?z_hbw=?z_hbu")
      by (rule zenon_and_0 [OF z_Hby])
      have z_Hgb: "(((F[?z_hcd])[''rank''])~=?z_hdk)" (is "?z_heh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcd])[''rank''])~=?z_hdk))", OF z_Hh z_Hga])
      have z_Hgh: "(?z_hbw~=?z_hdk)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdk))", OF z_Hj z_Hgb])
      have z_Hgp: "(?z_hbw~=((F[?z_hcc])[''rank'']))" (is "_~=?z_hdp")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbw~=((zenon_Vyd[?z_hcc])[''rank''])))", OF z_Hh z_Hgh])
      have z_Hgv: "(?z_hbw~=?z_hbu)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbw~=((F[(zenon_Vae[a_punde_1a])])[''rank''])))", OF z_Hi z_Hgp])
      show FALSE
      by (rule notE [OF z_Hgv z_Hbz])
     qed
    qed
   qed
  next
   assume z_Hhc:"(~?z_hfh)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hby])
      have z_Hhd: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hcd))" (is "~?z_hhe")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~((zenon_Vce[a_punde_1a]) <= ?z_hcd)))", OF z_Hi z_Hhc])
      have z_Hhk: "(~?z_hca)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hj z_Hhd])
      show FALSE
      by (rule notE [OF z_Hhk z_Hca])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 440"; *} qed
lemma ob'443:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((((a_bunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'139: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U7'')))"
assumes v'159: "((((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent'')))))))))))"
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'443")
proof -
ML_command {* writeln "*** TLAPS ENTER 443"; *}
show "PROP ?ob'443"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_404b54.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_404b54.znn.out
;; obligation #443
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'139" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U7")
$hyp "v'159" (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hk:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'111 by blast
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbk")
 using v'159 by blast
 have zenon_L1_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hk ==> ?z_hj ==> ?z_hcc ==> _ ==> FALSE")
 proof -
  assume z_Hk:"?z_hk"
  assume z_Hj:"?z_hj"
  assume z_Hcc:"?z_hcc" (is "?z_hcd~=?z_hcf")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
  have z_Hch: "(?z_hbe~=?z_hcf)"
  by (rule subst [where P="(\<lambda>zenon_Vad. (((zenon_Vad[a_punde_1a])[''parent''])~=?z_hcf))", OF z_Hj z_Hcc])
  have z_Hcn: "(?z_hbe~=?z_hbi)"
  by (rule subst [where P="(\<lambda>zenon_Vcd. (?z_hbe~=((zenon_Vcd[a_punde_1a])[''parent''])))", OF z_Hk z_Hch])
  show FALSE
  by (rule notE [OF z_Hcn z_Hbd])
 qed
 have zenon_L2_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> FALSE" (is "?z_hj ==> ?z_hh ==> ?z_hct ==> ?z_hbl ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hbp")
  assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
  have z_Hcw: "(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp)" (is "?z_hcx~=_")
  by (rule subst [where P="(\<lambda>zenon_Ved. (((zenon_Ved[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hh z_Hct])
  have z_Hde: "(?z_hbm~=?z_hbp)"
  by (rule subst [where P="(\<lambda>zenon_Vgd. (((F[((zenon_Vgd[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hj z_Hcw])
  show FALSE
  by (rule notE [OF z_Hde z_Hbl])
 qed
 have zenon_L3_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hj ==> ?z_hk ==> ?z_hh ==> ?z_hdm ==> ?z_hbu ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hk:"?z_hk"
  assume z_Hh:"?z_hh"
  assume z_Hdm:"?z_hdm" (is "~?z_hdn")
  assume z_Hbu:"?z_hbu"
  have z_Hdr: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hds")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdm])
  have z_Hea: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heb")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[((zenon_Vod[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hdr])
  have z_Hek: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hel")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((zenon_Vqd[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hea])
  have z_Heu: "(~?z_hbu)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hk z_Hek])
  show FALSE
  by (rule notE [OF z_Heu z_Hbu])
 qed
 assume z_Hw:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hfe|?z_hff)")
 have z_Hcc: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcd~=?z_hcf")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfn: "(~?z_hff)" (is "~(?z_hfg|?z_hfh)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hct: "(((a_Fhash_primea[?z_hcd])[''bit''])~=1)" (is "?z_hcu~=?z_hbp")
 by (rule zenon_notor_0 [OF z_Hfn])
 have z_Hfo: "(~?z_hfh)" (is "~(?z_hfi&?z_hfj)")
 by (rule zenon_notor_1 [OF z_Hfn])
 show FALSE
 proof (rule zenon_notand [OF z_Hfo])
  assume z_Hfp:"(?z_hcu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
   show FALSE
   by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
  next
   assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
   show FALSE
   proof (rule zenon_or [OF z_Hbk])
    assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
   next
    assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
    have z_Hbr: "?z_hbr" (is "?z_hbm=_")
    by (rule zenon_and_0 [OF z_Hbq])
    have z_Hfq: "(((F[?z_hcd])[''bit''])~=0)" (is "?z_hcx~=_")
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((zenon_Vwc[?z_hcd])[''bit''])~=0))", OF z_Hh z_Hfp])
    have z_Hfw: "(?z_hbm~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[((zenon_Vwc[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_Hj z_Hfq])
    show FALSE
    by (rule notE [OF z_Hfw z_Hbr])
   qed
  qed
 next
  assume z_Hgd:"(~?z_hfj)" (is "~(?z_hdn|?z_hfk)")
  have z_Hdm: "(~?z_hdn)"
  by (rule zenon_notor_0 [OF z_Hgd])
  have z_Hge: "(~?z_hfk)" (is "~(?z_hfl&?z_hfm)")
  by (rule zenon_notor_1 [OF z_Hgd])
  show FALSE
  proof (rule zenon_notand [OF z_Hge])
   assume z_Hgf:"(((a_Fhash_primea[?z_hcf])[''rank''])~=((a_Fhash_primea[?z_hcd])[''rank'']))" (is "?z_hdp~=?z_hdo")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hca: "?z_hca" (is "?z_hbx=?z_hbv")
      by (rule zenon_and_0 [OF z_Hbz])
      have z_Hgg: "(((F[?z_hcf])[''rank''])~=?z_hdo)" (is "?z_hem~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcf])[''rank''])~=?z_hdo))", OF z_Hh z_Hgf])
      have z_Hgm: "(?z_hbx~=?z_hdo)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdo))", OF z_Hk z_Hgg])
      have z_Hgu: "(?z_hbx~=((F[?z_hcd])[''rank'']))" (is "_~=?z_hdt")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbx~=((zenon_Vyd[?z_hcd])[''rank''])))", OF z_Hh z_Hgm])
      have z_Hha: "(?z_hbx~=?z_hbv)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbx~=((F[((zenon_Vae[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hj z_Hgu])
      show FALSE
      by (rule notE [OF z_Hha z_Hca])
     qed
    qed
   qed
  next
   assume z_Hhi:"(~?z_hfm)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hcb: "?z_hcb"
      by (rule zenon_and_1 [OF z_Hbz])
      have z_Hhj: "(~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ?z_hcf))" (is "~?z_hhk")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~(((zenon_Vce[a_punde_1a])[''parent'']) <= ?z_hcf)))", OF z_Hj z_Hhi])
      have z_Hhr: "(~?z_hcb)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hk z_Hhj])
      show FALSE
      by (rule notE [OF z_Hhr z_Hcb])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 443"; *} qed
lemma ob'475:
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
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_u_U suppressed *)
(* usable definition Valid_v_U suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_b_U suppressed *)
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((h6d4c4cb96f3fa83008da51bad83fbb :: c)) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((((a_chash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'140: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U8'')))"
assumes v'158: "((((fapply ((a_ca), (a_punde_1a))) = (fapply ((a_uunde_Fa), (a_punde_1a))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (a_punde_1a))), (fapply ((a_ca), (a_punde_1a)))))))))))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'475")
proof -
ML_command {* writeln "*** TLAPS ENTER 475"; *}
show "PROP ?ob'475"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_dd38d7.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_dd38d7.znn.out
;; obligation #475
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) h6d4c4cb96f3fa83008da51bad83fbb
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea (TLA.in a_chash_primea
(TLA.FuncSet PROCESSES NodeSet)) a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'140" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U8")
$hyp "v'158" (\/ (= (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "bit") 0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_ca a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_ca a_punde_1a)
(TLA.fapply a_uunde_Fa a_punde_1a))))))
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
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hn:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbd|?z_hbh")
 using v'158 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbd ==> FALSE" (is "?z_hi ==> ?z_hn ==> ?z_hbz ==> _ ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hn:"?z_hn"
  assume z_Hbz:"?z_hbz" (is "?z_hca~=?z_hcb")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcc: "(?z_hbe~=?z_hcb)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcb))", OF z_Hn z_Hbz])
  have z_Hch: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=(zenon_Vpb[a_punde_1a])))", OF z_Hi z_Hcc])
  show FALSE
  by (rule notE [OF z_Hch z_Hbd])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hn ==> ?z_hh ==> ?z_hcm ==> ?z_hbi ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hh:"?z_hh"
  assume z_Hcm:"?z_hcm" (is "?z_hcn~=?z_hbm")
  assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
  have z_Hcp: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm)" (is "?z_hcq~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hh z_Hcm])
  have z_Hcx: "(?z_hbj~=?z_hbm)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbm))", OF z_Hn z_Hcp])
  show FALSE
  by (rule notE [OF z_Hcx z_Hbi])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hn ==> ?z_hi ==> ?z_hh ==> ?z_hde ==> ?z_hbr ==> FALSE")
 proof -
  assume z_Hn:"?z_hn"
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hde:"?z_hde" (is "~?z_hdf")
  assume z_Hbr:"?z_hbr"
  have z_Hdj: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdk")
  by (rule subst [where P="(\<lambda>zenon_Vsa. (~(((zenon_Vsa[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hde])
  have z_Hds: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdt")
  by (rule subst [where P="(\<lambda>zenon_Vfb. (~(((F[(zenon_Vfb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hn z_Hdj])
  have z_Heb: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hec")
  by (rule subst [where P="(\<lambda>zenon_Vgb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vgb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hh z_Hds])
  have z_Hel: "(~?z_hbr)"
  by (rule subst [where P="(\<lambda>zenon_Vhb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vhb[a_punde_1a])])[''rank'']))))", OF z_Hi z_Heb])
  show FALSE
  by (rule notE [OF z_Hel z_Hbr])
 qed
 assume z_Hw:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_heu|?z_hev)")
 have z_Hbz: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hca~=?z_hcb")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfd: "(~?z_hev)" (is "~(?z_hew|?z_hex)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcm: "(((a_Fhash_primea[?z_hca])[''bit''])~=1)" (is "?z_hcn~=?z_hbm")
 by (rule zenon_notor_0 [OF z_Hfd])
 have z_Hfe: "(~?z_hex)" (is "~(?z_hey&?z_hez)")
 by (rule zenon_notor_1 [OF z_Hfd])
 show FALSE
 proof (rule zenon_notand [OF z_Hfe])
  assume z_Hff:"(?z_hcn~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
  next
   assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
   show FALSE
   proof (rule zenon_or [OF z_Hbh])
    assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
   next
    assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
    have z_Hbo: "?z_hbo" (is "?z_hbj=_")
    by (rule zenon_and_0 [OF z_Hbn])
    have z_Hfg: "(((F[?z_hca])[''bit''])~=0)" (is "?z_hcq~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hca])[''bit''])~=0))", OF z_Hh z_Hff])
    have z_Hfm: "(?z_hbj~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[(zenon_Vwc[a_punde_1a])])[''bit''])~=0))", OF z_Hn z_Hfg])
    show FALSE
    by (rule notE [OF z_Hfm z_Hbo])
   qed
  qed
 next
  assume z_Hft:"(~?z_hez)" (is "~(?z_hdf|?z_hfa)")
  have z_Hde: "(~?z_hdf)"
  by (rule zenon_notor_0 [OF z_Hft])
  have z_Hfu: "(~?z_hfa)" (is "~(?z_hfb&?z_hfc)")
  by (rule zenon_notor_1 [OF z_Hft])
  show FALSE
  proof (rule zenon_notand [OF z_Hfu])
   assume z_Hfv:"(((a_Fhash_primea[?z_hcb])[''rank''])~=((a_Fhash_primea[?z_hca])[''rank'']))" (is "?z_hdh~=?z_hdg")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hbx: "?z_hbx" (is "?z_hbu=?z_hbs")
      by (rule zenon_and_0 [OF z_Hbw])
      have z_Hfw: "(((F[?z_hcb])[''rank''])~=?z_hdg)" (is "?z_hed~=_")
      by (rule subst [where P="(\<lambda>zenon_Vac. (((zenon_Vac[?z_hcb])[''rank''])~=?z_hdg))", OF z_Hh z_Hfv])
      have z_Hgc: "(?z_hbu~=?z_hdg)"
      by (rule subst [where P="(\<lambda>zenon_Vic. (((F[(zenon_Vic[a_punde_1a])])[''rank''])~=?z_hdg))", OF z_Hi z_Hfw])
      have z_Hgj: "(?z_hbu~=((F[?z_hca])[''rank'']))" (is "_~=?z_hdl")
      by (rule subst [where P="(\<lambda>zenon_Vjc. (?z_hbu~=((zenon_Vjc[?z_hca])[''rank''])))", OF z_Hh z_Hgc])
      have z_Hgp: "(?z_hbu~=?z_hbs)"
      by (rule subst [where P="(\<lambda>zenon_Vkc. (?z_hbu~=((F[(zenon_Vkc[a_punde_1a])])[''rank''])))", OF z_Hn z_Hgj])
      show FALSE
      by (rule notE [OF z_Hgp z_Hbx])
     qed
    qed
   qed
  next
   assume z_Hgw:"(~?z_hfc)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hi z_Hn z_Hbz z_Hbd])
   next
    assume z_Hbh:"?z_hbh" (is "?z_hbi|?z_hbn")
    show FALSE
    proof (rule zenon_or [OF z_Hbh])
     assume z_Hbi:"?z_hbi" (is "?z_hbj=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hn z_Hh z_Hcm z_Hbi])
    next
     assume z_Hbn:"?z_hbn" (is "?z_hbo&?z_hbq")
     have z_Hbq: "?z_hbq" (is "?z_hbr|?z_hbw")
     by (rule zenon_and_1 [OF z_Hbn])
     show FALSE
     proof (rule zenon_or [OF z_Hbq])
      assume z_Hbr:"?z_hbr"
      show FALSE
      by (rule zenon_L3_ [OF z_Hn z_Hi z_Hh z_Hde z_Hbr])
     next
      assume z_Hbw:"?z_hbw" (is "?z_hbx&?z_hby")
      have z_Hby: "?z_hby"
      by (rule zenon_and_1 [OF z_Hbw])
      have z_Hgx: "(~((a_ca[a_punde_1a]) <= ?z_hcb))" (is "~?z_hgy")
      by (rule subst [where P="(\<lambda>zenon_Vta. (~((zenon_Vta[a_punde_1a]) <= ?z_hcb)))", OF z_Hn z_Hgw])
      have z_Hhe: "(~?z_hby)"
      by (rule subst [where P="(\<lambda>zenon_Vbb. (~((a_ca[a_punde_1a]) <= (zenon_Vbb[a_punde_1a]))))", OF z_Hi z_Hgx])
      show FALSE
      by (rule notE [OF z_Hhe z_Hby])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 475"; *} qed
lemma ob'478:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((((a_uunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_he269618ebe6078075ae33489842a63a :: c)) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'140: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U8'')))"
assumes v'159: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'478")
proof -
ML_command {* writeln "*** TLAPS ENTER 478"; *}
show "PROP ?ob'478"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_c55445.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_c55445.znn.out
;; obligation #478
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c (TLA.in a_uunde_Fhash_primea
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Fhash_primea
(TLA.FuncSet PROCESSES FieldSet)) a_he269618ebe6078075ae33489842a63a
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'140" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U8")
$hyp "v'159" (\/ (= (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fa a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fhash_primea a_punde_1a)) "rank"))
(arith.le (TLA.fapply a_uunde_Fhash_primea a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hi:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"(((a_uunde_Fa[a_punde_1a])=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1)|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbj")
 using v'159 by blast
 have zenon_L1_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hj ==> ?z_hi ==> ?z_hcb ==> _ ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hi:"?z_hi"
  assume z_Hcb:"?z_hcb" (is "?z_hcc~=?z_hcd")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
  have z_Hcf: "(?z_hbe~=?z_hcd)"
  by (rule subst [where P="(\<lambda>zenon_Vpa. ((zenon_Vpa[a_punde_1a])~=?z_hcd))", OF z_Hi z_Hcb])
  have z_Hck: "(?z_hbe~=?z_hbg)"
  by (rule subst [where P="(\<lambda>zenon_Vpb. (?z_hbe~=((zenon_Vpb[a_punde_1a])[''parent''])))", OF z_Hj z_Hcf])
  show FALSE
  by (rule notE [OF z_Hck z_Hbd])
 qed
 have zenon_L2_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hi ==> ?z_hh ==> ?z_hcq ==> ?z_hbk ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hh:"?z_hh"
  assume z_Hcq:"?z_hcq" (is "?z_hcr~=?z_hbo")
  assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
  have z_Hct: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo)" (is "?z_hcu~=_")
  by (rule subst [where P="(\<lambda>zenon_Voa. (((zenon_Voa[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hh z_Hcq])
  have z_Hdb: "(?z_hbl~=?z_hbo)"
  by (rule subst [where P="(\<lambda>zenon_Vzb. (((F[(zenon_Vzb[a_punde_1a])])[''bit''])~=?z_hbo))", OF z_Hi z_Hct])
  show FALSE
  by (rule notE [OF z_Hdb z_Hbk])
 qed
 have zenon_L3_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hi ==> ?z_hj ==> ?z_hh ==> ?z_hdi ==> ?z_hbt ==> FALSE")
 proof -
  assume z_Hi:"?z_hi"
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hdi:"?z_hdi" (is "~?z_hdj")
  assume z_Hbt:"?z_hbt"
  have z_Hdn: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdo")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdi])
  have z_Hdw: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[(zenon_Vod[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hi z_Hdn])
  have z_Hef: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heg")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vqd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdw])
  have z_Hep: "(~?z_hbt)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hef])
  show FALSE
  by (rule notE [OF z_Hep z_Hbt])
 qed
 assume z_Hw:"(~(((a_uunde_Fhash_primea[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))&((a_uunde_Fhash_primea[a_punde_1a]) <= ((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hez|?z_hfa)")
 have z_Hcb: "((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcc~=?z_hcd")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfi: "(~?z_hfa)" (is "~(?z_hfb|?z_hfc)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hcq: "(((a_Fhash_primea[?z_hcc])[''bit''])~=1)" (is "?z_hcr~=?z_hbo")
 by (rule zenon_notor_0 [OF z_Hfi])
 have z_Hfj: "(~?z_hfc)" (is "~(?z_hfd&?z_hfe)")
 by (rule zenon_notor_1 [OF z_Hfi])
 show FALSE
 proof (rule zenon_notand [OF z_Hfj])
  assume z_Hfk:"(?z_hcr~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
   show FALSE
   by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
  next
   assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
   show FALSE
   proof (rule zenon_or [OF z_Hbj])
    assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
   next
    assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
    have z_Hbq: "?z_hbq" (is "?z_hbl=_")
    by (rule zenon_and_0 [OF z_Hbp])
    have z_Hfl: "(((F[?z_hcc])[''bit''])~=0)" (is "?z_hcu~=_")
    by (rule subst [where P="(\<lambda>zenon_Voc. (((zenon_Voc[?z_hcc])[''bit''])~=0))", OF z_Hh z_Hfk])
    have z_Hfr: "(?z_hbl~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vkd. (((F[(zenon_Vkd[a_punde_1a])])[''bit''])~=0))", OF z_Hi z_Hfl])
    show FALSE
    by (rule notE [OF z_Hfr z_Hbq])
   qed
  qed
 next
  assume z_Hfy:"(~?z_hfe)" (is "~(?z_hdj|?z_hff)")
  have z_Hdi: "(~?z_hdj)"
  by (rule zenon_notor_0 [OF z_Hfy])
  have z_Hfz: "(~?z_hff)" (is "~(?z_hfg&?z_hfh)")
  by (rule zenon_notor_1 [OF z_Hfy])
  show FALSE
  proof (rule zenon_notand [OF z_Hfz])
   assume z_Hga:"(((a_Fhash_primea[?z_hcd])[''rank''])~=((a_Fhash_primea[?z_hcc])[''rank'']))" (is "?z_hdl~=?z_hdk")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hbz: "?z_hbz" (is "?z_hbw=?z_hbu")
      by (rule zenon_and_0 [OF z_Hby])
      have z_Hgb: "(((F[?z_hcd])[''rank''])~=?z_hdk)" (is "?z_heh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcd])[''rank''])~=?z_hdk))", OF z_Hh z_Hga])
      have z_Hgh: "(?z_hbw~=?z_hdk)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdk))", OF z_Hj z_Hgb])
      have z_Hgp: "(?z_hbw~=((F[?z_hcc])[''rank'']))" (is "_~=?z_hdp")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbw~=((zenon_Vyd[?z_hcc])[''rank''])))", OF z_Hh z_Hgh])
      have z_Hgv: "(?z_hbw~=?z_hbu)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbw~=((F[(zenon_Vae[a_punde_1a])])[''rank''])))", OF z_Hi z_Hgp])
      show FALSE
      by (rule notE [OF z_Hgv z_Hbz])
     qed
    qed
   qed
  next
   assume z_Hhc:"(~?z_hfh)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbg")
    show FALSE
    by (rule zenon_L1_ [OF z_Hj z_Hi z_Hcb z_Hbd])
   next
    assume z_Hbj:"?z_hbj" (is "?z_hbk|?z_hbp")
    show FALSE
    proof (rule zenon_or [OF z_Hbj])
     assume z_Hbk:"?z_hbk" (is "?z_hbl=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hi z_Hh z_Hcq z_Hbk])
    next
     assume z_Hbp:"?z_hbp" (is "?z_hbq&?z_hbs")
     have z_Hbs: "?z_hbs" (is "?z_hbt|?z_hby")
     by (rule zenon_and_1 [OF z_Hbp])
     show FALSE
     proof (rule zenon_or [OF z_Hbs])
      assume z_Hbt:"?z_hbt"
      show FALSE
      by (rule zenon_L3_ [OF z_Hi z_Hj z_Hh z_Hdi z_Hbt])
     next
      assume z_Hby:"?z_hby" (is "?z_hbz&?z_hca")
      have z_Hca: "?z_hca"
      by (rule zenon_and_1 [OF z_Hby])
      have z_Hhd: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hcd))" (is "~?z_hhe")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~((zenon_Vce[a_punde_1a]) <= ?z_hcd)))", OF z_Hi z_Hhc])
      have z_Hhk: "(~?z_hca)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hj z_Hhd])
      show FALSE
      by (rule notE [OF z_Hhk z_Hca])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 478"; *} qed
lemma ob'481:
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
assumes v'101: "(Inv)"
assumes v'102: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'104: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'105: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'106: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'107: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'108: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'109: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'110: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'111: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'112: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'113: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'114: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'115: "((((a_dhash_primea :: c)) = (d)))"
assumes v'116: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'120: "(((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & ((hf9aeb3897da94c7352f843ff1e508c :: c)) & ((h20451dbf6bb505ef64a23efc0d6b3f :: c)) & ((((a_aunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((((a_bunde_Fhash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & ((a_h3c17892ec704c5c790d6c650bc1169a :: c)) & ((a_h4e0910ff04d5282a7607ee7b7eab81a :: c)) & ((hec61390ce29cfa3163e637effefe5f :: c)) & ((h602df0f4906d91bdcf73ac652471ea :: c)) & ((a_h1ef1e69610c58c66ee5436c27a2e53a :: c)) & ((a_h14c0a5932541232a01b2e9de8e7f49a :: c)) & ((h46e5ced0ed3f2b9f4026c7a4eba44c :: c)))"
assumes v'129: "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p_1))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))))))))))) & (((((fapply ((pc), (p_1))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Ua), (p_1)))))))))) & (((((fapply ((pc), (p_1))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p_1), (t)))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p_1))), (''bit''))) = ((0)))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_uunde_Fa), (p_1))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))))) & ((((fapply ((a_ca), (p_1))) = (fapply ((a_uunde_Fa), (p_1))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (p_1))), (fapply ((a_ca), (p_1))))))))))) & ((((fapply ((a_uunde_Fa), (p_1))) = (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p_1))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))), (fapply ((a_uunde_Fa), (p_1))))))))))) & ((((fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (p_1))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (p_1))), (''parent'')))))))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((a_ca), (p_1))))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((a_vunde_Ua), (p_1)))))))))))))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'140: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U8'')))"
assumes v'160: "((((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))) = (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_bunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent'')))))))))))"
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'481")
proof -
ML_command {* writeln "*** TLAPS ENTER 481"; *}
show "PROP ?ob'481"

(* BEGIN ZENON INPUT
;; file=U1Inv_proof.tlaps/tlapm_8da83d.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >U1Inv_proof.tlaps/tlapm_8da83d.znn.out
;; obligation #481
$hyp "v'101" Inv
$hyp "v'102" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'104" (= (TLA.fapply pc p) "U1")
$hyp "v'105" (= a_pchash_primea
(TLA.except pc p "F1U1"))
$hyp "v'106" (= a_uunde_Uhash_primea
(TLA.except a_uunde_Ua p (TLA.fapply a_ca p)))
$hyp "v'107" (= a_vunde_Uhash_primea
(TLA.except a_vunde_Ua p (TLA.fapply d p)))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'111" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'112" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'113" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'114" (= a_chash_primea a_ca)
$hyp "v'115" (= a_dhash_primea d)
$hyp "v'116" (= a_Mhash_primea M)
$hyp "v'120" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_h3c17892ec704c5c790d6c650bc1169a a_h4e0910ff04d5282a7607ee7b7eab81a
hec61390ce29cfa3163e637effefe5f h602df0f4906d91bdcf73ac652471ea
a_h1ef1e69610c58c66ee5436c27a2e53a a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'129" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))))
(=> (= (TLA.fapply pc p_1) "F6U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU2All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U7")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU7All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Ua p_1)))))
(=> (= (TLA.fapply pc p_1) "F6U8")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(InvU8All p_1 t)
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply a_uunde_Fa p_1)) "bit") 0)
(= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0) (= (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_uunde_Fa p_1)))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")))
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
(TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent"))))))
(\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa p_1) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa p_1) "parent")))))))
(= (TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_ca p_1))
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply a_vunde_Ua p_1))))))))))
$hyp "a_punde_1a_in" (TLA.in a_punde_1a PROCESSES)
$hyp "t_in" (TLA.in t a_Mhash_primea)
$hyp "v'140" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6U8")
$hyp "v'160" (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply F (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fa a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fa a_punde_1a) "parent"))))))
$goal (\/ (= (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))
(= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
(TLA.fapply TLA.Succ 0))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "bit")
0)
(\/ (arith.lt (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(/\ (= (TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent")) "rank")
(TLA.fapply (TLA.fapply a_Fhash_primea (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")) "rank"))
(arith.le (TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")
(TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "parent"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hk:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'111 by blast
 have z_Hj:"(a_aunde_Fhash_primea=a_aunde_Fa)"
 using v'110 by blast
 have z_Hh:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hv:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hbd|?z_hbk")
 using v'160 by blast
 have zenon_L1_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=a_aunde_Fa) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hbd ==> FALSE" (is "?z_hk ==> ?z_hj ==> ?z_hcc ==> _ ==> FALSE")
 proof -
  assume z_Hk:"?z_hk"
  assume z_Hj:"?z_hj"
  assume z_Hcc:"?z_hcc" (is "?z_hcd~=?z_hcf")
  assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
  have z_Hch: "(?z_hbe~=?z_hcf)"
  by (rule subst [where P="(\<lambda>zenon_Vad. (((zenon_Vad[a_punde_1a])[''parent''])~=?z_hcf))", OF z_Hj z_Hcc])
  have z_Hcn: "(?z_hbe~=?z_hbi)"
  by (rule subst [where P="(\<lambda>zenon_Vcd. (?z_hbe~=((zenon_Vcd[a_punde_1a])[''parent''])))", OF z_Hk z_Hch])
  show FALSE
  by (rule notE [OF z_Hcn z_Hbd])
 qed
 have zenon_L2_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> FALSE" (is "?z_hj ==> ?z_hh ==> ?z_hct ==> ?z_hbl ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hh:"?z_hh"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hbp")
  assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
  have z_Hcw: "(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp)" (is "?z_hcx~=_")
  by (rule subst [where P="(\<lambda>zenon_Ved. (((zenon_Ved[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hh z_Hct])
  have z_Hde: "(?z_hbm~=?z_hbp)"
  by (rule subst [where P="(\<lambda>zenon_Vgd. (((F[((zenon_Vgd[a_punde_1a])[''parent''])])[''bit''])~=?z_hbp))", OF z_Hj z_Hcw])
  show FALSE
  by (rule notE [OF z_Hde z_Hbl])
 qed
 have zenon_L3_: "(a_aunde_Fhash_primea=a_aunde_Fa) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hj ==> ?z_hk ==> ?z_hh ==> ?z_hdm ==> ?z_hbu ==> FALSE")
 proof -
  assume z_Hj:"?z_hj"
  assume z_Hk:"?z_hk"
  assume z_Hh:"?z_hh"
  assume z_Hdm:"?z_hdm" (is "~?z_hdn")
  assume z_Hbu:"?z_hbu"
  have z_Hdr: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hds")
  by (rule subst [where P="(\<lambda>zenon_Vmd. (~(((zenon_Vmd[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hdm])
  have z_Hea: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_heb")
  by (rule subst [where P="(\<lambda>zenon_Vod. (~(((F[((zenon_Vod[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hj z_Hdr])
  have z_Hek: "(~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hel")
  by (rule subst [where P="(\<lambda>zenon_Vqd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((zenon_Vqd[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hh z_Hea])
  have z_Heu: "(~?z_hbu)"
  by (rule subst [where P="(\<lambda>zenon_Vsd. (~(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((zenon_Vsd[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hk z_Hek])
  show FALSE
  by (rule notE [OF z_Heu z_Hbu])
 qed
 assume z_Hw:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hfe|?z_hff)")
 have z_Hcc: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hcd~=?z_hcf")
 by (rule zenon_notor_0 [OF z_Hw])
 have z_Hfn: "(~?z_hff)" (is "~(?z_hfg|?z_hfh)")
 by (rule zenon_notor_1 [OF z_Hw])
 have z_Hct: "(((a_Fhash_primea[?z_hcd])[''bit''])~=1)" (is "?z_hcu~=?z_hbp")
 by (rule zenon_notor_0 [OF z_Hfn])
 have z_Hfo: "(~?z_hfh)" (is "~(?z_hfi&?z_hfj)")
 by (rule zenon_notor_1 [OF z_Hfn])
 show FALSE
 proof (rule zenon_notand [OF z_Hfo])
  assume z_Hfp:"(?z_hcu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hv])
   assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
   show FALSE
   by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
  next
   assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
   show FALSE
   proof (rule zenon_or [OF z_Hbk])
    assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
   next
    assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
    have z_Hbr: "?z_hbr" (is "?z_hbm=_")
    by (rule zenon_and_0 [OF z_Hbq])
    have z_Hfq: "(((F[?z_hcd])[''bit''])~=0)" (is "?z_hcx~=_")
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((zenon_Vwc[?z_hcd])[''bit''])~=0))", OF z_Hh z_Hfp])
    have z_Hfw: "(?z_hbm~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vwc. (((F[((zenon_Vwc[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_Hj z_Hfq])
    show FALSE
    by (rule notE [OF z_Hfw z_Hbr])
   qed
  qed
 next
  assume z_Hgd:"(~?z_hfj)" (is "~(?z_hdn|?z_hfk)")
  have z_Hdm: "(~?z_hdn)"
  by (rule zenon_notor_0 [OF z_Hgd])
  have z_Hge: "(~?z_hfk)" (is "~(?z_hfl&?z_hfm)")
  by (rule zenon_notor_1 [OF z_Hgd])
  show FALSE
  proof (rule zenon_notand [OF z_Hge])
   assume z_Hgf:"(((a_Fhash_primea[?z_hcf])[''rank''])~=((a_Fhash_primea[?z_hcd])[''rank'']))" (is "?z_hdp~=?z_hdo")
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hca: "?z_hca" (is "?z_hbx=?z_hbv")
      by (rule zenon_and_0 [OF z_Hbz])
      have z_Hgg: "(((F[?z_hcf])[''rank''])~=?z_hdo)" (is "?z_hem~=_")
      by (rule subst [where P="(\<lambda>zenon_Vud. (((zenon_Vud[?z_hcf])[''rank''])~=?z_hdo))", OF z_Hh z_Hgf])
      have z_Hgm: "(?z_hbx~=?z_hdo)"
      by (rule subst [where P="(\<lambda>zenon_Vwd. (((F[((zenon_Vwd[a_punde_1a])[''parent''])])[''rank''])~=?z_hdo))", OF z_Hk z_Hgg])
      have z_Hgu: "(?z_hbx~=((F[?z_hcd])[''rank'']))" (is "_~=?z_hdt")
      by (rule subst [where P="(\<lambda>zenon_Vyd. (?z_hbx~=((zenon_Vyd[?z_hcd])[''rank''])))", OF z_Hh z_Hgm])
      have z_Hha: "(?z_hbx~=?z_hbv)"
      by (rule subst [where P="(\<lambda>zenon_Vae. (?z_hbx~=((F[((zenon_Vae[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hj z_Hgu])
      show FALSE
      by (rule notE [OF z_Hha z_Hca])
     qed
    qed
   qed
  next
   assume z_Hhi:"(~?z_hfm)"
   show FALSE
   proof (rule zenon_or [OF z_Hv])
    assume z_Hbd:"?z_hbd" (is "?z_hbe=?z_hbi")
    show FALSE
    by (rule zenon_L1_ [OF z_Hk z_Hj z_Hcc z_Hbd])
   next
    assume z_Hbk:"?z_hbk" (is "?z_hbl|?z_hbq")
    show FALSE
    proof (rule zenon_or [OF z_Hbk])
     assume z_Hbl:"?z_hbl" (is "?z_hbm=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hj z_Hh z_Hct z_Hbl])
    next
     assume z_Hbq:"?z_hbq" (is "?z_hbr&?z_hbt")
     have z_Hbt: "?z_hbt" (is "?z_hbu|?z_hbz")
     by (rule zenon_and_1 [OF z_Hbq])
     show FALSE
     proof (rule zenon_or [OF z_Hbt])
      assume z_Hbu:"?z_hbu"
      show FALSE
      by (rule zenon_L3_ [OF z_Hj z_Hk z_Hh z_Hdm z_Hbu])
     next
      assume z_Hbz:"?z_hbz" (is "?z_hca&?z_hcb")
      have z_Hcb: "?z_hcb"
      by (rule zenon_and_1 [OF z_Hbz])
      have z_Hhj: "(~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ?z_hcf))" (is "~?z_hhk")
      by (rule subst [where P="(\<lambda>zenon_Vce. (~(((zenon_Vce[a_punde_1a])[''parent'']) <= ?z_hcf)))", OF z_Hj z_Hhi])
      have z_Hhr: "(~?z_hcb)"
      by (rule subst [where P="(\<lambda>zenon_Vee. (~(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((zenon_Vee[a_punde_1a])[''parent'']))))", OF z_Hk z_Hhj])
      show FALSE
      by (rule notE [OF z_Hhr z_Hcb])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 481"; *} qed
end
