(* automatically generated -- do not edit manually *)
theory F3Inv_proof imports Constant Zenon begin
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

lemma ob'473:
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
assumes v'102: "(Inv)"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "((((((fapply ((pc), (p))) = (''F3''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U1''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U1'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U1'')]))))))) | (((((fapply ((pc), (p))) = (''F3U2''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U2'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U2'')]))))))) | (((((fapply ((pc), (p))) = (''F3U7''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U7'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U8''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U8'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U8'')]))))))))"
assumes v'106: "((((a_aunde_Fhash_primea :: c)) = ([(a_aunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Fa), (p)))))])))"
assumes v'107: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'108: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'109: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'110: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'111: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
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
assumes v'136: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6'')))"
assumes v'154: "((((fapply ((a_ca), (a_punde_1a))) = (fapply ((a_uunde_Fa), (a_punde_1a))))) | (((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_ca), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((a_uunde_Fa), (a_punde_1a))), (fapply ((a_ca), (a_punde_1a)))))))))))"
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'473")
proof -
ML_command {* writeln "*** TLAPS ENTER 473"; *}
show "PROP ?ob'473"

(* BEGIN ZENON INPUT
;; file=F3Inv_proof.tlaps/tlapm_c2897e.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >F3Inv_proof.tlaps/tlapm_c2897e.znn.out
;; obligation #473
$hyp "v'102" Inv
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (\/ (/\ (= (TLA.fapply pc p) "F3") (\/ (= a_pchash_primea
(TLA.except pc p "F4")) (= a_pchash_primea (TLA.except pc p "F7"))))
(/\ (= (TLA.fapply pc p) "F3U1") (\/ (= a_pchash_primea
(TLA.except pc p "F4U1")) (= a_pchash_primea (TLA.except pc p "F7U1"))))
(/\ (= (TLA.fapply pc p) "F3U2") (\/ (= a_pchash_primea
(TLA.except pc p "F4U2")) (= a_pchash_primea (TLA.except pc p "F7U2"))))
(/\ (= (TLA.fapply pc p) "F3U7") (\/ (= a_pchash_primea
(TLA.except pc p "F4U7")) (= a_pchash_primea (TLA.except pc p "F7U7"))))
(/\ (= (TLA.fapply pc p) "F3U8") (\/ (= a_pchash_primea
(TLA.except pc p "F4U8")) (= a_pchash_primea
(TLA.except pc p "F7U8")))))
$hyp "v'106" (= a_aunde_Fhash_primea
(TLA.except a_aunde_Fa p (TLA.fapply F (TLA.fapply a_uunde_Fa p))))
$hyp "v'107" (= a_Fhash_primea F)
$hyp "v'108" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'109" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'110" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'111" (= a_vunde_Uhash_primea
a_vunde_Ua)
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
$hyp "v'136" (= (TLA.fapply a_pchash_primea a_punde_1a)
"F6")
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
 have z_Hg:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'108 by blast
 have z_Hm:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hf:"(a_Fhash_primea=F)"
 using v'107 by blast
 have z_Hu:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbc|?z_hbg")
 using v'154 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbc ==> FALSE" (is "?z_hg ==> ?z_hm ==> ?z_hby ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hm:"?z_hm"
  assume z_Hby:"?z_hby" (is "?z_hbz~=?z_hca")
  assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
  have z_Hcb: "(?z_hbd~=?z_hca)"
  by (rule subst [where P="(\<lambda>zenon_Vub. ((zenon_Vub[a_punde_1a])~=?z_hca))", OF z_Hm z_Hby])
  have z_Hcg: "(?z_hbd~=?z_hbf)"
  by (rule subst [where P="(\<lambda>zenon_Vub. (?z_hbd~=(zenon_Vub[a_punde_1a])))", OF z_Hg z_Hcb])
  show FALSE
  by (rule notE [OF z_Hcg z_Hbc])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hm ==> ?z_hf ==> ?z_hcj ==> ?z_hbh ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hf:"?z_hf"
  assume z_Hcj:"?z_hcj" (is "?z_hck~=?z_hbl")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  have z_Hcm: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl)" (is "?z_hcn~=_")
  by (rule subst [where P="(\<lambda>zenon_Vec. (((zenon_Vec[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hf z_Hcj])
  have z_Hcu: "(?z_hbi~=?z_hbl)"
  by (rule subst [where P="(\<lambda>zenon_Vec. (((F[(zenon_Vec[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hm z_Hcm])
  show FALSE
  by (rule notE [OF z_Hcu z_Hbh])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hm ==> ?z_hg ==> ?z_hf ==> ?z_hda ==> ?z_hbq ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hg:"?z_hg"
  assume z_Hf:"?z_hf"
  assume z_Hda:"?z_hda" (is "~?z_hdb")
  assume z_Hbq:"?z_hbq"
  have z_Hdf: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdg")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((zenon_Vqb[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hda])
  have z_Hdo: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdp")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((F[(zenon_Vqb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hm z_Hdf])
  have z_Hdw: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vrb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vrb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hdo])
  have z_Heg: "(~?z_hbq)"
  by (rule subst [where P="(\<lambda>zenon_Vsb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vsb[a_punde_1a])])[''rank'']))))", OF z_Hg z_Hdw])
  show FALSE
  by (rule notE [OF z_Heg z_Hbq])
 qed
 assume z_Hv:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_hep|?z_heq)")
 have z_Hby: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hbz~=?z_hca")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hey: "(~?z_heq)" (is "~(?z_her|?z_hes)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Hcj: "(((a_Fhash_primea[?z_hbz])[''bit''])~=1)" (is "?z_hck~=?z_hbl")
 by (rule zenon_notor_0 [OF z_Hey])
 have z_Hez: "(~?z_hes)" (is "~(?z_het&?z_heu)")
 by (rule zenon_notor_1 [OF z_Hey])
 show FALSE
 proof (rule zenon_notand [OF z_Hez])
  assume z_Hfa:"(?z_hck~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hu])
   assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
   show FALSE
   by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
  next
   assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
   show FALSE
   proof (rule zenon_or [OF z_Hbg])
    assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
   next
    assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
    have z_Hbn: "?z_hbn" (is "?z_hbi=_")
    by (rule zenon_and_0 [OF z_Hbm])
    have z_Hfb: "(((F[?z_hbz])[''bit''])~=0)" (is "?z_hcn~=_")
    by (rule subst [where P="(\<lambda>zenon_Vzc. (((zenon_Vzc[?z_hbz])[''bit''])~=0))", OF z_Hf z_Hfa])
    have z_Hfh: "(?z_hbi~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vnd. (((F[(zenon_Vnd[a_punde_1a])])[''bit''])~=0))", OF z_Hm z_Hfb])
    show FALSE
    by (rule notE [OF z_Hfh z_Hbn])
   qed
  qed
 next
  assume z_Hfo:"(~?z_heu)" (is "~(?z_hdb|?z_hev)")
  have z_Hda: "(~?z_hdb)"
  by (rule zenon_notor_0 [OF z_Hfo])
  have z_Hfp: "(~?z_hev)" (is "~(?z_hew&?z_hex)")
  by (rule zenon_notor_1 [OF z_Hfo])
  show FALSE
  proof (rule zenon_notand [OF z_Hfp])
   assume z_Hfq:"(((a_Fhash_primea[?z_hca])[''rank''])~=((a_Fhash_primea[?z_hbz])[''rank'']))" (is "?z_hdd~=?z_hdc")
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbw: "?z_hbw" (is "?z_hbt=?z_hbr")
      by (rule zenon_and_0 [OF z_Hbv])
      have z_Hfr: "(((F[?z_hca])[''rank''])~=?z_hdc)" (is "?z_hdy~=_")
      by (rule subst [where P="(\<lambda>zenon_Vfc. (((zenon_Vfc[?z_hca])[''rank''])~=?z_hdc))", OF z_Hf z_Hfq])
      have z_Hfx: "(?z_hbt~=?z_hdc)"
      by (rule subst [where P="(\<lambda>zenon_Vtc. (((F[(zenon_Vtc[a_punde_1a])])[''rank''])~=?z_hdc))", OF z_Hg z_Hfr])
      have z_Hge: "(?z_hbt~=((F[?z_hbz])[''rank'']))" (is "_~=?z_hdh")
      by (rule subst [where P="(\<lambda>zenon_Vuc. (?z_hbt~=((zenon_Vuc[?z_hbz])[''rank''])))", OF z_Hf z_Hfx])
      have z_Hgk: "(?z_hbt~=?z_hbr)"
      by (rule subst [where P="(\<lambda>zenon_Vvc. (?z_hbt~=((F[(zenon_Vvc[a_punde_1a])])[''rank''])))", OF z_Hm z_Hge])
      show FALSE
      by (rule notE [OF z_Hgk z_Hbw])
     qed
    qed
   qed
  next
   assume z_Hgr:"(~?z_hex)"
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbx: "?z_hbx"
      by (rule zenon_and_1 [OF z_Hbv])
      have z_Hgs: "(~((a_ca[a_punde_1a]) <= ?z_hca))" (is "~?z_hgt")
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((zenon_Vob[a_punde_1a]) <= ?z_hca)))", OF z_Hm z_Hgr])
      have z_Hgz: "(~?z_hbx)"
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((a_ca[a_punde_1a]) <= (zenon_Vob[a_punde_1a]))))", OF z_Hg z_Hgs])
      show FALSE
      by (rule notE [OF z_Hgz z_Hbx])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 473"; *} qed
lemma ob'508:
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
assumes v'102: "(Inv)"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "((((((fapply ((pc), (p))) = (''F3''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U1''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U1'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U1'')]))))))) | (((((fapply ((pc), (p))) = (''F3U2''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U2'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U2'')]))))))) | (((((fapply ((pc), (p))) = (''F3U7''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U7'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U8''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U8'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U8'')]))))))))"
assumes v'106: "((((a_aunde_Fhash_primea :: c)) = ([(a_aunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Fa), (p)))))])))"
assumes v'107: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'108: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'109: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'110: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'111: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
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
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'508")
proof -
ML_command {* writeln "*** TLAPS ENTER 508"; *}
show "PROP ?ob'508"

(* BEGIN ZENON INPUT
;; file=F3Inv_proof.tlaps/tlapm_14630f.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >F3Inv_proof.tlaps/tlapm_14630f.znn.out
;; obligation #508
$hyp "v'102" Inv
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (\/ (/\ (= (TLA.fapply pc p) "F3") (\/ (= a_pchash_primea
(TLA.except pc p "F4")) (= a_pchash_primea (TLA.except pc p "F7"))))
(/\ (= (TLA.fapply pc p) "F3U1") (\/ (= a_pchash_primea
(TLA.except pc p "F4U1")) (= a_pchash_primea (TLA.except pc p "F7U1"))))
(/\ (= (TLA.fapply pc p) "F3U2") (\/ (= a_pchash_primea
(TLA.except pc p "F4U2")) (= a_pchash_primea (TLA.except pc p "F7U2"))))
(/\ (= (TLA.fapply pc p) "F3U7") (\/ (= a_pchash_primea
(TLA.except pc p "F4U7")) (= a_pchash_primea (TLA.except pc p "F7U7"))))
(/\ (= (TLA.fapply pc p) "F3U8") (\/ (= a_pchash_primea
(TLA.except pc p "F4U8")) (= a_pchash_primea
(TLA.except pc p "F7U8")))))
$hyp "v'106" (= a_aunde_Fhash_primea
(TLA.except a_aunde_Fa p (TLA.fapply F (TLA.fapply a_uunde_Fa p))))
$hyp "v'107" (= a_Fhash_primea F)
$hyp "v'108" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'109" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'110" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'111" (= a_vunde_Uhash_primea
a_vunde_Ua)
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
 have z_Hg:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'108 by blast
 have z_Hm:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hf:"(a_Fhash_primea=F)"
 using v'107 by blast
 have z_Hu:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbc|?z_hbg")
 using v'154 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbc ==> FALSE" (is "?z_hg ==> ?z_hm ==> ?z_hby ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hm:"?z_hm"
  assume z_Hby:"?z_hby" (is "?z_hbz~=?z_hca")
  assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
  have z_Hcb: "(?z_hbd~=?z_hca)"
  by (rule subst [where P="(\<lambda>zenon_Vub. ((zenon_Vub[a_punde_1a])~=?z_hca))", OF z_Hm z_Hby])
  have z_Hcg: "(?z_hbd~=?z_hbf)"
  by (rule subst [where P="(\<lambda>zenon_Vub. (?z_hbd~=(zenon_Vub[a_punde_1a])))", OF z_Hg z_Hcb])
  show FALSE
  by (rule notE [OF z_Hcg z_Hbc])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hm ==> ?z_hf ==> ?z_hcj ==> ?z_hbh ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hf:"?z_hf"
  assume z_Hcj:"?z_hcj" (is "?z_hck~=?z_hbl")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  have z_Hcm: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl)" (is "?z_hcn~=_")
  by (rule subst [where P="(\<lambda>zenon_Vec. (((zenon_Vec[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hf z_Hcj])
  have z_Hcu: "(?z_hbi~=?z_hbl)"
  by (rule subst [where P="(\<lambda>zenon_Vec. (((F[(zenon_Vec[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hm z_Hcm])
  show FALSE
  by (rule notE [OF z_Hcu z_Hbh])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hm ==> ?z_hg ==> ?z_hf ==> ?z_hda ==> ?z_hbq ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hg:"?z_hg"
  assume z_Hf:"?z_hf"
  assume z_Hda:"?z_hda" (is "~?z_hdb")
  assume z_Hbq:"?z_hbq"
  have z_Hdf: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdg")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((zenon_Vqb[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hda])
  have z_Hdo: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdp")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((F[(zenon_Vqb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hm z_Hdf])
  have z_Hdw: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vrb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vrb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hdo])
  have z_Heg: "(~?z_hbq)"
  by (rule subst [where P="(\<lambda>zenon_Vsb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vsb[a_punde_1a])])[''rank'']))))", OF z_Hg z_Hdw])
  show FALSE
  by (rule notE [OF z_Heg z_Hbq])
 qed
 assume z_Hv:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_hep|?z_heq)")
 have z_Hby: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hbz~=?z_hca")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hey: "(~?z_heq)" (is "~(?z_her|?z_hes)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Hcj: "(((a_Fhash_primea[?z_hbz])[''bit''])~=1)" (is "?z_hck~=?z_hbl")
 by (rule zenon_notor_0 [OF z_Hey])
 have z_Hez: "(~?z_hes)" (is "~(?z_het&?z_heu)")
 by (rule zenon_notor_1 [OF z_Hey])
 show FALSE
 proof (rule zenon_notand [OF z_Hez])
  assume z_Hfa:"(?z_hck~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hu])
   assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
   show FALSE
   by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
  next
   assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
   show FALSE
   proof (rule zenon_or [OF z_Hbg])
    assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
   next
    assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
    have z_Hbn: "?z_hbn" (is "?z_hbi=_")
    by (rule zenon_and_0 [OF z_Hbm])
    have z_Hfb: "(((F[?z_hbz])[''bit''])~=0)" (is "?z_hcn~=_")
    by (rule subst [where P="(\<lambda>zenon_Vzc. (((zenon_Vzc[?z_hbz])[''bit''])~=0))", OF z_Hf z_Hfa])
    have z_Hfh: "(?z_hbi~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vnd. (((F[(zenon_Vnd[a_punde_1a])])[''bit''])~=0))", OF z_Hm z_Hfb])
    show FALSE
    by (rule notE [OF z_Hfh z_Hbn])
   qed
  qed
 next
  assume z_Hfo:"(~?z_heu)" (is "~(?z_hdb|?z_hev)")
  have z_Hda: "(~?z_hdb)"
  by (rule zenon_notor_0 [OF z_Hfo])
  have z_Hfp: "(~?z_hev)" (is "~(?z_hew&?z_hex)")
  by (rule zenon_notor_1 [OF z_Hfo])
  show FALSE
  proof (rule zenon_notand [OF z_Hfp])
   assume z_Hfq:"(((a_Fhash_primea[?z_hca])[''rank''])~=((a_Fhash_primea[?z_hbz])[''rank'']))" (is "?z_hdd~=?z_hdc")
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbw: "?z_hbw" (is "?z_hbt=?z_hbr")
      by (rule zenon_and_0 [OF z_Hbv])
      have z_Hfr: "(((F[?z_hca])[''rank''])~=?z_hdc)" (is "?z_hdy~=_")
      by (rule subst [where P="(\<lambda>zenon_Vfc. (((zenon_Vfc[?z_hca])[''rank''])~=?z_hdc))", OF z_Hf z_Hfq])
      have z_Hfx: "(?z_hbt~=?z_hdc)"
      by (rule subst [where P="(\<lambda>zenon_Vtc. (((F[(zenon_Vtc[a_punde_1a])])[''rank''])~=?z_hdc))", OF z_Hg z_Hfr])
      have z_Hge: "(?z_hbt~=((F[?z_hbz])[''rank'']))" (is "_~=?z_hdh")
      by (rule subst [where P="(\<lambda>zenon_Vuc. (?z_hbt~=((zenon_Vuc[?z_hbz])[''rank''])))", OF z_Hf z_Hfx])
      have z_Hgk: "(?z_hbt~=?z_hbr)"
      by (rule subst [where P="(\<lambda>zenon_Vvc. (?z_hbt~=((F[(zenon_Vvc[a_punde_1a])])[''rank''])))", OF z_Hm z_Hge])
      show FALSE
      by (rule notE [OF z_Hgk z_Hbw])
     qed
    qed
   qed
  next
   assume z_Hgr:"(~?z_hex)"
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbx: "?z_hbx"
      by (rule zenon_and_1 [OF z_Hbv])
      have z_Hgs: "(~((a_ca[a_punde_1a]) <= ?z_hca))" (is "~?z_hgt")
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((zenon_Vob[a_punde_1a]) <= ?z_hca)))", OF z_Hm z_Hgr])
      have z_Hgz: "(~?z_hbx)"
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((a_ca[a_punde_1a]) <= (zenon_Vob[a_punde_1a]))))", OF z_Hg z_Hgs])
      show FALSE
      by (rule notE [OF z_Hgz z_Hbx])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 508"; *} qed
lemma ob'511:
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
assumes v'138: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F6U1'')))"
assumes v'156: "((((fapply ((a_uunde_Fa), (a_punde_1a))) = (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply ((F), (fapply ((a_uunde_Fa), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply ((a_aunde_Fa), (a_punde_1a))), (''parent''))), (fapply ((a_uunde_Fa), (a_punde_1a)))))))))))"
shows "((((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'511")
proof -
ML_command {* writeln "*** TLAPS ENTER 511"; *}
show "PROP ?ob'511"

(* BEGIN ZENON INPUT
;; file=F3Inv_proof.tlaps/tlapm_00aa33.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >F3Inv_proof.tlaps/tlapm_00aa33.znn.out
;; obligation #511
$hyp "v'103" Inv
$hyp "v'104" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'106" (\/ (/\ (= (TLA.fapply pc p) "F3") (\/ (= a_pchash_primea
(TLA.except pc p "F4")) (= a_pchash_primea (TLA.except pc p "F7"))))
(/\ (= (TLA.fapply pc p) "F3U1") (\/ (= a_pchash_primea
(TLA.except pc p "F4U1")) (= a_pchash_primea (TLA.except pc p "F7U1"))))
(/\ (= (TLA.fapply pc p) "F3U2") (\/ (= a_pchash_primea
(TLA.except pc p "F4U2")) (= a_pchash_primea (TLA.except pc p "F7U2"))))
(/\ (= (TLA.fapply pc p) "F3U7") (\/ (= a_pchash_primea
(TLA.except pc p "F4U7")) (= a_pchash_primea (TLA.except pc p "F7U7"))))
(/\ (= (TLA.fapply pc p) "F3U8") (\/ (= a_pchash_primea
(TLA.except pc p "F4U8")) (= a_pchash_primea
(TLA.except pc p "F7U8")))))
$hyp "v'107" (= a_aunde_Fhash_primea
(TLA.except a_aunde_Fa p (TLA.fapply F (TLA.fapply a_uunde_Fa p))))
$hyp "v'108" (= a_Fhash_primea F)
$hyp "v'109" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'110" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'111" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'112" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'113" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'114" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'115" (= a_chash_primea a_ca)
$hyp "v'116" (= a_dhash_primea d)
$hyp "v'117" (= a_Mhash_primea M)
$hyp "v'121" (/\ (TLA.in a_pchash_primea
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
hf9aeb3897da94c7352f843ff1e508c h20451dbf6bb505ef64a23efc0d6b3f
(TLA.in a_aunde_Fhash_primea (TLA.FuncSet PROCESSES FieldSet))
a_he269618ebe6078075ae33489842a63a a_h3c17892ec704c5c790d6c650bc1169a
a_h4e0910ff04d5282a7607ee7b7eab81a hec61390ce29cfa3163e637effefe5f
h602df0f4906d91bdcf73ac652471ea a_h1ef1e69610c58c66ee5436c27a2e53a
a_h14c0a5932541232a01b2e9de8e7f49a
h46e5ced0ed3f2b9f4026c7a4eba44c)
$hyp "v'130" (TLA.bAll PROCESSES ((p_1) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p_1)
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
"F6U1")
$hyp "v'156" (\/ (= (TLA.fapply a_uunde_Fa a_punde_1a)
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
 have z_Hp:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&((a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet))&(a_he269618ebe6078075ae33489842a63a&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hw&?z_hdd")
 using v'121 by blast
 have z_He:"(a_aunde_Fhash_primea=except(a_aunde_Fa, p, (F[(a_uunde_Fa[p])])))" (is "_=?z_heb")
 using v'107 by blast
 have z_Hg:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'109 by blast
 have z_Hf:"(a_Fhash_primea=F)"
 using v'108 by blast
 have z_Hu:"(((a_uunde_Fa[a_punde_1a])=((a_aunde_Fa[a_punde_1a])[''parent'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1)|((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hek|?z_heq")
 using v'156 by blast
 have z_Hr:"(a_punde_1a \\in PROCESSES)" (is "?z_hr")
 using a_punde_1a_in by blast
 have z_Hc:"(p \\in PROCESSES)" (is "?z_hc")
 using p_in by blast
 have z_Ht:"((a_pchash_primea[a_punde_1a])=''F6U1'')" (is "?z_hfi=?z_hby")
 using v'138 by blast
 have z_Hd:"((((pc[p])=''F3'')&((a_pchash_primea=except(pc, p, ''F4''))|(a_pchash_primea=except(pc, p, ''F7''))))|((((pc[p])=''F3U1'')&((a_pchash_primea=except(pc, p, ''F4U1''))|(a_pchash_primea=except(pc, p, ''F7U1''))))|((((pc[p])=''F3U2'')&((a_pchash_primea=except(pc, p, ''F4U2''))|(a_pchash_primea=except(pc, p, ''F7U2''))))|((((pc[p])=''F3U7'')&((a_pchash_primea=except(pc, p, ''F4U7''))|(a_pchash_primea=except(pc, p, ''F7U7''))))|(((pc[p])=''F3U8'')&((a_pchash_primea=except(pc, p, ''F4U8''))|(a_pchash_primea=except(pc, p, ''F7U8''))))))))" (is "?z_hfj|?z_hfs")
 using v'106 by blast
 have zenon_L1_: "((a_pchash_primea[p])~=?z_hfi) ==> (p=a_punde_1a) ==> FALSE" (is "?z_hgx ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Hgx:"?z_hgx" (is "?z_hgy~=_")
  assume z_Hgz:"?z_hgz"
  show FALSE
  proof (rule zenon_noteq [of "?z_hfi"])
   have z_Hha: "(?z_hfi~=?z_hfi)"
   by (rule subst [where P="(\<lambda>zenon_Vpnt. ((a_pchash_primea[zenon_Vpnt])~=?z_hfi))", OF z_Hgz], fact z_Hgx)
   thus "(?z_hfi~=?z_hfi)" .
  qed
 qed
 have zenon_L2_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hfo ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
  assume z_Hc:"?z_hc"
  have z_Hhh: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfp))&(?z_hhg=DOMAIN(?z_hfp)))&(\\A zenon_Vjnp:((a_pchash_primea[zenon_Vjnp])=(?z_hfp[zenon_Vjnp]))))" (is "?z_hhi&?z_hho")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfp", OF z_Hfo])
  have z_Hho: "?z_hho" (is "\\A x : ?z_hht(x)")
  by (rule zenon_and_1 [OF z_Hhh])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hie: "(p \\in DOMAIN(?z_hfp))" (is "?z_hie")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hfo z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F4''", OF z_Hie])
   have z_Hio: "?z_hht(p)" (is "?z_hgy=?z_hip")
   by (rule zenon_all_0 [of "?z_hht" "p", OF z_Hho])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F4''" "p", OF z_Hio])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hiu:"(?z_hgy=''F4'')" (is "_=?z_hbf")
    have z_Hiv: "(?z_hbf~=?z_hby)"
    by auto
    have z_Hgx: "(?z_hgy~=?z_hfi)"
    by (rule zenon_stringdiffll [OF z_Hiv z_Hiu z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgx z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L3_: "(DOMAIN(?z_heb)=PROCESSES) ==> (~(a_punde_1a \\in DOMAIN(a_aunde_Fa))) ==> ?z_hr ==> FALSE" (is "?z_hiz ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hjb:"?z_hjb" (is "~?z_hjc")
  assume z_Hr:"?z_hr"
  have z_Hje: "(\\A zenon_Vwe:((zenon_Vwe \\in ?z_hja)<=>(zenon_Vwe \\in PROCESSES)))" (is "\\A x : ?z_hjj(x)")
  by (rule zenon_setequal_0 [of "?z_hja" "PROCESSES", OF z_Hiz])
  have z_Hjk: "?z_hjj(a_punde_1a)" (is "?z_hjl<=>_")
  by (rule zenon_all_0 [of "?z_hjj" "a_punde_1a", OF z_Hje])
  show FALSE
  proof (rule zenon_equiv [OF z_Hjk])
   assume z_Hjm:"(~?z_hjl)"
   assume z_Hjn:"(~?z_hr)"
   show FALSE
   by (rule notE [OF z_Hjn z_Hr])
  next
   assume z_Hjl:"?z_hjl"
   assume z_Hr:"?z_hr"
   have z_Hjc: "?z_hjc"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vuz. (a_punde_1a \\in zenon_Vuz))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])", OF z_Hjl])
   show FALSE
   by (rule notE [OF z_Hjb z_Hjc])
  qed
 qed
 have zenon_L4_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hfo ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L2_ [OF z_Hhf z_Hgz z_Ht z_Hfo z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L5_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hg ==> ?z_hf ==> ?z_hku ==> ?z_her ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hf:"?z_hf"
  assume z_Hku:"?z_hku" (is "?z_hkv~=?z_hev")
  assume z_Her:"?z_her" (is "?z_hes=_")
  have z_Hkx: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hev)" (is "?z_hky~=_")
  by (rule subst [where P="(\<lambda>zenon_Voct. (((zenon_Voct[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=?z_hev))", OF z_Hf z_Hku])
  have z_Hlf: "(?z_hes~=?z_hev)"
  by (rule subst [where P="(\<lambda>zenon_Vqct. (((F[(zenon_Vqct[a_punde_1a])])[''bit''])~=?z_hev))", OF z_Hg z_Hkx])
  show FALSE
  by (rule notE [OF z_Hlf z_Her])
 qed
 have zenon_L6_: "(a_Fhash_primea=F) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((((F[(a_uunde_Fa[a_punde_1a])])[''bit''])=0)&((((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))&((a_uunde_Fa[a_punde_1a]) <= ((a_aunde_Fa[a_punde_1a])[''parent'']))))) ==> (((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=0) ==> FALSE" (is "?z_hf ==> ?z_hg ==> ?z_hew ==> ?z_hlm ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_Hg:"?z_hg"
  assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
  assume z_Hlm:"?z_hlm" (is "?z_hkv~=_")
  have z_Hex: "?z_hex" (is "?z_hes=_")
  by (rule zenon_and_0 [OF z_Hew])
  have z_Hln: "(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=0)" (is "?z_hky~=_")
  by (rule subst [where P="(\<lambda>zenon_Vsct. (((zenon_Vsct[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])~=0))", OF z_Hf z_Hlm])
  have z_Hlt: "(?z_hes~=0)"
  by (rule subst [where P="(\<lambda>zenon_Vuct. (((F[(zenon_Vuct[a_punde_1a])])[''bit''])~=0))", OF z_Hg z_Hln])
  show FALSE
  by (rule notE [OF z_Hlt z_Hex])
 qed
 have zenon_L7_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hfq ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Hc:"?z_hc"
  have z_Hma: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfr))&(?z_hhg=DOMAIN(?z_hfr)))&(\\A zenon_Vczn:((a_pchash_primea[zenon_Vczn])=(?z_hfr[zenon_Vczn]))))" (is "?z_hmb&?z_hmg")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfr", OF z_Hfq])
  have z_Hmg: "?z_hmg" (is "\\A x : ?z_hml(x)")
  by (rule zenon_and_1 [OF z_Hma])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hmm: "(p \\in DOMAIN(?z_hfr))" (is "?z_hmm")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hfq z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F7''", OF z_Hmm])
   have z_Hmn: "?z_hml(p)" (is "?z_hgy=?z_hmo")
   by (rule zenon_all_0 [of "?z_hml" "p", OF z_Hmg])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F7''" "p", OF z_Hmn])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hmp:"(?z_hgy=''F7'')" (is "_=?z_hbi")
    have z_Hmq: "(?z_hbi~=?z_hby)"
    by auto
    have z_Hgx: "(?z_hgy~=?z_hfi)"
    by (rule zenon_stringdiffll [OF z_Hmq z_Hmp z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgx z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L8_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hfq ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L7_ [OF z_Hhf z_Hgz z_Ht z_Hfq z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L9_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hfw ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
  assume z_Hc:"?z_hc"
  have z_Hmr: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfx))&(?z_hhg=DOMAIN(?z_hfx)))&(\\A zenon_Vrkm:((a_pchash_primea[zenon_Vrkm])=(?z_hfx[zenon_Vrkm]))))" (is "?z_hms&?z_hmx")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfx", OF z_Hfw])
  have z_Hmx: "?z_hmx" (is "\\A x : ?z_hnc(x)")
  by (rule zenon_and_1 [OF z_Hmr])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hnd: "(p \\in DOMAIN(?z_hfx))" (is "?z_hnd")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hfw z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F4U1''", OF z_Hnd])
   have z_Hne: "?z_hnc(p)" (is "?z_hgy=?z_hnf")
   by (rule zenon_all_0 [of "?z_hnc" "p", OF z_Hmx])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F4U1''" "p", OF z_Hne])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hng:"(?z_hgy=''F4U1'')" (is "_=?z_hbw")
    have z_Hnh: "(?z_hbw~=?z_hby)"
    by auto
    have z_Hgx: "(?z_hgy~=?z_hfi)"
    by (rule zenon_stringdiffll [OF z_Hnh z_Hng z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgx z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L10_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hfw ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L9_ [OF z_Hhf z_Hgz z_Ht z_Hfw z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L11_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F7U1'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hni ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hni:"?z_hni" (is "?z_hgy=?z_hbz")
  assume z_Hgz:"?z_hgz"
  have z_Hnj: "(?z_hbz~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hnj z_Hni z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L12_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hfy ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Hc:"?z_hc"
  have z_Hnk: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfz))&(?z_hhg=DOMAIN(?z_hfz)))&(\\A zenon_Vlwk:((a_pchash_primea[zenon_Vlwk])=(?z_hfz[zenon_Vlwk]))))" (is "?z_hnl&?z_hnq")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfz", OF z_Hfy])
  have z_Hnq: "?z_hnq" (is "\\A x : ?z_hnv(x)")
  by (rule zenon_and_1 [OF z_Hnk])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hnw: "(p \\in DOMAIN(?z_hfz))" (is "?z_hnw")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hfy z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F7U1''", OF z_Hnw])
   have z_Hnx: "?z_hnv(p)" (is "?z_hgy=?z_hny")
   by (rule zenon_all_0 [of "?z_hnv" "p", OF z_Hnq])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F7U1''" "p", OF z_Hnx])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hni:"(?z_hgy=''F7U1'')" (is "_=?z_hbz")
    show FALSE
    by (rule zenon_L11_ [OF z_Ht z_Hni z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L13_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hfy ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L12_ [OF z_Hhf z_Hgz z_Ht z_Hfy z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L14_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F4U2'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hnz ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hnz:"?z_hnz" (is "?z_hgy=?z_hcf")
  assume z_Hgz:"?z_hgz"
  have z_Hoa: "(?z_hcf~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hoa z_Hnz z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L15_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hge ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hge:"?z_hge" (is "_=?z_hgf")
  assume z_Hc:"?z_hc"
  have z_Hob: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgf))&(?z_hhg=DOMAIN(?z_hgf)))&(\\A zenon_Vbij:((a_pchash_primea[zenon_Vbij])=(?z_hgf[zenon_Vbij]))))" (is "?z_hoc&?z_hoh")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgf", OF z_Hge])
  have z_Hoh: "?z_hoh" (is "\\A x : ?z_hom(x)")
  by (rule zenon_and_1 [OF z_Hob])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hon: "(p \\in DOMAIN(?z_hgf))" (is "?z_hon")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hge z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F4U2''", OF z_Hon])
   have z_Hoo: "?z_hom(p)" (is "?z_hgy=?z_hop")
   by (rule zenon_all_0 [of "?z_hom" "p", OF z_Hoh])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F4U2''" "p", OF z_Hoo])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hnz:"(?z_hgy=''F4U2'')" (is "_=?z_hcf")
    show FALSE
    by (rule zenon_L14_ [OF z_Ht z_Hnz z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L16_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hge ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hge:"?z_hge" (is "_=?z_hgf")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L15_ [OF z_Hhf z_Hgz z_Ht z_Hge z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L17_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F7U2'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hoq ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hoq:"?z_hoq" (is "?z_hgy=?z_hci")
  assume z_Hgz:"?z_hgz"
  have z_Hor: "(?z_hci~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hor z_Hoq z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L18_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hgg ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Hc:"?z_hc"
  have z_Hos: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgh))&(?z_hhg=DOMAIN(?z_hgh)))&(\\A zenon_Vvth:((a_pchash_primea[zenon_Vvth])=(?z_hgh[zenon_Vvth]))))" (is "?z_hot&?z_hoy")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgh", OF z_Hgg])
  have z_Hoy: "?z_hoy" (is "\\A x : ?z_hpd(x)")
  by (rule zenon_and_1 [OF z_Hos])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hpe: "(p \\in DOMAIN(?z_hgh))" (is "?z_hpe")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hgg z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F7U2''", OF z_Hpe])
   have z_Hpf: "?z_hpd(p)" (is "?z_hgy=?z_hpg")
   by (rule zenon_all_0 [of "?z_hpd" "p", OF z_Hoy])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F7U2''" "p", OF z_Hpf])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hoq:"(?z_hgy=''F7U2'')" (is "_=?z_hci")
    show FALSE
    by (rule zenon_L17_ [OF z_Ht z_Hoq z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L19_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hgg ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L18_ [OF z_Hhf z_Hgz z_Ht z_Hgg z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L20_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F4U7'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hph ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hph:"?z_hph" (is "?z_hgy=?z_hco")
  assume z_Hgz:"?z_hgz"
  have z_Hpi: "(?z_hco~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hpi z_Hph z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L21_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hgm ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
  assume z_Hc:"?z_hc"
  have z_Hpj: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgn))&(?z_hhg=DOMAIN(?z_hgn)))&(\\A zenon_Vlfg:((a_pchash_primea[zenon_Vlfg])=(?z_hgn[zenon_Vlfg]))))" (is "?z_hpk&?z_hpp")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgn", OF z_Hgm])
  have z_Hpp: "?z_hpp" (is "\\A x : ?z_hpu(x)")
  by (rule zenon_and_1 [OF z_Hpj])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hpv: "(p \\in DOMAIN(?z_hgn))" (is "?z_hpv")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hgm z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F4U7''", OF z_Hpv])
   have z_Hpw: "?z_hpu(p)" (is "?z_hgy=?z_hpx")
   by (rule zenon_all_0 [of "?z_hpu" "p", OF z_Hpp])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F4U7''" "p", OF z_Hpw])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hph:"(?z_hgy=''F4U7'')" (is "_=?z_hco")
    show FALSE
    by (rule zenon_L20_ [OF z_Ht z_Hph z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L22_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hgm ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L21_ [OF z_Hhf z_Hgz z_Ht z_Hgm z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L23_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F7U7'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hpy ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hpy:"?z_hpy" (is "?z_hgy=?z_hcr")
  assume z_Hgz:"?z_hgz"
  have z_Hpz: "(?z_hcr~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hpz z_Hpy z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L24_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hgo ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Hc:"?z_hc"
  have z_Hqa: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgp))&(?z_hhg=DOMAIN(?z_hgp)))&(\\A zenon_Vfre:((a_pchash_primea[zenon_Vfre])=(?z_hgp[zenon_Vfre]))))" (is "?z_hqb&?z_hqg")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgp", OF z_Hgo])
  have z_Hqg: "?z_hqg" (is "\\A x : ?z_hql(x)")
  by (rule zenon_and_1 [OF z_Hqa])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hqm: "(p \\in DOMAIN(?z_hgp))" (is "?z_hqm")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hgo z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F7U7''", OF z_Hqm])
   have z_Hqn: "?z_hql(p)" (is "?z_hgy=?z_hqo")
   by (rule zenon_all_0 [of "?z_hql" "p", OF z_Hqg])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F7U7''" "p", OF z_Hqn])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hpy:"(?z_hgy=''F7U7'')" (is "_=?z_hcr")
    show FALSE
    by (rule zenon_L23_ [OF z_Ht z_Hpy z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L25_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hgo ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L24_ [OF z_Hhf z_Hgz z_Ht z_Hgo z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L26_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F4U8'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hqp ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hqp:"?z_hqp" (is "?z_hgy=?z_hcx")
  assume z_Hgz:"?z_hgz"
  have z_Hqq: "(?z_hcx~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hqq z_Hqp z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L27_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hgt ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
  assume z_Hc:"?z_hc"
  have z_Hqr: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgu))&(?z_hhg=DOMAIN(?z_hgu)))&(\\A zenon_Vtcd:((a_pchash_primea[zenon_Vtcd])=(?z_hgu[zenon_Vtcd]))))" (is "?z_hqs&?z_hqx")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgu", OF z_Hgt])
  have z_Hqx: "?z_hqx" (is "\\A x : ?z_hrc(x)")
  by (rule zenon_and_1 [OF z_Hqr])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hrd: "(p \\in DOMAIN(?z_hgu))" (is "?z_hrd")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hgt z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F4U8''", OF z_Hrd])
   have z_Hre: "?z_hrc(p)" (is "?z_hgy=?z_hrf")
   by (rule zenon_all_0 [of "?z_hrc" "p", OF z_Hqx])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F4U8''" "p", OF z_Hre])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hqp:"(?z_hgy=''F4U8'')" (is "_=?z_hcx")
    show FALSE
    by (rule zenon_L26_ [OF z_Ht z_Hqp z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L28_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hgt ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L27_ [OF z_Hhf z_Hgz z_Ht z_Hgt z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L29_: "(?z_hfi=?z_hby) ==> ((a_pchash_primea[p])=''F7U8'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hrg ==> ?z_hgz ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hrg:"?z_hrg" (is "?z_hgy=?z_hda")
  assume z_Hgz:"?z_hgz"
  have z_Hrh: "(?z_hda~=?z_hby)"
  by auto
  have z_Hgx: "(?z_hgy~=?z_hfi)"
  by (rule zenon_stringdiffll [OF z_Hrh z_Hrg z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgx z_Hgz])
 qed
 have zenon_L30_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> ?z_hc ==> FALSE" (is "?z_hhf ==> ?z_hgz ==> ?z_ht ==> ?z_hgv ==> _ ==> FALSE")
 proof -
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Hgz:"?z_hgz"
  assume z_Ht:"?z_ht"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Hc:"?z_hc"
  have z_Hri: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgw))&(?z_hhg=DOMAIN(?z_hgw)))&(\\A zenon_Vxa:((a_pchash_primea[zenon_Vxa])=(?z_hgw[zenon_Vxa]))))" (is "?z_hrj&?z_hro")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgw", OF z_Hgv])
  have z_Hro: "?z_hro" (is "\\A x : ?z_hrt(x)")
  by (rule zenon_and_1 [OF z_Hri])
  have z_Hhu: "(\\A zenon_Vie:((zenon_Vie \\in ?z_hhg)<=>(zenon_Vie \\in PROCESSES)))" (is "\\A x : ?z_hhz(x)")
  by (rule zenon_setequal_0 [of "?z_hhg" "PROCESSES", OF z_Hhf])
  have z_Hia: "?z_hhz(p)" (is "?z_hib<=>_")
  by (rule zenon_all_0 [of "?z_hhz" "p", OF z_Hhu])
  show FALSE
  proof (rule zenon_equiv [OF z_Hia])
   assume z_Hic:"(~?z_hib)"
   assume z_Hid:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hid z_Hc])
  next
   assume z_Hib:"?z_hib"
   assume z_Hc:"?z_hc"
   have z_Hru: "(p \\in DOMAIN(?z_hgw))" (is "?z_hru")
   by (rule subst [where P="(\<lambda>zenon_Vzaa. (p \\in DOMAIN(zenon_Vzaa)))", OF z_Hgv z_Hib])
   have z_Hij: "(p \\in DOMAIN(pc))" (is "?z_hij")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vyaa. (p \\in zenon_Vyaa))" "pc" "p" "''F7U8''", OF z_Hru])
   have z_Hrv: "?z_hrt(p)" (is "?z_hgy=?z_hrw")
   by (rule zenon_all_0 [of "?z_hrt" "p", OF z_Hro])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhba. (?z_hgy=zenon_Vhba))" "pc" "p" "''F7U8''" "p", OF z_Hrv])
    assume z_Hij:"?z_hij"
    assume z_Hit:"(p=p)"
    assume z_Hrg:"(?z_hgy=''F7U8'')" (is "_=?z_hda")
    show FALSE
    by (rule zenon_L29_ [OF z_Ht z_Hrg z_Hgz])
   next
    assume z_Hij:"?z_hij"
    assume z_Hiw:"(p~=p)"
    assume z_Hix:"(?z_hgy=(pc[p]))" (is "_=?z_hfl")
    show FALSE
    by (rule zenon_noteq [OF z_Hiw])
   next
    assume z_Hiy:"(~?z_hij)"
    show FALSE
    by (rule notE [OF z_Hiy z_Hij])
   qed
  qed
 qed
 have zenon_L31_: "(a_aunde_Fhash_primea=?z_heb) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> ((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> ?z_hr ==> ?z_hek ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hg ==> ?z_hjr ==> ?z_hdi ==> _ ==> _ ==> _ ==> ?z_hgv ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hg:"?z_hg"
  assume z_Hjr:"?z_hjr" (is "?z_hjs~=?z_hjt")
  assume z_Hdi:"?z_hdi"
  assume z_Hr:"?z_hr"
  assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
  assume z_Hc:"?z_hc"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hjv: "(?z_hel~=?z_hjt)"
  by (rule subst [where P="(\<lambda>zenon_Vict. ((zenon_Vict[a_punde_1a])~=?z_hjt))", OF z_Hg z_Hjr])
  have z_Hka: "(?z_hel~=((?z_heb[a_punde_1a])[''parent'']))" (is "_~=?z_hkb")
  by (rule subst [where P="(\<lambda>zenon_Vkct. (?z_hel~=((zenon_Vkct[a_punde_1a])[''parent''])))", OF z_He z_Hjv])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (?z_hel~=(zenon_Vlb[''parent''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hka])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hkq:"(?z_hel~=((F[(a_uunde_Fa[p])])[''parent'']))" (is "_~=?z_hkr")
   show FALSE
   by (rule zenon_L30_ [OF z_Hhf z_Hgz z_Ht z_Hgv z_Hc])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"(p~=a_punde_1a)"
   assume z_Hkt:"(?z_hel~=?z_hen)"
   show FALSE
   by (rule notE [OF z_Hkt z_Hek])
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L32_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hfo ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L2_ [OF z_Hhf z_Hgz z_Ht z_Hfo z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L33_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hfo ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L32_ [OF z_Hrx z_Hhf z_Ht z_Hfo z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L34_: "(a_Fhash_primea=F) ==> (F~=a_Fhash_primea) ==> FALSE" (is "?z_hf ==> ?z_huv ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_Huv:"?z_huv"
  have z_Huw: "(F~=F)"
  by (rule subst [where P="(\<lambda>zenon_Voft. (F~=zenon_Voft))", OF z_Hf z_Huv])
  show FALSE
  by (rule zenon_noteq [OF z_Huw])
 qed
 have zenon_L35_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (((?z_heb[a_punde_1a])[''parent''])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hr ==> (DOMAIN(?z_heb)=PROCESSES) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> (((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])) ==> (p~=a_punde_1a) ==> FALSE" (is "?z_hg ==> ?z_hf ==> ?z_hva ==> _ ==> ?z_hiz ==> ?z_hfg ==> ?z_hvb ==> ?z_hks ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hf:"?z_hf"
  assume z_Hva:"?z_hva" (is "?z_hkb~=?z_hjs")
  assume z_Hr:"?z_hr"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hfg:"?z_hfg" (is "?z_hfd=?z_hfb")
  assume z_Hvb:"?z_hvb" (is "?z_htt~=?z_hsm")
  assume z_Hks:"?z_hks"
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hgz:"(p=a_punde_1a)"
   assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
   show FALSE
   by (rule notE [OF z_Hks z_Hgz])
  next
   assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
   assume z_Hks:"?z_hks"
   assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdcr. (((F[(zenon_Vdcr[''parent''])])[''rank''])~=?z_hsm))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvb])
    assume z_Hjc:"?z_hjc"
    assume z_Hgz:"(p=a_punde_1a)"
    assume z_Hvo:"(((F[((F[(a_uunde_Fa[p])])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_hvp~=_")
    show FALSE
    by (rule notE [OF z_Hks z_Hgz])
   next
    assume z_Hjc:"?z_hjc"
    assume z_Hks:"?z_hks"
    assume z_Hvr:"(?z_hfd~=?z_hsm)"
    have z_Hvs: "(?z_hfd~=((F[?z_hjs])[''rank'']))" (is "_~=?z_hsr")
    by (rule subst [where P="(\<lambda>zenon_Vqft. (?z_hfd~=((zenon_Vqft[?z_hjs])[''rank''])))", OF z_Hf z_Hvr])
    have z_Hvy: "(?z_hfd~=?z_hfb)"
    by (rule subst [where P="(\<lambda>zenon_Vsft. (?z_hfd~=((F[(zenon_Vsft[a_punde_1a])])[''rank''])))", OF z_Hg z_Hvs])
    show FALSE
    by (rule notE [OF z_Hvy z_Hfg])
   next
    assume z_Hjb:"(~?z_hjc)"
    show FALSE
    by (rule notE [OF z_Hjb z_Hjc])
   qed
  next
   assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
   show FALSE
   by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
  qed
 qed
 have zenon_L36_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hfq ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L7_ [OF z_Hhf z_Hgz z_Ht z_Hfq z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L37_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hfq ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L36_ [OF z_Hrx z_Hhf z_Ht z_Hfq z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L38_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hfw ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L9_ [OF z_Hhf z_Hgz z_Ht z_Hfw z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L39_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hfw ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L38_ [OF z_Hrx z_Hhf z_Ht z_Hfw z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L40_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hfy ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L12_ [OF z_Hhf z_Hgz z_Ht z_Hfy z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L41_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hfy ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L40_ [OF z_Hrx z_Hhf z_Ht z_Hfy z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L42_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hge ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hge:"?z_hge" (is "_=?z_hgf")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L15_ [OF z_Hhf z_Hgz z_Ht z_Hge z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L43_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hge ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hge:"?z_hge" (is "_=?z_hgf")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L42_ [OF z_Hrx z_Hhf z_Ht z_Hge z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L44_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hgg ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L18_ [OF z_Hhf z_Hgz z_Ht z_Hgg z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L45_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hgg ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L44_ [OF z_Hrx z_Hhf z_Ht z_Hgg z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L46_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hgm ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L21_ [OF z_Hhf z_Hgz z_Ht z_Hgm z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L47_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hgm ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L46_ [OF z_Hrx z_Hhf z_Ht z_Hgm z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L48_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hgo ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L24_ [OF z_Hhf z_Hgz z_Ht z_Hgo z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L49_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hgo ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L48_ [OF z_Hrx z_Hhf z_Ht z_Hgo z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L50_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hgt ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L27_ [OF z_Hhf z_Hgz z_Ht z_Hgt z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L51_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hgt ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L50_ [OF z_Hrx z_Hhf z_Ht z_Hgt z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 have zenon_L52_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_heb[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfi=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> ?z_hc ==> (DOMAIN(?z_heb)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hrx ==> ?z_hhf ==> ?z_ht ==> ?z_hgv ==> _ ==> ?z_hiz ==> _ ==> FALSE")
 proof -
  assume z_Hrx:"?z_hrx" (is "?z_hen~=?z_hkb")
  assume z_Hhf:"?z_hhf" (is "?z_hhg=_")
  assume z_Ht:"?z_ht"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Hc:"?z_hc"
  assume z_Hiz:"?z_hiz" (is "?z_hja=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hkb"])
   have z_Hry: "((a_aunde_Fa[a_punde_1a])=(?z_heb[a_punde_1a]))" (is "?z_heo=?z_hkc")
   proof (rule zenon_nnpp [of "(?z_heo=?z_hkc)"])
    assume z_Hrz:"(?z_heo~=?z_hkc)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vzf. (?z_heo~=zenon_Vzf))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hrz])
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hgz:"(p=a_punde_1a)"
     assume z_Hsd:"(?z_heo~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_hee")
     show FALSE
     by (rule zenon_L30_ [OF z_Hhf z_Hgz z_Ht z_Hgv z_Hc])
    next
     assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
     assume z_Hks:"(p~=a_punde_1a)"
     assume z_Hse:"(?z_heo~=?z_heo)"
     show FALSE
     by (rule zenon_noteq [OF z_Hse])
    next
     assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
     show FALSE
     by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
    qed
   qed
   have z_Hsf: "(?z_hkb~=?z_hkb)"
   by (rule subst [where P="(\<lambda>zenon_Vqnt. ((zenon_Vqnt[''parent''])~=?z_hkb))", OF z_Hry], fact z_Hrx)
   thus "(?z_hkb~=?z_hkb)" .
  qed
 qed
 have zenon_L53_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_aunde_Fhash_primea=?z_heb) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> (?z_hfi=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_hg ==> ?z_he ==> ?z_hf ==> ?z_hsk ==> ?z_hdi ==> ?z_hfa ==> _ ==> _ ==> ?z_hgv ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_He:"?z_he"
  assume z_Hf:"?z_hf"
  assume z_Hsk:"?z_hsk" (is "~?z_hsl")
  assume z_Hdi:"?z_hdi"
  assume z_Hfa:"?z_hfa"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hsp: "(~(((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsq")
  by (rule subst [where P="(\<lambda>zenon_Vyet. (~(((zenon_Vyet[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsk])
  have z_Hsy: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hsz")
  by (rule subst [where P="(\<lambda>zenon_Vaft. (~(((F[(zenon_Vaft[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hg z_Hsp])
  have z_Hth: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vcft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((zenon_Vcft[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Hsy])
  have z_Htr: "(~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hts")
  by (rule subst [where P="(\<lambda>zenon_Veft. (~(((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < ((F[((zenon_Veft[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hth])
  have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
  by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
  by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
  show FALSE
  proof (rule notE [OF z_Htr])
   have z_Hud: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_heb[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_htt")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_htt)"])
    assume z_Hue:"(?z_hfd~=?z_htt)"
    show FALSE
    proof (rule zenon_noteq [of "?z_htt"])
     have z_Huf: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_heb[a_punde_1a])[''parent''])]))" (is "?z_hfe=?z_htu")
     proof (rule zenon_nnpp [of "(?z_hfe=?z_htu)"])
      assume z_Hug:"(?z_hfe~=?z_htu)"
      show FALSE
      proof (rule zenon_noteq [of "?z_htu"])
       have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
       proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
        assume z_Hrx:"(?z_hen~=?z_hkb)"
        show FALSE
        by (rule zenon_L52_ [OF z_Hrx z_Hhf z_Ht z_Hgv z_Hc z_Hiz z_Hr])
       qed
       have z_Hui: "(?z_htu~=?z_htu)"
       by (rule subst [where P="(\<lambda>zenon_Vrnt. ((F[zenon_Vrnt])~=?z_htu))", OF z_Huh], fact z_Hug)
       thus "(?z_htu~=?z_htu)" .
      qed
     qed
     have z_Hun: "(?z_htt~=?z_htt)"
     by (rule subst [where P="(\<lambda>zenon_Vsnt. ((zenon_Vsnt[''rank''])~=?z_htt))", OF z_Huf], fact z_Hue)
     thus "(?z_htt~=?z_htt)" .
    qed
   qed
   have z_Hts: "?z_hts"
   by (rule subst [where P="(\<lambda>zenon_Vtnt. (((F[(a_uunde_Fa[a_punde_1a])])[''rank'']) < zenon_Vtnt))", OF z_Hud], fact z_Hfa)
   thus "?z_hts" .
  qed
 qed
 assume z_Hv:"(~(((a_uunde_Fhash_primea[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))&((a_uunde_Fhash_primea[a_punde_1a]) <= ((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hwg|?z_hwh)")
 have z_Hw: "?z_hw"
 by (rule zenon_and_0 [OF z_Hp])
 have z_Hdd: "?z_hdd" (is "_&?z_hdf")
 by (rule zenon_and_1 [OF z_Hp])
 have z_Hdf: "?z_hdf" (is "_&?z_hdh")
 by (rule zenon_and_1 [OF z_Hdd])
 have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdm")
 by (rule zenon_and_1 [OF z_Hdf])
 have z_Hdi: "?z_hdi"
 by (rule zenon_and_0 [OF z_Hdh])
 have z_Hjr: "((a_uunde_Fhash_primea[a_punde_1a])~=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hjs~=?z_hjt")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hwp: "(~?z_hwh)" (is "~(?z_hwi|?z_hwj)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Hku: "(((a_Fhash_primea[?z_hjs])[''bit''])~=1)" (is "?z_hkv~=?z_hev")
 by (rule zenon_notor_0 [OF z_Hwp])
 have z_Hwq: "(~?z_hwj)" (is "~(?z_hwk&?z_hwl)")
 by (rule zenon_notor_1 [OF z_Hwp])
 show FALSE
 proof (rule zenon_notand [OF z_Hwq])
  assume z_Hlm:"(?z_hkv~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hd])
   assume z_Hfj:"?z_hfj" (is "?z_hfk&?z_hfn")
   have z_Hfn: "?z_hfn" (is "?z_hfo|?z_hfq")
   by (rule zenon_and_1 [OF z_Hfj])
   show FALSE
   proof (rule zenon_or [OF z_Hfn])
    assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
    show FALSE
    proof (rule zenon_or [OF z_Hu])
     assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
     show FALSE
     by (rule zenon_L4_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfo z_Ht z_Hw])
    next
     assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
     show FALSE
     proof (rule zenon_or [OF z_Heq])
      assume z_Her:"?z_her" (is "?z_hes=_")
      show FALSE
      by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
     next
      assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
      show FALSE
      by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
     qed
    qed
   next
    assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
    show FALSE
    proof (rule zenon_or [OF z_Hu])
     assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
     show FALSE
     by (rule zenon_L8_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfq z_Ht z_Hw])
    next
     assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
     show FALSE
     proof (rule zenon_or [OF z_Heq])
      assume z_Her:"?z_her" (is "?z_hes=_")
      show FALSE
      by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
     next
      assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
      show FALSE
      by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
     qed
    qed
   qed
  next
   assume z_Hfs:"?z_hfs" (is "?z_hft|?z_hga")
   show FALSE
   proof (rule zenon_or [OF z_Hfs])
    assume z_Hft:"?z_hft" (is "?z_hfu&?z_hfv")
    have z_Hfv: "?z_hfv" (is "?z_hfw|?z_hfy")
    by (rule zenon_and_1 [OF z_Hft])
    show FALSE
    proof (rule zenon_or [OF z_Hfv])
     assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L10_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfw z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       show FALSE
       by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
      qed
     qed
    next
     assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L13_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfy z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       show FALSE
       by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
      qed
     qed
    qed
   next
    assume z_Hga:"?z_hga" (is "?z_hgb|?z_hgi")
    show FALSE
    proof (rule zenon_or [OF z_Hga])
     assume z_Hgb:"?z_hgb" (is "?z_hgc&?z_hgd")
     have z_Hgd: "?z_hgd" (is "?z_hge|?z_hgg")
     by (rule zenon_and_1 [OF z_Hgb])
     show FALSE
     proof (rule zenon_or [OF z_Hgd])
      assume z_Hge:"?z_hge" (is "_=?z_hgf")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L16_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hge z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        show FALSE
        by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
       qed
      qed
     next
      assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L19_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgg z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        show FALSE
        by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
       qed
      qed
     qed
    next
     assume z_Hgi:"?z_hgi" (is "?z_hgj|?z_hgq")
     show FALSE
     proof (rule zenon_or [OF z_Hgi])
      assume z_Hgj:"?z_hgj" (is "?z_hgk&?z_hgl")
      have z_Hgl: "?z_hgl" (is "?z_hgm|?z_hgo")
      by (rule zenon_and_1 [OF z_Hgj])
      show FALSE
      proof (rule zenon_or [OF z_Hgl])
       assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L22_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgm z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         show FALSE
         by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
        qed
       qed
      next
       assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L25_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgo z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         show FALSE
         by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
        qed
       qed
      qed
     next
      assume z_Hgq:"?z_hgq" (is "?z_hgr&?z_hgs")
      have z_Hgs: "?z_hgs" (is "?z_hgt|?z_hgv")
      by (rule zenon_and_1 [OF z_Hgq])
      show FALSE
      proof (rule zenon_or [OF z_Hgs])
       assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L28_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgt z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         show FALSE
         by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
        qed
       qed
      next
       assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L31_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgv z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         show FALSE
         by (rule zenon_L6_ [OF z_Hf z_Hg z_Hew z_Hlm])
        qed
       qed
      qed
     qed
    qed
   qed
  qed
 next
  assume z_Hwr:"(~?z_hwl)" (is "~(?z_hsl|?z_hwm)")
  have z_Hsk: "(~?z_hsl)"
  by (rule zenon_notor_0 [OF z_Hwr])
  have z_Hws: "(~?z_hwm)" (is "~(?z_hwn&?z_hwo)")
  by (rule zenon_notor_1 [OF z_Hwr])
  show FALSE
  proof (rule zenon_notand [OF z_Hws])
   assume z_Hwt:"(((a_Fhash_primea[?z_hjt])[''rank''])~=((a_Fhash_primea[?z_hjs])[''rank'']))" (is "?z_hsn~=?z_hsm")
   show FALSE
   proof (rule zenon_or [OF z_Hd])
    assume z_Hfj:"?z_hfj" (is "?z_hfk&?z_hfn")
    have z_Hfn: "?z_hfn" (is "?z_hfo|?z_hfq")
    by (rule zenon_and_1 [OF z_Hfj])
    show FALSE
    proof (rule zenon_or [OF z_Hfn])
     assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L4_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfo z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
       by (rule zenon_and_1 [OF z_Hew])
       show FALSE
       proof (rule zenon_or [OF z_Hez])
        assume z_Hfa:"?z_hfa"
        show FALSE
        by (rule zenon_L33_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfo z_Ht z_Hw])
       next
        assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
        have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
        by (rule zenon_and_0 [OF z_Hff])
        have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
        by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
        have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
        by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
        have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
        by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
        by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
        show FALSE
        proof (rule zenon_noteq [of "?z_hsm"])
         have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
         proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
          assume z_Hxi:"(?z_htu~=?z_hkw)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hkw"])
           have z_Hxj: "(F=a_Fhash_primea)"
           by (rule sym [OF z_Hf])
           have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
           proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
            assume z_Hva:"(?z_hkb~=?z_hjs)"
            show FALSE
            proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
             assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
             assume z_Hgz:"(p=a_punde_1a)"
             assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
             show FALSE
             by (rule zenon_L2_ [OF z_Hhf z_Hgz z_Ht z_Hfo z_Hc])
            next
             assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
             assume z_Hks:"(p~=a_punde_1a)"
             assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
             show FALSE
             by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
            next
             assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
             show FALSE
             by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
            qed
           qed
           have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
           by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
           have z_Hxr: "(?z_hkw~=?z_hkw)"
           by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
           thus "(?z_hkw~=?z_hkw)" .
          qed
         qed
         have z_Hxw: "(?z_hsm~=?z_hsm)"
         by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
         thus "(?z_hsm~=?z_hsm)" .
        qed
       qed
      qed
     qed
    next
     assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L8_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfq z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
       by (rule zenon_and_1 [OF z_Hew])
       show FALSE
       proof (rule zenon_or [OF z_Hez])
        assume z_Hfa:"?z_hfa"
        show FALSE
        by (rule zenon_L37_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfq z_Ht z_Hw])
       next
        assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
        have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
        by (rule zenon_and_0 [OF z_Hff])
        have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
        by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
        have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
        by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
        have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
        by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
        by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
        show FALSE
        proof (rule zenon_noteq [of "?z_hsm"])
         have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
         proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
          assume z_Hxi:"(?z_htu~=?z_hkw)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hkw"])
           have z_Hxj: "(F=a_Fhash_primea)"
           by (rule sym [OF z_Hf])
           have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
           proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
            assume z_Hva:"(?z_hkb~=?z_hjs)"
            show FALSE
            proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
             assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
             assume z_Hgz:"(p=a_punde_1a)"
             assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
             show FALSE
             by (rule zenon_L7_ [OF z_Hhf z_Hgz z_Ht z_Hfq z_Hc])
            next
             assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
             assume z_Hks:"(p~=a_punde_1a)"
             assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
             show FALSE
             by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
            next
             assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
             show FALSE
             by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
            qed
           qed
           have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
           by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
           have z_Hxr: "(?z_hkw~=?z_hkw)"
           by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
           thus "(?z_hkw~=?z_hkw)" .
          qed
         qed
         have z_Hxw: "(?z_hsm~=?z_hsm)"
         by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
         thus "(?z_hsm~=?z_hsm)" .
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hfs:"?z_hfs" (is "?z_hft|?z_hga")
    show FALSE
    proof (rule zenon_or [OF z_Hfs])
     assume z_Hft:"?z_hft" (is "?z_hfu&?z_hfv")
     have z_Hfv: "?z_hfv" (is "?z_hfw|?z_hfy")
     by (rule zenon_and_1 [OF z_Hft])
     show FALSE
     proof (rule zenon_or [OF z_Hfv])
      assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L10_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfw z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
        by (rule zenon_and_1 [OF z_Hew])
        show FALSE
        proof (rule zenon_or [OF z_Hez])
         assume z_Hfa:"?z_hfa"
         show FALSE
         by (rule zenon_L39_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfw z_Ht z_Hw])
        next
         assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
         have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
         by (rule zenon_and_0 [OF z_Hff])
         have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
         by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
         have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
         by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
         have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
         by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
         by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
         show FALSE
         proof (rule zenon_noteq [of "?z_hsm"])
          have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
          proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
           assume z_Hxi:"(?z_htu~=?z_hkw)"
           show FALSE
           proof (rule zenon_noteq [of "?z_hkw"])
            have z_Hxj: "(F=a_Fhash_primea)"
            by (rule sym [OF z_Hf])
            have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
            proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
             assume z_Hva:"(?z_hkb~=?z_hjs)"
             show FALSE
             proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
              assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
              assume z_Hgz:"(p=a_punde_1a)"
              assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
              show FALSE
              by (rule zenon_L9_ [OF z_Hhf z_Hgz z_Ht z_Hfw z_Hc])
             next
              assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
              assume z_Hks:"(p~=a_punde_1a)"
              assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
              show FALSE
              by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
             next
              assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
              show FALSE
              by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
             qed
            qed
            have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
            by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
            have z_Hxr: "(?z_hkw~=?z_hkw)"
            by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
            thus "(?z_hkw~=?z_hkw)" .
           qed
          qed
          have z_Hxw: "(?z_hsm~=?z_hsm)"
          by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
          thus "(?z_hsm~=?z_hsm)" .
         qed
        qed
       qed
      qed
     next
      assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L13_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfy z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
        by (rule zenon_and_1 [OF z_Hew])
        show FALSE
        proof (rule zenon_or [OF z_Hez])
         assume z_Hfa:"?z_hfa"
         show FALSE
         by (rule zenon_L41_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfy z_Ht z_Hw])
        next
         assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
         have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
         by (rule zenon_and_0 [OF z_Hff])
         have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
         by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
         have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
         by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
         have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
         by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
         by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
         show FALSE
         proof (rule zenon_noteq [of "?z_hsm"])
          have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
          proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
           assume z_Hxi:"(?z_htu~=?z_hkw)"
           show FALSE
           proof (rule zenon_noteq [of "?z_hkw"])
            have z_Hxj: "(F=a_Fhash_primea)"
            by (rule sym [OF z_Hf])
            have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
            proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
             assume z_Hva:"(?z_hkb~=?z_hjs)"
             show FALSE
             proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
              assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
              assume z_Hgz:"(p=a_punde_1a)"
              assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
              show FALSE
              by (rule zenon_L12_ [OF z_Hhf z_Hgz z_Ht z_Hfy z_Hc])
             next
              assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
              assume z_Hks:"(p~=a_punde_1a)"
              assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
              show FALSE
              by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
             next
              assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
              show FALSE
              by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
             qed
            qed
            have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
            by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
            have z_Hxr: "(?z_hkw~=?z_hkw)"
            by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
            thus "(?z_hkw~=?z_hkw)" .
           qed
          qed
          have z_Hxw: "(?z_hsm~=?z_hsm)"
          by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
          thus "(?z_hsm~=?z_hsm)" .
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hga:"?z_hga" (is "?z_hgb|?z_hgi")
     show FALSE
     proof (rule zenon_or [OF z_Hga])
      assume z_Hgb:"?z_hgb" (is "?z_hgc&?z_hgd")
      have z_Hgd: "?z_hgd" (is "?z_hge|?z_hgg")
      by (rule zenon_and_1 [OF z_Hgb])
      show FALSE
      proof (rule zenon_or [OF z_Hgd])
       assume z_Hge:"?z_hge" (is "_=?z_hgf")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L16_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hge z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
         by (rule zenon_and_1 [OF z_Hew])
         show FALSE
         proof (rule zenon_or [OF z_Hez])
          assume z_Hfa:"?z_hfa"
          show FALSE
          by (rule zenon_L43_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hge z_Ht z_Hw])
         next
          assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
          have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
          by (rule zenon_and_0 [OF z_Hff])
          have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
          by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
          have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
          by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
          have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
          by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
          by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
          show FALSE
          proof (rule zenon_noteq [of "?z_hsm"])
           have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
           proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
            assume z_Hxi:"(?z_htu~=?z_hkw)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hkw"])
             have z_Hxj: "(F=a_Fhash_primea)"
             by (rule sym [OF z_Hf])
             have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
             proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
              assume z_Hva:"(?z_hkb~=?z_hjs)"
              show FALSE
              proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L15_ [OF z_Hhf z_Hgz z_Ht z_Hge z_Hc])
              next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
              next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
              qed
             qed
             have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
             by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
             have z_Hxr: "(?z_hkw~=?z_hkw)"
             by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
             thus "(?z_hkw~=?z_hkw)" .
            qed
           qed
           have z_Hxw: "(?z_hsm~=?z_hsm)"
           by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
           thus "(?z_hsm~=?z_hsm)" .
          qed
         qed
        qed
       qed
      next
       assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L19_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgg z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
         by (rule zenon_and_1 [OF z_Hew])
         show FALSE
         proof (rule zenon_or [OF z_Hez])
          assume z_Hfa:"?z_hfa"
          show FALSE
          by (rule zenon_L45_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgg z_Ht z_Hw])
         next
          assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
          have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
          by (rule zenon_and_0 [OF z_Hff])
          have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
          by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
          have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
          by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
          have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
          by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
          by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
          show FALSE
          proof (rule zenon_noteq [of "?z_hsm"])
           have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
           proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
            assume z_Hxi:"(?z_htu~=?z_hkw)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hkw"])
             have z_Hxj: "(F=a_Fhash_primea)"
             by (rule sym [OF z_Hf])
             have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
             proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
              assume z_Hva:"(?z_hkb~=?z_hjs)"
              show FALSE
              proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L18_ [OF z_Hhf z_Hgz z_Ht z_Hgg z_Hc])
              next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
              next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
              qed
             qed
             have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
             by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
             have z_Hxr: "(?z_hkw~=?z_hkw)"
             by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
             thus "(?z_hkw~=?z_hkw)" .
            qed
           qed
           have z_Hxw: "(?z_hsm~=?z_hsm)"
           by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
           thus "(?z_hsm~=?z_hsm)" .
          qed
         qed
        qed
       qed
      qed
     next
      assume z_Hgi:"?z_hgi" (is "?z_hgj|?z_hgq")
      show FALSE
      proof (rule zenon_or [OF z_Hgi])
       assume z_Hgj:"?z_hgj" (is "?z_hgk&?z_hgl")
       have z_Hgl: "?z_hgl" (is "?z_hgm|?z_hgo")
       by (rule zenon_and_1 [OF z_Hgj])
       show FALSE
       proof (rule zenon_or [OF z_Hgl])
        assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L22_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgm z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L47_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgm z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
           by (rule zenon_and_0 [OF z_Hff])
           have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
           by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
           have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
           by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule zenon_noteq [of "?z_hsm"])
            have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
            proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
             assume z_Hxi:"(?z_htu~=?z_hkw)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hkw"])
              have z_Hxj: "(F=a_Fhash_primea)"
              by (rule sym [OF z_Hf])
              have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
              proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
               assume z_Hva:"(?z_hkb~=?z_hjs)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L21_ [OF z_Hhf z_Hgz z_Ht z_Hgm z_Hc])
               next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
               next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
               qed
              qed
              have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
              by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
              have z_Hxr: "(?z_hkw~=?z_hkw)"
              by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
              thus "(?z_hkw~=?z_hkw)" .
             qed
            qed
            have z_Hxw: "(?z_hsm~=?z_hsm)"
            by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
            thus "(?z_hsm~=?z_hsm)" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L25_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgo z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L49_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgo z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
           by (rule zenon_and_0 [OF z_Hff])
           have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
           by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
           have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
           by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule zenon_noteq [of "?z_hsm"])
            have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
            proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
             assume z_Hxi:"(?z_htu~=?z_hkw)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hkw"])
              have z_Hxj: "(F=a_Fhash_primea)"
              by (rule sym [OF z_Hf])
              have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
              proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
               assume z_Hva:"(?z_hkb~=?z_hjs)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L24_ [OF z_Hhf z_Hgz z_Ht z_Hgo z_Hc])
               next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
               next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
               qed
              qed
              have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
              by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
              have z_Hxr: "(?z_hkw~=?z_hkw)"
              by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
              thus "(?z_hkw~=?z_hkw)" .
             qed
            qed
            have z_Hxw: "(?z_hsm~=?z_hsm)"
            by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
            thus "(?z_hsm~=?z_hsm)" .
           qed
          qed
         qed
        qed
       qed
      next
       assume z_Hgq:"?z_hgq" (is "?z_hgr&?z_hgs")
       have z_Hgs: "?z_hgs" (is "?z_hgt|?z_hgv")
       by (rule zenon_and_1 [OF z_Hgq])
       show FALSE
       proof (rule zenon_or [OF z_Hgs])
        assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L28_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgt z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L51_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgt z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
           by (rule zenon_and_0 [OF z_Hff])
           have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
           by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
           have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
           by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule zenon_noteq [of "?z_hsm"])
            have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
            proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
             assume z_Hxi:"(?z_htu~=?z_hkw)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hkw"])
              have z_Hxj: "(F=a_Fhash_primea)"
              by (rule sym [OF z_Hf])
              have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
              proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
               assume z_Hva:"(?z_hkb~=?z_hjs)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L27_ [OF z_Hhf z_Hgz z_Ht z_Hgt z_Hc])
               next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
               next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
               qed
              qed
              have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
              by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
              have z_Hxr: "(?z_hkw~=?z_hkw)"
              by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
              thus "(?z_hkw~=?z_hkw)" .
             qed
            qed
            have z_Hxw: "(?z_hsm~=?z_hsm)"
            by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
            thus "(?z_hsm~=?z_hsm)" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L31_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgv z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L53_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgv z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfg: "?z_hfg" (is "?z_hfd=?z_hfb")
           by (rule zenon_and_0 [OF z_Hff])
           have z_Hwu: "(((F[?z_hjt])[''rank''])~=?z_hsm)" (is "?z_htj~=_")
           by (rule subst [where P="(\<lambda>zenon_Vift. (((zenon_Vift[?z_hjt])[''rank''])~=?z_hsm))", OF z_Hf z_Hwt])
           have z_Hvb: "(((F[((?z_heb[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm)" (is "?z_htt~=_")
           by (rule subst [where P="(\<lambda>zenon_Vkft. (((F[((zenon_Vkft[a_punde_1a])[''parent''])])[''rank''])~=?z_hsm))", OF z_He z_Hwu])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule zenon_noteq [of "?z_hsm"])
            have z_Hxh: "((F[((?z_heb[a_punde_1a])[''parent''])])=(a_Fhash_primea[?z_hjs]))" (is "?z_htu=?z_hkw")
            proof (rule zenon_nnpp [of "(?z_htu=?z_hkw)"])
             assume z_Hxi:"(?z_htu~=?z_hkw)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hkw"])
              have z_Hxj: "(F=a_Fhash_primea)"
              by (rule sym [OF z_Hf])
              have z_Hxk: "(((?z_heb[a_punde_1a])[''parent''])=?z_hjs)" (is "?z_hkb=_")
              proof (rule zenon_nnpp [of "(?z_hkb=?z_hjs)"])
               assume z_Hva:"(?z_hkb~=?z_hjs)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vufr. ((zenon_Vufr[''parent''])~=?z_hjs))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hva])
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hgz:"(p=a_punde_1a)"
               assume z_Hvg:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjs)" (is "?z_hkr~=_")
               show FALSE
               by (rule zenon_L30_ [OF z_Hhf z_Hgz z_Ht z_Hgv z_Hc])
               next
               assume z_Hjc:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hjc")
               assume z_Hks:"(p~=a_punde_1a)"
               assume z_Hvh:"(((a_aunde_Fa[a_punde_1a])[''parent''])~=?z_hjs)" (is "?z_hen~=_")
               show FALSE
               by (rule zenon_L35_ [OF z_Hg z_Hf z_Hva z_Hr z_Hiz z_Hfg z_Hvb z_Hks])
               next
               assume z_Hjb:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hjc")
               show FALSE
               by (rule zenon_L3_ [OF z_Hiz z_Hjb z_Hr])
               qed
              qed
              have z_Hxl: "((a_Fhash_primea[?z_hkb])~=?z_hkw)" (is "?z_hxm~=_")
              by (rule subst [where P="(\<lambda>zenon_Vept. ((zenon_Vept[?z_hkb])~=?z_hkw))", OF z_Hxj], fact z_Hxi)
              have z_Hxr: "(?z_hkw~=?z_hkw)"
              by (rule subst [where P="(\<lambda>zenon_Vfpt. ((a_Fhash_primea[zenon_Vfpt])~=?z_hkw))", OF z_Hxk], fact z_Hxl)
              thus "(?z_hkw~=?z_hkw)" .
             qed
            qed
            have z_Hxw: "(?z_hsm~=?z_hsm)"
            by (rule subst [where P="(\<lambda>zenon_Vgpt. ((zenon_Vgpt[''rank''])~=?z_hsm))", OF z_Hxh], fact z_Hvb)
            thus "(?z_hsm~=?z_hsm)" .
           qed
          qed
         qed
        qed
       qed
      qed
     qed
    qed
   qed
  next
   assume z_Hyb:"(~?z_hwo)"
   show FALSE
   proof (rule zenon_or [OF z_Hd])
    assume z_Hfj:"?z_hfj" (is "?z_hfk&?z_hfn")
    have z_Hfn: "?z_hfn" (is "?z_hfo|?z_hfq")
    by (rule zenon_and_1 [OF z_Hfj])
    show FALSE
    proof (rule zenon_or [OF z_Hfn])
     assume z_Hfo:"?z_hfo" (is "_=?z_hfp")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L4_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfo z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
       by (rule zenon_and_1 [OF z_Hew])
       show FALSE
       proof (rule zenon_or [OF z_Hez])
        assume z_Hfa:"?z_hfa"
        show FALSE
        by (rule zenon_L33_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfo z_Ht z_Hw])
       next
        assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
        have z_Hfh: "?z_hfh"
        by (rule zenon_and_1 [OF z_Hff])
        have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
        by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
        have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
        by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
        have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
        by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
        by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
        show FALSE
        proof (rule notE [OF z_Hyj])
         have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
         proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
          assume z_Hrx:"(?z_hen~=?z_hkb)"
          show FALSE
          by (rule zenon_L32_ [OF z_Hrx z_Hhf z_Ht z_Hfo z_Hc z_Hiz z_Hr])
         qed
         have z_Hyk: "?z_hyk"
         by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
         thus "?z_hyk" .
        qed
       qed
      qed
     qed
    next
     assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
      show FALSE
      by (rule zenon_L8_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfq z_Ht z_Hw])
     next
      assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Heq])
       assume z_Her:"?z_her" (is "?z_hes=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
      next
       assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
       have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
       by (rule zenon_and_1 [OF z_Hew])
       show FALSE
       proof (rule zenon_or [OF z_Hez])
        assume z_Hfa:"?z_hfa"
        show FALSE
        by (rule zenon_L37_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfq z_Ht z_Hw])
       next
        assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
        have z_Hfh: "?z_hfh"
        by (rule zenon_and_1 [OF z_Hff])
        have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
        by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
        have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
        by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
        have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
        by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
        by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
        show FALSE
        proof (rule notE [OF z_Hyj])
         have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
         proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
          assume z_Hrx:"(?z_hen~=?z_hkb)"
          show FALSE
          by (rule zenon_L36_ [OF z_Hrx z_Hhf z_Ht z_Hfq z_Hc z_Hiz z_Hr])
         qed
         have z_Hyk: "?z_hyk"
         by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
         thus "?z_hyk" .
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hfs:"?z_hfs" (is "?z_hft|?z_hga")
    show FALSE
    proof (rule zenon_or [OF z_Hfs])
     assume z_Hft:"?z_hft" (is "?z_hfu&?z_hfv")
     have z_Hfv: "?z_hfv" (is "?z_hfw|?z_hfy")
     by (rule zenon_and_1 [OF z_Hft])
     show FALSE
     proof (rule zenon_or [OF z_Hfv])
      assume z_Hfw:"?z_hfw" (is "_=?z_hfx")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L10_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfw z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
        by (rule zenon_and_1 [OF z_Hew])
        show FALSE
        proof (rule zenon_or [OF z_Hez])
         assume z_Hfa:"?z_hfa"
         show FALSE
         by (rule zenon_L39_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfw z_Ht z_Hw])
        next
         assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
         have z_Hfh: "?z_hfh"
         by (rule zenon_and_1 [OF z_Hff])
         have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
         by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
         have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
         by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
         have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
         by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
         by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
         show FALSE
         proof (rule notE [OF z_Hyj])
          have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
          proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
           assume z_Hrx:"(?z_hen~=?z_hkb)"
           show FALSE
           by (rule zenon_L38_ [OF z_Hrx z_Hhf z_Ht z_Hfw z_Hc z_Hiz z_Hr])
          qed
          have z_Hyk: "?z_hyk"
          by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
          thus "?z_hyk" .
         qed
        qed
       qed
      qed
     next
      assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
       show FALSE
       by (rule zenon_L13_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hfy z_Ht z_Hw])
      next
       assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
       show FALSE
       proof (rule zenon_or [OF z_Heq])
        assume z_Her:"?z_her" (is "?z_hes=_")
        show FALSE
        by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
       next
        assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
        have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
        by (rule zenon_and_1 [OF z_Hew])
        show FALSE
        proof (rule zenon_or [OF z_Hez])
         assume z_Hfa:"?z_hfa"
         show FALSE
         by (rule zenon_L41_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hfy z_Ht z_Hw])
        next
         assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
         have z_Hfh: "?z_hfh"
         by (rule zenon_and_1 [OF z_Hff])
         have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
         by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
         have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
         by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
         have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
         by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
         by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
         show FALSE
         proof (rule notE [OF z_Hyj])
          have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
          proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
           assume z_Hrx:"(?z_hen~=?z_hkb)"
           show FALSE
           by (rule zenon_L40_ [OF z_Hrx z_Hhf z_Ht z_Hfy z_Hc z_Hiz z_Hr])
          qed
          have z_Hyk: "?z_hyk"
          by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
          thus "?z_hyk" .
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hga:"?z_hga" (is "?z_hgb|?z_hgi")
     show FALSE
     proof (rule zenon_or [OF z_Hga])
      assume z_Hgb:"?z_hgb" (is "?z_hgc&?z_hgd")
      have z_Hgd: "?z_hgd" (is "?z_hge|?z_hgg")
      by (rule zenon_and_1 [OF z_Hgb])
      show FALSE
      proof (rule zenon_or [OF z_Hgd])
       assume z_Hge:"?z_hge" (is "_=?z_hgf")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L16_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hge z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
         by (rule zenon_and_1 [OF z_Hew])
         show FALSE
         proof (rule zenon_or [OF z_Hez])
          assume z_Hfa:"?z_hfa"
          show FALSE
          by (rule zenon_L43_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hge z_Ht z_Hw])
         next
          assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
          have z_Hfh: "?z_hfh"
          by (rule zenon_and_1 [OF z_Hff])
          have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
          by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
          have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
          by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
          have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
          by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
          by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
          show FALSE
          proof (rule notE [OF z_Hyj])
           have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
           proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
            assume z_Hrx:"(?z_hen~=?z_hkb)"
            show FALSE
            by (rule zenon_L42_ [OF z_Hrx z_Hhf z_Ht z_Hge z_Hc z_Hiz z_Hr])
           qed
           have z_Hyk: "?z_hyk"
           by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
           thus "?z_hyk" .
          qed
         qed
        qed
       qed
      next
       assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
        show FALSE
        by (rule zenon_L19_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgg z_Ht z_Hw])
       next
        assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
        show FALSE
        proof (rule zenon_or [OF z_Heq])
         assume z_Her:"?z_her" (is "?z_hes=_")
         show FALSE
         by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
        next
         assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
         have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
         by (rule zenon_and_1 [OF z_Hew])
         show FALSE
         proof (rule zenon_or [OF z_Hez])
          assume z_Hfa:"?z_hfa"
          show FALSE
          by (rule zenon_L45_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgg z_Ht z_Hw])
         next
          assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
          have z_Hfh: "?z_hfh"
          by (rule zenon_and_1 [OF z_Hff])
          have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
          by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
          have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
          by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
          have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
          by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
          by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
          show FALSE
          proof (rule notE [OF z_Hyj])
           have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
           proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
            assume z_Hrx:"(?z_hen~=?z_hkb)"
            show FALSE
            by (rule zenon_L44_ [OF z_Hrx z_Hhf z_Ht z_Hgg z_Hc z_Hiz z_Hr])
           qed
           have z_Hyk: "?z_hyk"
           by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
           thus "?z_hyk" .
          qed
         qed
        qed
       qed
      qed
     next
      assume z_Hgi:"?z_hgi" (is "?z_hgj|?z_hgq")
      show FALSE
      proof (rule zenon_or [OF z_Hgi])
       assume z_Hgj:"?z_hgj" (is "?z_hgk&?z_hgl")
       have z_Hgl: "?z_hgl" (is "?z_hgm|?z_hgo")
       by (rule zenon_and_1 [OF z_Hgj])
       show FALSE
       proof (rule zenon_or [OF z_Hgl])
        assume z_Hgm:"?z_hgm" (is "_=?z_hgn")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L22_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgm z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L47_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgm z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfh: "?z_hfh"
           by (rule zenon_and_1 [OF z_Hff])
           have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
           by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
           have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
           by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule notE [OF z_Hyj])
            have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
            proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
             assume z_Hrx:"(?z_hen~=?z_hkb)"
             show FALSE
             by (rule zenon_L46_ [OF z_Hrx z_Hhf z_Ht z_Hgm z_Hc z_Hiz z_Hr])
            qed
            have z_Hyk: "?z_hyk"
            by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
            thus "?z_hyk" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L25_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgo z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L49_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgo z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfh: "?z_hfh"
           by (rule zenon_and_1 [OF z_Hff])
           have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
           by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
           have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
           by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule notE [OF z_Hyj])
            have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
            proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
             assume z_Hrx:"(?z_hen~=?z_hkb)"
             show FALSE
             by (rule zenon_L48_ [OF z_Hrx z_Hhf z_Ht z_Hgo z_Hc z_Hiz z_Hr])
            qed
            have z_Hyk: "?z_hyk"
            by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
            thus "?z_hyk" .
           qed
          qed
         qed
        qed
       qed
      next
       assume z_Hgq:"?z_hgq" (is "?z_hgr&?z_hgs")
       have z_Hgs: "?z_hgs" (is "?z_hgt|?z_hgv")
       by (rule zenon_and_1 [OF z_Hgq])
       show FALSE
       proof (rule zenon_or [OF z_Hgs])
        assume z_Hgt:"?z_hgt" (is "_=?z_hgu")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L28_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgt z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L51_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgt z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfh: "?z_hfh"
           by (rule zenon_and_1 [OF z_Hff])
           have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
           by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
           have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
           by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule notE [OF z_Hyj])
            have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
            proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
             assume z_Hrx:"(?z_hen~=?z_hkb)"
             show FALSE
             by (rule zenon_L50_ [OF z_Hrx z_Hhf z_Ht z_Hgt z_Hc z_Hiz z_Hr])
            qed
            have z_Hyk: "?z_hyk"
            by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
            thus "?z_hyk" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hek:"?z_hek" (is "?z_hel=?z_hen")
         show FALSE
         by (rule zenon_L31_ [OF z_He z_Hg z_Hjr z_Hdi z_Hr z_Hek z_Hc z_Hgv z_Ht z_Hw])
        next
         assume z_Heq:"?z_heq" (is "?z_her|?z_hew")
         show FALSE
         proof (rule zenon_or [OF z_Heq])
          assume z_Her:"?z_her" (is "?z_hes=_")
          show FALSE
          by (rule zenon_L5_ [OF z_Hg z_Hf z_Hku z_Her])
         next
          assume z_Hew:"?z_hew" (is "?z_hex&?z_hez")
          have z_Hez: "?z_hez" (is "?z_hfa|?z_hff")
          by (rule zenon_and_1 [OF z_Hew])
          show FALSE
          proof (rule zenon_or [OF z_Hez])
           assume z_Hfa:"?z_hfa"
           show FALSE
           by (rule zenon_L53_ [OF z_Hg z_He z_Hf z_Hsk z_Hdi z_Hfa z_Hr z_Hc z_Hgv z_Ht z_Hw])
          next
           assume z_Hff:"?z_hff" (is "?z_hfg&?z_hfh")
           have z_Hfh: "?z_hfh"
           by (rule zenon_and_1 [OF z_Hff])
           have z_Hyc: "(~((a_uunde_Fa[a_punde_1a]) <= ?z_hjt))" (is "~?z_hyd")
           by (rule subst [where P="(\<lambda>zenon_Vilt. (~((zenon_Vilt[a_punde_1a]) <= ?z_hjt)))", OF z_Hg z_Hyb])
           have z_Hyj: "(~((a_uunde_Fa[a_punde_1a]) <= ((?z_heb[a_punde_1a])[''parent''])))" (is "~?z_hyk")
           by (rule subst [where P="(\<lambda>zenon_Vklt. (~((a_uunde_Fa[a_punde_1a]) <= ((zenon_Vklt[a_punde_1a])[''parent'']))))", OF z_He z_Hyc])
           have z_Hhf: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhg=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hki: "(?z_heb \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hki")
           by (rule subst [where P="(\<lambda>zenon_Vmct. (zenon_Vmct \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hiz: "(DOMAIN(?z_heb)=PROCESSES)" (is "?z_hja=_")
           by (rule zenon_in_funcset_1 [of "?z_heb" "PROCESSES" "FieldSet", OF z_Hki])
           show FALSE
           proof (rule notE [OF z_Hyj])
            have z_Huh: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_heb[a_punde_1a])[''parent'']))" (is "?z_hen=?z_hkb")
            proof (rule zenon_nnpp [of "(?z_hen=?z_hkb)"])
             assume z_Hrx:"(?z_hen~=?z_hkb)"
             show FALSE
             by (rule zenon_L52_ [OF z_Hrx z_Hhf z_Ht z_Hgv z_Hc z_Hiz z_Hr])
            qed
            have z_Hyk: "?z_hyk"
            by (rule subst [where P="(\<lambda>zenon_Viqt. ((a_uunde_Fa[a_punde_1a]) <= zenon_Viqt))", OF z_Huh], fact z_Hfh)
            thus "?z_hyk" .
           qed
          qed
         qed
        qed
       qed
      qed
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 511"; *} qed
lemma ob'514:
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
assumes v'102: "(Inv)"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "((((((fapply ((pc), (p))) = (''F3''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U1''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U1'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U1'')]))))))) | (((((fapply ((pc), (p))) = (''F3U2''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U2'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U2'')]))))))) | (((((fapply ((pc), (p))) = (''F3U7''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U7'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U8''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U8'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U8'')]))))))))"
assumes v'106: "((((a_aunde_Fhash_primea :: c)) = ([(a_aunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Fa), (p)))))])))"
assumes v'107: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'108: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'109: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'110: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'111: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
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
shows "((((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))) = (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))))), (''rank''))))) \<and> ((geq ((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))))"(is "PROP ?ob'514")
proof -
ML_command {* writeln "*** TLAPS ENTER 514"; *}
show "PROP ?ob'514"

(* BEGIN ZENON INPUT
;; file=F3Inv_proof.tlaps/tlapm_7ccefb.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >F3Inv_proof.tlaps/tlapm_7ccefb.znn.out
;; obligation #514
$hyp "v'102" Inv
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (\/ (/\ (= (TLA.fapply pc p) "F3") (\/ (= a_pchash_primea
(TLA.except pc p "F4")) (= a_pchash_primea (TLA.except pc p "F7"))))
(/\ (= (TLA.fapply pc p) "F3U1") (\/ (= a_pchash_primea
(TLA.except pc p "F4U1")) (= a_pchash_primea (TLA.except pc p "F7U1"))))
(/\ (= (TLA.fapply pc p) "F3U2") (\/ (= a_pchash_primea
(TLA.except pc p "F4U2")) (= a_pchash_primea (TLA.except pc p "F7U2"))))
(/\ (= (TLA.fapply pc p) "F3U7") (\/ (= a_pchash_primea
(TLA.except pc p "F4U7")) (= a_pchash_primea (TLA.except pc p "F7U7"))))
(/\ (= (TLA.fapply pc p) "F3U8") (\/ (= a_pchash_primea
(TLA.except pc p "F4U8")) (= a_pchash_primea
(TLA.except pc p "F7U8")))))
$hyp "v'106" (= a_aunde_Fhash_primea
(TLA.except a_aunde_Fa p (TLA.fapply F (TLA.fapply a_uunde_Fa p))))
$hyp "v'107" (= a_Fhash_primea F)
$hyp "v'108" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'109" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'110" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'111" (= a_vunde_Uhash_primea
a_vunde_Ua)
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
 have z_Hp:"((a_pchash_primea \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&(hf9aeb3897da94c7352f843ff1e508c&(h20451dbf6bb505ef64a23efc0d6b3f&((a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet))&(a_h3c17892ec704c5c790d6c650bc1169a&(a_h4e0910ff04d5282a7607ee7b7eab81a&(hec61390ce29cfa3163e637effefe5f&(h602df0f4906d91bdcf73ac652471ea&(a_h1ef1e69610c58c66ee5436c27a2e53a&(a_h14c0a5932541232a01b2e9de8e7f49a&h46e5ced0ed3f2b9f4026c7a4eba44c)))))))))))" (is "?z_hw&?z_hdd")
 using v'120 by blast
 have z_Hh:"(a_bunde_Fhash_primea=a_bunde_Fa)"
 using v'109 by blast
 have z_He:"(a_aunde_Fhash_primea=except(a_aunde_Fa, p, (F[(a_uunde_Fa[p])])))" (is "_=?z_hed")
 using v'106 by blast
 have z_Hf:"(a_Fhash_primea=F)"
 using v'107 by blast
 have z_Hu:"((((a_aunde_Fa[a_punde_1a])[''parent''])=((a_bunde_Fa[a_punde_1a])[''parent'']))|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1)|((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0)&((((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank'']))|((((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fa[a_punde_1a])[''parent'']) <= ((a_bunde_Fa[a_punde_1a])[''parent''])))))))" (is "?z_hel|?z_hes")
 using v'156 by blast
 have z_Hr:"(a_punde_1a \\in PROCESSES)" (is "?z_hr")
 using a_punde_1a_in by blast
 have z_Hc:"(p \\in PROCESSES)" (is "?z_hc")
 using p_in by blast
 have z_Ht:"((a_pchash_primea[a_punde_1a])=''F6U1'')" (is "?z_hfk=?z_hby")
 using v'137 by blast
 have z_Hd:"((((pc[p])=''F3'')&((a_pchash_primea=except(pc, p, ''F4''))|(a_pchash_primea=except(pc, p, ''F7''))))|((((pc[p])=''F3U1'')&((a_pchash_primea=except(pc, p, ''F4U1''))|(a_pchash_primea=except(pc, p, ''F7U1''))))|((((pc[p])=''F3U2'')&((a_pchash_primea=except(pc, p, ''F4U2''))|(a_pchash_primea=except(pc, p, ''F7U2''))))|((((pc[p])=''F3U7'')&((a_pchash_primea=except(pc, p, ''F4U7''))|(a_pchash_primea=except(pc, p, ''F7U7''))))|(((pc[p])=''F3U8'')&((a_pchash_primea=except(pc, p, ''F4U8''))|(a_pchash_primea=except(pc, p, ''F7U8''))))))))" (is "?z_hfl|?z_hfu")
 using v'105 by blast
 have zenon_L1_: "((a_pchash_primea[p])~=?z_hfk) ==> (p=a_punde_1a) ==> FALSE" (is "?z_hgz ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Hgz:"?z_hgz" (is "?z_hha~=_")
  assume z_Hhb:"?z_hhb"
  show FALSE
  proof (rule zenon_noteq [of "?z_hfk"])
   have z_Hhc: "(?z_hfk~=?z_hfk)"
   by (rule subst [where P="(\<lambda>zenon_Vqiy. ((a_pchash_primea[zenon_Vqiy])~=?z_hfk))", OF z_Hhb], fact z_Hgz)
   thus "(?z_hfk~=?z_hfk)" .
  qed
 qed
 have zenon_L2_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hfq ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Hc:"?z_hc"
  have z_Hhj: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfr))&(?z_hhi=DOMAIN(?z_hfr)))&(\\A zenon_Vxsr:((a_pchash_primea[zenon_Vxsr])=(?z_hfr[zenon_Vxsr]))))" (is "?z_hhk&?z_hhq")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfr", OF z_Hfq])
  have z_Hhq: "?z_hhq" (is "\\A x : ?z_hhv(x)")
  by (rule zenon_and_1 [OF z_Hhj])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hig: "(p \\in DOMAIN(?z_hfr))" (is "?z_hig")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hfq z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F4''", OF z_Hig])
   have z_Hiq: "?z_hhv(p)" (is "?z_hha=?z_hir")
   by (rule zenon_all_0 [of "?z_hhv" "p", OF z_Hhq])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F4''" "p", OF z_Hiq])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hiw:"(?z_hha=''F4'')" (is "_=?z_hbf")
    have z_Hix: "(?z_hbf~=?z_hby)"
    by auto
    have z_Hgz: "(?z_hha~=?z_hfk)"
    by (rule zenon_stringdiffll [OF z_Hix z_Hiw z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgz z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L3_: "(DOMAIN(?z_hed)=PROCESSES) ==> (~(a_punde_1a \\in DOMAIN(a_aunde_Fa))) ==> ?z_hr ==> FALSE" (is "?z_hjb ==> ?z_hjd ==> _ ==> FALSE")
 proof -
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hjd:"?z_hjd" (is "~?z_hje")
  assume z_Hr:"?z_hr"
  have z_Hjg: "(\\A zenon_Vue:((zenon_Vue \\in ?z_hjc)<=>(zenon_Vue \\in PROCESSES)))" (is "\\A x : ?z_hjl(x)")
  by (rule zenon_setequal_0 [of "?z_hjc" "PROCESSES", OF z_Hjb])
  have z_Hjm: "?z_hjl(a_punde_1a)" (is "?z_hjn<=>_")
  by (rule zenon_all_0 [of "?z_hjl" "a_punde_1a", OF z_Hjg])
  show FALSE
  proof (rule zenon_equiv [OF z_Hjm])
   assume z_Hjo:"(~?z_hjn)"
   assume z_Hjp:"(~?z_hr)"
   show FALSE
   by (rule notE [OF z_Hjp z_Hr])
  next
   assume z_Hjn:"?z_hjn"
   assume z_Hr:"?z_hr"
   have z_Hje: "?z_hje"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vvda. (a_punde_1a \\in zenon_Vvda))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])", OF z_Hjn])
   show FALSE
   by (rule notE [OF z_Hjd z_Hje])
  qed
 qed
 have zenon_L4_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> ((?z_hed[a_punde_1a])~=(a_bunde_Fhash_primea[a_punde_1a])) ==> ?z_hr ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hel ==> (((?z_hed[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (p~=a_punde_1a) ==> FALSE" (is "?z_hh ==> ?z_hjt ==> _ ==> ?z_hjb ==> _ ==> ?z_hjw ==> ?z_hjz ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hjt:"?z_hjt" (is "?z_hju~=?z_hjv")
  assume z_Hr:"?z_hr"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hjw:"?z_hjw" (is "?z_hjx~=?z_hjy")
  assume z_Hjz:"?z_hjz"
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hhb:"(p=a_punde_1a)"
   assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
   show FALSE
   by (rule notE [OF z_Hjz z_Hhb])
  next
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hjz:"?z_hjz"
   assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjw])
    assume z_Hje:"?z_hje"
    assume z_Hhb:"(p=a_punde_1a)"
    assume z_Hkj:"(((F[(a_uunde_Fa[p])])[''parent''])~=?z_hjy)" (is "?z_hkk~=_")
    show FALSE
    by (rule notE [OF z_Hjz z_Hhb])
   next
    assume z_Hje:"?z_hje"
    assume z_Hjz:"?z_hjz"
    assume z_Hkl:"(?z_hem~=?z_hjy)"
    have z_Hkm: "(?z_hem~=?z_heq)"
    by (rule subst [where P="(\<lambda>zenon_Vdtx. (?z_hem~=((zenon_Vdtx[a_punde_1a])[''parent''])))", OF z_Hh z_Hkl])
    show FALSE
    by (rule notE [OF z_Hkm z_Hel])
   next
    assume z_Hjd:"(~?z_hje)"
    show FALSE
    by (rule notE [OF z_Hjd z_Hje])
   qed
  next
   assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
   show FALSE
   by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
  qed
 qed
 have zenon_L5_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hfq ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hhh z_Hhb z_Ht z_Hfq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L6_: "((?z_hed[a_punde_1a])~=(a_bunde_Fhash_primea[a_punde_1a])) ==> ?z_hr ==> (DOMAIN(?z_hed)=PROCESSES) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> (((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=1) ==> (p~=a_punde_1a) ==> FALSE" (is "?z_hjt ==> _ ==> ?z_hjb ==> ?z_het ==> ?z_hlg ==> ?z_hjz ==> FALSE")
 proof -
  assume z_Hjt:"?z_hjt" (is "?z_hju~=?z_hjv")
  assume z_Hr:"?z_hr"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Het:"?z_het" (is "?z_heu=?z_hex")
  assume z_Hlg:"?z_hlg" (is "?z_hlh~=_")
  assume z_Hjz:"?z_hjz"
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hhb:"(p=a_punde_1a)"
   assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
   show FALSE
   by (rule notE [OF z_Hjz z_Hhb])
  next
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hjz:"?z_hjz"
   assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vlb. (((F[(zenon_Vlb[''parent''])])[''bit''])~=?z_hex))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hlg])
    assume z_Hje:"?z_hje"
    assume z_Hhb:"(p=a_punde_1a)"
    assume z_Hlp:"(((F[((F[(a_uunde_Fa[p])])[''parent''])])[''bit''])~=?z_hex)" (is "?z_hlq~=_")
    show FALSE
    by (rule notE [OF z_Hjz z_Hhb])
   next
    assume z_Hje:"?z_hje"
    assume z_Hjz:"?z_hjz"
    assume z_Hls:"(?z_heu~=?z_hex)"
    show FALSE
    by (rule notE [OF z_Hls z_Het])
   next
    assume z_Hjd:"(~?z_hje)"
    show FALSE
    by (rule notE [OF z_Hjd z_Hje])
   qed
  next
   assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
   show FALSE
   by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
  qed
 qed
 have zenon_L7_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hfq ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hhh z_Hhb z_Ht z_Hfq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L8_: "((?z_hed[a_punde_1a])~=(a_bunde_Fhash_primea[a_punde_1a])) ==> ?z_hr ==> (DOMAIN(?z_hed)=PROCESSES) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=0) ==> (((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0) ==> (p~=a_punde_1a) ==> FALSE" (is "?z_hjt ==> _ ==> ?z_hjb ==> ?z_hez ==> ?z_hml ==> ?z_hjz ==> FALSE")
 proof -
  assume z_Hjt:"?z_hjt" (is "?z_hju~=?z_hjv")
  assume z_Hr:"?z_hr"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hez:"?z_hez" (is "?z_heu=_")
  assume z_Hml:"?z_hml" (is "?z_hlh~=_")
  assume z_Hjz:"?z_hjz"
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hhb:"(p=a_punde_1a)"
   assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
   show FALSE
   by (rule notE [OF z_Hjz z_Hhb])
  next
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hjz:"?z_hjz"
   assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vssv. (((F[(zenon_Vssv[''parent''])])[''bit''])~=0))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hml])
    assume z_Hje:"?z_hje"
    assume z_Hhb:"(p=a_punde_1a)"
    assume z_Hms:"(((F[((F[(a_uunde_Fa[p])])[''parent''])])[''bit''])~=0)" (is "?z_hlq~=_")
    show FALSE
    by (rule notE [OF z_Hjz z_Hhb])
   next
    assume z_Hje:"?z_hje"
    assume z_Hjz:"?z_hjz"
    assume z_Hmt:"(?z_heu~=0)"
    show FALSE
    by (rule notE [OF z_Hmt z_Hez])
   next
    assume z_Hjd:"(~?z_hje)"
    show FALSE
    by (rule notE [OF z_Hjd z_Hje])
   qed
  next
   assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
   show FALSE
   by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
  qed
 qed
 have zenon_L9_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hfs ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hfs:"?z_hfs" (is "_=?z_hft")
  assume z_Hc:"?z_hc"
  have z_Hmu: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hft))&(?z_hhi=DOMAIN(?z_hft)))&(\\A zenon_Viaq:((a_pchash_primea[zenon_Viaq])=(?z_hft[zenon_Viaq]))))" (is "?z_hmv&?z_hna")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hft", OF z_Hfs])
  have z_Hna: "?z_hna" (is "\\A x : ?z_hnf(x)")
  by (rule zenon_and_1 [OF z_Hmu])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hng: "(p \\in DOMAIN(?z_hft))" (is "?z_hng")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hfs z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F7''", OF z_Hng])
   have z_Hnh: "?z_hnf(p)" (is "?z_hha=?z_hni")
   by (rule zenon_all_0 [of "?z_hnf" "p", OF z_Hna])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F7''" "p", OF z_Hnh])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hnj:"(?z_hha=''F7'')" (is "_=?z_hbi")
    have z_Hnk: "(?z_hbi~=?z_hby)"
    by auto
    have z_Hgz: "(?z_hha~=?z_hfk)"
    by (rule zenon_stringdiffll [OF z_Hnk z_Hnj z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgz z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L10_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hfs ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfs:"?z_hfs" (is "_=?z_hft")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L9_ [OF z_Hhh z_Hhb z_Ht z_Hfs z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L11_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hfs ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfs:"?z_hfs" (is "_=?z_hft")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L9_ [OF z_Hhh z_Hhb z_Ht z_Hfs z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L12_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hfy ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Hc:"?z_hc"
  have z_Hnl: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hfz))&(?z_hhi=DOMAIN(?z_hfz)))&(\\A zenon_Vpho:((a_pchash_primea[zenon_Vpho])=(?z_hfz[zenon_Vpho]))))" (is "?z_hnm&?z_hnr")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hfz", OF z_Hfy])
  have z_Hnr: "?z_hnr" (is "\\A x : ?z_hnw(x)")
  by (rule zenon_and_1 [OF z_Hnl])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hnx: "(p \\in DOMAIN(?z_hfz))" (is "?z_hnx")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hfy z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F4U1''", OF z_Hnx])
   have z_Hny: "?z_hnw(p)" (is "?z_hha=?z_hnz")
   by (rule zenon_all_0 [of "?z_hnw" "p", OF z_Hnr])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F4U1''" "p", OF z_Hny])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hoa:"(?z_hha=''F4U1'')" (is "_=?z_hbw")
    have z_Hob: "(?z_hbw~=?z_hby)"
    by auto
    have z_Hgz: "(?z_hha~=?z_hfk)"
    by (rule zenon_stringdiffll [OF z_Hob z_Hoa z_Ht])
     show FALSE
     by (rule zenon_L1_ [OF z_Hgz z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L13_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hfy ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L12_ [OF z_Hhh z_Hhb z_Ht z_Hfy z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L14_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hfy ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L12_ [OF z_Hhh z_Hhb z_Ht z_Hfy z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L15_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F7U1'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hoc ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hoc:"?z_hoc" (is "?z_hha=?z_hbz")
  assume z_Hhb:"?z_hhb"
  have z_Hod: "(?z_hbz~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hod z_Hoc z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L16_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hga ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hga:"?z_hga" (is "_=?z_hgb")
  assume z_Hc:"?z_hc"
  have z_Hoe: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgb))&(?z_hhi=DOMAIN(?z_hgb)))&(\\A zenon_Vbpm:((a_pchash_primea[zenon_Vbpm])=(?z_hgb[zenon_Vbpm]))))" (is "?z_hof&?z_hok")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgb", OF z_Hga])
  have z_Hok: "?z_hok" (is "\\A x : ?z_hop(x)")
  by (rule zenon_and_1 [OF z_Hoe])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hoq: "(p \\in DOMAIN(?z_hgb))" (is "?z_hoq")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hga z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F7U1''", OF z_Hoq])
   have z_Hor: "?z_hop(p)" (is "?z_hha=?z_hos")
   by (rule zenon_all_0 [of "?z_hop" "p", OF z_Hok])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F7U1''" "p", OF z_Hor])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hoc:"(?z_hha=''F7U1'')" (is "_=?z_hbz")
    show FALSE
    by (rule zenon_L15_ [OF z_Ht z_Hoc z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L17_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hga ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hga:"?z_hga" (is "_=?z_hgb")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L16_ [OF z_Hhh z_Hhb z_Ht z_Hga z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L18_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hga ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hga:"?z_hga" (is "_=?z_hgb")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L16_ [OF z_Hhh z_Hhb z_Ht z_Hga z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L19_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F4U2'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hot ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hot:"?z_hot" (is "?z_hha=?z_hcf")
  assume z_Hhb:"?z_hhb"
  have z_Hou: "(?z_hcf~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hou z_Hot z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L20_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgg ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Hc:"?z_hc"
  have z_Hov: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgh))&(?z_hhi=DOMAIN(?z_hgh)))&(\\A zenon_Vjwk:((a_pchash_primea[zenon_Vjwk])=(?z_hgh[zenon_Vjwk]))))" (is "?z_how&?z_hpb")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgh", OF z_Hgg])
  have z_Hpb: "?z_hpb" (is "\\A x : ?z_hpg(x)")
  by (rule zenon_and_1 [OF z_Hov])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hph: "(p \\in DOMAIN(?z_hgh))" (is "?z_hph")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgg z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F4U2''", OF z_Hph])
   have z_Hpi: "?z_hpg(p)" (is "?z_hha=?z_hpj")
   by (rule zenon_all_0 [of "?z_hpg" "p", OF z_Hpb])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F4U2''" "p", OF z_Hpi])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hot:"(?z_hha=''F4U2'')" (is "_=?z_hcf")
    show FALSE
    by (rule zenon_L19_ [OF z_Ht z_Hot z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L21_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgg ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L20_ [OF z_Hhh z_Hhb z_Ht z_Hgg z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L22_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgg ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L20_ [OF z_Hhh z_Hhb z_Ht z_Hgg z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L23_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F7U2'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hpk ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hpk:"?z_hpk" (is "?z_hha=?z_hci")
  assume z_Hhb:"?z_hhb"
  have z_Hpl: "(?z_hci~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hpl z_Hpk z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L24_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgi ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
  assume z_Hc:"?z_hc"
  have z_Hpm: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgj))&(?z_hhi=DOMAIN(?z_hgj)))&(\\A zenon_Vvdj:((a_pchash_primea[zenon_Vvdj])=(?z_hgj[zenon_Vvdj]))))" (is "?z_hpn&?z_hps")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgj", OF z_Hgi])
  have z_Hps: "?z_hps" (is "\\A x : ?z_hpx(x)")
  by (rule zenon_and_1 [OF z_Hpm])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hpy: "(p \\in DOMAIN(?z_hgj))" (is "?z_hpy")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgi z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F7U2''", OF z_Hpy])
   have z_Hpz: "?z_hpx(p)" (is "?z_hha=?z_hqa")
   by (rule zenon_all_0 [of "?z_hpx" "p", OF z_Hps])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F7U2''" "p", OF z_Hpz])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hpk:"(?z_hha=''F7U2'')" (is "_=?z_hci")
    show FALSE
    by (rule zenon_L23_ [OF z_Ht z_Hpk z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L25_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgi ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L24_ [OF z_Hhh z_Hhb z_Ht z_Hgi z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L26_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgi ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L24_ [OF z_Hhh z_Hhb z_Ht z_Hgi z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L27_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F4U7'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hqb ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hqb:"?z_hqb" (is "?z_hha=?z_hco")
  assume z_Hhb:"?z_hhb"
  have z_Hqc: "(?z_hco~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hqc z_Hqb z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L28_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgo ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Hc:"?z_hc"
  have z_Hqd: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgp))&(?z_hhi=DOMAIN(?z_hgp)))&(\\A zenon_Vdlh:((a_pchash_primea[zenon_Vdlh])=(?z_hgp[zenon_Vdlh]))))" (is "?z_hqe&?z_hqj")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgp", OF z_Hgo])
  have z_Hqj: "?z_hqj" (is "\\A x : ?z_hqo(x)")
  by (rule zenon_and_1 [OF z_Hqd])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hqp: "(p \\in DOMAIN(?z_hgp))" (is "?z_hqp")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgo z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F4U7''", OF z_Hqp])
   have z_Hqq: "?z_hqo(p)" (is "?z_hha=?z_hqr")
   by (rule zenon_all_0 [of "?z_hqo" "p", OF z_Hqj])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F4U7''" "p", OF z_Hqq])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hqb:"(?z_hha=''F4U7'')" (is "_=?z_hco")
    show FALSE
    by (rule zenon_L27_ [OF z_Ht z_Hqb z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L29_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgo ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L28_ [OF z_Hhh z_Hhb z_Ht z_Hgo z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L30_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgo ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L28_ [OF z_Hhh z_Hhb z_Ht z_Hgo z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L31_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F7U7'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hqs ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hqs:"?z_hqs" (is "?z_hha=?z_hcr")
  assume z_Hhb:"?z_hhb"
  have z_Hqt: "(?z_hcr~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hqt z_Hqs z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L32_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgq ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
  assume z_Hc:"?z_hc"
  have z_Hqu: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgr))&(?z_hhi=DOMAIN(?z_hgr)))&(\\A zenon_Vpsf:((a_pchash_primea[zenon_Vpsf])=(?z_hgr[zenon_Vpsf]))))" (is "?z_hqv&?z_hra")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgr", OF z_Hgq])
  have z_Hra: "?z_hra" (is "\\A x : ?z_hrf(x)")
  by (rule zenon_and_1 [OF z_Hqu])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hrg: "(p \\in DOMAIN(?z_hgr))" (is "?z_hrg")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgq z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F7U7''", OF z_Hrg])
   have z_Hrh: "?z_hrf(p)" (is "?z_hha=?z_hri")
   by (rule zenon_all_0 [of "?z_hrf" "p", OF z_Hra])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F7U7''" "p", OF z_Hrh])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hqs:"(?z_hha=''F7U7'')" (is "_=?z_hcr")
    show FALSE
    by (rule zenon_L31_ [OF z_Ht z_Hqs z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L33_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgq ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L32_ [OF z_Hhh z_Hhb z_Ht z_Hgq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L34_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgq ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L32_ [OF z_Hhh z_Hhb z_Ht z_Hgq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L35_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F4U8'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hrj ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hrj:"?z_hrj" (is "?z_hha=?z_hcx")
  assume z_Hhb:"?z_hhb"
  have z_Hrk: "(?z_hcx~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hrk z_Hrj z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L36_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgv ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Hc:"?z_hc"
  have z_Hrl: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgw))&(?z_hhi=DOMAIN(?z_hgw)))&(\\A zenon_Vvzd:((a_pchash_primea[zenon_Vvzd])=(?z_hgw[zenon_Vvzd]))))" (is "?z_hrm&?z_hrr")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgw", OF z_Hgv])
  have z_Hrr: "?z_hrr" (is "\\A x : ?z_hrw(x)")
  by (rule zenon_and_1 [OF z_Hrl])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hrx: "(p \\in DOMAIN(?z_hgw))" (is "?z_hrx")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgv z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F4U8''", OF z_Hrx])
   have z_Hry: "?z_hrw(p)" (is "?z_hha=?z_hrz")
   by (rule zenon_all_0 [of "?z_hrw" "p", OF z_Hrr])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F4U8''" "p", OF z_Hry])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hrj:"(?z_hha=''F4U8'')" (is "_=?z_hcx")
    show FALSE
    by (rule zenon_L35_ [OF z_Ht z_Hrj z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L37_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgv ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L36_ [OF z_Hhh z_Hhb z_Ht z_Hgv z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L38_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgv ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L36_ [OF z_Hhh z_Hhb z_Ht z_Hgv z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L39_: "(?z_hfk=?z_hby) ==> ((a_pchash_primea[p])=''F7U8'') ==> (p=a_punde_1a) ==> FALSE" (is "?z_ht ==> ?z_hsa ==> ?z_hhb ==> FALSE")
 proof -
  assume z_Ht:"?z_ht"
  assume z_Hsa:"?z_hsa" (is "?z_hha=?z_hda")
  assume z_Hhb:"?z_hhb"
  have z_Hsb: "(?z_hda~=?z_hby)"
  by auto
  have z_Hgz: "(?z_hha~=?z_hfk)"
  by (rule zenon_stringdiffll [OF z_Hsb z_Hsa z_Ht])
   show FALSE
   by (rule zenon_L1_ [OF z_Hgz z_Hhb])
 qed
 have zenon_L40_: "(DOMAIN(a_pchash_primea)=PROCESSES) ==> (p=a_punde_1a) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> ?z_hc ==> FALSE" (is "?z_hhh ==> ?z_hhb ==> ?z_ht ==> ?z_hgx ==> _ ==> FALSE")
 proof -
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Hhb:"?z_hhb"
  assume z_Ht:"?z_ht"
  assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
  assume z_Hc:"?z_hc"
  have z_Hsc: "(((isAFcn(a_pchash_primea)<=>isAFcn(?z_hgy))&(?z_hhi=DOMAIN(?z_hgy)))&(\\A zenon_Vza:((a_pchash_primea[zenon_Vza])=(?z_hgy[zenon_Vza]))))" (is "?z_hsd&?z_hsi")
  by (rule zenon_funequal_0 [of "a_pchash_primea" "?z_hgy", OF z_Hgx])
  have z_Hsi: "?z_hsi" (is "\\A x : ?z_hsn(x)")
  by (rule zenon_and_1 [OF z_Hsc])
  have z_Hhw: "(\\A zenon_Vge:((zenon_Vge \\in ?z_hhi)<=>(zenon_Vge \\in PROCESSES)))" (is "\\A x : ?z_hib(x)")
  by (rule zenon_setequal_0 [of "?z_hhi" "PROCESSES", OF z_Hhh])
  have z_Hic: "?z_hib(p)" (is "?z_hid<=>_")
  by (rule zenon_all_0 [of "?z_hib" "p", OF z_Hhw])
  show FALSE
  proof (rule zenon_equiv [OF z_Hic])
   assume z_Hie:"(~?z_hid)"
   assume z_Hif:"(~?z_hc)"
   show FALSE
   by (rule notE [OF z_Hif z_Hc])
  next
   assume z_Hid:"?z_hid"
   assume z_Hc:"?z_hc"
   have z_Hso: "(p \\in DOMAIN(?z_hgy))" (is "?z_hso")
   by (rule subst [where P="(\<lambda>zenon_Vsfa. (p \\in DOMAIN(zenon_Vsfa)))", OF z_Hgx z_Hid])
   have z_Hil: "(p \\in DOMAIN(pc))" (is "?z_hil")
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vrfa. (p \\in zenon_Vrfa))" "pc" "p" "''F7U8''", OF z_Hso])
   have z_Hsp: "?z_hsn(p)" (is "?z_hha=?z_hsq")
   by (rule zenon_all_0 [of "?z_hsn" "p", OF z_Hsi])
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vdga. (?z_hha=zenon_Vdga))" "pc" "p" "''F7U8''" "p", OF z_Hsp])
    assume z_Hil:"?z_hil"
    assume z_Hiv:"(p=p)"
    assume z_Hsa:"(?z_hha=''F7U8'')" (is "_=?z_hda")
    show FALSE
    by (rule zenon_L39_ [OF z_Ht z_Hsa z_Hhb])
   next
    assume z_Hil:"?z_hil"
    assume z_Hiy:"(p~=p)"
    assume z_Hiz:"(?z_hha=(pc[p]))" (is "_=?z_hfn")
    show FALSE
    by (rule zenon_noteq [OF z_Hiy])
   next
    assume z_Hja:"(~?z_hil)"
    show FALSE
    by (rule notE [OF z_Hja z_Hil])
   qed
  qed
 qed
 have zenon_L41_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> ?z_hw ==> ?z_hel ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hh ==> ?z_he ==> ?z_hks ==> _ ==> _ ==> _ ==> _ ==> ?z_hgx ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hw:"?z_hw"
  assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L40_ [OF z_Hhh z_Hhb z_Ht z_Hgx z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hh z_Hjt z_Hr z_Hjb z_Hel z_Hjw z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L42_: "(a_Fhash_primea=F) ==> (a_aunde_Fhash_primea=?z_hed) ==> (((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> (((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])~=1) ==> ?z_hw ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''bit''])=1) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> (?z_hfk=?z_hby) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> FALSE" (is "?z_hf ==> ?z_he ==> ?z_hks ==> ?z_hlt ==> _ ==> ?z_het ==> _ ==> _ ==> ?z_hgx ==> ?z_ht ==> ?z_hdi ==> FALSE")
 proof -
  assume z_Hf:"?z_hf"
  assume z_He:"?z_he"
  assume z_Hks:"?z_hks" (is "?z_hkt~=?z_hjy")
  assume z_Hlt:"?z_hlt" (is "?z_hlu~=?z_hex")
  assume z_Hw:"?z_hw"
  assume z_Het:"?z_het" (is "?z_heu=_")
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
  assume z_Ht:"?z_ht"
  assume z_Hdi:"?z_hdi"
  have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
  have z_Hlw: "(((F[?z_hkt])[''bit''])~=?z_hex)" (is "?z_hlx~=_")
  by (rule subst [where P="(\<lambda>zenon_Vhtx. (((zenon_Vhtx[?z_hkt])[''bit''])~=?z_hex))", OF z_Hf z_Hlt])
  have z_Hlg: "(((F[?z_hjx])[''bit''])~=?z_hex)" (is "?z_hlh~=_")
  by (rule subst [where P="(\<lambda>zenon_Vjtx. (((F[((zenon_Vjtx[a_punde_1a])[''parent''])])[''bit''])~=?z_hex))", OF z_He z_Hlw])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule zenon_noteq [of "?z_hjy"])
   have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
   proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
    assume z_Hjt:"(?z_hju~=?z_hjv)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
     show FALSE
     by (rule zenon_L40_ [OF z_Hhh z_Hhb z_Ht z_Hgx z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
     show FALSE
     by (rule zenon_L6_ [OF z_Hjt z_Hr z_Hjb z_Het z_Hlg z_Hjz])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hlf: "(?z_hjy~=?z_hjy)"
   by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
   thus "(?z_hjy~=?z_hjy)" .
  qed
 qed
 have zenon_L43_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hfq ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L2_ [OF z_Hhh z_Hhb z_Ht z_Hfq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L44_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])~=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])) ==> FALSE" (is "?z_hh ==> ?z_hf ==> ?z_hte ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Hte:"?z_hte" (is "?z_hff~=?z_htf")
  have z_Hth: "(?z_hff~=((F[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hti")
  by (rule subst [where P="(\<lambda>zenon_Vzay. (?z_hff~=((zenon_Vzay[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hf z_Hte])
  have z_Htp: "(?z_hff~=?z_hff)"
  by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_Hh z_Hth])
  show FALSE
  by (rule zenon_noteq [OF z_Htp])
 qed
 have zenon_L45_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hfq ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L43_ [OF z_Hsr z_Hhh z_Ht z_Hfq z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L46_: "((a_bunde_Fa[a_punde_1a])~=(?z_hed[a_punde_1a])) ==> ?z_hr ==> (DOMAIN(?z_hed)=PROCESSES) ==> (((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> (((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank''])) ==> (p~=a_punde_1a) ==> FALSE" (is "?z_hvr ==> _ ==> ?z_hjb ==> ?z_hfi ==> ?z_hvs ==> ?z_hjz ==> FALSE")
 proof -
  assume z_Hvr:"?z_hvr" (is "?z_her~=?z_hju")
  assume z_Hr:"?z_hr"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hfi:"?z_hfi" (is "?z_hff=?z_hfd")
  assume z_Hvs:"?z_hvs" (is "_~=?z_hul")
  assume z_Hjz:"?z_hjz"
  show FALSE
  proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hhb:"(p=a_punde_1a)"
   assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
   show FALSE
   by (rule notE [OF z_Hjz z_Hhb])
  next
   assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
   assume z_Hjz:"?z_hjz"
   assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
   show FALSE
   proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vbmt. (?z_hff~=((F[(zenon_Vbmt[''parent''])])[''rank''])))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvs])
    assume z_Hje:"?z_hje"
    assume z_Hhb:"(p=a_punde_1a)"
    assume z_Hwe:"(?z_hff~=((F[((F[(a_uunde_Fa[p])])[''parent''])])[''rank'']))" (is "_~=?z_hwf")
    show FALSE
    by (rule notE [OF z_Hjz z_Hhb])
   next
    assume z_Hje:"?z_hje"
    assume z_Hjz:"?z_hjz"
    assume z_Hwg:"(?z_hff~=?z_hfd)"
    show FALSE
    by (rule notE [OF z_Hwg z_Hfi])
   next
    assume z_Hjd:"(~?z_hje)"
    show FALSE
    by (rule notE [OF z_Hjd z_Hje])
   qed
  next
   assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
   show FALSE
   by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
  qed
 qed
 have zenon_L47_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hfs ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hfs:"?z_hfs" (is "_=?z_hft")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L9_ [OF z_Hhh z_Hhb z_Ht z_Hfs z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L48_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hfs ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfs:"?z_hfs" (is "_=?z_hft")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L47_ [OF z_Hsr z_Hhh z_Ht z_Hfs z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L49_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hfy ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L12_ [OF z_Hhh z_Hhb z_Ht z_Hfy z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L50_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U1'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hfy ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L49_ [OF z_Hsr z_Hhh z_Ht z_Hfy z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L51_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hga ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hga:"?z_hga" (is "_=?z_hgb")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L16_ [OF z_Hhh z_Hhb z_Ht z_Hga z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L52_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U1'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hga ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hga:"?z_hga" (is "_=?z_hgb")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L51_ [OF z_Hsr z_Hhh z_Ht z_Hga z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L53_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgg ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L20_ [OF z_Hhh z_Hhb z_Ht z_Hgg z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L54_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U2'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgg ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L53_ [OF z_Hsr z_Hhh z_Ht z_Hgg z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L55_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgi ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L24_ [OF z_Hhh z_Hhb z_Ht z_Hgi z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L56_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U2'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgi ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L55_ [OF z_Hsr z_Hhh z_Ht z_Hgi z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L57_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgo ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L28_ [OF z_Hhh z_Hhb z_Ht z_Hgo z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L58_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U7'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgo ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L57_ [OF z_Hsr z_Hhh z_Ht z_Hgo z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L59_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgq ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L32_ [OF z_Hhh z_Hhb z_Ht z_Hgq z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L60_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U7'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgq ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L59_ [OF z_Hsr z_Hhh z_Ht z_Hgq z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L61_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgv ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L36_ [OF z_Hhh z_Hhb z_Ht z_Hgv z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L62_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F4U8'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgv ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L61_ [OF z_Hsr z_Hhh z_Ht z_Hgv z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L63_: "(((a_aunde_Fa[a_punde_1a])[''parent''])~=((?z_hed[a_punde_1a])[''parent''])) ==> (DOMAIN(a_pchash_primea)=PROCESSES) ==> (?z_hfk=?z_hby) ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> ?z_hc ==> (DOMAIN(?z_hed)=PROCESSES) ==> ?z_hr ==> FALSE" (is "?z_hsr ==> ?z_hhh ==> ?z_ht ==> ?z_hgx ==> _ ==> ?z_hjb ==> _ ==> FALSE")
 proof -
  assume z_Hsr:"?z_hsr" (is "?z_hem~=?z_hjx")
  assume z_Hhh:"?z_hhh" (is "?z_hhi=_")
  assume z_Ht:"?z_ht"
  assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
  assume z_Hc:"?z_hc"
  assume z_Hjb:"?z_hjb" (is "?z_hjc=_")
  assume z_Hr:"?z_hr"
  show FALSE
  proof (rule zenon_noteq [of "?z_hjx"])
   have z_Hss: "((a_aunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_hen=?z_hju")
   proof (rule zenon_nnpp [of "(?z_hen=?z_hju)"])
    assume z_Hst:"(?z_hen~=?z_hju)"
    show FALSE
    proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vpg. (?z_hen~=zenon_Vpg))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hst])
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hhb:"(p=a_punde_1a)"
     assume z_Hsx:"(?z_hen~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
     show FALSE
     by (rule zenon_L40_ [OF z_Hhh z_Hhb z_Ht z_Hgx z_Hc])
    next
     assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
     assume z_Hjz:"(p~=a_punde_1a)"
     assume z_Hsy:"(?z_hen~=?z_hen)"
     show FALSE
     by (rule zenon_noteq [OF z_Hsy])
    next
     assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
     show FALSE
     by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
    qed
   qed
   have z_Hsz: "(?z_hjx~=?z_hjx)"
   by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hss], fact z_Hsr)
   thus "(?z_hjx~=?z_hjx)" .
  qed
 qed
 have zenon_L64_: "(a_aunde_Fhash_primea=?z_hed) ==> (a_bunde_Fhash_primea=a_bunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))) ==> (a_aunde_Fhash_primea \\in FuncSet(PROCESSES, FieldSet)) ==> (((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank'']) < ((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])) ==> ?z_hr ==> ?z_hc ==> (a_pchash_primea=except(pc, p, ''F7U8'')) ==> (?z_hfk=?z_hby) ==> ?z_hw ==> FALSE" (is "?z_he ==> ?z_hh ==> ?z_hf ==> ?z_htx ==> ?z_hdi ==> ?z_hfc ==> _ ==> _ ==> ?z_hgx ==> ?z_ht ==> _ ==> FALSE")
 proof -
  assume z_He:"?z_he"
  assume z_Hh:"?z_hh"
  assume z_Hf:"?z_hf"
  assume z_Htx:"?z_htx" (is "~?z_hty")
  assume z_Hdi:"?z_hdi"
  assume z_Hfc:"?z_hfc"
  assume z_Hr:"?z_hr"
  assume z_Hc:"?z_hc"
  assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
  assume z_Ht:"?z_ht"
  assume z_Hw:"?z_hw"
  have z_Hua: "(~(((F[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_hub")
  by (rule subst [where P="(\<lambda>zenon_Vtay. (~(((zenon_Vtay[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_Hf z_Htx])
  have z_Huj: "(~(((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])))" (is "~?z_huk")
  by (rule subst [where P="(\<lambda>zenon_Vvay. (~(((F[((zenon_Vvay[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))))", OF z_He z_Hua])
  have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
  by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
  have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
  by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
  have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
  by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
  show FALSE
  proof (rule notE [OF z_Huj])
   have z_Huu: "(((F[((a_aunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hfd=?z_hul")
   proof (rule zenon_nnpp [of "(?z_hfd=?z_hul)"])
    assume z_Huv:"(?z_hfd~=?z_hul)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hul"])
     have z_Huw: "((F[((a_aunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hev=?z_hli")
     proof (rule zenon_nnpp [of "(?z_hev=?z_hli)"])
      assume z_Hux:"(?z_hev~=?z_hli)"
      show FALSE
      proof (rule zenon_noteq [of "?z_hli"])
       have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
       proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
        assume z_Hsr:"(?z_hem~=?z_hjx)"
        show FALSE
        by (rule zenon_L63_ [OF z_Hsr z_Hhh z_Ht z_Hgx z_Hc z_Hjb z_Hr])
       qed
       have z_Huz: "(?z_hli~=?z_hli)"
       by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Huy], fact z_Hux)
       thus "(?z_hli~=?z_hli)" .
      qed
     qed
     have z_Hve: "(?z_hul~=?z_hul)"
     by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Huw], fact z_Huv)
     thus "(?z_hul~=?z_hul)" .
    qed
   qed
   have z_Hvj: "(((F[((a_bunde_Fa[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))" (is "?z_hff=?z_htf")
   proof (rule zenon_nnpp [of "(?z_hff=?z_htf)"])
    assume z_Hte:"(?z_hff~=?z_htf)"
    show FALSE
    by (rule zenon_L44_ [OF z_Hh z_Hf z_Hte])
   qed
   have z_Hvk: "(?z_hul < ?z_hff)" (is "?z_hvk")
   by (rule subst [where P="(\<lambda>zenon_Vojy. (zenon_Vojy < ?z_hff))", OF z_Huu], fact z_Hfc)
   have z_Huk: "?z_huk"
   by (rule subst [where P="(\<lambda>zenon_Vpjy. (?z_hul < zenon_Vpjy))", OF z_Hvj], fact z_Hvk)
   thus "?z_huk" .
  qed
 qed
 have zenon_L65_: "(a_bunde_Fhash_primea=a_bunde_Fa) ==> (((a_bunde_Fa[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent''])) ==> FALSE" (is "?z_hh ==> ?z_hwh ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hwh:"?z_hwh" (is "?z_heq~=?z_hjy")
  have z_Hwi: "(?z_heq~=?z_heq)"
  by (rule subst [where P="(\<lambda>zenon_Vfhy. (?z_heq~=((zenon_Vfhy[a_punde_1a])[''parent''])))", OF z_Hh z_Hwh])
  show FALSE
  by (rule zenon_noteq [OF z_Hwi])
 qed
 assume z_Hv:"(~((((a_aunde_Fhash_primea[a_punde_1a])[''parent''])=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=1)|((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''bit''])=0)&((((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']) < ((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))|((((a_Fhash_primea[((a_bunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank''])=((a_Fhash_primea[((a_aunde_Fhash_primea[a_punde_1a])[''parent''])])[''rank'']))&(((a_aunde_Fhash_primea[a_punde_1a])[''parent'']) <= ((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))))))))" (is "~(?z_hwp|?z_hwq)")
 have z_Hw: "?z_hw"
 by (rule zenon_and_0 [OF z_Hp])
 have z_Hdd: "?z_hdd" (is "_&?z_hdf")
 by (rule zenon_and_1 [OF z_Hp])
 have z_Hdf: "?z_hdf" (is "_&?z_hdh")
 by (rule zenon_and_1 [OF z_Hdd])
 have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdm")
 by (rule zenon_and_1 [OF z_Hdf])
 have z_Hdi: "?z_hdi"
 by (rule zenon_and_0 [OF z_Hdh])
 have z_Hks: "(((a_aunde_Fhash_primea[a_punde_1a])[''parent''])~=((a_bunde_Fhash_primea[a_punde_1a])[''parent'']))" (is "?z_hkt~=?z_hjy")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hwy: "(~?z_hwq)" (is "~(?z_hwr|?z_hws)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Hlt: "(((a_Fhash_primea[?z_hkt])[''bit''])~=1)" (is "?z_hlu~=?z_hex")
 by (rule zenon_notor_0 [OF z_Hwy])
 have z_Hwz: "(~?z_hws)" (is "~(?z_hwt&?z_hwu)")
 by (rule zenon_notor_1 [OF z_Hwy])
 show FALSE
 proof (rule zenon_notand [OF z_Hwz])
  assume z_Hxa:"(?z_hlu~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hd])
   assume z_Hfl:"?z_hfl" (is "?z_hfm&?z_hfp")
   have z_Hfp: "?z_hfp" (is "?z_hfq|?z_hfs")
   by (rule zenon_and_1 [OF z_Hfl])
   show FALSE
   proof (rule zenon_or [OF z_Hfp])
    assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
    show FALSE
    proof (rule zenon_or [OF z_Hu])
     assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
     show FALSE
     by (rule zenon_L5_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfq z_Ht z_Hdi])
    next
     assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
     show FALSE
     proof (rule zenon_or [OF z_Hes])
      assume z_Het:"?z_het" (is "?z_heu=_")
      show FALSE
      by (rule zenon_L7_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfq z_Ht z_Hdi])
     next
      assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
      have z_Hez: "?z_hez" (is "?z_heu=_")
      by (rule zenon_and_0 [OF z_Hey])
      have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
      by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
      have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
      have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
      by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
      have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
      by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
      have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
      by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
      have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
      by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
      show FALSE
      proof (rule zenon_noteq [of "?z_hjy"])
       have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
       proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
        assume z_Hjt:"(?z_hju~=?z_hjv)"
        show FALSE
        proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
         assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
         assume z_Hhb:"(p=a_punde_1a)"
         assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
         show FALSE
         by (rule zenon_L2_ [OF z_Hhh z_Hhb z_Ht z_Hfq z_Hc])
        next
         assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
         assume z_Hjz:"(p~=a_punde_1a)"
         assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
         show FALSE
         by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
        next
         assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
         show FALSE
         by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
        qed
       qed
       have z_Hlf: "(?z_hjy~=?z_hjy)"
       by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
       thus "(?z_hjy~=?z_hjy)" .
      qed
     qed
    qed
   next
    assume z_Hfs:"?z_hfs" (is "_=?z_hft")
    show FALSE
    proof (rule zenon_or [OF z_Hu])
     assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
     show FALSE
     by (rule zenon_L10_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfs z_Ht z_Hdi])
    next
     assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
     show FALSE
     proof (rule zenon_or [OF z_Hes])
      assume z_Het:"?z_het" (is "?z_heu=_")
      show FALSE
      by (rule zenon_L11_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfs z_Ht z_Hdi])
     next
      assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
      have z_Hez: "?z_hez" (is "?z_heu=_")
      by (rule zenon_and_0 [OF z_Hey])
      have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
      by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
      have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
      by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
      have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
      by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
      have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
      by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
      have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
      by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
      have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
      by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
      show FALSE
      proof (rule zenon_noteq [of "?z_hjy"])
       have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
       proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
        assume z_Hjt:"(?z_hju~=?z_hjv)"
        show FALSE
        proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
         assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
         assume z_Hhb:"(p=a_punde_1a)"
         assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
         show FALSE
         by (rule zenon_L9_ [OF z_Hhh z_Hhb z_Ht z_Hfs z_Hc])
        next
         assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
         assume z_Hjz:"(p~=a_punde_1a)"
         assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
         show FALSE
         by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
        next
         assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
         show FALSE
         by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
        qed
       qed
       have z_Hlf: "(?z_hjy~=?z_hjy)"
       by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
       thus "(?z_hjy~=?z_hjy)" .
      qed
     qed
    qed
   qed
  next
   assume z_Hfu:"?z_hfu" (is "?z_hfv|?z_hgc")
   show FALSE
   proof (rule zenon_or [OF z_Hfu])
    assume z_Hfv:"?z_hfv" (is "?z_hfw&?z_hfx")
    have z_Hfx: "?z_hfx" (is "?z_hfy|?z_hga")
    by (rule zenon_and_1 [OF z_Hfv])
    show FALSE
    proof (rule zenon_or [OF z_Hfx])
     assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L13_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfy z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L14_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfy z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hez: "?z_hez" (is "?z_heu=_")
       by (rule zenon_and_0 [OF z_Hey])
       have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
       by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
       have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
       by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
       have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
       by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
       have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
       by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
       have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
       by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
       have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
       by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
       show FALSE
       proof (rule zenon_noteq [of "?z_hjy"])
        have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
        proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
         assume z_Hjt:"(?z_hju~=?z_hjv)"
         show FALSE
         proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
          assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
          assume z_Hhb:"(p=a_punde_1a)"
          assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
          show FALSE
          by (rule zenon_L12_ [OF z_Hhh z_Hhb z_Ht z_Hfy z_Hc])
         next
          assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
          assume z_Hjz:"(p~=a_punde_1a)"
          assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
          show FALSE
          by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
         next
          assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
          show FALSE
          by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
         qed
        qed
        have z_Hlf: "(?z_hjy~=?z_hjy)"
        by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
        thus "(?z_hjy~=?z_hjy)" .
       qed
      qed
     qed
    next
     assume z_Hga:"?z_hga" (is "_=?z_hgb")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L17_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hga z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L18_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hga z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hez: "?z_hez" (is "?z_heu=_")
       by (rule zenon_and_0 [OF z_Hey])
       have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
       by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
       have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
       by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
       have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
       by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
       have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
       by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
       have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
       by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
       have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
       by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
       show FALSE
       proof (rule zenon_noteq [of "?z_hjy"])
        have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
        proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
         assume z_Hjt:"(?z_hju~=?z_hjv)"
         show FALSE
         proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
          assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
          assume z_Hhb:"(p=a_punde_1a)"
          assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
          show FALSE
          by (rule zenon_L16_ [OF z_Hhh z_Hhb z_Ht z_Hga z_Hc])
         next
          assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
          assume z_Hjz:"(p~=a_punde_1a)"
          assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
          show FALSE
          by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
         next
          assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
          show FALSE
          by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
         qed
        qed
        have z_Hlf: "(?z_hjy~=?z_hjy)"
        by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
        thus "(?z_hjy~=?z_hjy)" .
       qed
      qed
     qed
    qed
   next
    assume z_Hgc:"?z_hgc" (is "?z_hgd|?z_hgk")
    show FALSE
    proof (rule zenon_or [OF z_Hgc])
     assume z_Hgd:"?z_hgd" (is "?z_hge&?z_hgf")
     have z_Hgf: "?z_hgf" (is "?z_hgg|?z_hgi")
     by (rule zenon_and_1 [OF z_Hgd])
     show FALSE
     proof (rule zenon_or [OF z_Hgf])
      assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L21_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgg z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L22_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgg z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hez: "?z_hez" (is "?z_heu=_")
        by (rule zenon_and_0 [OF z_Hey])
        have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
        have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
        by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
        have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule zenon_noteq [of "?z_hjy"])
         have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
         proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
          assume z_Hjt:"(?z_hju~=?z_hjv)"
          show FALSE
          proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
           assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
           assume z_Hhb:"(p=a_punde_1a)"
           assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
           show FALSE
           by (rule zenon_L20_ [OF z_Hhh z_Hhb z_Ht z_Hgg z_Hc])
          next
           assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
           assume z_Hjz:"(p~=a_punde_1a)"
           assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
           show FALSE
           by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
          next
           assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
           show FALSE
           by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
          qed
         qed
         have z_Hlf: "(?z_hjy~=?z_hjy)"
         by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
         thus "(?z_hjy~=?z_hjy)" .
        qed
       qed
      qed
     next
      assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L25_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgi z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L26_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgi z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hez: "?z_hez" (is "?z_heu=_")
        by (rule zenon_and_0 [OF z_Hey])
        have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
        have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
        by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
        have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
        by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule zenon_noteq [of "?z_hjy"])
         have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
         proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
          assume z_Hjt:"(?z_hju~=?z_hjv)"
          show FALSE
          proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
           assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
           assume z_Hhb:"(p=a_punde_1a)"
           assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
           show FALSE
           by (rule zenon_L24_ [OF z_Hhh z_Hhb z_Ht z_Hgi z_Hc])
          next
           assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
           assume z_Hjz:"(p~=a_punde_1a)"
           assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
           show FALSE
           by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
          next
           assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
           show FALSE
           by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
          qed
         qed
         have z_Hlf: "(?z_hjy~=?z_hjy)"
         by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
         thus "(?z_hjy~=?z_hjy)" .
        qed
       qed
      qed
     qed
    next
     assume z_Hgk:"?z_hgk" (is "?z_hgl|?z_hgs")
     show FALSE
     proof (rule zenon_or [OF z_Hgk])
      assume z_Hgl:"?z_hgl" (is "?z_hgm&?z_hgn")
      have z_Hgn: "?z_hgn" (is "?z_hgo|?z_hgq")
      by (rule zenon_and_1 [OF z_Hgl])
      show FALSE
      proof (rule zenon_or [OF z_Hgn])
       assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L29_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgo z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L30_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgo z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hez: "?z_hez" (is "?z_heu=_")
         by (rule zenon_and_0 [OF z_Hey])
         have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
         have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
         by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
         have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hjy"])
          have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
          proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
           assume z_Hjt:"(?z_hju~=?z_hjv)"
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
            show FALSE
            by (rule zenon_L28_ [OF z_Hhh z_Hhb z_Ht z_Hgo z_Hc])
           next
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hjz:"(p~=a_punde_1a)"
            assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
            show FALSE
            by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
           next
            assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
            show FALSE
            by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
           qed
          qed
          have z_Hlf: "(?z_hjy~=?z_hjy)"
          by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
          thus "(?z_hjy~=?z_hjy)" .
         qed
        qed
       qed
      next
       assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L33_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgq z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L34_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgq z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hez: "?z_hez" (is "?z_heu=_")
         by (rule zenon_and_0 [OF z_Hey])
         have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
         have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
         by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
         have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hjy"])
          have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
          proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
           assume z_Hjt:"(?z_hju~=?z_hjv)"
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
            show FALSE
            by (rule zenon_L32_ [OF z_Hhh z_Hhb z_Ht z_Hgq z_Hc])
           next
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hjz:"(p~=a_punde_1a)"
            assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
            show FALSE
            by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
           next
            assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
            show FALSE
            by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
           qed
          qed
          have z_Hlf: "(?z_hjy~=?z_hjy)"
          by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
          thus "(?z_hjy~=?z_hjy)" .
         qed
        qed
       qed
      qed
     next
      assume z_Hgs:"?z_hgs" (is "?z_hgt&?z_hgu")
      have z_Hgu: "?z_hgu" (is "?z_hgv|?z_hgx")
      by (rule zenon_and_1 [OF z_Hgs])
      show FALSE
      proof (rule zenon_or [OF z_Hgu])
       assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L37_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgv z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L38_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgv z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hez: "?z_hez" (is "?z_heu=_")
         by (rule zenon_and_0 [OF z_Hey])
         have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
         have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
         by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
         have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hjy"])
          have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
          proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
           assume z_Hjt:"(?z_hju~=?z_hjv)"
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
            show FALSE
            by (rule zenon_L36_ [OF z_Hhh z_Hhb z_Ht z_Hgv z_Hc])
           next
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hjz:"(p~=a_punde_1a)"
            assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
            show FALSE
            by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
           next
            assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
            show FALSE
            by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
           qed
          qed
          have z_Hlf: "(?z_hjy~=?z_hjy)"
          by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
          thus "(?z_hjy~=?z_hjy)" .
         qed
        qed
       qed
      next
       assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L41_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgx z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L42_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgx z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hez: "?z_hez" (is "?z_heu=_")
         by (rule zenon_and_0 [OF z_Hey])
         have z_Hxb: "(((F[?z_hkt])[''bit''])~=0)" (is "?z_hlx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vntx. (((zenon_Vntx[?z_hkt])[''bit''])~=0))", OF z_Hf z_Hxa])
         have z_Hml: "(((F[((?z_hed[a_punde_1a])[''parent''])])[''bit''])~=0)" (is "?z_hlh~=_")
         by (rule subst [where P="(\<lambda>zenon_Vptx. (((F[((zenon_Vptx[a_punde_1a])[''parent''])])[''bit''])~=0))", OF z_He z_Hxb])
         have z_Hjw: "(((?z_hed[a_punde_1a])[''parent''])~=?z_hjy)" (is "?z_hjx~=_")
         by (rule subst [where P="(\<lambda>zenon_Vzsx. (((zenon_Vzsx[a_punde_1a])[''parent''])~=?z_hjy))", OF z_He z_Hks])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hjy"])
          have z_Hle: "((?z_hed[a_punde_1a])=(a_bunde_Fhash_primea[a_punde_1a]))" (is "?z_hju=?z_hjv")
          proof (rule zenon_nnpp [of "(?z_hju=?z_hjv)"])
           assume z_Hjt:"(?z_hju~=?z_hjv)"
           show FALSE
           proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vyf. (zenon_Vyf~=?z_hjv))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hjt])
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hhb:"(p=a_punde_1a)"
            assume z_Hkd:"((F[(a_uunde_Fa[p])])~=?z_hjv)" (is "?z_heg~=_")
            show FALSE
            by (rule zenon_L40_ [OF z_Hhh z_Hhb z_Ht z_Hgx z_Hc])
           next
            assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
            assume z_Hjz:"(p~=a_punde_1a)"
            assume z_Hke:"((a_aunde_Fa[a_punde_1a])~=?z_hjv)" (is "?z_hen~=_")
            show FALSE
            by (rule zenon_L8_ [OF z_Hjt z_Hr z_Hjb z_Hez z_Hml z_Hjz])
           next
            assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
            show FALSE
            by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
           qed
          qed
          have z_Hlf: "(?z_hjy~=?z_hjy)"
          by (rule subst [where P="(\<lambda>zenon_Voa. ((zenon_Voa[''parent''])~=?z_hjy))", OF z_Hle], fact z_Hjw)
          thus "(?z_hjy~=?z_hjy)" .
         qed
        qed
       qed
      qed
     qed
    qed
   qed
  qed
 next
  assume z_Hxo:"(~?z_hwu)" (is "~(?z_hty|?z_hwv)")
  have z_Htx: "(~?z_hty)"
  by (rule zenon_notor_0 [OF z_Hxo])
  have z_Hxp: "(~?z_hwv)" (is "~(?z_hww&?z_hwx)")
  by (rule zenon_notor_1 [OF z_Hxo])
  show FALSE
  proof (rule zenon_notand [OF z_Hxp])
   assume z_Hxq:"(((a_Fhash_primea[?z_hjy])[''rank''])~=((a_Fhash_primea[?z_hkt])[''rank'']))" (is "?z_htf~=?z_htz")
   show FALSE
   proof (rule zenon_or [OF z_Hd])
    assume z_Hfl:"?z_hfl" (is "?z_hfm&?z_hfp")
    have z_Hfp: "?z_hfp" (is "?z_hfq|?z_hfs")
    by (rule zenon_and_1 [OF z_Hfl])
    show FALSE
    proof (rule zenon_or [OF z_Hfp])
     assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L5_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfq z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L7_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfq z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
       by (rule zenon_and_1 [OF z_Hey])
       show FALSE
       proof (rule zenon_or [OF z_Hfb])
        assume z_Hfc:"?z_hfc"
        show FALSE
        by (rule zenon_L45_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfq z_Ht z_Hw])
       next
        assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
        have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
        by (rule zenon_and_0 [OF z_Hfh])
        have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
        by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
        have z_Hxx: "(?z_hff~=?z_htz)"
        by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
        have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
        by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
        have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
        by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule zenon_noteq [of "?z_hul"])
         have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
         proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
          assume z_Hym:"(?z_hfg~=?z_hli)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hli"])
           have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
           proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
            assume z_Hyo:"(?z_heq~=?z_hjx)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hjx"])
             have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
             proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
              assume z_Hvr:"(?z_her~=?z_hju)"
              show FALSE
              proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L2_ [OF z_Hhh z_Hhb z_Ht z_Hfq z_Hc])
              next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
              next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
              qed
             qed
             have z_Hsz: "(?z_hjx~=?z_hjx)"
             by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
             thus "(?z_hjx~=?z_hjx)" .
            qed
           qed
           have z_Huz: "(?z_hli~=?z_hli)"
           by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
           thus "(?z_hli~=?z_hli)" .
          qed
         qed
         have z_Hve: "(?z_hul~=?z_hul)"
         by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
         thus "(?z_hul~=?z_hul)" .
        qed
       qed
      qed
     qed
    next
     assume z_Hfs:"?z_hfs" (is "_=?z_hft")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L10_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfs z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L11_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfs z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
       by (rule zenon_and_1 [OF z_Hey])
       show FALSE
       proof (rule zenon_or [OF z_Hfb])
        assume z_Hfc:"?z_hfc"
        show FALSE
        by (rule zenon_L48_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfs z_Ht z_Hw])
       next
        assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
        have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
        by (rule zenon_and_0 [OF z_Hfh])
        have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
        by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
        have z_Hxx: "(?z_hff~=?z_htz)"
        by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
        have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
        by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
        have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
        by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule zenon_noteq [of "?z_hul"])
         have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
         proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
          assume z_Hym:"(?z_hfg~=?z_hli)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hli"])
           have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
           proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
            assume z_Hyo:"(?z_heq~=?z_hjx)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hjx"])
             have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
             proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
              assume z_Hvr:"(?z_her~=?z_hju)"
              show FALSE
              proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L9_ [OF z_Hhh z_Hhb z_Ht z_Hfs z_Hc])
              next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
              next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
              qed
             qed
             have z_Hsz: "(?z_hjx~=?z_hjx)"
             by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
             thus "(?z_hjx~=?z_hjx)" .
            qed
           qed
           have z_Huz: "(?z_hli~=?z_hli)"
           by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
           thus "(?z_hli~=?z_hli)" .
          qed
         qed
         have z_Hve: "(?z_hul~=?z_hul)"
         by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
         thus "(?z_hul~=?z_hul)" .
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hfu:"?z_hfu" (is "?z_hfv|?z_hgc")
    show FALSE
    proof (rule zenon_or [OF z_Hfu])
     assume z_Hfv:"?z_hfv" (is "?z_hfw&?z_hfx")
     have z_Hfx: "?z_hfx" (is "?z_hfy|?z_hga")
     by (rule zenon_and_1 [OF z_Hfv])
     show FALSE
     proof (rule zenon_or [OF z_Hfx])
      assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L13_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfy z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L14_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfy z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
        by (rule zenon_and_1 [OF z_Hey])
        show FALSE
        proof (rule zenon_or [OF z_Hfb])
         assume z_Hfc:"?z_hfc"
         show FALSE
         by (rule zenon_L50_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfy z_Ht z_Hw])
        next
         assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
         have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
         by (rule zenon_and_0 [OF z_Hfh])
         have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
         by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
         have z_Hxx: "(?z_hff~=?z_htz)"
         by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
         have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
         by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
         have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
         by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hul"])
          have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
          proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
           assume z_Hym:"(?z_hfg~=?z_hli)"
           show FALSE
           proof (rule zenon_noteq [of "?z_hli"])
            have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
             assume z_Hyo:"(?z_heq~=?z_hjx)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hjx"])
              have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
              proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L12_ [OF z_Hhh z_Hhb z_Ht z_Hfy z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
              qed
              have z_Hsz: "(?z_hjx~=?z_hjx)"
              by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
              thus "(?z_hjx~=?z_hjx)" .
             qed
            qed
            have z_Huz: "(?z_hli~=?z_hli)"
            by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
            thus "(?z_hli~=?z_hli)" .
           qed
          qed
          have z_Hve: "(?z_hul~=?z_hul)"
          by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
          thus "(?z_hul~=?z_hul)" .
         qed
        qed
       qed
      qed
     next
      assume z_Hga:"?z_hga" (is "_=?z_hgb")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L17_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hga z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L18_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hga z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
        by (rule zenon_and_1 [OF z_Hey])
        show FALSE
        proof (rule zenon_or [OF z_Hfb])
         assume z_Hfc:"?z_hfc"
         show FALSE
         by (rule zenon_L52_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hga z_Ht z_Hw])
        next
         assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
         have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
         by (rule zenon_and_0 [OF z_Hfh])
         have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
         by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
         have z_Hxx: "(?z_hff~=?z_htz)"
         by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
         have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
         by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
         have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
         by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule zenon_noteq [of "?z_hul"])
          have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
          proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
           assume z_Hym:"(?z_hfg~=?z_hli)"
           show FALSE
           proof (rule zenon_noteq [of "?z_hli"])
            have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
             assume z_Hyo:"(?z_heq~=?z_hjx)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hjx"])
              have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
              proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L16_ [OF z_Hhh z_Hhb z_Ht z_Hga z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
              qed
              have z_Hsz: "(?z_hjx~=?z_hjx)"
              by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
              thus "(?z_hjx~=?z_hjx)" .
             qed
            qed
            have z_Huz: "(?z_hli~=?z_hli)"
            by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
            thus "(?z_hli~=?z_hli)" .
           qed
          qed
          have z_Hve: "(?z_hul~=?z_hul)"
          by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
          thus "(?z_hul~=?z_hul)" .
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hgc:"?z_hgc" (is "?z_hgd|?z_hgk")
     show FALSE
     proof (rule zenon_or [OF z_Hgc])
      assume z_Hgd:"?z_hgd" (is "?z_hge&?z_hgf")
      have z_Hgf: "?z_hgf" (is "?z_hgg|?z_hgi")
      by (rule zenon_and_1 [OF z_Hgd])
      show FALSE
      proof (rule zenon_or [OF z_Hgf])
       assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L21_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgg z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L22_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgg z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
         by (rule zenon_and_1 [OF z_Hey])
         show FALSE
         proof (rule zenon_or [OF z_Hfb])
          assume z_Hfc:"?z_hfc"
          show FALSE
          by (rule zenon_L54_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgg z_Ht z_Hw])
         next
          assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
          have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
          by (rule zenon_and_0 [OF z_Hfh])
          have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
          by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
          have z_Hxx: "(?z_hff~=?z_htz)"
          by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
          have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
          by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
          have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
          by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
          have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
          by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
          by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
          show FALSE
          proof (rule zenon_noteq [of "?z_hul"])
           have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
           proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
            assume z_Hym:"(?z_hfg~=?z_hli)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hli"])
             have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
             proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
              assume z_Hyo:"(?z_heq~=?z_hjx)"
              show FALSE
              proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L20_ [OF z_Hhh z_Hhb z_Ht z_Hgg z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
              qed
             qed
             have z_Huz: "(?z_hli~=?z_hli)"
             by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
             thus "(?z_hli~=?z_hli)" .
            qed
           qed
           have z_Hve: "(?z_hul~=?z_hul)"
           by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
           thus "(?z_hul~=?z_hul)" .
          qed
         qed
        qed
       qed
      next
       assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L25_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgi z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L26_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgi z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
         by (rule zenon_and_1 [OF z_Hey])
         show FALSE
         proof (rule zenon_or [OF z_Hfb])
          assume z_Hfc:"?z_hfc"
          show FALSE
          by (rule zenon_L56_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgi z_Ht z_Hw])
         next
          assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
          have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
          by (rule zenon_and_0 [OF z_Hfh])
          have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
          by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
          have z_Hxx: "(?z_hff~=?z_htz)"
          by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
          have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
          by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
          have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
          by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
          have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
          by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
          by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
          show FALSE
          proof (rule zenon_noteq [of "?z_hul"])
           have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
           proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
            assume z_Hym:"(?z_hfg~=?z_hli)"
            show FALSE
            proof (rule zenon_noteq [of "?z_hli"])
             have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
             proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
              assume z_Hyo:"(?z_heq~=?z_hjx)"
              show FALSE
              proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L24_ [OF z_Hhh z_Hhb z_Ht z_Hgi z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
              qed
             qed
             have z_Huz: "(?z_hli~=?z_hli)"
             by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
             thus "(?z_hli~=?z_hli)" .
            qed
           qed
           have z_Hve: "(?z_hul~=?z_hul)"
           by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
           thus "(?z_hul~=?z_hul)" .
          qed
         qed
        qed
       qed
      qed
     next
      assume z_Hgk:"?z_hgk" (is "?z_hgl|?z_hgs")
      show FALSE
      proof (rule zenon_or [OF z_Hgk])
       assume z_Hgl:"?z_hgl" (is "?z_hgm&?z_hgn")
       have z_Hgn: "?z_hgn" (is "?z_hgo|?z_hgq")
       by (rule zenon_and_1 [OF z_Hgl])
       show FALSE
       proof (rule zenon_or [OF z_Hgn])
        assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L29_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgo z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L30_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgo z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L58_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgo z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
           by (rule zenon_and_0 [OF z_Hfh])
           have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
           by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
           have z_Hxx: "(?z_hff~=?z_htz)"
           by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
           have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
           by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
           have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
           by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule zenon_noteq [of "?z_hul"])
            have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
            proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
             assume z_Hym:"(?z_hfg~=?z_hli)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hli"])
              have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
              proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
               assume z_Hyo:"(?z_heq~=?z_hjx)"
               show FALSE
               proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L28_ [OF z_Hhh z_Hhb z_Ht z_Hgo z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
               qed
              qed
              have z_Huz: "(?z_hli~=?z_hli)"
              by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
              thus "(?z_hli~=?z_hli)" .
             qed
            qed
            have z_Hve: "(?z_hul~=?z_hul)"
            by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
            thus "(?z_hul~=?z_hul)" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L33_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgq z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L34_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgq z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L60_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgq z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
           by (rule zenon_and_0 [OF z_Hfh])
           have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
           by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
           have z_Hxx: "(?z_hff~=?z_htz)"
           by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
           have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
           by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
           have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
           by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule zenon_noteq [of "?z_hul"])
            have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
            proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
             assume z_Hym:"(?z_hfg~=?z_hli)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hli"])
              have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
              proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
               assume z_Hyo:"(?z_heq~=?z_hjx)"
               show FALSE
               proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L32_ [OF z_Hhh z_Hhb z_Ht z_Hgq z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
               qed
              qed
              have z_Huz: "(?z_hli~=?z_hli)"
              by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
              thus "(?z_hli~=?z_hli)" .
             qed
            qed
            have z_Hve: "(?z_hul~=?z_hul)"
            by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
            thus "(?z_hul~=?z_hul)" .
           qed
          qed
         qed
        qed
       qed
      next
       assume z_Hgs:"?z_hgs" (is "?z_hgt&?z_hgu")
       have z_Hgu: "?z_hgu" (is "?z_hgv|?z_hgx")
       by (rule zenon_and_1 [OF z_Hgs])
       show FALSE
       proof (rule zenon_or [OF z_Hgu])
        assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L37_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgv z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L38_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgv z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L62_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgv z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
           by (rule zenon_and_0 [OF z_Hfh])
           have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
           by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
           have z_Hxx: "(?z_hff~=?z_htz)"
           by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
           have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
           by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
           have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
           by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule zenon_noteq [of "?z_hul"])
            have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
            proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
             assume z_Hym:"(?z_hfg~=?z_hli)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hli"])
              have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
              proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
               assume z_Hyo:"(?z_heq~=?z_hjx)"
               show FALSE
               proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L36_ [OF z_Hhh z_Hhb z_Ht z_Hgv z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
               qed
              qed
              have z_Huz: "(?z_hli~=?z_hli)"
              by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
              thus "(?z_hli~=?z_hli)" .
             qed
            qed
            have z_Hve: "(?z_hul~=?z_hul)"
            by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
            thus "(?z_hul~=?z_hul)" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L41_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgx z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L42_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgx z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L64_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgx z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfi: "?z_hfi" (is "?z_hff=?z_hfd")
           by (rule zenon_and_0 [OF z_Hfh])
           have z_Hxr: "(((F[?z_hjy])[''rank''])~=?z_htz)" (is "?z_hti~=_")
           by (rule subst [where P="(\<lambda>zenon_Vdby. (((zenon_Vdby[?z_hjy])[''rank''])~=?z_htz))", OF z_Hf z_Hxq])
           have z_Hxx: "(?z_hff~=?z_htz)"
           by (rule subst [where P="(\<lambda>zenon_Vfby. (((F[((zenon_Vfby[a_punde_1a])[''parent''])])[''rank''])~=?z_htz))", OF z_Hh z_Hxr])
           have z_Hyf: "(?z_hff~=((F[?z_hkt])[''rank'']))" (is "_~=?z_huc")
           by (rule subst [where P="(\<lambda>zenon_Vhby. (?z_hff~=((zenon_Vhby[?z_hkt])[''rank''])))", OF z_Hf z_Hxx])
           have z_Hvs: "(?z_hff~=((F[((?z_hed[a_punde_1a])[''parent''])])[''rank'']))" (is "_~=?z_hul")
           by (rule subst [where P="(\<lambda>zenon_Vbby. (?z_hff~=((F[((zenon_Vbby[a_punde_1a])[''parent''])])[''rank''])))", OF z_He z_Hyf])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule zenon_noteq [of "?z_hul"])
            have z_Hyl: "((F[((a_bunde_Fa[a_punde_1a])[''parent''])])=(F[((?z_hed[a_punde_1a])[''parent''])]))" (is "?z_hfg=?z_hli")
            proof (rule zenon_nnpp [of "(?z_hfg=?z_hli)"])
             assume z_Hym:"(?z_hfg~=?z_hli)"
             show FALSE
             proof (rule zenon_noteq [of "?z_hli"])
              have z_Hyn: "(((a_bunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_heq=?z_hjx")
              proof (rule zenon_nnpp [of "(?z_heq=?z_hjx)"])
               assume z_Hyo:"(?z_heq~=?z_hjx)"
               show FALSE
               proof (rule zenon_noteq [of "?z_hjx"])
               have z_Hyp: "((a_bunde_Fa[a_punde_1a])=(?z_hed[a_punde_1a]))" (is "?z_her=?z_hju")
               proof (rule zenon_nnpp [of "(?z_her=?z_hju)"])
               assume z_Hvr:"(?z_her~=?z_hju)"
               show FALSE
               proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vhqt. (?z_her~=zenon_Vhqt))" "a_aunde_Fa" "p" "(F[(a_uunde_Fa[p])])" "a_punde_1a", OF z_Hvr])
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hhb:"(p=a_punde_1a)"
               assume z_Hvw:"(?z_her~=(F[(a_uunde_Fa[p])]))" (is "_~=?z_heg")
               show FALSE
               by (rule zenon_L40_ [OF z_Hhh z_Hhb z_Ht z_Hgx z_Hc])
               next
               assume z_Hje:"(a_punde_1a \\in DOMAIN(a_aunde_Fa))" (is "?z_hje")
               assume z_Hjz:"(p~=a_punde_1a)"
               assume z_Hvx:"(?z_her~=(a_aunde_Fa[a_punde_1a]))" (is "_~=?z_hen")
               show FALSE
               by (rule zenon_L46_ [OF z_Hvr z_Hr z_Hjb z_Hfi z_Hvs z_Hjz])
               next
               assume z_Hjd:"(~(a_punde_1a \\in DOMAIN(a_aunde_Fa)))" (is "~?z_hje")
               show FALSE
               by (rule zenon_L3_ [OF z_Hjb z_Hjd z_Hr])
               qed
               qed
               have z_Hsz: "(?z_hjx~=?z_hjx)"
               by (rule subst [where P="(\<lambda>zenon_Vljy. ((zenon_Vljy[''parent''])~=?z_hjx))", OF z_Hyp], fact z_Hyo)
               thus "(?z_hjx~=?z_hjx)" .
               qed
              qed
              have z_Huz: "(?z_hli~=?z_hli)"
              by (rule subst [where P="(\<lambda>zenon_Vmjy. ((F[zenon_Vmjy])~=?z_hli))", OF z_Hyn], fact z_Hym)
              thus "(?z_hli~=?z_hli)" .
             qed
            qed
            have z_Hve: "(?z_hul~=?z_hul)"
            by (rule subst [where P="(\<lambda>zenon_Vnjy. ((zenon_Vnjy[''rank''])~=?z_hul))", OF z_Hyl], fact z_Hvs)
            thus "(?z_hul~=?z_hul)" .
           qed
          qed
         qed
        qed
       qed
      qed
     qed
    qed
   qed
  next
   assume z_Hyq:"(~?z_hwx)"
   show FALSE
   proof (rule zenon_or [OF z_Hd])
    assume z_Hfl:"?z_hfl" (is "?z_hfm&?z_hfp")
    have z_Hfp: "?z_hfp" (is "?z_hfq|?z_hfs")
    by (rule zenon_and_1 [OF z_Hfl])
    show FALSE
    proof (rule zenon_or [OF z_Hfp])
     assume z_Hfq:"?z_hfq" (is "_=?z_hfr")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L5_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfq z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L7_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfq z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
       by (rule zenon_and_1 [OF z_Hey])
       show FALSE
       proof (rule zenon_or [OF z_Hfb])
        assume z_Hfc:"?z_hfc"
        show FALSE
        by (rule zenon_L45_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfq z_Ht z_Hw])
       next
        assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
        have z_Hfj: "?z_hfj"
        by (rule zenon_and_1 [OF z_Hfh])
        have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
        by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule notE [OF z_Hyr])
         have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
         proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
          assume z_Hsr:"(?z_hem~=?z_hjx)"
          show FALSE
          by (rule zenon_L43_ [OF z_Hsr z_Hhh z_Ht z_Hfq z_Hc z_Hjb z_Hr])
         qed
         have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
         proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
          assume z_Hwh:"(?z_heq~=?z_hjy)"
          show FALSE
          by (rule zenon_L65_ [OF z_Hh z_Hwh])
         qed
         have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
         by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
         have z_Hys: "?z_hys"
         by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
         thus "?z_hys" .
        qed
       qed
      qed
     qed
    next
     assume z_Hfs:"?z_hfs" (is "_=?z_hft")
     show FALSE
     proof (rule zenon_or [OF z_Hu])
      assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
      show FALSE
      by (rule zenon_L10_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfs z_Ht z_Hdi])
     next
      assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
      show FALSE
      proof (rule zenon_or [OF z_Hes])
       assume z_Het:"?z_het" (is "?z_heu=_")
       show FALSE
       by (rule zenon_L11_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfs z_Ht z_Hdi])
      next
       assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
       have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
       by (rule zenon_and_1 [OF z_Hey])
       show FALSE
       proof (rule zenon_or [OF z_Hfb])
        assume z_Hfc:"?z_hfc"
        show FALSE
        by (rule zenon_L48_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfs z_Ht z_Hw])
       next
        assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
        have z_Hfj: "?z_hfj"
        by (rule zenon_and_1 [OF z_Hfh])
        have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
        by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
        have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
        by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
        have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
        by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
        have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
        by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
        show FALSE
        proof (rule notE [OF z_Hyr])
         have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
         proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
          assume z_Hsr:"(?z_hem~=?z_hjx)"
          show FALSE
          by (rule zenon_L47_ [OF z_Hsr z_Hhh z_Ht z_Hfs z_Hc z_Hjb z_Hr])
         qed
         have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
         proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
          assume z_Hwh:"(?z_heq~=?z_hjy)"
          show FALSE
          by (rule zenon_L65_ [OF z_Hh z_Hwh])
         qed
         have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
         by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
         have z_Hys: "?z_hys"
         by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
         thus "?z_hys" .
        qed
       qed
      qed
     qed
    qed
   next
    assume z_Hfu:"?z_hfu" (is "?z_hfv|?z_hgc")
    show FALSE
    proof (rule zenon_or [OF z_Hfu])
     assume z_Hfv:"?z_hfv" (is "?z_hfw&?z_hfx")
     have z_Hfx: "?z_hfx" (is "?z_hfy|?z_hga")
     by (rule zenon_and_1 [OF z_Hfv])
     show FALSE
     proof (rule zenon_or [OF z_Hfx])
      assume z_Hfy:"?z_hfy" (is "_=?z_hfz")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L13_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hfy z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L14_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hfy z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
        by (rule zenon_and_1 [OF z_Hey])
        show FALSE
        proof (rule zenon_or [OF z_Hfb])
         assume z_Hfc:"?z_hfc"
         show FALSE
         by (rule zenon_L50_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hfy z_Ht z_Hw])
        next
         assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
         have z_Hfj: "?z_hfj"
         by (rule zenon_and_1 [OF z_Hfh])
         have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
         by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule notE [OF z_Hyr])
          have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
          proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
           assume z_Hsr:"(?z_hem~=?z_hjx)"
           show FALSE
           by (rule zenon_L49_ [OF z_Hsr z_Hhh z_Ht z_Hfy z_Hc z_Hjb z_Hr])
          qed
          have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
          proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
           assume z_Hwh:"(?z_heq~=?z_hjy)"
           show FALSE
           by (rule zenon_L65_ [OF z_Hh z_Hwh])
          qed
          have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
          by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
          have z_Hys: "?z_hys"
          by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
          thus "?z_hys" .
         qed
        qed
       qed
      qed
     next
      assume z_Hga:"?z_hga" (is "_=?z_hgb")
      show FALSE
      proof (rule zenon_or [OF z_Hu])
       assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
       show FALSE
       by (rule zenon_L17_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hga z_Ht z_Hdi])
      next
       assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
       show FALSE
       proof (rule zenon_or [OF z_Hes])
        assume z_Het:"?z_het" (is "?z_heu=_")
        show FALSE
        by (rule zenon_L18_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hga z_Ht z_Hdi])
       next
        assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
        have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
        by (rule zenon_and_1 [OF z_Hey])
        show FALSE
        proof (rule zenon_or [OF z_Hfb])
         assume z_Hfc:"?z_hfc"
         show FALSE
         by (rule zenon_L52_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hga z_Ht z_Hw])
        next
         assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
         have z_Hfj: "?z_hfj"
         by (rule zenon_and_1 [OF z_Hfh])
         have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
         by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
         have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
         by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
         have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
         by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
         have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
         by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
         show FALSE
         proof (rule notE [OF z_Hyr])
          have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
          proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
           assume z_Hsr:"(?z_hem~=?z_hjx)"
           show FALSE
           by (rule zenon_L51_ [OF z_Hsr z_Hhh z_Ht z_Hga z_Hc z_Hjb z_Hr])
          qed
          have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
          proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
           assume z_Hwh:"(?z_heq~=?z_hjy)"
           show FALSE
           by (rule zenon_L65_ [OF z_Hh z_Hwh])
          qed
          have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
          by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
          have z_Hys: "?z_hys"
          by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
          thus "?z_hys" .
         qed
        qed
       qed
      qed
     qed
    next
     assume z_Hgc:"?z_hgc" (is "?z_hgd|?z_hgk")
     show FALSE
     proof (rule zenon_or [OF z_Hgc])
      assume z_Hgd:"?z_hgd" (is "?z_hge&?z_hgf")
      have z_Hgf: "?z_hgf" (is "?z_hgg|?z_hgi")
      by (rule zenon_and_1 [OF z_Hgd])
      show FALSE
      proof (rule zenon_or [OF z_Hgf])
       assume z_Hgg:"?z_hgg" (is "_=?z_hgh")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L21_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgg z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L22_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgg z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
         by (rule zenon_and_1 [OF z_Hey])
         show FALSE
         proof (rule zenon_or [OF z_Hfb])
          assume z_Hfc:"?z_hfc"
          show FALSE
          by (rule zenon_L54_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgg z_Ht z_Hw])
         next
          assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
          have z_Hfj: "?z_hfj"
          by (rule zenon_and_1 [OF z_Hfh])
          have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
          by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
          have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
          by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
          by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
          show FALSE
          proof (rule notE [OF z_Hyr])
           have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
           proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
            assume z_Hsr:"(?z_hem~=?z_hjx)"
            show FALSE
            by (rule zenon_L53_ [OF z_Hsr z_Hhh z_Ht z_Hgg z_Hc z_Hjb z_Hr])
           qed
           have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
           proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
            assume z_Hwh:"(?z_heq~=?z_hjy)"
            show FALSE
            by (rule zenon_L65_ [OF z_Hh z_Hwh])
           qed
           have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
           by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
           have z_Hys: "?z_hys"
           by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
           thus "?z_hys" .
          qed
         qed
        qed
       qed
      next
       assume z_Hgi:"?z_hgi" (is "_=?z_hgj")
       show FALSE
       proof (rule zenon_or [OF z_Hu])
        assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
        show FALSE
        by (rule zenon_L25_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgi z_Ht z_Hdi])
       next
        assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
        show FALSE
        proof (rule zenon_or [OF z_Hes])
         assume z_Het:"?z_het" (is "?z_heu=_")
         show FALSE
         by (rule zenon_L26_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgi z_Ht z_Hdi])
        next
         assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
         have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
         by (rule zenon_and_1 [OF z_Hey])
         show FALSE
         proof (rule zenon_or [OF z_Hfb])
          assume z_Hfc:"?z_hfc"
          show FALSE
          by (rule zenon_L56_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgi z_Ht z_Hw])
         next
          assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
          have z_Hfj: "?z_hfj"
          by (rule zenon_and_1 [OF z_Hfh])
          have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
          by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
          have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
          by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
          have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
          by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
          have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
          by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
          show FALSE
          proof (rule notE [OF z_Hyr])
           have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
           proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
            assume z_Hsr:"(?z_hem~=?z_hjx)"
            show FALSE
            by (rule zenon_L55_ [OF z_Hsr z_Hhh z_Ht z_Hgi z_Hc z_Hjb z_Hr])
           qed
           have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
           proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
            assume z_Hwh:"(?z_heq~=?z_hjy)"
            show FALSE
            by (rule zenon_L65_ [OF z_Hh z_Hwh])
           qed
           have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
           by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
           have z_Hys: "?z_hys"
           by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
           thus "?z_hys" .
          qed
         qed
        qed
       qed
      qed
     next
      assume z_Hgk:"?z_hgk" (is "?z_hgl|?z_hgs")
      show FALSE
      proof (rule zenon_or [OF z_Hgk])
       assume z_Hgl:"?z_hgl" (is "?z_hgm&?z_hgn")
       have z_Hgn: "?z_hgn" (is "?z_hgo|?z_hgq")
       by (rule zenon_and_1 [OF z_Hgl])
       show FALSE
       proof (rule zenon_or [OF z_Hgn])
        assume z_Hgo:"?z_hgo" (is "_=?z_hgp")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L29_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgo z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L30_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgo z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L58_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgo z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfj: "?z_hfj"
           by (rule zenon_and_1 [OF z_Hfh])
           have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
           by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule notE [OF z_Hyr])
            have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
             assume z_Hsr:"(?z_hem~=?z_hjx)"
             show FALSE
             by (rule zenon_L57_ [OF z_Hsr z_Hhh z_Ht z_Hgo z_Hc z_Hjb z_Hr])
            qed
            have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
             assume z_Hwh:"(?z_heq~=?z_hjy)"
             show FALSE
             by (rule zenon_L65_ [OF z_Hh z_Hwh])
            qed
            have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
            by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
            have z_Hys: "?z_hys"
            by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
            thus "?z_hys" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgq:"?z_hgq" (is "_=?z_hgr")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L33_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgq z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L34_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgq z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L60_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgq z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfj: "?z_hfj"
           by (rule zenon_and_1 [OF z_Hfh])
           have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
           by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule notE [OF z_Hyr])
            have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
             assume z_Hsr:"(?z_hem~=?z_hjx)"
             show FALSE
             by (rule zenon_L59_ [OF z_Hsr z_Hhh z_Ht z_Hgq z_Hc z_Hjb z_Hr])
            qed
            have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
             assume z_Hwh:"(?z_heq~=?z_hjy)"
             show FALSE
             by (rule zenon_L65_ [OF z_Hh z_Hwh])
            qed
            have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
            by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
            have z_Hys: "?z_hys"
            by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
            thus "?z_hys" .
           qed
          qed
         qed
        qed
       qed
      next
       assume z_Hgs:"?z_hgs" (is "?z_hgt&?z_hgu")
       have z_Hgu: "?z_hgu" (is "?z_hgv|?z_hgx")
       by (rule zenon_and_1 [OF z_Hgs])
       show FALSE
       proof (rule zenon_or [OF z_Hgu])
        assume z_Hgv:"?z_hgv" (is "_=?z_hgw")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L37_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgv z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L38_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgv z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L62_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgv z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfj: "?z_hfj"
           by (rule zenon_and_1 [OF z_Hfh])
           have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
           by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule notE [OF z_Hyr])
            have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
             assume z_Hsr:"(?z_hem~=?z_hjx)"
             show FALSE
             by (rule zenon_L61_ [OF z_Hsr z_Hhh z_Ht z_Hgv z_Hc z_Hjb z_Hr])
            qed
            have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
             assume z_Hwh:"(?z_heq~=?z_hjy)"
             show FALSE
             by (rule zenon_L65_ [OF z_Hh z_Hwh])
            qed
            have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
            by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
            have z_Hys: "?z_hys"
            by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
            thus "?z_hys" .
           qed
          qed
         qed
        qed
       next
        assume z_Hgx:"?z_hgx" (is "_=?z_hgy")
        show FALSE
        proof (rule zenon_or [OF z_Hu])
         assume z_Hel:"?z_hel" (is "?z_hem=?z_heq")
         show FALSE
         by (rule zenon_L41_ [OF z_Hh z_He z_Hks z_Hw z_Hel z_Hr z_Hc z_Hgx z_Ht z_Hdi])
        next
         assume z_Hes:"?z_hes" (is "?z_het|?z_hey")
         show FALSE
         proof (rule zenon_or [OF z_Hes])
          assume z_Het:"?z_het" (is "?z_heu=_")
          show FALSE
          by (rule zenon_L42_ [OF z_Hf z_He z_Hks z_Hlt z_Hw z_Het z_Hr z_Hc z_Hgx z_Ht z_Hdi])
         next
          assume z_Hey:"?z_hey" (is "?z_hez&?z_hfb")
          have z_Hfb: "?z_hfb" (is "?z_hfc|?z_hfh")
          by (rule zenon_and_1 [OF z_Hey])
          show FALSE
          proof (rule zenon_or [OF z_Hfb])
           assume z_Hfc:"?z_hfc"
           show FALSE
           by (rule zenon_L64_ [OF z_He z_Hh z_Hf z_Htx z_Hdi z_Hfc z_Hr z_Hc z_Hgx z_Ht z_Hw])
          next
           assume z_Hfh:"?z_hfh" (is "?z_hfi&?z_hfj")
           have z_Hfj: "?z_hfj"
           by (rule zenon_and_1 [OF z_Hfh])
           have z_Hyr: "(~(((?z_hed[a_punde_1a])[''parent'']) <= ?z_hjy))" (is "~?z_hys")
           by (rule subst [where P="(\<lambda>zenon_Vbhy. (~(((zenon_Vbhy[a_punde_1a])[''parent'']) <= ?z_hjy)))", OF z_He z_Hyq])
           have z_Hhh: "(DOMAIN(a_pchash_primea)=PROCESSES)" (is "?z_hhi=_")
           by (rule zenon_in_funcset_1 [of "a_pchash_primea" "PROCESSES" "{''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ?z_hby, ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}", OF z_Hw])
           have z_Hla: "(?z_hed \\in FuncSet(PROCESSES, FieldSet))" (is "?z_hla")
           by (rule subst [where P="(\<lambda>zenon_Vbtx. (zenon_Vbtx \\in FuncSet(PROCESSES, FieldSet)))", OF z_He z_Hdi])
           have z_Hjb: "(DOMAIN(?z_hed)=PROCESSES)" (is "?z_hjc=_")
           by (rule zenon_in_funcset_1 [of "?z_hed" "PROCESSES" "FieldSet", OF z_Hla])
           show FALSE
           proof (rule notE [OF z_Hyr])
            have z_Huy: "(((a_aunde_Fa[a_punde_1a])[''parent''])=((?z_hed[a_punde_1a])[''parent'']))" (is "?z_hem=?z_hjx")
            proof (rule zenon_nnpp [of "(?z_hem=?z_hjx)"])
             assume z_Hsr:"(?z_hem~=?z_hjx)"
             show FALSE
             by (rule zenon_L63_ [OF z_Hsr z_Hhh z_Ht z_Hgx z_Hc z_Hjb z_Hr])
            qed
            have z_Hyz: "(((a_bunde_Fa[a_punde_1a])[''parent''])=?z_hjy)" (is "?z_heq=_")
            proof (rule zenon_nnpp [of "(?z_heq=?z_hjy)"])
             assume z_Hwh:"(?z_heq~=?z_hjy)"
             show FALSE
             by (rule zenon_L65_ [OF z_Hh z_Hwh])
            qed
            have z_Hza: "(?z_hjx <= ?z_heq)" (is "?z_hza")
            by (rule subst [where P="(\<lambda>zenon_Vxmy. (zenon_Vxmy <= ?z_heq))", OF z_Huy], fact z_Hfj)
            have z_Hys: "?z_hys"
            by (rule subst [where P="(\<lambda>zenon_Vymy. (?z_hjx <= zenon_Vymy))", OF z_Hyz], fact z_Hza)
            thus "?z_hys" .
           qed
          qed
         qed
        qed
       qed
      qed
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 514"; *} qed
lemma ob'546:
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
assumes v'102: "(Inv)"
assumes v'103: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'105: "((((((fapply ((pc), (p))) = (''F3''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U1''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U1'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U1'')]))))))) | (((((fapply ((pc), (p))) = (''F3U2''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U2'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U2'')]))))))) | (((((fapply ((pc), (p))) = (''F3U7''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U7'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U7'')]))))))) | (((((fapply ((pc), (p))) = (''F3U8''))) \<and> ((((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F4U8'')]))) \<or> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F7U8'')]))))))))"
assumes v'106: "((((a_aunde_Fhash_primea :: c)) = ([(a_aunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((a_uunde_Fa), (p)))))])))"
assumes v'107: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'108: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'109: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'110: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'111: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
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
shows "((((fapply (((a_chash_primea :: c)), (a_punde_1a))) = (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_chash_primea :: c)), (a_punde_1a))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Fhash_primea :: c)), (a_punde_1a))), (fapply (((a_chash_primea :: c)), (a_punde_1a)))))))))))"(is "PROP ?ob'546")
proof -
ML_command {* writeln "*** TLAPS ENTER 546"; *}
show "PROP ?ob'546"

(* BEGIN ZENON INPUT
;; file=F3Inv_proof.tlaps/tlapm_0ab8c6.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >F3Inv_proof.tlaps/tlapm_0ab8c6.znn.out
;; obligation #546
$hyp "v'102" Inv
$hyp "v'103" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'105" (\/ (/\ (= (TLA.fapply pc p) "F3") (\/ (= a_pchash_primea
(TLA.except pc p "F4")) (= a_pchash_primea (TLA.except pc p "F7"))))
(/\ (= (TLA.fapply pc p) "F3U1") (\/ (= a_pchash_primea
(TLA.except pc p "F4U1")) (= a_pchash_primea (TLA.except pc p "F7U1"))))
(/\ (= (TLA.fapply pc p) "F3U2") (\/ (= a_pchash_primea
(TLA.except pc p "F4U2")) (= a_pchash_primea (TLA.except pc p "F7U2"))))
(/\ (= (TLA.fapply pc p) "F3U7") (\/ (= a_pchash_primea
(TLA.except pc p "F4U7")) (= a_pchash_primea (TLA.except pc p "F7U7"))))
(/\ (= (TLA.fapply pc p) "F3U8") (\/ (= a_pchash_primea
(TLA.except pc p "F4U8")) (= a_pchash_primea
(TLA.except pc p "F7U8")))))
$hyp "v'106" (= a_aunde_Fhash_primea
(TLA.except a_aunde_Fa p (TLA.fapply F (TLA.fapply a_uunde_Fa p))))
$hyp "v'107" (= a_Fhash_primea F)
$hyp "v'108" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'109" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'110" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'111" (= a_vunde_Uhash_primea
a_vunde_Ua)
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
 have z_Hg:"(a_uunde_Fhash_primea=a_uunde_Fa)"
 using v'108 by blast
 have z_Hm:"(a_chash_primea=a_ca)"
 using v'114 by blast
 have z_Hf:"(a_Fhash_primea=F)"
 using v'107 by blast
 have z_Hu:"(((a_ca[a_punde_1a])=(a_uunde_Fa[a_punde_1a]))|((((F[(a_ca[a_punde_1a])])[''bit''])=1)|((((F[(a_ca[a_punde_1a])])[''bit''])=0)&((((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank'']))|((((F[(a_uunde_Fa[a_punde_1a])])[''rank''])=((F[(a_ca[a_punde_1a])])[''rank'']))&((a_ca[a_punde_1a]) <= (a_uunde_Fa[a_punde_1a])))))))" (is "?z_hbc|?z_hbg")
 using v'156 by blast
 have zenon_L1_: "(a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_chash_primea=a_ca) ==> ((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a])) ==> ?z_hbc ==> FALSE" (is "?z_hg ==> ?z_hm ==> ?z_hby ==> _ ==> FALSE")
 proof -
  assume z_Hg:"?z_hg"
  assume z_Hm:"?z_hm"
  assume z_Hby:"?z_hby" (is "?z_hbz~=?z_hca")
  assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
  have z_Hcb: "(?z_hbd~=?z_hca)"
  by (rule subst [where P="(\<lambda>zenon_Vub. ((zenon_Vub[a_punde_1a])~=?z_hca))", OF z_Hm z_Hby])
  have z_Hcg: "(?z_hbd~=?z_hbf)"
  by (rule subst [where P="(\<lambda>zenon_Vub. (?z_hbd~=(zenon_Vub[a_punde_1a])))", OF z_Hg z_Hcb])
  show FALSE
  by (rule notE [OF z_Hcg z_Hbc])
 qed
 have zenon_L2_: "(a_chash_primea=a_ca) ==> (a_Fhash_primea=F) ==> (((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])~=1) ==> (((F[(a_ca[a_punde_1a])])[''bit''])=1) ==> FALSE" (is "?z_hm ==> ?z_hf ==> ?z_hcj ==> ?z_hbh ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hf:"?z_hf"
  assume z_Hcj:"?z_hcj" (is "?z_hck~=?z_hbl")
  assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
  have z_Hcm: "(((F[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl)" (is "?z_hcn~=_")
  by (rule subst [where P="(\<lambda>zenon_Vec. (((zenon_Vec[(a_chash_primea[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hf z_Hcj])
  have z_Hcu: "(?z_hbi~=?z_hbl)"
  by (rule subst [where P="(\<lambda>zenon_Vec. (((F[(zenon_Vec[a_punde_1a])])[''bit''])~=?z_hbl))", OF z_Hm z_Hcm])
  show FALSE
  by (rule notE [OF z_Hcu z_Hbh])
 qed
 have zenon_L3_: "(a_chash_primea=a_ca) ==> (a_uunde_Fhash_primea=a_uunde_Fa) ==> (a_Fhash_primea=F) ==> (~(((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))) ==> (((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fa[a_punde_1a])])[''rank''])) ==> FALSE" (is "?z_hm ==> ?z_hg ==> ?z_hf ==> ?z_hda ==> ?z_hbq ==> FALSE")
 proof -
  assume z_Hm:"?z_hm"
  assume z_Hg:"?z_hg"
  assume z_Hf:"?z_hf"
  assume z_Hda:"?z_hda" (is "~?z_hdb")
  assume z_Hbq:"?z_hbq"
  have z_Hdf: "(~(((F[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdg")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((zenon_Vqb[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hda])
  have z_Hdo: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdp")
  by (rule subst [where P="(\<lambda>zenon_Vqb. (~(((F[(zenon_Vqb[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hm z_Hdf])
  have z_Hdw: "(~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])))" (is "~?z_hdx")
  by (rule subst [where P="(\<lambda>zenon_Vrb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((zenon_Vrb[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))))", OF z_Hf z_Hdo])
  have z_Heg: "(~?z_hbq)"
  by (rule subst [where P="(\<lambda>zenon_Vsb. (~(((F[(a_ca[a_punde_1a])])[''rank'']) < ((F[(zenon_Vsb[a_punde_1a])])[''rank'']))))", OF z_Hg z_Hdw])
  show FALSE
  by (rule notE [OF z_Heg z_Hbq])
 qed
 assume z_Hv:"(~(((a_chash_primea[a_punde_1a])=(a_uunde_Fhash_primea[a_punde_1a]))|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=1)|((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''bit''])=0)&((((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']) < ((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank'']))|((((a_Fhash_primea[(a_uunde_Fhash_primea[a_punde_1a])])[''rank''])=((a_Fhash_primea[(a_chash_primea[a_punde_1a])])[''rank'']))&((a_chash_primea[a_punde_1a]) <= (a_uunde_Fhash_primea[a_punde_1a]))))))))" (is "~(?z_hep|?z_heq)")
 have z_Hby: "((a_chash_primea[a_punde_1a])~=(a_uunde_Fhash_primea[a_punde_1a]))" (is "?z_hbz~=?z_hca")
 by (rule zenon_notor_0 [OF z_Hv])
 have z_Hey: "(~?z_heq)" (is "~(?z_her|?z_hes)")
 by (rule zenon_notor_1 [OF z_Hv])
 have z_Hcj: "(((a_Fhash_primea[?z_hbz])[''bit''])~=1)" (is "?z_hck~=?z_hbl")
 by (rule zenon_notor_0 [OF z_Hey])
 have z_Hez: "(~?z_hes)" (is "~(?z_het&?z_heu)")
 by (rule zenon_notor_1 [OF z_Hey])
 show FALSE
 proof (rule zenon_notand [OF z_Hez])
  assume z_Hfa:"(?z_hck~=0)"
  show FALSE
  proof (rule zenon_or [OF z_Hu])
   assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
   show FALSE
   by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
  next
   assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
   show FALSE
   proof (rule zenon_or [OF z_Hbg])
    assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
    show FALSE
    by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
   next
    assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
    have z_Hbn: "?z_hbn" (is "?z_hbi=_")
    by (rule zenon_and_0 [OF z_Hbm])
    have z_Hfb: "(((F[?z_hbz])[''bit''])~=0)" (is "?z_hcn~=_")
    by (rule subst [where P="(\<lambda>zenon_Vzc. (((zenon_Vzc[?z_hbz])[''bit''])~=0))", OF z_Hf z_Hfa])
    have z_Hfh: "(?z_hbi~=0)"
    by (rule subst [where P="(\<lambda>zenon_Vnd. (((F[(zenon_Vnd[a_punde_1a])])[''bit''])~=0))", OF z_Hm z_Hfb])
    show FALSE
    by (rule notE [OF z_Hfh z_Hbn])
   qed
  qed
 next
  assume z_Hfo:"(~?z_heu)" (is "~(?z_hdb|?z_hev)")
  have z_Hda: "(~?z_hdb)"
  by (rule zenon_notor_0 [OF z_Hfo])
  have z_Hfp: "(~?z_hev)" (is "~(?z_hew&?z_hex)")
  by (rule zenon_notor_1 [OF z_Hfo])
  show FALSE
  proof (rule zenon_notand [OF z_Hfp])
   assume z_Hfq:"(((a_Fhash_primea[?z_hca])[''rank''])~=((a_Fhash_primea[?z_hbz])[''rank'']))" (is "?z_hdd~=?z_hdc")
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbw: "?z_hbw" (is "?z_hbt=?z_hbr")
      by (rule zenon_and_0 [OF z_Hbv])
      have z_Hfr: "(((F[?z_hca])[''rank''])~=?z_hdc)" (is "?z_hdy~=_")
      by (rule subst [where P="(\<lambda>zenon_Vfc. (((zenon_Vfc[?z_hca])[''rank''])~=?z_hdc))", OF z_Hf z_Hfq])
      have z_Hfx: "(?z_hbt~=?z_hdc)"
      by (rule subst [where P="(\<lambda>zenon_Vtc. (((F[(zenon_Vtc[a_punde_1a])])[''rank''])~=?z_hdc))", OF z_Hg z_Hfr])
      have z_Hge: "(?z_hbt~=((F[?z_hbz])[''rank'']))" (is "_~=?z_hdh")
      by (rule subst [where P="(\<lambda>zenon_Vuc. (?z_hbt~=((zenon_Vuc[?z_hbz])[''rank''])))", OF z_Hf z_Hfx])
      have z_Hgk: "(?z_hbt~=?z_hbr)"
      by (rule subst [where P="(\<lambda>zenon_Vvc. (?z_hbt~=((F[(zenon_Vvc[a_punde_1a])])[''rank''])))", OF z_Hm z_Hge])
      show FALSE
      by (rule notE [OF z_Hgk z_Hbw])
     qed
    qed
   qed
  next
   assume z_Hgr:"(~?z_hex)"
   show FALSE
   proof (rule zenon_or [OF z_Hu])
    assume z_Hbc:"?z_hbc" (is "?z_hbd=?z_hbf")
    show FALSE
    by (rule zenon_L1_ [OF z_Hg z_Hm z_Hby z_Hbc])
   next
    assume z_Hbg:"?z_hbg" (is "?z_hbh|?z_hbm")
    show FALSE
    proof (rule zenon_or [OF z_Hbg])
     assume z_Hbh:"?z_hbh" (is "?z_hbi=_")
     show FALSE
     by (rule zenon_L2_ [OF z_Hm z_Hf z_Hcj z_Hbh])
    next
     assume z_Hbm:"?z_hbm" (is "?z_hbn&?z_hbp")
     have z_Hbp: "?z_hbp" (is "?z_hbq|?z_hbv")
     by (rule zenon_and_1 [OF z_Hbm])
     show FALSE
     proof (rule zenon_or [OF z_Hbp])
      assume z_Hbq:"?z_hbq"
      show FALSE
      by (rule zenon_L3_ [OF z_Hm z_Hg z_Hf z_Hda z_Hbq])
     next
      assume z_Hbv:"?z_hbv" (is "?z_hbw&?z_hbx")
      have z_Hbx: "?z_hbx"
      by (rule zenon_and_1 [OF z_Hbv])
      have z_Hgs: "(~((a_ca[a_punde_1a]) <= ?z_hca))" (is "~?z_hgt")
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((zenon_Vob[a_punde_1a]) <= ?z_hca)))", OF z_Hm z_Hgr])
      have z_Hgz: "(~?z_hbx)"
      by (rule subst [where P="(\<lambda>zenon_Vob. (~((a_ca[a_punde_1a]) <= (zenon_Vob[a_punde_1a]))))", OF z_Hg z_Hgs])
      show FALSE
      by (rule notE [OF z_Hgz z_Hbx])
     qed
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 546"; *} qed
lemma ob'584:
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
(* usable definition InvU5 su