(* automatically generated -- do not edit manually *)
theory tlapm_48650a imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

lemma ob'1772: (* 5cc197058bd385bfe48008e7fb492586 *)
(* usable definition IsFiniteSet suppressed *)
(* usable definition Cardinality suppressed *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsTransitivelyClosedOn suppressed *)
(* usable definition IsWellFoundedOn suppressed *)
(* usable definition SetLessThan suppressed *)
(* usable definition WFDefOn suppressed *)
(* usable definition OpDefinesFcn suppressed *)
(* usable definition WFInductiveDefines suppressed *)
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition OpToRel suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
(* usable definition FiniteSubsetsOf suppressed *)
(* usable definition StrictSubsetOrdering suppressed *)
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
(* usable definition InvF7All suppressed *)
(* usable definition InvU2All suppressed *)
(* usable definition InvU5All suppressed *)
(* usable definition InvU6All suppressed *)
(* usable definition InvU7All suppressed *)
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
(* usable definition Inv suppressed *)
assumes v'200: "(Inv)"
assumes v'201: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'219: "(((fapply ((pc), (p))) = (''U1'')))"
assumes v'220: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F1U1'')])))"
assumes v'221: "((((a_uunde_Uhash_primea :: c)) = ([(a_uunde_Ua) EXCEPT ![(p)] = (fapply ((a_ca), (p)))])))"
assumes v'222: "((((a_vunde_Uhash_primea :: c)) = ([(a_vunde_Ua) EXCEPT ![(p)] = (fapply ((d), (p)))])))"
assumes v'223: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'224: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'225: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'226: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'227: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'228: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'229: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'230: "((((a_dhash_primea :: c)) = (d)))"
assumes v'231: "((((a_Mhash_primea :: c)) = (M)))"
fixes a_punde_1a
assumes a_punde_1a_in : "(a_punde_1a \<in> (PROCESSES))"
fixes t
assumes t_in : "(t \<in> ((a_Mhash_primea :: c)))"
assumes v'249: "(((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F4U8'')))"
shows "((((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))))) & (((fapply ((fapply ((t), (''sigma''))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))) = (fapply ((fapply ((t), (''sigma''))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))) = (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))), (''rank''))))) \<and> ((geq ((fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[0])))))))))))) & ((((fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))) = (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))) | (((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((Succ[0])))) | ((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''bit''))) = ((0)))) & (((greater ((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))), (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank'')))))) | (((((fapply ((fapply (((a_Fhash_primea :: c)), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))))), (''rank''))) = (fapply ((fapply (((a_Fhash_primea :: c)), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))), (''rank''))))) \<and> ((geq ((fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((fapply ((t), (''arg''))), (a_punde_1a))), ((Succ[Succ[0]])))))))))))))"(is "PROP ?ob'1772")
proof -
show "PROP ?ob'1772"
using assms by auto
qed
end
