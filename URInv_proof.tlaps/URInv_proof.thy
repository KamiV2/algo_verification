(* automatically generated -- do not edit manually *)
theory URInv_proof imports Constant Zenon begin
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

lemma ob'57:
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
(* usable definition FR suppressed *)
(* usable definition U1 suppressed *)
(* usable definition U2 suppressed *)
(* usable definition U3 suppressed *)
(* usable definition U4 suppressed *)
(* usable definition U5 suppressed *)
(* usable definition U6 suppressed *)
(* usable definition U7 suppressed *)
(* usable definition U8 suppressed *)
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
assumes v'107: "((TypeOK) & (InvDecide) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((fapply ((t), (''arg''))), (p)))))) & ((InvF5All ((p), (t)))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))))) & (((((fapply ((fapply ((a_bunde_Fa), (p))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p))) = (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))))))))) & (((((fapply ((pc), (p))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU2All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU7All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_uunde_Ua), (p)))))) & ((InvF5All ((p), (t))))))) & (((((fapply ((pc), (p))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((InvU8All ((p), (t)))) & ((SameRoot ((t), (fapply ((a_ca), (p))), (fapply ((a_vunde_Ua), (p)))))) & ((InvF5All ((p), (t)))))))))) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (Linearizable))"
assumes v'108: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'110: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'111: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'112: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'113: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'114: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'115: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'116: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'117: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'118: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'119: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'120: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'121: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'122: "((((a_dhash_primea :: c)) = (d)))"
assumes v'126: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'134: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply ((fapply ((t), (''arg''))), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c)) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (a_punde_1a))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (a_punde_1a))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_uunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((a_punde_1a), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (a_punde_1a))), (fapply (((a_vunde_Uhash_primea :: c)), (a_punde_1a)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((a_punde_1a), (t)) :: c)))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ((({(BOT)}) \<union> (NodeSet))))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''F''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (NodeSet))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply ((fapply ((t), (''arg''))), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c)) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p_1))), (''bit''))) = ((0)))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))))) & (((((fapply ((fapply (((a_bunde_Fhash_primea :: c)), (p_1))), (''bit''))) = ((Succ[0])))) \<Rightarrow> (((fapply ((fapply ((t), (''ret''))), (p_1))) = (fapply ((fapply (((a_aunde_Fhash_primea :: c)), (p_1))), (''parent'')))))))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U1''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U2''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((h29e700f910ac66eea1136a63914adb ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U7''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hd9bc9358b287a226e1580f74721591a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_uunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))) & (((((fapply (((a_pchash_primea :: c)), (p_1))) = (''F5U8''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) \<in> ({(BOT), (ACK)}))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (''U''))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) \<in> (((NodeSet) \<times> (NodeSet))))) & ((a_hb26ed4cbc0279941f049d798b203f8a ((p_1), (t)) :: c)) & ((SameRoot ((t), (fapply (((a_chash_primea :: c)), (p_1))), (fapply (((a_vunde_Uhash_primea :: c)), (p_1)))))) & ((a_h85db120dd089bb8fb553c353a285f7a ((p_1), (t)) :: c))))))))"(is "PROP ?ob'57")
proof -
ML_command {* writeln "*** TLAPS ENTER 57"; *}
show "PROP ?ob'57"

(* BEGIN ZENON INPUT
;; file=URInv_proof.tlaps/tlapm_79b457.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >URInv_proof.tlaps/tlapm_79b457.znn.out
;; obligation #57
$hyp "v'107" (/\ TypeOK InvDecide a_InvF1a a_InvF2a a_InvF3a a_InvF4a
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
(InvF5All p t)))))))) a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a
a_InvU4a a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
Linearizable)
$hyp "v'108" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'110" (= (TLA.fapply pc p) "UR")
$hyp "v'111" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'112" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'113" (= a_Fhash_primea F)
$hyp "v'114" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'115" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'116" (= a_bunde_Fhash_primea
a_bunde_Fa)
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
$hyp "v'134" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"F5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.cup (TLA.set BOT) NodeSet))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply (TLA.fapply t "arg") a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "bit") 0)
(= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT))
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fhash_primea a_punde_1a) "bit")
(TLA.fapply TLA.Succ 0)) (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea a_punde_1a) "parent")))))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (SameRoot t
(TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (h29e700f910ac66eea1136a63914adb a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hd9bc9358b287a226e1580f74721591a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_uunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a t)))
(=> (= (TLA.fapply a_pchash_primea a_punde_1a) "F5U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") a_punde_1a) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
(TLA.prod NodeSet NodeSet)) (a_hb26ed4cbc0279941f049d798b203f8a a_punde_1a t)
(SameRoot t (TLA.fapply a_chash_primea a_punde_1a)
(TLA.fapply a_vunde_Uhash_primea a_punde_1a))
(a_h85db120dd089bb8fb553c353a285f7a a_punde_1a
t))))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"F5") (/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1)
(TLA.cup (TLA.set BOT) NodeSet)) (= (TLA.fapply (TLA.fapply t "op") p_1) "F")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) NodeSet) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply (TLA.fapply t "arg") p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fhash_primea p_1) "bit") 0)
(= (TLA.fapply (TLA.fapply t "ret") p_1) BOT))
(=> (= (TLA.fapply (TLA.fapply a_bunde_Fhash_primea p_1) "bit")
(TLA.fapply TLA.Succ 0)) (= (TLA.fapply (TLA.fapply t "ret") p_1)
(TLA.fapply (TLA.fapply a_aunde_Fhash_primea p_1) "parent")))))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U1")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(SameRoot t (TLA.fapply a_chash_primea p_1)
(TLA.fapply a_uunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U2")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(h29e700f910ac66eea1136a63914adb p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U7")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hd9bc9358b287a226e1580f74721591a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_uunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1 t)))
(=> (= (TLA.fapply a_pchash_primea p_1) "F5U8")
(/\ (TLA.in (TLA.fapply (TLA.fapply t "ret") p_1) (TLA.set BOT ACK))
(= (TLA.fapply (TLA.fapply t "op") p_1) "U")
(TLA.in (TLA.fapply (TLA.fapply t "arg") p_1) (TLA.prod NodeSet NodeSet))
(a_hb26ed4cbc0279941f049d798b203f8a p_1 t) (SameRoot t
(TLA.fapply a_chash_primea p_1) (TLA.fapply a_vunde_Uhash_primea p_1))
(a_h85db120dd089bb8fb553c353a285f7a p_1
t))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. ((((a_pchash_primea[a_punde_1a])=''F5'')=>((((t[''ret''])[a_punde_1a]) \\in ({BOT} \\cup NodeSet))&((((t[''op''])[a_punde_1a])=''F'')&((((t[''arg''])[a_punde_1a]) \\in NodeSet)&(SameRoot(t, (a_chash_primea[a_punde_1a]), ((t[''arg''])[a_punde_1a]))&(a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)&(((((a_bunde_Fhash_primea[a_punde_1a])[''bit''])=0)=>(((t[''ret''])[a_punde_1a])=BOT))&((((a_bunde_Fhash_primea[a_punde_1a])[''bit''])=1)=>(((t[''ret''])[a_punde_1a])=((a_aunde_Fhash_primea[a_punde_1a])[''parent'']))))))))))&((((a_pchash_primea[a_punde_1a])=''F5U1'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t))))))&((((a_pchash_primea[a_punde_1a])=''F5U2'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(h29e700f910ac66eea1136a63914adb(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))&((((a_pchash_primea[a_punde_1a])=''F5U7'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hd9bc9358b287a226e1580f74721591a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_uunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))&(((a_pchash_primea[a_punde_1a])=''F5U8'')=>((((t[''ret''])[a_punde_1a]) \\in {BOT, ACK})&((((t[''op''])[a_punde_1a])=''U'')&((((t[''arg''])[a_punde_1a]) \\in prod(NodeSet, NodeSet))&(a_hb26ed4cbc0279941f049d798b203f8a(a_punde_1a, t)&(SameRoot(t, (a_chash_primea[a_punde_1a]), (a_vunde_Uhash_primea[a_punde_1a]))&a_h85db120dd089bb8fb553c353a285f7a(a_punde_1a, t)))))))))))))))" (is "?z_hr")
 using v'134 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 57"; *} qed
end
