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

lemma ob'31:
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
(* usable definition SharedRespectsSigma suppressed *)
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
assumes v'108: "((TypeOK) & (\<forall> p \<in> (PROCESSES) : (\<forall> t \<in> (M) : ((((((fapply ((pc), (p))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p))) = (BOT))))))))) & (a_InvF1a) & (a_InvF2a) & (a_InvF3a) & (a_InvF4a) & (a_InvF5a) & (a_InvF6a) & (a_InvF7a) & (InvFR) & (a_InvU1a) & (a_InvU2a) & (a_InvU3a) & (a_InvU4a) & (a_InvU5a) & (a_InvU6a) & (a_InvU7a) & (a_InvU8a) & (InvUR) & (SigmaRespectsShared) & (SharedRespectsSigma) & (Linearizable))"
assumes v'109: "(((Next) \<or> ((((hbf6f3f86ac3e561c1ee154bb0de6ab :: c)) = (varlist)))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'111: "(((fapply ((pc), (p))) = (''UR'')))"
assumes v'112: "((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''0'')])))"
assumes v'113: "((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : ((((((((((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) \<and> (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))))) \<and> (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''op''))) = ([(fapply ((told), (''op''))) EXCEPT ![(p)] = (BOT)]))))) \<and> (((fapply ((t), (''arg''))) = ([(fapply ((told), (''arg''))) EXCEPT ![(p)] = (BOT)])))))))))))"
assumes v'114: "((((a_Fhash_primea :: c)) = (F)))"
assumes v'115: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'116: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'117: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'118: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'119: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'120: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'121: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'122: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'123: "((((a_dhash_primea :: c)) = (d)))"
assumes v'127: "((a_hef12f5554781c2213604492856f635a :: c))"
assumes v'130: "((\<And> a_punde_1a :: c. a_punde_1a \<in> (PROCESSES) \<Longrightarrow> (\<And> t :: c. t \<in> ((a_Mhash_primea :: c)) \<Longrightarrow> ((((fapply (((a_pchash_primea :: c)), (a_punde_1a))) = (''0''))) \<Longrightarrow> ((((fapply ((fapply ((t), (''ret''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (a_punde_1a))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (a_punde_1a))) = (BOT))))))))"
shows "(\<forall> p_1 \<in> (PROCESSES) : (\<forall> t \<in> ((a_Mhash_primea :: c)) : ((((((fapply (((a_pchash_primea :: c)), (p_1))) = (''0''))) \<Rightarrow> ((((fapply ((fapply ((t), (''ret''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''op''))), (p_1))) = (BOT))) & (((fapply ((fapply ((t), (''arg''))), (p_1))) = (BOT)))))))))"(is "PROP ?ob'31")
proof -
ML_command {* writeln "*** TLAPS ENTER 31"; *}
show "PROP ?ob'31"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_ea74b1.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_ea74b1.znn.out
;; obligation #31
$hyp "v'108" (/\ TypeOK
(TLA.bAll PROCESSES ((p) (TLA.bAll M ((t) (/\ (=> (= (TLA.fapply pc p) "0")
(/\ (= (TLA.fapply (TLA.fapply t "ret") p) BOT)
(= (TLA.fapply (TLA.fapply t "op") p) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p) BOT)))))))) a_InvF1a a_InvF2a a_InvF3a
a_InvF4a a_InvF5a a_InvF6a a_InvF7a InvFR a_InvU1a a_InvU2a a_InvU3a a_InvU4a
a_InvU5a a_InvU6a a_InvU7a a_InvU8a InvUR SigmaRespectsShared
SharedRespectsSigma Linearizable)
$hyp "v'109" (\/ Next (= hbf6f3f86ac3e561c1ee154bb0de6ab
varlist))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'111" (= (TLA.fapply pc p) "UR")
$hyp "v'112" (= a_pchash_primea
(TLA.except pc p "0"))
$hyp "v'113" (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (/\ (/\ (/\ (/\ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
ACK) (= (TLA.fapply t "sigma") (TLA.fapply told "sigma")))
(= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p BOT)))
(= (TLA.fapply t "op") (TLA.except (TLA.fapply told "op") p BOT)))
(= (TLA.fapply t "arg")
(TLA.except (TLA.fapply told "arg") p BOT)))))))))
$hyp "v'114" (= a_Fhash_primea F)
$hyp "v'115" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'116" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'117" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'118" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'119" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'120" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'121" (= a_bunde_Uhash_primea
a_bunde_Ua)
$hyp "v'122" (= a_chash_primea a_ca)
$hyp "v'123" (= a_dhash_primea
d)
$hyp "v'127" a_hef12f5554781c2213604492856f635a
$hyp "v'130" (TLA.bAll PROCESSES ((a_punde_1a) (TLA.bAll a_Mhash_primea ((t) (=> (= (TLA.fapply a_pchash_primea a_punde_1a)
"0") (/\ (= (TLA.fapply (TLA.fapply t "ret") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "op") a_punde_1a) BOT)
(= (TLA.fapply (TLA.fapply t "arg") a_punde_1a)
BOT)))))))
$goal (TLA.bAll PROCESSES ((p_1) (TLA.bAll a_Mhash_primea ((t) (/\ (=> (= (TLA.fapply a_pchash_primea p_1)
"0") (/\ (= (TLA.fapply (TLA.fapply t "ret") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "op") p_1) BOT)
(= (TLA.fapply (TLA.fapply t "arg") p_1)
BOT))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hr:"bAll(PROCESSES, (\<lambda>a_punde_1a. bAll(a_Mhash_primea, (\<lambda>t. (((a_pchash_primea[a_punde_1a])=''0'')=>((((t[''ret''])[a_punde_1a])=BOT)&((((t[''op''])[a_punde_1a])=BOT)&(((t[''arg''])[a_punde_1a])=BOT))))))))" (is "?z_hr")
 using v'130 by blast
 assume z_Hs:"(~?z_hr)"
 show FALSE
 by (rule notE [OF z_Hs z_Hr])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 31"; *} qed
end
