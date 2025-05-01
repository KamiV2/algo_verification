(* automatically generated -- do not edit manually *)
theory tlapm_ac1abc imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

lemma ob'233: (* 675d96882a823bdfceab2b1e720e3f35 *)
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
(* usable definition Decide suppressed *)
(* usable definition Step suppressed *)
(* usable definition Next suppressed *)
(* usable definition Spec suppressed *)
(* usable definition Valid_F suppressed *)
(* usable definition Valid_u_F suppressed *)
(* usable definition Valid_a_F suppressed *)
(* usable definition Valid_b_F suppressed *)
(* usable definition Valid_a_U suppressed *)
(* usable definition Valid_c suppressed *)
(* usable definition Valid_d suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'96: "(Inv)"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'98: "((a_U6a ((p))))"
assumes v'101: "((((a_hef12f5554781c2213604492856f635a :: c)) \<and> (TypeOK)))"
assumes v'102: "(((fapply ((pc), (p))) = (''U6'')))"
assumes v'109: "((((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Ua), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))]))) & ((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : (((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))))))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))) | (((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Ua), (p))), (''rank'')))) @@ (''bit'' :> ((Succ[0])))))]))) & ((((a_Mhash_primea :: c)) = (M))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))))"
assumes v'113: "((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Ua), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))])))"
assumes v'114: "((((a_Mhash_primea :: c)) = (subsetOf(([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]), %t. (\<exists> told \<in> (M) : (((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg''))))))))))))"
assumes v'115: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')])))"
assumes v'116: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'117: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'118: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'119: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'120: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'121: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'122: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'123: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'124: "((((a_dhash_primea :: c)) = (d)))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'144: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''U6'')))"
fixes told
assumes told_in : "(told \<in> (M))"
assumes v'149: "(((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))"
assumes v'152: "(\<forall> i \<in> (NodeSet) : (\<forall> j \<in> (NodeSet) : ((((SameRoot ((told), (i), (j)))) \<Rightarrow> ((SameRoot ((t), (i), (j))))))))"
assumes v'153: "(((((((((((((((\<forall> p_1 \<in> (PROCESSES) : (\<forall> t_1 \<in> (M) : (((((fapply ((pc), (p_1))) = (''U6''))) \<Rightarrow> ((((fapply ((fapply ((t_1), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t_1), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t_1), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t_1), (fapply ((fapply ((fapply ((t_1), (''arg''))), (p_1))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p_1)))))) & ((SameRoot ((t_1), (fapply ((fapply ((fapply ((t_1), (''arg''))), (p_1))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p_1)))))) & (((fapply ((a_uunde_Ua), (p_1))) \<noteq> (fapply ((a_vunde_Ua), (p_1))))) & (((((fapply ((fapply ((a_aunde_Ua), (p_1))), (''bit''))) = ((0)))) \<Rightarrow> ((SameRoot ((t_1), (fapply ((fapply ((a_aunde_Ua), (p_1))), (''parent''))), (fapply ((a_uunde_Ua), (p_1)))))))) & (((((fapply ((fapply ((a_bunde_Ua), (p_1))), (''bit''))) = ((0)))) \<Rightarrow> ((SameRoot ((t_1), (fapply ((fapply ((a_bunde_Ua), (p_1))), (''parent''))), (fapply ((a_vunde_Ua), (p_1)))))))) & (((((fapply ((fapply ((t_1), (''ret''))), (p_1))) = (ACK))) \<Rightarrow> ((SameRoot ((t_1), (fapply ((a_uunde_Ua), (p_1))), (fapply ((a_vunde_Ua), (p_1)))))))))))))) \<and> (a_Validunde_ca))) \<and> (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))))) \<and> (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))))) \<and> (((M) \<in> ((SUBSET ([''sigma'' : (subsetOf(([(NodeSet) \<rightarrow> (NodeSet)]), %A. (\<forall> i \<in> (NodeSet) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))), ''ret'' : ([(PROCESSES) \<rightarrow> (((((NodeSet) \<union> ({(BOT)}))) \<union> ({(ACK)})))]), ''op'' : ([(PROCESSES) \<rightarrow> ({(''F''), (''U''), (BOT)})]), ''arg'' : ([(PROCESSES) \<rightarrow> ((((({(BOT)}) \<union> (NodeSet))) \<union> (((NodeSet) \<times> (NodeSet)))))])]))))))) \<and> (((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))))) \<and> (a_Validunde_aunde_Ua))) \<and> (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ([''parent'' : (NodeSet), ''rank'' : (Nat), ''bit'' : ({((0)), ((Succ[0]))})])])))))"
assumes v'154: "(((((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) \<and> (((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)})))))"
assumes v'155: "(((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (fapply ((fapply ((told), (''ret''))), (a_punde_1a)))))"
assumes v'156: "(((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U'')))"
assumes v'157: "(((((fapply ((fapply (((a_aunde_Uhash_primea :: c)), (a_punde_1a))), (''bit''))) = ((0)))) \<Rightarrow> ((SameRoot ((t), (fapply ((fapply (((a_aunde_Uhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))))"
shows "(((((fapply ((fapply (((a_bunde_Uhash_primea :: c)), (a_punde_1a))), (''bit''))) = ((0)))) \<Rightarrow> ((SameRoot ((t), (fapply ((fapply (((a_bunde_Uhash_primea :: c)), (a_punde_1a))), (''parent''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))))"(is "PROP ?ob'233")
proof -
show "PROP ?ob'233"
using assms by auto
qed
end
