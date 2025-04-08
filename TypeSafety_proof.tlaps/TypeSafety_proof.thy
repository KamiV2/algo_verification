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

lemma ob'128:
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
assumes v'55: "((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (((F) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (FieldSet)]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((M) \<in> ((SUBSET (Configs))))))"
assumes v'56: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'87: "((cond((((fapply ((F), (fapply ((a_uunde_Fa), (p))))) = (((''parent'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0))))))), (((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Fa), (p)))] = (((''parent'' :> (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))])))), (((((a_Fhash_primea :: c)) = (F)))))) & ((((((fapply ((pc), (p))) = (''F6''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2'')]))))) | (((((fapply ((pc), (p))) = (''F6U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U1'')]))))) | (((((fapply ((pc), (p))) = (''F6U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U2'')]))))) | (((((fapply ((pc), (p))) = (''F6U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U7'')]))))) | (((((fapply ((pc), (p))) = (''F6U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U8'')])))))))"
assumes v'88: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'89: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'90: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'91: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'92: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'93: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'94: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'95: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'96: "((((a_dhash_primea :: c)) = (d)))"
assumes v'97: "((((a_Mhash_primea :: c)) = (M)))"
assumes v'98: "(((fapply (((a_Fhash_primea :: c)), (fapply ((a_uunde_Fa), (p))))) \<in> (FieldSet)))"
assumes v'99: "(\<forall> i \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((((i) \<noteq> (fapply ((a_uunde_Fa), (p))))) \<Rightarrow> (((fapply (((a_Fhash_primea :: c)), (i))) \<in> (FieldSet))))))"
shows "((((a_Fhash_primea :: c)) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (FieldSet)])))"(is "PROP ?ob'128")
proof -
ML_command {* writeln "*** TLAPS ENTER 128"; *}
show "PROP ?ob'128"

(* BEGIN ZENON INPUT
;; file=TypeSafety_proof.tlaps/tlapm_37e01e.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeSafety_proof.tlaps/tlapm_37e01e.znn.out
;; obligation #128
$hyp "v'55" (/\ (TLA.in pc
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
(TLA.in F (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) FieldSet))
(TLA.in a_uunde_Fa
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Fa (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Fa
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_vunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Ua (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_ca
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in d
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in M
(TLA.SUBSET Configs)))
$hyp "v'56" (\/ Next (/\ (= a_pchash_primea pc) (= a_Fhash_primea F)
(= a_uunde_Fhash_primea a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa)
(= a_bunde_Fhash_primea a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua)
(= a_vunde_Uhash_primea a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua)
(= a_bunde_Uhash_primea a_bunde_Ua) (= a_chash_primea a_ca) (= a_dhash_primea
d) (= a_Mhash_primea
M)))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'87" (/\ (TLA.cond (= (TLA.fapply F (TLA.fapply a_uunde_Fa p))
(TLA.record "parent" (TLA.fapply (TLA.fapply a_aunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)) (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Fa p) (TLA.record "parent" (TLA.fapply (TLA.fapply a_bunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)))) (/\ (= a_Fhash_primea
F))) (\/ (/\ (= (TLA.fapply pc p) "F6") (= a_pchash_primea
(TLA.except pc p "F2"))) (/\ (= (TLA.fapply pc p) "F6U1") (= a_pchash_primea
(TLA.except pc p "F2U1"))) (/\ (= (TLA.fapply pc p) "F6U2")
(= a_pchash_primea (TLA.except pc p "F2U2"))) (/\ (= (TLA.fapply pc p)
"F6U7") (= a_pchash_primea (TLA.except pc p "F2U7")))
(/\ (= (TLA.fapply pc p) "F6U8") (= a_pchash_primea
(TLA.except pc p "F2U8")))))
$hyp "v'88" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'89" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'90" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'91" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'92" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'93" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'94" (= a_bunde_Uhash_primea a_bunde_Ua)
$hyp "v'95" (= a_chash_primea a_ca)
$hyp "v'96" (= a_dhash_primea d)
$hyp "v'97" (= a_Mhash_primea
M)
$hyp "v'98" (TLA.in (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fa p))
FieldSet)
$hyp "v'99" (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0)
N) ((i) (=> (-. (= i (TLA.fapply a_uunde_Fa p)))
(TLA.in (TLA.fapply a_Fhash_primea i)
FieldSet))))
$goal (TLA.in a_Fhash_primea
(TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0)
N) FieldSet))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"((pc \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&((F \\in FuncSet(isa'dotdot(1, N), FieldSet))&((a_uunde_Fa \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_uunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_vunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_ca \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((d \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&(M \\in SUBSET(Configs)))))))))))))" (is "?z_hr&?z_hcy")
 using v'55 by blast
 have z_Hd:"(cond(((F[(a_uunde_Fa[p])])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))), (a_Fhash_primea=except(F, (a_uunde_Fa[p]), (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))), (a_Fhash_primea=F))&((((pc[p])=''F6'')&(a_pchash_primea=except(pc, p, ''F2'')))|((((pc[p])=''F6U1'')&(a_pchash_primea=except(pc, p, ''F2U1'')))|((((pc[p])=''F6U2'')&(a_pchash_primea=except(pc, p, ''F2U2'')))|((((pc[p])=''F6U7'')&(a_pchash_primea=except(pc, p, ''F2U7'')))|(((pc[p])=''F6U8'')&(a_pchash_primea=except(pc, p, ''F2U8''))))))))" (is "?z_hen&?z_hfh")
 using v'87 by blast
 have z_Ho:"((a_Fhash_primea[(a_uunde_Fa[p])]) \\in FieldSet)" (is "?z_ho")
 using v'98 by blast
 have z_Hp:"bAll(isa'dotdot(1, N), (\<lambda>i. ((i~=(a_uunde_Fa[p]))=>((a_Fhash_primea[i]) \\in FieldSet))))" (is "?z_hp")
 using v'99 by blast
 have zenon_L1_: "(~(\\A zenon_Vh:((zenon_Vh \\in isa'dotdot(1, N))=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet)))) ==> (\\A x:((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))) ==> ?z_ho ==> FALSE" (is "?z_hgo ==> ?z_hgv ==> _ ==> FALSE")
 proof -
  assume z_Hgo:"?z_hgo" (is "~(\\A x : ?z_hhd(x))")
  assume z_Hgv:"?z_hgv" (is "\\A x : ?z_hhe(x)")
  assume z_Ho:"?z_ho"
  have z_Hhf: "(\\E zenon_Vh:(~((zenon_Vh \\in isa'dotdot(1, N))=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet))))" (is "\\E x : ?z_hhh(x)")
  by (rule zenon_notallex_0 [of "?z_hhd", OF z_Hgo])
  have z_Hhi: "?z_hhh((CHOOSE zenon_Vh:(~((zenon_Vh \\in isa'dotdot(1, N))=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet)))))" (is "~(?z_hhk=>?z_hhl)")
  by (rule zenon_ex_choose_0 [of "?z_hhh", OF z_Hhf])
  have z_Hhk: "?z_hhk"
  by (rule zenon_notimply_0 [OF z_Hhi])
  have z_Hhm: "(~?z_hhl)"
  by (rule zenon_notimply_1 [OF z_Hhi])
  show FALSE
  proof (rule notE [OF z_Hhm])
   have z_Hhn: "((a_Fhash_primea[(a_uunde_Fa[p])])=(a_Fhash_primea[(CHOOSE zenon_Vh:(~((zenon_Vh \\in isa'dotdot(1, N))=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet))))]))" (is "?z_hgh=?z_hho")
   proof (rule zenon_nnpp [of "(?z_hgh=?z_hho)"])
    assume z_Hhp:"(?z_hgh~=?z_hho)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hho"])
     have z_Hhq: "((a_uunde_Fa[p])=(CHOOSE zenon_Vh:(~((zenon_Vh \\in isa'dotdot(1, N))=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet)))))" (is "?z_heq=?z_hhj")
     proof (rule zenon_nnpp [of "(?z_heq=?z_hhj)"])
      assume z_Hhr:"(?z_heq~=?z_hhj)"
      have z_Hhs: "?z_hhe(?z_hhj)" (is "_=>?z_hht")
      by (rule zenon_all_0 [of "?z_hhe" "?z_hhj", OF z_Hgv])
      show FALSE
      proof (rule zenon_imply [OF z_Hhs])
       assume z_Hhu:"(~?z_hhk)"
       show FALSE
       by (rule notE [OF z_Hhu z_Hhk])
      next
       assume z_Hht:"?z_hht" (is "?z_hhv=>_")
       show FALSE
       proof (rule zenon_imply [OF z_Hht])
        assume z_Hhw:"(~?z_hhv)" (is "~~?z_hhx")
        have z_Hhx: "?z_hhx"
        by (rule zenon_notnot_0 [OF z_Hhw])
        show FALSE
        by (rule zenon_eqsym [OF z_Hhx z_Hhr])
       next
        assume z_Hhl:"?z_hhl"
        show FALSE
        by (rule notE [OF z_Hhm z_Hhl])
       qed
      qed
     qed
     have z_Hhy: "(?z_hho~=?z_hho)"
     by (rule subst [where P="(\<lambda>zenon_Vrn. ((a_Fhash_primea[zenon_Vrn])~=?z_hho))", OF z_Hhq], fact z_Hhp)
     thus "(?z_hho~=?z_hho)" .
    qed
   qed
   have z_Hhl: "?z_hhl"
   by (rule subst [where P="(\<lambda>zenon_Vpk. (zenon_Vpk \\in FieldSet))", OF z_Hhn], fact z_Ho)
   thus "?z_hhl" .
  qed
 qed
 have zenon_L2_: "(~(a_Fhash_primea \\in FuncSet(isa'dotdot(1, N), FieldSet))) ==> (F \\in FuncSet(isa'dotdot(1, N), FieldSet)) ==> (a_Fhash_primea=F) ==> FALSE" (is "?z_hq ==> ?z_hcz ==> ?z_hfg ==> FALSE")
 proof -
  assume z_Hq:"?z_hq" (is "~?z_hig")
  assume z_Hcz:"?z_hcz"
  assume z_Hfg:"?z_hfg"
  show FALSE
  proof (rule notE [OF z_Hq])
   have z_Hih: "(F=a_Fhash_primea)"
   by (rule sym [OF z_Hfg])
   have z_Hig: "?z_hig"
   by (rule subst [where P="(\<lambda>zenon_Vtn. (zenon_Vtn \\in FuncSet(isa'dotdot(1, N), FieldSet)))", OF z_Hih], fact z_Hcz)
   thus "?z_hig" .
  qed
 qed
 assume z_Hq:"(~(a_Fhash_primea \\in FuncSet(isa'dotdot(1, N), FieldSet)))" (is "~?z_hig")
 have z_Hcy: "?z_hcy" (is "?z_hcz&?z_hdg")
 by (rule zenon_and_1 [OF z_Ha])
 have z_Hcz: "?z_hcz"
 by (rule zenon_and_0 [OF z_Hcy])
 have z_Hen: "?z_hen"
 by (rule zenon_and_0 [OF z_Hd])
 have z_Hgv_z_Hp: "(\\A x:((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))) == ?z_hp" (is "?z_hgv == _")
 by (unfold bAll_def)
 have z_Hgv: "?z_hgv" (is "\\A x : ?z_hhe(x)")
 by (unfold z_Hgv_z_Hp, fact z_Hp)
 have z_Hil: "(DOMAIN(F)=isa'dotdot(1, N))" (is "?z_him=?z_hdc")
 by (rule zenon_in_funcset_1 [of "F" "?z_hdc" "FieldSet", OF z_Hcz])
 show FALSE
 proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vza. zenon_Vza)" "((F[(a_uunde_Fa[p])])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" "(a_Fhash_primea=except(F, (a_uunde_Fa[p]), (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))))" "(a_Fhash_primea=F)", OF z_Hen])
  assume z_Heo:"((F[(a_uunde_Fa[p])])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "?z_hep=?z_hes")
  assume z_Hfa:"(a_Fhash_primea=except(F, (a_uunde_Fa[p]), (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))))" (is "_=?z_hfc")
  show FALSE
  proof (rule zenon_notin_funcset [of "a_Fhash_primea" "?z_hdc" "FieldSet", OF z_Hq])
   assume z_Hip:"(~isAFcn(a_Fhash_primea))" (is "~?z_hiq")
   have z_Hir: "(~isAFcn(?z_hfc))" (is "~?z_his")
   by (rule subst [where P="(\<lambda>zenon_Vjn. (~isAFcn(zenon_Vjn)))", OF z_Hfa z_Hip])
   show FALSE
   by (rule zenon_notisafcn_except [of "F" "(a_uunde_Fa[p])" "(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))", OF z_Hir])
  next
   assume z_Hix:"(DOMAIN(a_Fhash_primea)~=?z_hdc)" (is "?z_hiy~=_")
   have z_Hiz: "(DOMAIN(?z_hfc)~=?z_hdc)" (is "?z_hja~=_")
   by (rule subst [where P="(\<lambda>zenon_Vnn. (DOMAIN(zenon_Vnn)~=?z_hdc))", OF z_Hfa z_Hix])
   have z_Hjf: "(?z_him~=?z_hdc)"
   by (rule zenon_domain_except_0 [of "(\<lambda>zenon_Vmn. (zenon_Vmn~=?z_hdc))" "F" "(a_uunde_Fa[p])" "(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))", OF z_Hiz])
   show FALSE
   by (rule notE [OF z_Hjf z_Hil])
  next
   assume z_Hgo:"(~(\\A zenon_Vh:((zenon_Vh \\in ?z_hdc)=>((a_Fhash_primea[zenon_Vh]) \\in FieldSet))))" (is "~(\\A x : ?z_hhd(x))")
   show FALSE
   by (rule zenon_L1_ [OF z_Hgo z_Hgv z_Ho])
  qed
 next
  assume z_Hjj:"((F[(a_uunde_Fa[p])])~=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "?z_hep~=?z_hes")
  assume z_Hfg:"(a_Fhash_primea=F)"
  show FALSE
  by (rule zenon_L2_ [OF z_Hq z_Hcz z_Hfg])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 128"; *} qed
lemma ob'126:
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
assumes v'55: "((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (((F) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (FieldSet)]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((M) \<in> ((SUBSET (Configs))))))"
assumes v'56: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'86: "((cond((((fapply ((F), (fapply ((a_uunde_Fa), (p))))) = (((''parent'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0))))))), (((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Fa), (p)))] = (((''parent'' :> (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))])))), (((((a_Fhash_primea :: c)) = (F)))))) & ((((((fapply ((pc), (p))) = (''F6''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2'')]))))) | (((((fapply ((pc), (p))) = (''F6U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U1'')]))))) | (((((fapply ((pc), (p))) = (''F6U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U2'')]))))) | (((((fapply ((pc), (p))) = (''F6U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U7'')]))))) | (((((fapply ((pc), (p))) = (''F6U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U8'')])))))))"
assumes v'87: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'88: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'89: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'90: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'91: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'92: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'93: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'94: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'95: "((((a_dhash_primea :: c)) = (d)))"
assumes v'96: "((((a_Mhash_primea :: c)) = (M)))"
shows "(\<forall> i \<in> ((isa_peri_peri_a (((Succ[0])), (N)))) : (((((i) \<noteq> (fapply ((a_uunde_Fa), (p))))) \<Rightarrow> (((fapply (((a_Fhash_primea :: c)), (i))) \<in> (FieldSet))))))"(is "PROP ?ob'126")
proof -
ML_command {* writeln "*** TLAPS ENTER 126"; *}
show "PROP ?ob'126"

(* BEGIN ZENON INPUT
;; file=TypeSafety_proof.tlaps/tlapm_a52717.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeSafety_proof.tlaps/tlapm_a52717.znn.out
;; obligation #126
$hyp "v'55" (/\ (TLA.in pc
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
(TLA.in F (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) FieldSet))
(TLA.in a_uunde_Fa
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Fa (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Fa
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_vunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Ua (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_ca
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in d
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in M
(TLA.SUBSET Configs)))
$hyp "v'56" (\/ Next (/\ (= a_pchash_primea pc) (= a_Fhash_primea F)
(= a_uunde_Fhash_primea a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa)
(= a_bunde_Fhash_primea a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua)
(= a_vunde_Uhash_primea a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua)
(= a_bunde_Uhash_primea a_bunde_Ua) (= a_chash_primea a_ca) (= a_dhash_primea
d) (= a_Mhash_primea
M)))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'86" (/\ (TLA.cond (= (TLA.fapply F (TLA.fapply a_uunde_Fa p))
(TLA.record "parent" (TLA.fapply (TLA.fapply a_aunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)) (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Fa p) (TLA.record "parent" (TLA.fapply (TLA.fapply a_bunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)))) (/\ (= a_Fhash_primea
F))) (\/ (/\ (= (TLA.fapply pc p) "F6") (= a_pchash_primea
(TLA.except pc p "F2"))) (/\ (= (TLA.fapply pc p) "F6U1") (= a_pchash_primea
(TLA.except pc p "F2U1"))) (/\ (= (TLA.fapply pc p) "F6U2")
(= a_pchash_primea (TLA.except pc p "F2U2"))) (/\ (= (TLA.fapply pc p)
"F6U7") (= a_pchash_primea (TLA.except pc p "F2U7")))
(/\ (= (TLA.fapply pc p) "F6U8") (= a_pchash_primea
(TLA.except pc p "F2U8")))))
$hyp "v'87" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'88" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'89" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'90" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'91" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'92" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'93" (= a_bunde_Uhash_primea a_bunde_Ua)
$hyp "v'94" (= a_chash_primea a_ca)
$hyp "v'95" (= a_dhash_primea d)
$hyp "v'96" (= a_Mhash_primea
M)
$goal (TLA.bAll (arith.intrange (TLA.fapply TLA.Succ 0) N) ((i) (=> (-. (= i
(TLA.fapply a_uunde_Fa p))) (TLA.in (TLA.fapply a_Fhash_primea i)
FieldSet))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"((pc \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&((F \\in FuncSet(isa'dotdot(1, N), FieldSet))&((a_uunde_Fa \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_uunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_vunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_ca \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((d \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&(M \\in SUBSET(Configs)))))))))))))" (is "?z_hp&?z_hcw")
 using v'55 by blast
 have z_Hd:"(cond(((F[(a_uunde_Fa[p])])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))), (a_Fhash_primea=except(F, (a_uunde_Fa[p]), (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))), (a_Fhash_primea=F))&((((pc[p])=''F6'')&(a_pchash_primea=except(pc, p, ''F2'')))|((((pc[p])=''F6U1'')&(a_pchash_primea=except(pc, p, ''F2U1'')))|((((pc[p])=''F6U2'')&(a_pchash_primea=except(pc, p, ''F2U2'')))|((((pc[p])=''F6U7'')&(a_pchash_primea=except(pc, p, ''F2U7'')))|(((pc[p])=''F6U8'')&(a_pchash_primea=except(pc, p, ''F2U8''))))))))" (is "?z_hel&?z_hff")
 using v'86 by blast
 have zenon_L1_: "(F \\in FuncSet(isa'dotdot(1, N), FieldSet)) ==> (a_Fhash_primea=F) ==> (~((a_Fhash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))]) \\in FieldSet)) ==> ((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet))))) \\in isa'dotdot(1, N)) ==> FALSE" (is "?z_hcx ==> ?z_hfe ==> ?z_hgf ==> ?z_hgr ==> FALSE")
 proof -
  assume z_Hcx:"?z_hcx"
  assume z_Hfe:"?z_hfe"
  assume z_Hgf:"?z_hgf" (is "~?z_hgg")
  assume z_Hgr:"?z_hgr"
  have z_Hgs: "(\\A zenon_Vqa:((zenon_Vqa \\in isa'dotdot(1, N))=>((F[zenon_Vqa]) \\in FieldSet)))" (is "\\A x : ?z_hgy(x)")
  by (rule zenon_in_funcset_2 [of "F" "isa'dotdot(1, N)" "FieldSet", OF z_Hcx])
  have z_Hgz: "?z_hgy((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet))))))" (is "_=>?z_hha")
  by (rule zenon_all_0 [of "?z_hgy" "(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))", OF z_Hgs])
  show FALSE
  proof (rule zenon_imply [OF z_Hgz])
   assume z_Hhb:"(~?z_hgr)"
   show FALSE
   by (rule notE [OF z_Hhb z_Hgr])
  next
   assume z_Hha:"?z_hha"
   show FALSE
   proof (rule notE [OF z_Hgf])
    have z_Hhc: "((F[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))])=(a_Fhash_primea[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))]))" (is "?z_hhd=?z_hgh")
    proof (rule zenon_nnpp [of "(?z_hhd=?z_hgh)"])
     assume z_Hhe:"(?z_hhd~=?z_hgh)"
     show FALSE
     proof (rule zenon_noteq [of "?z_hgh"])
      have z_Hhf: "(F=a_Fhash_primea)"
      by (rule sym [OF z_Hfe])
      have z_Hhg: "(?z_hgh~=?z_hgh)"
      by (rule subst [where P="(\<lambda>zenon_Vfnc. ((zenon_Vfnc[(CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))])~=?z_hgh))", OF z_Hhf], fact z_Hhe)
      thus "(?z_hgh~=?z_hgh)" .
     qed
    qed
    have z_Hgg: "?z_hgg"
    by (rule subst [where P="(\<lambda>zenon_Vgnc. (zenon_Vgnc \\in FieldSet))", OF z_Hhc], fact z_Hha)
    thus "?z_hgg" .
   qed
  qed
 qed
 assume z_Ho:"(~bAll(isa'dotdot(1, N), (\<lambda>i. ((i~=(a_uunde_Fa[p]))=>((a_Fhash_primea[i]) \\in FieldSet)))))" (is "~?z_hho")
 have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hde")
 by (rule zenon_and_1 [OF z_Ha])
 have z_Hcx: "?z_hcx"
 by (rule zenon_and_0 [OF z_Hcw])
 have z_Hel: "?z_hel"
 by (rule zenon_and_0 [OF z_Hd])
 have z_Hhv_z_Ho: "(~(\\A x:((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet))))) == (~?z_hho)" (is "?z_hhv == ?z_ho")
 by (unfold bAll_def)
 have z_Hhv: "?z_hhv" (is "~(\\A x : ?z_hhx(x))")
 by (unfold z_Hhv_z_Ho, fact z_Ho)
 have z_Hhy: "(\\E x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet)))))" (is "\\E x : ?z_hhz(x)")
 by (rule zenon_notallex_0 [of "?z_hhx", OF z_Hhv])
 have z_Hia: "?z_hhz((CHOOSE x:(~((x \\in isa'dotdot(1, N))=>((x~=(a_uunde_Fa[p]))=>((a_Fhash_primea[x]) \\in FieldSet))))))" (is "~(?z_hgr=>?z_hib)")
 by (rule zenon_ex_choose_0 [of "?z_hhz", OF z_Hhy])
 have z_Hgr: "?z_hgr"
 by (rule zenon_notimply_0 [OF z_Hia])
 have z_Hic: "(~?z_hib)" (is "~(?z_hid=>?z_hgg)")
 by (rule zenon_notimply_1 [OF z_Hia])
 have z_Hid: "?z_hid" (is "?z_hgi~=?z_heo")
 by (rule zenon_notimply_0 [OF z_Hic])
 have z_Hgf: "(~?z_hgg)"
 by (rule zenon_notimply_1 [OF z_Hic])
 have z_Hie: "(DOMAIN(F)=isa'dotdot(1, N))" (is "?z_hif=?z_hda")
 by (rule zenon_in_funcset_1 [of "F" "?z_hda" "FieldSet", OF z_Hcx])
 show FALSE
 proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vua. zenon_Vua)" "((F[?z_heo])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" "(a_Fhash_primea=except(F, ?z_heo, (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))))" "(a_Fhash_primea=F)", OF z_Hel])
  assume z_Hem:"((F[?z_heo])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "?z_hen=?z_heq")
  assume z_Hey:"(a_Fhash_primea=except(F, ?z_heo, (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))))" (is "_=?z_hfa")
  have z_Hie: "(?z_hif=?z_hda)"
  by (rule zenon_in_funcset_1 [of "F" "?z_hda" "FieldSet", OF z_Hcx])
  have z_Hgs: "(\\A zenon_Vqa:((zenon_Vqa \\in ?z_hda)=>((F[zenon_Vqa]) \\in FieldSet)))" (is "\\A x : ?z_hgy(x)")
  by (rule zenon_in_funcset_2 [of "F" "?z_hda" "FieldSet", OF z_Hcx])
  have z_Hgz: "?z_hgy(?z_hgi)" (is "_=>?z_hha")
  by (rule zenon_all_0 [of "?z_hgy" "?z_hgi", OF z_Hgs])
  show FALSE
  proof (rule zenon_imply [OF z_Hgz])
   assume z_Hhb:"(~?z_hgr)"
   show FALSE
   by (rule notE [OF z_Hhb z_Hgr])
  next
   assume z_Hha:"?z_hha"
   show FALSE
   proof (rule notE [OF z_Hgf])
    have z_Hhc: "((F[?z_hgi])=(a_Fhash_primea[?z_hgi]))" (is "?z_hhd=?z_hgh")
    proof (rule zenon_nnpp [of "(?z_hhd=?z_hgh)"])
     assume z_Hhe:"(?z_hhd~=?z_hgh)"
     have z_Hii: "(\\A zenon_Vjc:((zenon_Vjc \\in ?z_hif)<=>(zenon_Vjc \\in ?z_hda)))" (is "\\A x : ?z_hin(x)")
     by (rule zenon_setequal_0 [of "?z_hif" "?z_hda", OF z_Hie])
     have z_Hio: "(((isAFcn(a_Fhash_primea)<=>isAFcn(?z_hfa))&(DOMAIN(a_Fhash_primea)=DOMAIN(?z_hfa)))&(\\A zenon_Vkk:((a_Fhash_primea[zenon_Vkk])=(?z_hfa[zenon_Vkk]))))" (is "?z_hip&?z_hiw")
     by (rule zenon_funequal_0 [of "a_Fhash_primea" "?z_hfa", OF z_Hey])
     have z_Hiw: "?z_hiw" (is "\\A x : ?z_hjb(x)")
     by (rule zenon_and_1 [OF z_Hio])
     have z_Hjc: "?z_hjb(?z_hgi)" (is "_=?z_hjd")
     by (rule zenon_all_0 [of "?z_hjb" "?z_hgi", OF z_Hiw])
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vsmc. (?z_hgh=zenon_Vsmc))" "F" "?z_heo" "(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))" "?z_hgi", OF z_Hjc])
      assume z_Hjh:"(?z_hgi \\in ?z_hif)" (is "?z_hjh")
      assume z_Hji:"(?z_heo=?z_hgi)"
      assume z_Hjj:"(?z_hgh=(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "_=?z_hfb")
      show FALSE
      by (rule zenon_eqsym [OF z_Hji z_Hid])
     next
      assume z_Hjh:"(?z_hgi \\in ?z_hif)" (is "?z_hjh")
      assume z_Hjk:"(?z_heo~=?z_hgi)"
      assume z_Hjl:"(?z_hgh=?z_hhd)"
      show FALSE
      by (rule zenon_eqsym [OF z_Hjl z_Hhe])
     next
      assume z_Hjm:"(~(?z_hgi \\in ?z_hif))" (is "~?z_hjh")
      have z_Hjn: "?z_hin(?z_hgi)"
      by (rule zenon_all_0 [of "?z_hin" "?z_hgi", OF z_Hii])
      show FALSE
      proof (rule zenon_equiv [OF z_Hjn])
       assume z_Hjm:"(~?z_hjh)"
       assume z_Hhb:"(~?z_hgr)"
       show FALSE
       by (rule notE [OF z_Hhb z_Hgr])
      next
       assume z_Hjh:"?z_hjh"
       assume z_Hgr:"?z_hgr"
       show FALSE
       by (rule notE [OF z_Hjm z_Hjh])
      qed
     qed
    qed
    have z_Hgg: "?z_hgg"
    by (rule subst [where P="(\<lambda>zenon_Vgnc. (zenon_Vgnc \\in FieldSet))", OF z_Hhc], fact z_Hha)
    thus "?z_hgg" .
   qed
  qed
 next
  assume z_Hjo:"((F[?z_heo])~=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "?z_hen~=?z_heq")
  assume z_Hfe:"(a_Fhash_primea=F)"
  show FALSE
  by (rule zenon_L1_ [OF z_Hcx z_Hfe z_Hgf z_Hgr])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 126"; *} qed
lemma ob'120:
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
assumes v'55: "((((pc) \<in> ([(PROCESSES) \<rightarrow> ({(''0''), (''F1''), (''F2''), (''F3''), (''F4''), (''F5''), (''F6''), (''F7''), (''FR''), (''U1''), (''U2''), (''U3''), (''U4''), (''U5''), (''U6''), (''U7''), (''U8''), (''UR''), (''F1U1''), (''F2U1''), (''F3U1''), (''F4U1''), (''F5U1''), (''F6U1''), (''F7U1''), (''F8U1''), (''FRU1''), (''F1U2''), (''F2U2''), (''F3U2''), (''F4U2''), (''F5U2''), (''F6U2''), (''F7U2''), (''F8U2''), (''FRU2''), (''F1U7''), (''F2U7''), (''F3U7''), (''F4U7''), (''F5U7''), (''F6U7''), (''F7U7''), (''F8U7''), (''FRU7''), (''F1U8''), (''F2U8''), (''F3U8''), (''F4U8''), (''F5U8''), (''F6U8''), (''F7U8''), (''F8U8''), (''FRU8'')})]))) & (((F) \<in> ([((isa_peri_peri_a (((Succ[0])), (N)))) \<rightarrow> (FieldSet)]))) & (((a_uunde_Fa) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Fa) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_uunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_vunde_Ua) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((a_aunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_bunde_Ua) \<in> ([(PROCESSES) \<rightarrow> (FieldSet)]))) & (((a_ca) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((d) \<in> ([(PROCESSES) \<rightarrow> ((isa_peri_peri_a (((Succ[0])), (N))))]))) & (((M) \<in> ((SUBSET (Configs))))))"
assumes v'56: "(((Next) \<or> (((((a_pchash_primea :: c)) = (pc))) & ((((a_Fhash_primea :: c)) = (F))) & ((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))) & ((((a_Mhash_primea :: c)) = (M))))))"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'84: "((cond((((fapply ((F), (fapply ((a_uunde_Fa), (p))))) = (((''parent'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0))))))), (((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Fa), (p)))] = (((''parent'' :> (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))])))), (((((a_Fhash_primea :: c)) = (F)))))) & ((((((fapply ((pc), (p))) = (''F6''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2'')]))))) | (((((fapply ((pc), (p))) = (''F6U1''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U1'')]))))) | (((((fapply ((pc), (p))) = (''F6U2''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U2'')]))))) | (((((fapply ((pc), (p))) = (''F6U7''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U7'')]))))) | (((((fapply ((pc), (p))) = (''F6U8''))) \<and> ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''F2U8'')])))))))"
assumes v'85: "((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa)))"
assumes v'86: "((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa)))"
assumes v'87: "((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa)))"
assumes v'88: "((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua)))"
assumes v'89: "((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua)))"
assumes v'90: "((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua)))"
assumes v'91: "((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua)))"
assumes v'92: "((((a_chash_primea :: c)) = (a_ca)))"
assumes v'93: "((((a_dhash_primea :: c)) = (d)))"
assumes v'94: "((((a_Mhash_primea :: c)) = (M)))"
shows "(((((fapply (((a_Fhash_primea :: c)), (fapply ((a_uunde_Fa), (p))))) = (fapply ((F), (fapply ((a_uunde_Fa), (p))))))) \<or> (((fapply (((a_Fhash_primea :: c)), (fapply ((a_uunde_Fa), (p))))) = (((''parent'' :> (fapply ((fapply ((a_bunde_Fa), (p))), (''parent'')))) @@ (''rank'' :> (fapply ((fapply ((a_aunde_Fa), (p))), (''rank'')))) @@ (''bit'' :> ((0)))))))))"(is "PROP ?ob'120")
proof -
ML_command {* writeln "*** TLAPS ENTER 120"; *}
show "PROP ?ob'120"

(* BEGIN ZENON INPUT
;; file=TypeSafety_proof.tlaps/tlapm_a88603.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeSafety_proof.tlaps/tlapm_a88603.znn.out
;; obligation #120
$hyp "v'55" (/\ (TLA.in pc
(TLA.FuncSet PROCESSES (TLA.set "0" "F1" "F2" "F3" "F4" "F5" "F6" "F7" "FR" "U1" "U2" "U3" "U4" "U5" "U6" "U7" "U8" "UR" "F1U1" "F2U1" "F3U1" "F4U1" "F5U1" "F6U1" "F7U1" "F8U1" "FRU1" "F1U2" "F2U2" "F3U2" "F4U2" "F5U2" "F6U2" "F7U2" "F8U2" "FRU2" "F1U7" "F2U7" "F3U7" "F4U7" "F5U7" "F6U7" "F7U7" "F8U7" "FRU7" "F1U8" "F2U8" "F3U8" "F4U8" "F5U8" "F6U8" "F7U8" "F8U8" "FRU8")))
(TLA.in F (TLA.FuncSet (arith.intrange (TLA.fapply TLA.Succ 0) N) FieldSet))
(TLA.in a_uunde_Fa
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Fa (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Fa
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_uunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_vunde_Ua
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N)))
(TLA.in a_aunde_Ua (TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_bunde_Ua
(TLA.FuncSet PROCESSES FieldSet)) (TLA.in a_ca
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in d
(TLA.FuncSet PROCESSES (arith.intrange (TLA.fapply TLA.Succ 0) N))) (TLA.in M
(TLA.SUBSET Configs)))
$hyp "v'56" (\/ Next (/\ (= a_pchash_primea pc) (= a_Fhash_primea F)
(= a_uunde_Fhash_primea a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa)
(= a_bunde_Fhash_primea a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua)
(= a_vunde_Uhash_primea a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua)
(= a_bunde_Uhash_primea a_bunde_Ua) (= a_chash_primea a_ca) (= a_dhash_primea
d) (= a_Mhash_primea
M)))
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'84" (/\ (TLA.cond (= (TLA.fapply F (TLA.fapply a_uunde_Fa p))
(TLA.record "parent" (TLA.fapply (TLA.fapply a_aunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)) (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Fa p) (TLA.record "parent" (TLA.fapply (TLA.fapply a_bunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)))) (/\ (= a_Fhash_primea
F))) (\/ (/\ (= (TLA.fapply pc p) "F6") (= a_pchash_primea
(TLA.except pc p "F2"))) (/\ (= (TLA.fapply pc p) "F6U1") (= a_pchash_primea
(TLA.except pc p "F2U1"))) (/\ (= (TLA.fapply pc p) "F6U2")
(= a_pchash_primea (TLA.except pc p "F2U2"))) (/\ (= (TLA.fapply pc p)
"F6U7") (= a_pchash_primea (TLA.except pc p "F2U7")))
(/\ (= (TLA.fapply pc p) "F6U8") (= a_pchash_primea
(TLA.except pc p "F2U8")))))
$hyp "v'85" (= a_aunde_Fhash_primea
a_aunde_Fa)
$hyp "v'86" (= a_bunde_Fhash_primea
a_bunde_Fa)
$hyp "v'87" (= a_uunde_Fhash_primea
a_uunde_Fa)
$hyp "v'88" (= a_uunde_Uhash_primea
a_uunde_Ua)
$hyp "v'89" (= a_vunde_Uhash_primea
a_vunde_Ua)
$hyp "v'90" (= a_aunde_Uhash_primea
a_aunde_Ua)
$hyp "v'91" (= a_bunde_Uhash_primea a_bunde_Ua)
$hyp "v'92" (= a_chash_primea a_ca)
$hyp "v'93" (= a_dhash_primea d)
$hyp "v'94" (= a_Mhash_primea
M)
$goal (\/ (= (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fa p))
(TLA.fapply F (TLA.fapply a_uunde_Fa p)))
(= (TLA.fapply a_Fhash_primea (TLA.fapply a_uunde_Fa p))
(TLA.record "parent" (TLA.fapply (TLA.fapply a_bunde_Fa p) "parent") "rank" (TLA.fapply (TLA.fapply a_aunde_Fa p) "rank") "bit" 0)))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"((pc \\in FuncSet(PROCESSES, {''0'', ''F1'', ''F2'', ''F3'', ''F4'', ''F5'', ''F6'', ''F7'', ''FR'', ''U1'', ''U2'', ''U3'', ''U4'', ''U5'', ''U6'', ''U7'', ''U8'', ''UR'', ''F1U1'', ''F2U1'', ''F3U1'', ''F4U1'', ''F5U1'', ''F6U1'', ''F7U1'', ''F8U1'', ''FRU1'', ''F1U2'', ''F2U2'', ''F3U2'', ''F4U2'', ''F5U2'', ''F6U2'', ''F7U2'', ''F8U2'', ''FRU2'', ''F1U7'', ''F2U7'', ''F3U7'', ''F4U7'', ''F5U7'', ''F6U7'', ''F7U7'', ''F8U7'', ''FRU7'', ''F1U8'', ''F2U8'', ''F3U8'', ''F4U8'', ''F5U8'', ''F6U8'', ''F7U8'', ''F8U8'', ''FRU8''}))&((F \\in FuncSet(isa'dotdot(1, N), FieldSet))&((a_uunde_Fa \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Fa \\in FuncSet(PROCESSES, FieldSet))&((a_uunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_vunde_Ua \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((a_aunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_bunde_Ua \\in FuncSet(PROCESSES, FieldSet))&((a_ca \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&((d \\in FuncSet(PROCESSES, isa'dotdot(1, N)))&(M \\in SUBSET(Configs)))))))))))))" (is "?z_hp&?z_hcw")
 using v'55 by blast
 have z_Hd:"(cond(((F[(a_uunde_Fa[p])])=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0))), (a_Fhash_primea=except(F, (a_uunde_Fa[p]), (''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))), (a_Fhash_primea=F))&((((pc[p])=''F6'')&(a_pchash_primea=except(pc, p, ''F2'')))|((((pc[p])=''F6U1'')&(a_pchash_primea=except(pc, p, ''F2U1'')))|((((pc[p])=''F6U2'')&(a_pchash_primea=except(pc, p, ''F2U2'')))|((((pc[p])=''F6U7'')&(a_pchash_primea=except(pc, p, ''F2U7'')))|(((pc[p])=''F6U8'')&(a_pchash_primea=except(pc, p, ''F2U8''))))))))" (is "?z_hel&?z_hff")
 using v'84 by blast
 have z_Hc:"(p \\in PROCESSES)" (is "?z_hc")
 using p_in by blast
 assume z_Ho:"(~(((a_Fhash_primea[(a_uunde_Fa[p])])=(F[(a_uunde_Fa[p])]))|((a_Fhash_primea[(a_uunde_Fa[p])])=(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))))" (is "~(?z_hgg|?z_hgi)")
 have z_Hcw: "?z_hcw" (is "?z_hcx&?z_hde")
 by (rule zenon_and_1 [OF z_Ha])
 have z_Hcx: "?z_hcx"
 by (rule zenon_and_0 [OF z_Hcw])
 have z_Hde: "?z_hde" (is "?z_hdf&?z_hdi")
 by (rule zenon_and_1 [OF z_Hcw])
 have z_Hdf: "?z_hdf"
 by (rule zenon_and_0 [OF z_Hde])
 have z_Hel: "?z_hel"
 by (rule zenon_and_0 [OF z_Hd])
 have z_Hgj: "((a_Fhash_primea[(a_uunde_Fa[p])])~=(F[(a_uunde_Fa[p])]))" (is "?z_hgh~=?z_hen")
 by (rule zenon_notor_0 [OF z_Ho])
 have z_Hgk: "(?z_hgh~=(''parent'' :> (((a_bunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "_~=?z_hfb")
 by (rule zenon_notor_1 [OF z_Ho])
 have z_Hgl: "(DOMAIN(F)=isa'dotdot(1, N))" (is "?z_hgm=?z_hda")
 by (rule zenon_in_funcset_1 [of "F" "?z_hda" "FieldSet", OF z_Hcx])
 show FALSE
 proof (rule zenon_noteq [of "?z_hen"])
  have z_Hfe: "(a_Fhash_primea=F)"
  proof (rule zenon_nnpp [of "(a_Fhash_primea=F)"])
   assume z_Hgn:"(a_Fhash_primea~=F)"
   show FALSE
   proof (rule zenon_ifthenelse [of "(\<lambda>zenon_Vua. zenon_Vua)" "(?z_hen=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" "(a_Fhash_primea=except(F, (a_uunde_Fa[p]), ?z_hfb))" "(a_Fhash_primea=F)", OF z_Hel])
    assume z_Hem:"(?z_hen=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "_=?z_heq")
    assume z_Hey:"(a_Fhash_primea=except(F, (a_uunde_Fa[p]), ?z_hfb))" (is "_=?z_hfa")
    have z_Hgq: "(\\A zenon_Vna:((zenon_Vna \\in PROCESSES)=>((a_uunde_Fa[zenon_Vna]) \\in ?z_hda)))" (is "\\A x : ?z_hgw(x)")
    by (rule zenon_in_funcset_2 [of "a_uunde_Fa" "PROCESSES" "?z_hda", OF z_Hdf])
    have z_Hgx: "(\\A zenon_Vec:((zenon_Vec \\in ?z_hgm)<=>(zenon_Vec \\in ?z_hda)))" (is "\\A x : ?z_hhc(x)")
    by (rule zenon_setequal_0 [of "?z_hgm" "?z_hda", OF z_Hgl])
    have z_Hhd: "(((isAFcn(a_Fhash_primea)<=>isAFcn(?z_hfa))&(DOMAIN(a_Fhash_primea)=DOMAIN(?z_hfa)))&(\\A zenon_Vlg:((a_Fhash_primea[zenon_Vlg])=(?z_hfa[zenon_Vlg]))))" (is "?z_hhe&?z_hhl")
    by (rule zenon_funequal_0 [of "a_Fhash_primea" "?z_hfa", OF z_Hey])
    have z_Hhl: "?z_hhl" (is "\\A x : ?z_hhq(x)")
    by (rule zenon_and_1 [OF z_Hhd])
    have z_Hhr: "?z_hhc((a_uunde_Fa[p]))" (is "?z_hhs<=>?z_hht")
    by (rule zenon_all_0 [of "?z_hhc" "(a_uunde_Fa[p])", OF z_Hgx])
    show FALSE
    proof (rule zenon_equiv [OF z_Hhr])
     assume z_Hhu:"(~?z_hhs)"
     assume z_Hhv:"(~?z_hht)"
     have z_Hhw: "?z_hgw(p)"
     by (rule zenon_all_0 [of "?z_hgw" "p", OF z_Hgq])
     show FALSE
     proof (rule zenon_imply [OF z_Hhw])
      assume z_Hhx:"(~?z_hc)"
      show FALSE
      by (rule notE [OF z_Hhx z_Hc])
     next
      assume z_Hht:"?z_hht"
      show FALSE
      by (rule notE [OF z_Hhv z_Hht])
     qed
    next
     assume z_Hhs:"?z_hhs"
     assume z_Hht:"?z_hht"
     have z_Hhy: "?z_hhq((a_uunde_Fa[p]))" (is "_=?z_hhz")
     by (rule zenon_all_0 [of "?z_hhq" "(a_uunde_Fa[p])", OF z_Hhl])
     show FALSE
     proof (rule zenon_fapplyexcept [of "(\<lambda>zenon_Vile. (?z_hgh=zenon_Vile))" "F" "(a_uunde_Fa[p])" "?z_hfb" "(a_uunde_Fa[p])", OF z_Hhy])
      assume z_Hhs:"?z_hhs"
      assume z_Hid:"((a_uunde_Fa[p])=(a_uunde_Fa[p]))" (is "?z_heo=_")
      assume z_Hgi:"?z_hgi"
      show FALSE
      by (rule notE [OF z_Hgk z_Hgi])
     next
      assume z_Hhs:"?z_hhs"
      assume z_Hie:"((a_uunde_Fa[p])~=(a_uunde_Fa[p]))" (is "?z_heo~=_")
      assume z_Hgg:"?z_hgg"
      show FALSE
      by (rule zenon_noteq [OF z_Hie])
     next
      assume z_Hhu:"(~?z_hhs)"
      show FALSE
      by (rule notE [OF z_Hhu z_Hhs])
     qed
    qed
   next
    assume z_Hif:"(?z_hen~=(''parent'' :> (((a_aunde_Fa[p])[''parent''])) @@ ''rank'' :> (((a_aunde_Fa[p])[''rank''])) @@ ''bit'' :> (0)))" (is "_~=?z_heq")
    assume z_Hfe:"(a_Fhash_primea=F)"
    show FALSE
    by (rule notE [OF z_Hgn z_Hfe])
   qed
  qed
  have z_Hig: "(?z_hen~=?z_hen)"
  by (rule subst [where P="(\<lambda>zenon_Vrme. ((zenon_Vrme[(a_uunde_Fa[p])])~=?z_hen))", OF z_Hfe], fact z_Hgj)
  thus "(?z_hen~=?z_hen)" .
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 120"; *} qed
end
