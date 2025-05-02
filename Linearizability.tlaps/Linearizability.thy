(* automatically generated -- do not edit manually *)
theory Linearizability imports Constant Zenon begin
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

lemma ob'1:
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
assumes v'101: "((((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))))"
assumes v'102: "(((pc) = ([ p \<in> (PROCESSES)  \<mapsto> (''0'')])))"
assumes v'103: "(((F) = ([ i \<in> (NodeSet)  \<mapsto> (((''parent'' :> (i)) @@ (''rank'' :> ((0))) @@ (''bit'' :> ((Succ[0])))))])))"
assumes v'104: "(((M) = ({(((''sigma'' :> ([ i \<in> (NodeSet)  \<mapsto> (i)])) @@ (''ret'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)])) @@ (''op'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)])) @@ (''arg'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)]))))})))"
assumes v'128: "(TypeOK)"
assumes v'129: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))))))"
assumes v'130: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))))))))"
assumes v'131: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))))))))"
assumes v'132: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p)))))))))))))"
assumes v'133: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p)))))))) & (((fapply ((a_uunde_Ua), (p))) \<noteq> (fapply ((a_vunde_Ua), (p))))))))))"
assumes v'134: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU5All ((p), (t)))))))))"
assumes v'135: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU6All ((p), (t)))))))))"
assumes v'136: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))))))))"
assumes v'137: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))))))))"
assumes v'138: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''UR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p)))))))))))"
assumes v'139: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p))) = (BOT)))))))))"
assumes v'140: "(\<forall> t \<in> (M) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply ((F), (i))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((F), (i))), (''parent''))))))))) & (((((fapply ((fapply ((F), (i))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (i))))))))"
assumes v'141: "(((M) \<noteq> ({})))"
assumes v'142: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))))))"
assumes v'143: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))))))"
assumes v'144: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))))))"
assumes v'145: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))))))"
assumes v'146: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF5All ((p), (t)))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))))))"
assumes v'147: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))))))"
assumes v'148: "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))))))"
shows "((TypeOK) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p))) = (BOT))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''F1U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF2All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF2All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF3All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF3All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF4All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF4All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF5All ((p), (t)))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF6All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF6All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF7All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF7All ((p), (t)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p)))))))) & (((fapply ((a_uunde_Ua), (p))) \<noteq> (fapply ((a_vunde_Ua), (p)))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU5All ((p), (t))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU6All ((p), (t))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t))))))))) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : (((((fapply ((pc), (p))) = (''UR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))))) & (\<forall> t \<in> (M) : (\<forall> i \<in> (NodeSet) : ((((((fapply ((fapply ((F), (i))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((F), (i))), (''parent''))))))))) & (((((fapply ((fapply ((F), (i))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''sigma''))), (i))) = (i)))))))) & (((M) \<noteq> ({}))))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=Linearizability.tlaps/tlapm_d530a7.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >Linearizability.tlaps/tlapm_d530a7.znn.out
;; obligation #1
$hyp "v'101" (/\ (TLA.in a_aunde_Fa (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fa (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Fa
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Ua
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_vunde_Ua
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_ca
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in d
(TLA.FuncSet PROCESSES NodeSet)))
$hyp "v'102" (= pc (TLA.Fcn PROCESSES ((p) "0")))
$hyp "v'103" (= F
(TLA.Fcn NodeSet ((i) (TLA.record "parent" i "rank" 0 "bit" (TLA.fapply TLA.Succ 0)))))
$hyp "v'104" (= M
(TLA.set (TLA.record "sigma" (TLA.Fcn NodeSet ((i) i)) "ret" (TLA.Fcn PROCESSES ((p) BOT)) "op" (TLA.Fcn PROCESSES ((p) BOT)) "arg" (TLA.Fcn PROCESSES ((p) BOT)))))
$hyp "v'128" TypeOK
$hyp "v'129" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"FR") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) (TLA.fapply a_uunde_Fa p))
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
(TLA.fapply a_vunde_Ua p)))))))))
$hyp "v'130" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p)
(TLA.prod NodeSet NodeSet))))))))
$hyp "v'131" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p
t)))))))
$hyp "v'132" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U3") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(SameRoot t (TLA.fapply a_uunde_Ua p)
(TLA.fapply a_vunde_Ua p)))))))))
$hyp "v'133" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U4") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (=> (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(SameRoot t (TLA.fapply a_uunde_Ua p) (TLA.fapply a_vunde_Ua p)))
(-. (= (TLA.fapply a_uunde_Ua p)
(TLA.fapply a_vunde_Ua p)))))))))
$hyp "v'134" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU5All p
t)))))))
$hyp "v'135" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U6") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU6All p
t)))))))
$hyp "v'136" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U7") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p
t)))))))
$hyp "v'137" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"U8") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p
t)))))))
$hyp "v'138" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p)
"UR") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (SameRoot t (TLA.fapply a_uunde_Ua p)
(TLA.fapply a_vunde_Ua p))))))))
$hyp "v'139" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"0") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p)
BOT))))))))
$hyp "v'140" (TLA.bAll M ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply F i) "bit")
0) (= (TLA.fapply (TLA.fapply t "sigma") i)
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply F i) "parent"))))
(=> (= (TLA.fapply (TLA.fapply F i) "bit") (TLA.fapply TLA.Succ 0))
(= (TLA.fapply (TLA.fapply t "sigma") i) i)))))))
$hyp "v'141" (-. (= M
TLA.emptyset))
$hyp "v'142" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p))))
(=> (= (TLA.fapply pc p) "F1U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p)
(TLA.fapply a_vunde_Ua p)))))))))
$hyp "v'143" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
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
(InvF2All p
t))))))))
$hyp "v'144" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F3") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
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
(InvF3All p
t))))))))
$hyp "v'145" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F4") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
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
(InvF4All p
t))))))))
$hyp "v'146" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.cup (TLA.set BOT)
NodeSet)) (= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF5All p t)
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fa p) "bit") 0)
(= (TLA.fapply (TLA.fapply t "ret") p) BOT))
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fa p) "bit") (TLA.fapply TLA.Succ 0))
(= (TLA.fapply (TLA.fapply t "ret") p)
(TLA.fapply (TLA.fapply a_aunde_Fa p) "parent"))))) (=> (= (TLA.fapply pc p)
"F5U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
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
(InvF5All p
t))))))))
$hyp "v'147" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F6") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
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
(InvF6All p
t))))))))
$hyp "v'148" (TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p)
"F7") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
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
(InvF7All p t))))))))
$goal (/\ TypeOK
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "0")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p) BOT))))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p))))
(=> (= (TLA.fapply pc p) "F1U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U2") (/\ (= (TLA.fapply (TLA.fapply t "ret") p)
BOT) (= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_vunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t) (SameRoot t (TLA.fapply a_ca p) (TLA.fapply a_uunde_Ua p))))
(=> (= (TLA.fapply pc p) "F1U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t) (SameRoot t (TLA.fapply a_ca p)
(TLA.fapply a_vunde_Ua p)))))))))
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
(InvF2All p t))))))))
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
(InvF3All p t))))))))
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
(InvF4All p t))))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "F5")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.cup (TLA.set BOT)
NodeSet)) (= (TLA.fapply (TLA.fapply t "op") p) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) NodeSet) (SameRoot t
(TLA.fapply a_ca p) (TLA.fapply (TLA.fapply t "arg") p)) (InvF5All p t)
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fa p) "bit") 0)
(= (TLA.fapply (TLA.fapply t "ret") p) BOT))
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fa p) "bit") (TLA.fapply TLA.Succ 0))
(= (TLA.fapply (TLA.fapply t "ret") p)
(TLA.fapply (TLA.fapply a_aunde_Fa p) "parent"))))) (=> (= (TLA.fapply pc p)
"F5U1") (/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
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
(InvF5All p t))))))))
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
(InvF6All p t))))))))
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
(InvF7All p t))))))))
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
(TLA.fapply a_vunde_Ua p)))))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU2All p t)))))))
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
(-. (= (TLA.fapply a_uunde_Ua p) (TLA.fapply a_vunde_Ua p)))))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U5")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU5All p t)))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U6")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU6All p t)))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU7All p t)))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(InvU8All p t)))))))
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (=> (= (TLA.fapply pc p) "UR")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) ACK)
(= (TLA.fapply (TLA.fapply t "op") p) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p) (TLA.prod NodeSet NodeSet))
(SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ 0))
(TLA.fapply a_uunde_Ua p)) (SameRoot t
(TLA.fapply (TLA.fapply (TLA.fapply t "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_vunde_Ua p)) (SameRoot t (TLA.fapply a_uunde_Ua p)
(TLA.fapply a_vunde_Ua p))))))))
(TLA.bAll M ((t) (TLA.bAll NodeSet ((i) (/\ (=> (= (TLA.fapply (TLA.fapply F i) "bit")
0) (= (TLA.fapply (TLA.fapply t "sigma") i)
(TLA.fapply (TLA.fapply t "sigma") (TLA.fapply (TLA.fapply F i) "parent"))))
(=> (= (TLA.fapply (TLA.fapply F i) "bit") (TLA.fapply TLA.Succ 0))
(= (TLA.fapply (TLA.fapply t "sigma") i) i))))))) (-. (= M
TLA.emptyset)))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_He:"TypeOK"
 using v'128 by blast
 have z_Hp:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''0'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=BOT)&(((t[''arg''])[p])=BOT))))))))" (is "?z_hp")
 using v'139 by blast
 have z_Hs:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))))))&((((pc[p])=''F1U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))))))&((((pc[p])=''F1U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&SameRoot(t, (a_ca[p]), (a_vunde_Ua[p])))))))&((((pc[p])=''F1U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&SameRoot(t, (a_ca[p]), (a_uunde_Ua[p])))))))&(((pc[p])=''F1U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&SameRoot(t, (a_ca[p]), (a_vunde_Ua[p])))))))))))))))" (is "?z_hs")
 using v'142 by blast
 have z_Ht:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&InvF2All(p, t))))))&((((pc[p])=''F2U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF2All(p, t))))))&((((pc[p])=''F2U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF2All(p, t)))))))&((((pc[p])=''F2U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF2All(p, t)))))))&(((pc[p])=''F2U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF2All(p, t)))))))))))))))" (is "?z_ht")
 using v'143 by blast
 have z_Hu:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F3'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&InvF3All(p, t))))))&((((pc[p])=''F3U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF3All(p, t))))))&((((pc[p])=''F3U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF3All(p, t)))))))&((((pc[p])=''F3U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF3All(p, t)))))))&(((pc[p])=''F3U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF3All(p, t)))))))))))))))" (is "?z_hu")
 using v'144 by blast
 have z_Hv:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F4'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&InvF4All(p, t))))))&((((pc[p])=''F4U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF4All(p, t))))))&((((pc[p])=''F4U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF4All(p, t)))))))&((((pc[p])=''F4U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF4All(p, t)))))))&(((pc[p])=''F4U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF4All(p, t)))))))))))))))" (is "?z_hv")
 using v'145 by blast
 have z_Hw:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F5'')=>((((t[''ret''])[p]) \\in ({BOT} \\cup NodeSet))&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&(InvF5All(p, t)&(((((a_bunde_Fa[p])[''bit''])=0)=>(((t[''ret''])[p])=BOT))&((((a_bunde_Fa[p])[''bit''])=1)=>(((t[''ret''])[p])=((a_aunde_Fa[p])[''parent'']))))))))))&((((pc[p])=''F5U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF5All(p, t))))))&((((pc[p])=''F5U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF5All(p, t)))))))&((((pc[p])=''F5U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF5All(p, t)))))))&(((pc[p])=''F5U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF5All(p, t)))))))))))))))" (is "?z_hw")
 using v'146 by blast
 have z_Hx:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F6'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&InvF6All(p, t))))))&((((pc[p])=''F6U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF6All(p, t))))))&((((pc[p])=''F6U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF6All(p, t)))))))&((((pc[p])=''F6U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF6All(p, t)))))))&(((pc[p])=''F6U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF6All(p, t)))))))))))))))" (is "?z_hx")
 using v'147 by blast
 have z_Hy:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''F7'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, (a_ca[p]), ((t[''arg''])[p]))&InvF7All(p, t))))))&((((pc[p])=''F7U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF7All(p, t))))))&((((pc[p])=''F7U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF7All(p, t)))))))&((((pc[p])=''F7U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&InvF7All(p, t)))))))&(((pc[p])=''F7U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&(SameRoot(t, (a_ca[p]), (a_vunde_Ua[p]))&InvF7All(p, t)))))))))))))))" (is "?z_hy")
 using v'148 by blast
 have z_Hf:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. ((((pc[p])=''FR'')=>((((t[''ret''])[p])=(a_uunde_Fa[p]))&((((t[''op''])[p])=''F'')&((((t[''arg''])[p]) \\in NodeSet)&(SameRoot(t, ((t[''arg''])[p]), (a_uunde_Fa[p]))&SameRoot(t, (a_ca[p]), (a_uunde_Fa[p])))))))&((((pc[p])=''FRU1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_ca[p]), (a_uunde_Ua[p]))&SameRoot(t, (a_ca[p]), (a_uunde_Fa[p])))))))&((((pc[p])=''FRU2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU2All(p, t)&SameRoot(t, (a_ca[p]), (a_vunde_Ua[p])))))))&((((pc[p])=''FRU7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU7All(p, t)&SameRoot(t, (a_ca[p]), (a_uunde_Ua[p])))))))&(((pc[p])=''FRU8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(InvU8All(p, t)&SameRoot(t, (a_ca[p]), (a_vunde_Ua[p])))))))))))))))" (is "?z_hf")
 using v'129 by blast
 have z_Hg:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U1'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&(((t[''arg''])[p]) \\in prod(NodeSet, NodeSet)))))))))" (is "?z_hg")
 using v'130 by blast
 have z_Hh:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U2'')=>((((t[''ret''])[p])=BOT)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&InvU2All(p, t)))))))))" (is "?z_hh")
 using v'131 by blast
 have z_Hi:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U3'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[p])[1]), (a_uunde_Ua[p]))&(SameRoot(t, (((t[''arg''])[p])[2]), (a_vunde_Ua[p]))&((((t[''ret''])[p])=ACK)=>SameRoot(t, (a_uunde_Ua[p]), (a_vunde_Ua[p])))))))))))))" (is "?z_hi")
 using v'132 by blast
 have z_Hj:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U4'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[p])[1]), (a_uunde_Ua[p]))&(SameRoot(t, (((t[''arg''])[p])[2]), (a_vunde_Ua[p]))&(((((t[''ret''])[p])=ACK)=>SameRoot(t, (a_uunde_Ua[p]), (a_vunde_Ua[p])))&((a_uunde_Ua[p])~=(a_vunde_Ua[p])))))))))))))" (is "?z_hj")
 using v'133 by blast
 have z_Hk:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U5'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&InvU5All(p, t)))))))))" (is "?z_hk")
 using v'134 by blast
 have z_Hl:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U6'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&InvU6All(p, t)))))))))" (is "?z_hl")
 using v'135 by blast
 have z_Hm:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U7'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&InvU7All(p, t)))))))))" (is "?z_hm")
 using v'136 by blast
 have z_Hn:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''U8'')=>((((t[''ret''])[p]) \\in {BOT, ACK})&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&InvU8All(p, t)))))))))" (is "?z_hn")
 using v'137 by blast
 have z_Ho:"bAll(PROCESSES, (\<lambda>p. bAll(M, (\<lambda>t. (((pc[p])=''UR'')=>((((t[''ret''])[p])=ACK)&((((t[''op''])[p])=''U'')&((((t[''arg''])[p]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (((t[''arg''])[p])[1]), (a_uunde_Ua[p]))&(SameRoot(t, (((t[''arg''])[p])[2]), (a_vunde_Ua[p]))&SameRoot(t, (a_uunde_Ua[p]), (a_vunde_Ua[p]))))))))))))" (is "?z_ho")
 using v'138 by blast
 have z_Hq:"bAll(M, (\<lambda>t. bAll(NodeSet, (\<lambda>i. (((((F[i])[''bit''])=0)=>(((t[''sigma''])[i])=((t[''sigma''])[((F[i])[''parent''])])))&((((F[i])[''bit''])=1)=>(((t[''sigma''])[i])=i)))))))" (is "?z_hq")
 using v'140 by blast
 have z_Hr:"(M~={})"
 using v'141 by blast
 assume z_Hz:"(~(TypeOK&(?z_hp&(?z_hs&(?z_ht&(?z_hu&(?z_hv&(?z_hw&(?z_hx&(?z_hy&(?z_hf&(?z_hg&(?z_hh&(?z_hi&(?z_hj&(?z_hk&(?z_hl&(?z_hm&(?z_hn&(?z_ho&(?z_hq&(M~={}))))))))))))))))))))))" (is "~(_&?z_hvi)")
 show FALSE
 proof (rule zenon_notand [OF z_Hz])
  assume z_Hwb:"(~TypeOK)"
  show FALSE
  by (rule notE [OF z_Hwb z_He])
 next
  assume z_Hwc:"(~?z_hvi)" (is "~(_&?z_hvj)")
  show FALSE
  proof (rule zenon_notand [OF z_Hwc])
   assume z_Hwd:"(~?z_hp)"
   show FALSE
   by (rule notE [OF z_Hwd z_Hp])
  next
   assume z_Hwe:"(~?z_hvj)" (is "~(_&?z_hvk)")
   show FALSE
   proof (rule zenon_notand [OF z_Hwe])
    assume z_Hwf:"(~?z_hs)"
    show FALSE
    by (rule notE [OF z_Hwf z_Hs])
   next
    assume z_Hwg:"(~?z_hvk)" (is "~(_&?z_hvl)")
    show FALSE
    proof (rule zenon_notand [OF z_Hwg])
     assume z_Hwh:"(~?z_ht)"
     show FALSE
     by (rule notE [OF z_Hwh z_Ht])
    next
     assume z_Hwi:"(~?z_hvl)" (is "~(_&?z_hvm)")
     show FALSE
     proof (rule zenon_notand [OF z_Hwi])
      assume z_Hwj:"(~?z_hu)"
      show FALSE
      by (rule notE [OF z_Hwj z_Hu])
     next
      assume z_Hwk:"(~?z_hvm)" (is "~(_&?z_hvn)")
      show FALSE
      proof (rule zenon_notand [OF z_Hwk])
       assume z_Hwl:"(~?z_hv)"
       show FALSE
       by (rule notE [OF z_Hwl z_Hv])
      next
       assume z_Hwm:"(~?z_hvn)" (is "~(_&?z_hvo)")
       show FALSE
       proof (rule zenon_notand [OF z_Hwm])
        assume z_Hwn:"(~?z_hw)"
        show FALSE
        by (rule notE [OF z_Hwn z_Hw])
       next
        assume z_Hwo:"(~?z_hvo)" (is "~(_&?z_hvp)")
        show FALSE
        proof (rule zenon_notand [OF z_Hwo])
         assume z_Hwp:"(~?z_hx)"
         show FALSE
         by (rule notE [OF z_Hwp z_Hx])
        next
         assume z_Hwq:"(~?z_hvp)" (is "~(_&?z_hvq)")
         show FALSE
         proof (rule zenon_notand [OF z_Hwq])
          assume z_Hwr:"(~?z_hy)"
          show FALSE
          by (rule notE [OF z_Hwr z_Hy])
         next
          assume z_Hws:"(~?z_hvq)" (is "~(_&?z_hvr)")
          show FALSE
          proof (rule zenon_notand [OF z_Hws])
           assume z_Hwt:"(~?z_hf)"
           show FALSE
           by (rule notE [OF z_Hwt z_Hf])
          next
           assume z_Hwu:"(~?z_hvr)" (is "~(_&?z_hvs)")
           show FALSE
           proof (rule zenon_notand [OF z_Hwu])
            assume z_Hwv:"(~?z_hg)"
            show FALSE
            by (rule notE [OF z_Hwv z_Hg])
           next
            assume z_Hww:"(~?z_hvs)" (is "~(_&?z_hvt)")
            show FALSE
            proof (rule zenon_notand [OF z_Hww])
             assume z_Hwx:"(~?z_hh)"
             show FALSE
             by (rule notE [OF z_Hwx z_Hh])
            next
             assume z_Hwy:"(~?z_hvt)" (is "~(_&?z_hvu)")
             show FALSE
             proof (rule zenon_notand [OF z_Hwy])
              assume z_Hwz:"(~?z_hi)"
              show FALSE
              by (rule notE [OF z_Hwz z_Hi])
             next
              assume z_Hxa:"(~?z_hvu)" (is "~(_&?z_hvv)")
              show FALSE
              proof (rule zenon_notand [OF z_Hxa])
               assume z_Hxb:"(~?z_hj)"
               show FALSE
               by (rule notE [OF z_Hxb z_Hj])
              next
               assume z_Hxc:"(~?z_hvv)" (is "~(_&?z_hvw)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxc])
               assume z_Hxd:"(~?z_hk)"
               show FALSE
               by (rule notE [OF z_Hxd z_Hk])
               next
               assume z_Hxe:"(~?z_hvw)" (is "~(_&?z_hvx)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxe])
               assume z_Hxf:"(~?z_hl)"
               show FALSE
               by (rule notE [OF z_Hxf z_Hl])
               next
               assume z_Hxg:"(~?z_hvx)" (is "~(_&?z_hvy)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxg])
               assume z_Hxh:"(~?z_hm)"
               show FALSE
               by (rule notE [OF z_Hxh z_Hm])
               next
               assume z_Hxi:"(~?z_hvy)" (is "~(_&?z_hvz)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxi])
               assume z_Hxj:"(~?z_hn)"
               show FALSE
               by (rule notE [OF z_Hxj z_Hn])
               next
               assume z_Hxk:"(~?z_hvz)" (is "~(_&?z_hwa)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxk])
               assume z_Hxl:"(~?z_ho)"
               show FALSE
               by (rule notE [OF z_Hxl z_Ho])
               next
               assume z_Hxm:"(~?z_hwa)" (is "~(_&?z_hr)")
               show FALSE
               proof (rule zenon_notand [OF z_Hxm])
               assume z_Hxn:"(~?z_hq)"
               show FALSE
               by (rule notE [OF z_Hxn z_Hq])
               next
               assume z_Hxo:"(~?z_hr)" (is "~~?z_hxp")
               show FALSE
               by (rule notE [OF z_Hxo z_Hr])
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
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
lemma ob'45:
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
(* usable definition Inv suppressed *)
assumes v'102: "((((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> (NodeSet)]))))"
assumes v'103: "(((pc) = ([ p \<in> (PROCESSES)  \<mapsto> (''0'')])))"
assumes v'104: "(((F) = ([ i \<in> (NodeSet)  \<mapsto> (((''parent'' :> (i)) @@ (''rank'' :> ((0))) @@ (''bit'' :> ((Succ[0])))))])))"
assumes v'105: "(((M) = ({(((''sigma'' :> ([ i \<in> (NodeSet)  \<mapsto> (i)])) @@ (''ret'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)])) @@ (''op'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)])) @@ (''arg'' :> ([ p \<in> (PROCESSES)  \<mapsto> (BOT)]))))})))"
shows "(((M) \<noteq> ({})))"(is "PROP ?ob'45")
proof -
ML_command {* writeln "*** TLAPS ENTER 45"; *}
show "PROP ?ob'45"

(* BEGIN ZENON INPUT
;; file=Linearizability.tlaps/tlapm_f13563.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >Linearizability.tlaps/tlapm_f13563.znn.out
;; obligation #45
$hyp "v'102" (/\ (TLA.in a_aunde_Fa (TLA.FuncSet PROCESSES FieldSet))
(TLA.in a_bunde_Fa (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Fa
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_aunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Ua
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_vunde_Ua
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in a_ca
(TLA.FuncSet PROCESSES NodeSet)) (TLA.in d
(TLA.FuncSet PROCESSES NodeSet)))
$hyp "v'103" (= pc (TLA.Fcn PROCESSES ((p) "0")))
$hyp "v'104" (= F
(TLA.Fcn NodeSet ((i) (TLA.record "parent" i "rank" 0 "bit" (TLA.fapply TLA.Succ 0)))))
$hyp "v'105" (= M
(TLA.set (TLA.record "sigma" (TLA.Fcn NodeSet ((i) i)) "ret" (TLA.Fcn PROCESSES ((p) BOT)) "op" (TLA.Fcn PROCESSES ((p) BOT)) "arg" (TLA.Fcn PROCESSES ((p) BOT)))))
$goal (-. (= M
TLA.emptyset))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hd:"(M={(''sigma'' :> (Fcn(NodeSet, (\<lambda>i. i))) @@ ''ret'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''op'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''arg'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))))})" (is "_=?z_hg")
 using v'105 by blast
 assume z_He:"(~(M~={}))" (is "~~?z_hw")
 have z_Hw: "?z_hw"
 by (rule zenon_notnot_0 [OF z_He])
 have z_Hx: "(?z_hg={})"
 by (rule subst [where P="(\<lambda>zenon_Via. (zenon_Via={}))", OF z_Hd z_Hw])
 have z_Hbb: "(\\A zenon_Vla:(~(zenon_Vla \\in ?z_hg)))" (is "\\A x : ?z_hbf(x)")
 by (rule zenon_setequalempty_0 [of "?z_hg", OF z_Hx])
 have z_Hbg: "?z_hbf((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. i))) @@ ''ret'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''op'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''arg'' :> (Fcn(PROCESSES, (\<lambda>p. BOT)))))" (is "~?z_hbh")
 by (rule zenon_all_0 [of "?z_hbf" "(''sigma'' :> (Fcn(NodeSet, (\<lambda>i. i))) @@ ''ret'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''op'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''arg'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))))", OF z_Hbb])
 have z_Hbi: "((''sigma'' :> (Fcn(NodeSet, (\<lambda>i. i))) @@ ''ret'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''op'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''arg'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))))~=(''sigma'' :> (Fcn(NodeSet, (\<lambda>i. i))) @@ ''ret'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''op'' :> (Fcn(PROCESSES, (\<lambda>p. BOT))) @@ ''arg'' :> (Fcn(PROCESSES, (\<lambda>p. BOT)))))" (is "?z_hh~=_")
 by (rule zenon_notin_addElt_0 [of "?z_hh" "?z_hh" "{}", OF z_Hbg])
 show FALSE
 by (rule zenon_noteq [OF z_Hbi])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 45"; *} qed
lemma ob'148:
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
(* usable definition InvF3All suppressed *)
(* usable definition InvF4All suppressed *)
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & (((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & (((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & (((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & (((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & (((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))))))) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & (((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F2U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & (((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F2U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F2U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & (((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F2U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))))))"(is "PROP ?ob'148")
proof -
ML_command {* writeln "*** TLAPS ENTER 148"; *}
show "PROP ?ob'148"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 148"; *} qed
lemma ob'149:
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))))))) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F3''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F3U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F3U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F3U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F3U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))))))"(is "PROP ?ob'149")
proof -
ML_command {* writeln "*** TLAPS ENTER 149"; *}
show "PROP ?ob'149"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 149"; *} qed
lemma ob'150:
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
(* usable definition InvF5All suppressed *)
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))))))) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F4''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F4U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F4U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F4U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F4U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))))))"(is "PROP ?ob'150")
proof -
ML_command {* writeln "*** TLAPS ENTER 150"; *}
show "PROP ?ob'150"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 150"; *} qed
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
(* usable definition InvF6All suppressed *)
(* usable definition InvF7All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply ((pc), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply ((pc), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply ((pc), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))))))))))))) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0))))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0))))))))))))))"(is "PROP ?ob'151")
proof -
ML_command {* writeln "*** TLAPS ENTER 151"; *}
show "PROP ?ob'151"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 151"; *} qed
lemma ob'152:
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply ((F), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent''))), (fapply ((fapply ((a_bunde_Fa), (p))), (''parent''))))))))))))) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F6''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F6U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F6U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F6U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F6U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent''))), (fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p))), (''parent'')))))))))))))"(is "PROP ?ob'152")
proof -
ML_command {* writeln "*** TLAPS ENTER 152"; *}
show "PROP ?ob'152"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 152"; *} qed
lemma ob'153:
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
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'122: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p)))))))))) & (((((fapply ((pc), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((((fapply ((fapply ((F), (fapply ((a_uunde_Fa), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply ((a_aunde_Fa), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))))))) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'123: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'147: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'148: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'149: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'150: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'151: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'152: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'153: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'154: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'155: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'156: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'157: "((((a_dhash_primea :: c)) = (d)))"
assumes v'158: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''F7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F7U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F7U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F7U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''F7U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Fhash_primea :: c)), (p))))), (''bit''))) = ((0)))) & (((fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''bit''))) = ((0)))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p))), (''parent'')))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))))))))))"(is "PROP ?ob'153")
proof -
ML_command {* writeln "*** TLAPS ENTER 153"; *}
show "PROP ?ob'153"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 153"; *} qed
lemma ob'154:
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
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
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
assumes v'123: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((a_uunde_Fa), (p))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p))), (fapply ((a_uunde_Fa), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Fa), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p))))))))) & (((((fapply ((pc), (p))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply ((a_uunde_Ua), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply ((a_vunde_Ua), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply ((a_uunde_Ua), (p))), (fapply ((a_vunde_Ua), (p))))))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))))))))) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'124: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
assumes v'148: "((((a_pchash_primea :: c)) = (pc)))"
assumes v'149: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'150: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'151: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'152: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'153: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'154: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'155: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'156: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'157: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'158: "((((a_dhash_primea :: c)) = (d)))"
assumes v'159: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p))) = (''FR''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (fapply (((a_uunde_Fhash_primea :: c)), (p))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((fapply ((t), (''arg''))), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''FRU1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Fhash_primea :: c)), (p))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''FRU2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''FRU7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_uunde_Uhash_primea :: c)), (p))))))))) & (((((fapply (((a_pchash_primea :: c)), (p))) = (''FRU8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & (((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[0])))), (fapply (((a_uunde_Uhash_primea :: c)), (p)))))) & ((SameRoot ((t), (fapply ((fapply ((fapply ((t), (''arg''))), (p))), ((Succ[Succ[0]])))), (fapply (((a_vunde_Uhash_primea :: c)), (p)))))) & (((((fapply ((fapply ((t), (''ret''))), (p))) = (ACK))) \<Rightarrow> ((SameRoot ((t), (fapply (((a_uunde_Uhash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p))), (fapply (((a_vunde_Uhash_primea :: c)), (p))))))))))))"(is "PROP ?ob'154")
proof -
ML_command {* writeln "*** TLAPS ENTER 154"; *}
show "PROP ?ob'154"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 154"; *} qed
end
