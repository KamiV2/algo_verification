(* automatically generated -- do not edit manually *)
theory TypeSafety_proof imports Constant Zenon begin
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

lemma ob'85:
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
(* usable definition Next suppressed *)
(* usable definition Spec suppressed *)
assumes v'54: "((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (((F) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> ([''parent'' : ((isa_peri_peri_a (((Succ[0])), (N)))), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ([''parent'' : ((isa_peri_peri_a (((Succ[0])), (N)))), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ([''parent'' : ((isa_peri_peri_a (((Succ[0])), (N)))), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ([''parent'' : ((isa_peri_peri_a (((Succ[0])), (N)))), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ([''parent'' : ((isa_peri_peri_a (((Succ[0])), (N)))), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((M) \<in> ((SUBSET (Configs))))))"
assumes v'55: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'77: "(((((((fapply ((pc), (p))) = (''F4''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F5'')]))))) | (((((fapply ((pc), (p))) = (''F4U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F5U1'')]))))) | (((((fapply ((pc), (p))) = (''F4U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F5U2'')]))))) | (((((fapply ((pc), (p))) = (''F4U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F5U7'')]))))) | (((((fapply ((pc), (p))) = (''F4U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F5U8'')])))))) & (cond((((((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((Succ[0])))) \<and> (((fapply ((pc), (p))) = (''F4''))))), ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((told), (''arg''))), (p)))))]))))) \<and> (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))))) \<and> (((fapply ((t), (''arg''))) = (fapply ((told), (''arg''))))))))))))), ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'78: "((((a_bunde_Fhash_primea :: c)) = ([(a_bunde_Fa) EXCEPT ![(p)] = (fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))])))"
assumes v'79: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'80: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'81: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'82: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'83: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'84: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'85: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'86: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'87: "((((a_dhash_primea :: c)) = (d)))"
shows "((((a_pchash_primea :: c)) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})])))"(is "PROP ?ob'85")
proof -
ML_command {* writeln "*** TLAPS ENTER 85"; *}
show "PROP ?ob'85"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 85"; *} qed
end
