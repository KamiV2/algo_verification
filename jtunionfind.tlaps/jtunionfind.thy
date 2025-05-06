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
assumes v'110: "(Inv)"
fixes p
assumes p_in : "(p \<in> (PROCESSES))"
assumes v'112: "((a_U6a ((p))))"
assumes v'115: "((((a_hef12f5554781c2213604492856f635a :: c)) \<and> (TypeOK)))"
assumes v'116: "(((fapply ((pc), (p))) = (''U6'')))"
assumes v'126: "(((((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> ((arith_add ((fapply ((fapply ((a_aunde_Ua), (p))), (''rank''))), ((Succ[0])))))) @@ (''bit'' :> ((0)))))]))) & ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : (((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))))))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))) \<Longrightarrow> ((a_h398deecb70354c47fc829b1a4e2cb6a :: c))))"
assumes v'127: "(((((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> ((arith_add ((fapply ((fapply ((a_aunde_Ua), (p))), (''rank''))), ((Succ[0])))))) @@ (''bit'' :> ((Succ[0])))))]))) & ((((a_Mhash_primea :: c)) = (M))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))) \<Longrightarrow> ((a_h398deecb70354c47fc829b1a4e2cb6a :: c))))"
assumes v'128: "((((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> ((arith_add ((fapply ((fapply ((a_aunde_Ua), (p))), (''rank''))), ((Succ[0])))))) @@ (''bit'' :> ((0)))))]))) & ((((a_Mhash_primea :: c)) = (subsetOf((Configs), %t. (\<exists> told \<in> (M) : (((((fapply ((fapply ((told), (''ret''))), (p))) = (BOT))) & (((fapply ((t), (''ret''))) = ([(fapply ((told), (''ret''))) EXCEPT ![(p)] = (ACK)]))) & (((fapply ((t), (''sigma''))) = ([ i \<in> (NodeSet)  \<mapsto> (cond((((fapply ((fapply ((told), (''sigma''))), (i))) = (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[0])))))))), (fapply ((fapply ((told), (''sigma''))), (fapply ((fapply ((fapply ((told), (''arg''))), (p))), ((Succ[Succ[0]])))))), (fapply ((fapply ((told), (''sigma''))), (i)))))]))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))) | ((((fapply ((fapply ((told), (''ret''))), (p))) = (ACK))) & (((fapply ((t), (''ret''))) = (fapply ((told), (''ret''))))) & (((fapply ((t), (''sigma''))) = (fapply ((told), (''sigma''))))) & (((fapply ((t), (''op''))) = (fapply ((told), (''op''))))) & (((fapply ((t), (''arg''))) = (fapply ((told), (''arg'')))))))))))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))) | (((((a_Fhash_primea :: c)) = ([(F) EXCEPT ![(fapply ((a_uunde_Ua), (p)))] = (((''parent'' :> (fapply ((a_vunde_Ua), (p)))) @@ (''rank'' :> ((arith_add ((fapply ((fapply ((a_aunde_Ua), (p))), (''rank''))), ((Succ[0])))))) @@ (''bit'' :> ((Succ[0])))))]))) & ((((a_Mhash_primea :: c)) = (M))) & ((((a_pchash_primea :: c)) = ([(pc) EXCEPT ![(p)] = (''U7'')]))) & (((((a_uunde_Fhash_primea :: c)) = (a_uunde_Fa))) & ((((a_aunde_Fhash_primea :: c)) = (a_aunde_Fa))) & ((((a_bunde_Fhash_primea :: c)) = (a_bunde_Fa))) & ((((a_uunde_Uhash_primea :: c)) = (a_uunde_Ua))) & ((((a_vunde_Uhash_primea :: c)) = (a_vunde_Ua))) & ((((a_aunde_Uhash_primea :: c)) = (a_aunde_Ua))) & ((((a_bunde_Uhash_primea :: c)) = (a_bunde_Ua))) & ((((a_chash_primea :: c)) = (a_ca))) & ((((a_dhash_primea :: c)) = (d))))))"
shows "((a_h398deecb70354c47fc829b1a4e2cb6a :: c))"(is "PROP ?ob'1")
proof -
ML_command {* writeln "*** TLAPS ENTER 1"; *}
show "PROP ?ob'1"

(* BEGIN ZENON INPUT
;; file=jtunionfind.tlaps/tlapm_18ae94.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >jtunionfind.tlaps/tlapm_18ae94.znn.out
;; obligation #1
$hyp "v'110" Inv
$hyp "p_in" (TLA.in p PROCESSES)
$hyp "v'112" (a_U6a p)
$hyp "v'115" (/\ a_hef12f5554781c2213604492856f635a
TypeOK)
$hyp "v'116" (= (TLA.fapply pc p) "U6")
$hyp "v'126" (=> (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Ua p) (TLA.record "parent" (TLA.fapply a_vunde_Ua p) "rank" (arith.add (TLA.fapply (TLA.fapply a_aunde_Ua p) "rank")
(TLA.fapply TLA.Succ 0)) "bit" 0))) (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (\/ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
BOT) (= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p ACK))
(= (TLA.fapply t "sigma")
(TLA.Fcn NodeSet ((i) (TLA.cond (= (TLA.fapply (TLA.fapply told "sigma") i)
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") i)))))
(= (TLA.fapply t "op") (TLA.fapply told "op")) (= (TLA.fapply t "arg")
(TLA.fapply told "arg"))) (/\ (= (TLA.fapply (TLA.fapply told "ret") p) ACK)
(= (TLA.fapply t "ret") (TLA.fapply told "ret")) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "op") (TLA.fapply told "op"))
(= (TLA.fapply t "arg") (TLA.fapply told "arg"))))))))) (= a_pchash_primea
(TLA.except pc p "U7")) (/\ (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_chash_primea a_ca) (= a_dhash_primea
d))) a_h398deecb70354c47fc829b1a4e2cb6a)
$hyp "v'127" (=> (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Ua p) (TLA.record "parent" (TLA.fapply a_vunde_Ua p) "rank" (arith.add (TLA.fapply (TLA.fapply a_aunde_Ua p) "rank")
(TLA.fapply TLA.Succ 0)) "bit" (TLA.fapply TLA.Succ 0)))) (= a_Mhash_primea
M) (= a_pchash_primea (TLA.except pc p "U7")) (/\ (= a_uunde_Fhash_primea
a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea
a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea
a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua) (= a_chash_primea a_ca) (= a_dhash_primea
d))) a_h398deecb70354c47fc829b1a4e2cb6a)
$hyp "v'128" (\/ (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Ua p) (TLA.record "parent" (TLA.fapply a_vunde_Ua p) "rank" (arith.add (TLA.fapply (TLA.fapply a_aunde_Ua p) "rank")
(TLA.fapply TLA.Succ 0)) "bit" 0))) (= a_Mhash_primea
(TLA.subsetOf Configs ((t) (TLA.bEx M ((told) (\/ (/\ (= (TLA.fapply (TLA.fapply told "ret") p)
BOT) (= (TLA.fapply t "ret") (TLA.except (TLA.fapply told "ret") p ACK))
(= (TLA.fapply t "sigma")
(TLA.Fcn NodeSet ((i) (TLA.cond (= (TLA.fapply (TLA.fapply told "sigma") i)
(TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") (TLA.fapply (TLA.fapply (TLA.fapply told "arg") p) (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (TLA.fapply told "sigma") i)))))
(= (TLA.fapply t "op") (TLA.fapply told "op")) (= (TLA.fapply t "arg")
(TLA.fapply told "arg"))) (/\ (= (TLA.fapply (TLA.fapply told "ret") p) ACK)
(= (TLA.fapply t "ret") (TLA.fapply told "ret")) (= (TLA.fapply t "sigma")
(TLA.fapply told "sigma")) (= (TLA.fapply t "op") (TLA.fapply told "op"))
(= (TLA.fapply t "arg") (TLA.fapply told "arg"))))))))) (= a_pchash_primea
(TLA.except pc p "U7")) (/\ (= a_uunde_Fhash_primea a_uunde_Fa)
(= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea a_bunde_Fa)
(= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea a_vunde_Ua)
(= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea a_bunde_Ua)
(= a_chash_primea a_ca) (= a_dhash_primea d))) (/\ (= a_Fhash_primea
(TLA.except F (TLA.fapply a_uunde_Ua p) (TLA.record "parent" (TLA.fapply a_vunde_Ua p) "rank" (arith.add (TLA.fapply (TLA.fapply a_aunde_Ua p) "rank")
(TLA.fapply TLA.Succ 0)) "bit" (TLA.fapply TLA.Succ 0)))) (= a_Mhash_primea
M) (= a_pchash_primea (TLA.except pc p "U7")) (/\ (= a_uunde_Fhash_primea
a_uunde_Fa) (= a_aunde_Fhash_primea a_aunde_Fa) (= a_bunde_Fhash_primea
a_bunde_Fa) (= a_uunde_Uhash_primea a_uunde_Ua) (= a_vunde_Uhash_primea
a_vunde_Ua) (= a_aunde_Uhash_primea a_aunde_Ua) (= a_bunde_Uhash_primea
a_bunde_Ua) (= a_chash_primea a_ca) (= a_dhash_primea
d))))
$goal a_h398deecb70354c47fc829b1a4e2cb6a
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(((a_Fhash_primea=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (0))))&((a_Mhash_primea=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((told[''ret''])[p])=BOT)&(((t[''ret''])=except((told[''ret'']), p, ACK))&(((t[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg'']))))))|((((told[''ret''])[p])=ACK)&(((t[''ret''])=(told[''ret'']))&(((t[''sigma''])=(told[''sigma'']))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg'']))))))))))))&((a_pchash_primea=except(pc, p, ''U7''))&((a_uunde_Fhash_primea=a_uunde_Fa)&((a_aunde_Fhash_primea=a_aunde_Fa)&((a_bunde_Fhash_primea=a_bunde_Fa)&((a_uunde_Uhash_primea=a_uunde_Ua)&((a_vunde_Uhash_primea=a_vunde_Ua)&((a_aunde_Uhash_primea=a_aunde_Ua)&((a_bunde_Uhash_primea=a_bunde_Ua)&((a_chash_primea=a_ca)&(a_dhash_primea=d))))))))))))=>a_h398deecb70354c47fc829b1a4e2cb6a)" (is "?z_hj=>_")
 using v'126 by blast
 have z_Hh:"(?z_hj|((a_Fhash_primea=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (1))))&((a_Mhash_primea=M)&((a_pchash_primea=except(pc, p, ''U7''))&((a_uunde_Fhash_primea=a_uunde_Fa)&((a_aunde_Fhash_primea=a_aunde_Fa)&((a_bunde_Fhash_primea=a_bunde_Fa)&((a_uunde_Uhash_primea=a_uunde_Ua)&((a_vunde_Uhash_primea=a_vunde_Ua)&((a_aunde_Uhash_primea=a_aunde_Ua)&((a_bunde_Uhash_primea=a_bunde_Ua)&((a_chash_primea=a_ca)&(a_dhash_primea=d)))))))))))))" (is "_|?z_heu")
 using v'128 by blast
 have z_Hg:"(?z_heu=>a_h398deecb70354c47fc829b1a4e2cb6a)"
 using v'127 by blast
 have zenon_L1_: "?z_hj ==> (a_Fhash_primea~=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (0)))) ==> FALSE" (is "_ ==> ?z_hfa ==> FALSE")
 proof -
  assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
  assume z_Hfa:"?z_hfa" (is "_~=?z_hm")
  have z_Hk: "?z_hk"
  by (rule zenon_and_0 [OF z_Hj])
  show FALSE
  by (rule notE [OF z_Hfa z_Hk])
 qed
 have zenon_L2_: "?z_heu ==> (a_Fhash_primea~=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (1)))) ==> FALSE" (is "_ ==> ?z_hfb ==> FALSE")
 proof -
  assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
  assume z_Hfb:"?z_hfb" (is "_~=?z_hew")
  have z_Hev: "?z_hev"
  by (rule zenon_and_0 [OF z_Heu])
  show FALSE
  by (rule notE [OF z_Hfb z_Hev])
 qed
 have zenon_L3_: "?z_heu ==> (a_Mhash_primea~=M) ==> FALSE" (is "_ ==> ?z_hfc ==> FALSE")
 proof -
  assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
  assume z_Hfc:"?z_hfc"
  have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
  by (rule zenon_and_1 [OF z_Heu])
  have z_Hez: "?z_hez"
  by (rule zenon_and_0 [OF z_Hey])
  show FALSE
  by (rule notE [OF z_Hfc z_Hez])
 qed
 have zenon_L4_: "?z_heu ==> (a_pchash_primea~=except(pc, p, ''U7'')) ==> FALSE" (is "_ ==> ?z_hfd ==> FALSE")
 proof -
  assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
  assume z_Hfd:"?z_hfd" (is "_~=?z_hdk")
  have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
  by (rule zenon_and_1 [OF z_Heu])
  have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
  by (rule zenon_and_1 [OF z_Hey])
  have z_Hdi: "?z_hdi"
  by (rule zenon_and_0 [OF z_Hdh])
  show FALSE
  by (rule notE [OF z_Hfd z_Hdi])
 qed
 have zenon_L5_: "(?z_hj|?z_heu) ==> (a_pchash_primea~=except(pc, p, ''U7'')) ==> FALSE" (is "?z_hh ==> ?z_hfd ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfd:"?z_hfd" (is "_~=?z_hdk")
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdi: "?z_hdi"
   by (rule zenon_and_0 [OF z_Hdh])
   show FALSE
   by (rule notE [OF z_Hfd z_Hdi])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   show FALSE
   by (rule zenon_L4_ [OF z_Heu z_Hfd])
  qed
 qed
 have zenon_L6_: "(?z_hj|?z_heu) ==> (a_uunde_Fhash_primea~=a_uunde_Fa) ==> FALSE" (is "?z_hh ==> ?z_hfe ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfe:"?z_hfe"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdo: "?z_hdo"
   by (rule zenon_and_0 [OF z_Hdn])
   show FALSE
   by (rule notE [OF z_Hfe z_Hdo])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdo: "?z_hdo"
   by (rule zenon_and_0 [OF z_Hdn])
   show FALSE
   by (rule notE [OF z_Hfe z_Hdo])
  qed
 qed
 have zenon_L7_: "(?z_hj|?z_heu) ==> (a_aunde_Fhash_primea~=a_aunde_Fa) ==> FALSE" (is "?z_hh ==> ?z_hff ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hff:"?z_hff"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hds: "?z_hds"
   by (rule zenon_and_0 [OF z_Hdr])
   show FALSE
   by (rule notE [OF z_Hff z_Hds])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hds: "?z_hds"
   by (rule zenon_and_0 [OF z_Hdr])
   show FALSE
   by (rule notE [OF z_Hff z_Hds])
  qed
 qed
 have zenon_L8_: "(?z_hj|?z_heu) ==> (a_bunde_Fhash_primea~=a_bunde_Fa) ==> FALSE" (is "?z_hh ==> ?z_hfg ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfg:"?z_hfg"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdw: "?z_hdw"
   by (rule zenon_and_0 [OF z_Hdv])
   show FALSE
   by (rule notE [OF z_Hfg z_Hdw])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdw: "?z_hdw"
   by (rule zenon_and_0 [OF z_Hdv])
   show FALSE
   by (rule notE [OF z_Hfg z_Hdw])
  qed
 qed
 have zenon_L9_: "(?z_hj|?z_heu) ==> (a_uunde_Uhash_primea~=a_uunde_Ua) ==> FALSE" (is "?z_hh ==> ?z_hfh ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfh:"?z_hfh"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hea: "?z_hea"
   by (rule zenon_and_0 [OF z_Hdz])
   show FALSE
   by (rule notE [OF z_Hfh z_Hea])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hea: "?z_hea"
   by (rule zenon_and_0 [OF z_Hdz])
   show FALSE
   by (rule notE [OF z_Hfh z_Hea])
  qed
 qed
 have zenon_L10_: "(?z_hj|?z_heu) ==> (a_vunde_Uhash_primea~=a_vunde_Ua) ==> FALSE" (is "?z_hh ==> ?z_hfi ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfi:"?z_hfi"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hed: "?z_hed"
   by (rule zenon_and_0 [OF z_Hec])
   show FALSE
   by (rule notE [OF z_Hfi z_Hed])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hed: "?z_hed"
   by (rule zenon_and_0 [OF z_Hec])
   show FALSE
   by (rule notE [OF z_Hfi z_Hed])
  qed
 qed
 have zenon_L11_: "(?z_hj|?z_heu) ==> (a_aunde_Uhash_primea~=a_aunde_Ua) ==> FALSE" (is "?z_hh ==> ?z_hfj ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfj:"?z_hfj"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Heg: "?z_heg"
   by (rule zenon_and_0 [OF z_Hef])
   show FALSE
   by (rule notE [OF z_Hfj z_Heg])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Heg: "?z_heg"
   by (rule zenon_and_0 [OF z_Hef])
   show FALSE
   by (rule notE [OF z_Hfj z_Heg])
  qed
 qed
 have zenon_L12_: "(?z_hj|?z_heu) ==> (a_bunde_Uhash_primea~=a_bunde_Ua) ==> FALSE" (is "?z_hh ==> ?z_hfk ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfk:"?z_hfk"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hej: "?z_hej"
   by (rule zenon_and_0 [OF z_Hei])
   show FALSE
   by (rule notE [OF z_Hfk z_Hej])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hej: "?z_hej"
   by (rule zenon_and_0 [OF z_Hei])
   show FALSE
   by (rule notE [OF z_Hfk z_Hej])
  qed
 qed
 have zenon_L13_: "(?z_hj|?z_heu) ==> (a_chash_primea~=a_ca) ==> FALSE" (is "?z_hh ==> ?z_hfl ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfl:"?z_hfl"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hem: "?z_hem" (is "?z_hen&?z_heq")
   by (rule zenon_and_1 [OF z_Hei])
   have z_Hen: "?z_hen"
   by (rule zenon_and_0 [OF z_Hem])
   show FALSE
   by (rule notE [OF z_Hfl z_Hen])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hem: "?z_hem" (is "?z_hen&?z_heq")
   by (rule zenon_and_1 [OF z_Hei])
   have z_Hen: "?z_hen"
   by (rule zenon_and_0 [OF z_Hem])
   show FALSE
   by (rule notE [OF z_Hfl z_Hen])
  qed
 qed
 have zenon_L14_: "(?z_hj|?z_heu) ==> (a_dhash_primea~=d) ==> FALSE" (is "?z_hh ==> ?z_hfm ==> FALSE")
 proof -
  assume z_Hh:"?z_hh"
  assume z_Hfm:"?z_hfm"
  show FALSE
  proof (rule zenon_or [OF z_Hh])
   assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
   have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
   by (rule zenon_and_1 [OF z_Hj])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hbd])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hem: "?z_hem" (is "?z_hen&?z_heq")
   by (rule zenon_and_1 [OF z_Hei])
   have z_Heq: "?z_heq"
   by (rule zenon_and_1 [OF z_Hem])
   show FALSE
   by (rule notE [OF z_Hfm z_Heq])
  next
   assume z_Heu:"?z_heu" (is "?z_hev&?z_hey")
   have z_Hey: "?z_hey" (is "?z_hez&?z_hdh")
   by (rule zenon_and_1 [OF z_Heu])
   have z_Hdh: "?z_hdh" (is "?z_hdi&?z_hdn")
   by (rule zenon_and_1 [OF z_Hey])
   have z_Hdn: "?z_hdn" (is "?z_hdo&?z_hdr")
   by (rule zenon_and_1 [OF z_Hdh])
   have z_Hdr: "?z_hdr" (is "?z_hds&?z_hdv")
   by (rule zenon_and_1 [OF z_Hdn])
   have z_Hdv: "?z_hdv" (is "?z_hdw&?z_hdz")
   by (rule zenon_and_1 [OF z_Hdr])
   have z_Hdz: "?z_hdz" (is "?z_hea&?z_hec")
   by (rule zenon_and_1 [OF z_Hdv])
   have z_Hec: "?z_hec" (is "?z_hed&?z_hef")
   by (rule zenon_and_1 [OF z_Hdz])
   have z_Hef: "?z_hef" (is "?z_heg&?z_hei")
   by (rule zenon_and_1 [OF z_Hec])
   have z_Hei: "?z_hei" (is "?z_hej&?z_hem")
   by (rule zenon_and_1 [OF z_Hef])
   have z_Hem: "?z_hem" (is "?z_hen&?z_heq")
   by (rule zenon_and_1 [OF z_Hei])
   have z_Heq: "?z_heq"
   by (rule zenon_and_1 [OF z_Hem])
   show FALSE
   by (rule notE [OF z_Hfm z_Heq])
  qed
 qed
 have zenon_L15_: "?z_hj ==> (a_Mhash_primea~=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((told[''ret''])[p])=BOT)&(((t[''ret''])=except((told[''ret'']), p, ACK))&(((t[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg'']))))))|((((told[''ret''])[p])=ACK)&(((t[''ret''])=(told[''ret'']))&(((t[''sigma''])=(told[''sigma'']))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg''])))))))))))) ==> FALSE" (is "_ ==> ?z_hfn ==> FALSE")
 proof -
  assume z_Hj:"?z_hj" (is "?z_hk&?z_hbd")
  assume z_Hfn:"?z_hfn" (is "_~=?z_hbg")
  have z_Hbd: "?z_hbd" (is "?z_hbe&?z_hdh")
  by (rule zenon_and_1 [OF z_Hj])
  have z_Hbe: "?z_hbe"
  by (rule zenon_and_0 [OF z_Hbd])
  show FALSE
  by (rule notE [OF z_Hfn z_Hbe])
 qed
 assume z_Hi:"(~a_h398deecb70354c47fc829b1a4e2cb6a)"
 show FALSE
 proof (rule zenon_imply [OF z_Hf])
  assume z_Hfo:"(~?z_hj)" (is "~(?z_hk&?z_hbd)")
  show FALSE
  proof (rule zenon_notand [OF z_Hfo])
   assume z_Hfa:"(a_Fhash_primea~=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (0))))" (is "_~=?z_hm")
   show FALSE
   proof (rule zenon_imply [OF z_Hg])
    assume z_Hfp:"(~?z_heu)" (is "~(?z_hev&?z_hey)")
    show FALSE
    proof (rule zenon_notand [OF z_Hfp])
     assume z_Hfb:"(a_Fhash_primea~=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (1))))" (is "_~=?z_hew")
     show FALSE
     proof (rule zenon_or [OF z_Hh])
      assume z_Hj:"?z_hj"
      show FALSE
      by (rule zenon_L1_ [OF z_Hj z_Hfa])
     next
      assume z_Heu:"?z_heu"
      show FALSE
      by (rule zenon_L2_ [OF z_Heu z_Hfb])
     qed
    next
     assume z_Hfq:"(~?z_hey)" (is "~(?z_hez&?z_hdh)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfq])
      assume z_Hfc:"(a_Mhash_primea~=M)"
      show FALSE
      proof (rule zenon_or [OF z_Hh])
       assume z_Hj:"?z_hj"
       show FALSE
       by (rule zenon_L1_ [OF z_Hj z_Hfa])
      next
       assume z_Heu:"?z_heu"
       show FALSE
       by (rule zenon_L3_ [OF z_Heu z_Hfc])
      qed
     next
      assume z_Hfr:"(~?z_hdh)" (is "~(?z_hdi&?z_hdn)")
      show FALSE
      proof (rule zenon_notand [OF z_Hfr])
       assume z_Hfd:"(a_pchash_primea~=except(pc, p, ''U7''))" (is "_~=?z_hdk")
       show FALSE
       by (rule zenon_L5_ [OF z_Hh z_Hfd])
      next
       assume z_Hfs:"(~?z_hdn)" (is "~(?z_hdo&?z_hdr)")
       show FALSE
       proof (rule zenon_notand [OF z_Hfs])
        assume z_Hfe:"(a_uunde_Fhash_primea~=a_uunde_Fa)"
        show FALSE
        by (rule zenon_L6_ [OF z_Hh z_Hfe])
       next
        assume z_Hft:"(~?z_hdr)" (is "~(?z_hds&?z_hdv)")
        show FALSE
        proof (rule zenon_notand [OF z_Hft])
         assume z_Hff:"(a_aunde_Fhash_primea~=a_aunde_Fa)"
         show FALSE
         by (rule zenon_L7_ [OF z_Hh z_Hff])
        next
         assume z_Hfu:"(~?z_hdv)" (is "~(?z_hdw&?z_hdz)")
         show FALSE
         proof (rule zenon_notand [OF z_Hfu])
          assume z_Hfg:"(a_bunde_Fhash_primea~=a_bunde_Fa)"
          show FALSE
          by (rule zenon_L8_ [OF z_Hh z_Hfg])
         next
          assume z_Hfv:"(~?z_hdz)" (is "~(?z_hea&?z_hec)")
          show FALSE
          proof (rule zenon_notand [OF z_Hfv])
           assume z_Hfh:"(a_uunde_Uhash_primea~=a_uunde_Ua)"
           show FALSE
           by (rule zenon_L9_ [OF z_Hh z_Hfh])
          next
           assume z_Hfw:"(~?z_hec)" (is "~(?z_hed&?z_hef)")
           show FALSE
           proof (rule zenon_notand [OF z_Hfw])
            assume z_Hfi:"(a_vunde_Uhash_primea~=a_vunde_Ua)"
            show FALSE
            by (rule zenon_L10_ [OF z_Hh z_Hfi])
           next
            assume z_Hfx:"(~?z_hef)" (is "~(?z_heg&?z_hei)")
            show FALSE
            proof (rule zenon_notand [OF z_Hfx])
             assume z_Hfj:"(a_aunde_Uhash_primea~=a_aunde_Ua)"
             show FALSE
             by (rule zenon_L11_ [OF z_Hh z_Hfj])
            next
             assume z_Hfy:"(~?z_hei)" (is "~(?z_hej&?z_hem)")
             show FALSE
             proof (rule zenon_notand [OF z_Hfy])
              assume z_Hfk:"(a_bunde_Uhash_primea~=a_bunde_Ua)"
              show FALSE
              by (rule zenon_L12_ [OF z_Hh z_Hfk])
             next
              assume z_Hfz:"(~?z_hem)" (is "~(?z_hen&?z_heq)")
              show FALSE
              proof (rule zenon_notand [OF z_Hfz])
               assume z_Hfl:"(a_chash_primea~=a_ca)"
               show FALSE
               by (rule zenon_L13_ [OF z_Hh z_Hfl])
              next
               assume z_Hfm:"(a_dhash_primea~=d)"
               show FALSE
               by (rule zenon_L14_ [OF z_Hh z_Hfm])
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
   next
    assume z_Het:"a_h398deecb70354c47fc829b1a4e2cb6a"
    show FALSE
    by (rule notE [OF z_Hi z_Het])
   qed
  next
   assume z_Hga:"(~?z_hbd)" (is "~(?z_hbe&?z_hdh)")
   show FALSE
   proof (rule zenon_notand [OF z_Hga])
    assume z_Hfn:"(a_Mhash_primea~=subsetOf(Configs, (\<lambda>t. bEx(M, (\<lambda>told. (((((told[''ret''])[p])=BOT)&(((t[''ret''])=except((told[''ret'']), p, ACK))&(((t[''sigma''])=Fcn(NodeSet, (\<lambda>i. cond((((told[''sigma''])[i])=((told[''sigma''])[(((told[''arg''])[p])[1])])), ((told[''sigma''])[(((told[''arg''])[p])[2])]), ((told[''sigma''])[i])))))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg'']))))))|((((told[''ret''])[p])=ACK)&(((t[''ret''])=(told[''ret'']))&(((t[''sigma''])=(told[''sigma'']))&(((t[''op''])=(told[''op'']))&((t[''arg''])=(told[''arg'']))))))))))))" (is "_~=?z_hbg")
    show FALSE
    proof (rule zenon_imply [OF z_Hg])
     assume z_Hfp:"(~?z_heu)" (is "~(?z_hev&?z_hey)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfp])
      assume z_Hfb:"(a_Fhash_primea~=except(F, (a_uunde_Ua[p]), (''parent'' :> ((a_vunde_Ua[p])) @@ ''rank'' :> ((((a_aunde_Ua[p])[''rank'']) + 1)) @@ ''bit'' :> (1))))" (is "_~=?z_hew")
      show FALSE
      proof (rule zenon_or [OF z_Hh])
       assume z_Hj:"?z_hj"
       show FALSE
       by (rule zenon_L15_ [OF z_Hj z_Hfn])
      next
       assume z_Heu:"?z_heu"
       show FALSE
       by (rule zenon_L2_ [OF z_Heu z_Hfb])
      qed
     next
      assume z_Hfq:"(~?z_hey)" (is "~(?z_hez&_)")
      show FALSE
      proof (rule zenon_notand [OF z_Hfq])
       assume z_Hfc:"(a_Mhash_primea~=M)"
       show FALSE
       proof (rule zenon_or [OF z_Hh])
        assume z_Hj:"?z_hj"
        show FALSE
        by (rule zenon_L15_ [OF z_Hj z_Hfn])
       next
        assume z_Heu:"?z_heu"
        show FALSE
        by (rule zenon_L3_ [OF z_Heu z_Hfc])
       qed
      next
       assume z_Hfr:"(~?z_hdh)" (is "~(?z_hdi&?z_hdn)")
       show FALSE
       proof (rule zenon_notand [OF z_Hfr])
        assume z_Hfd:"(a_pchash_primea~=except(pc, p, ''U7''))" (is "_~=?z_hdk")
        show FALSE
        proof (rule zenon_or [OF z_Hh])
         assume z_Hj:"?z_hj"
         show FALSE
         by (rule zenon_L15_ [OF z_Hj z_Hfn])
        next
         assume z_Heu:"?z_heu"
         show FALSE
         by (rule zenon_L4_ [OF z_Heu z_Hfd])
        qed
       next
        assume z_Hfs:"(~?z_hdn)" (is "~(?z_hdo&?z_hdr)")
        show FALSE
        proof (rule zenon_notand [OF z_Hfs])
         assume z_Hfe:"(a_uunde_Fhash_primea~=a_uunde_Fa)"
         show FALSE
         by (rule zenon_L6_ [OF z_Hh z_Hfe])
        next
         assume z_Hft:"(~?z_hdr)" (is "~(?z_hds&?z_hdv)")
         show FALSE
         proof (rule zenon_notand [OF z_Hft])
          assume z_Hff:"(a_aunde_Fhash_primea~=a_aunde_Fa)"
          show FALSE
          by (rule zenon_L7_ [OF z_Hh z_Hff])
         next
          assume z_Hfu:"(~?z_hdv)" (is "~(?z_hdw&?z_hdz)")
          show FALSE
          proof (rule zenon_notand [OF z_Hfu])
           assume z_Hfg:"(a_bunde_Fhash_primea~=a_bunde_Fa)"
           show FALSE
           by (rule zenon_L8_ [OF z_Hh z_Hfg])
          next
           assume z_Hfv:"(~?z_hdz)" (is "~(?z_hea&?z_hec)")
           show FALSE
           proof (rule zenon_notand [OF z_Hfv])
            assume z_Hfh:"(a_uunde_Uhash_primea~=a_uunde_Ua)"
            show FALSE
            by (rule zenon_L9_ [OF z_Hh z_Hfh])
           next
            assume z_Hfw:"(~?z_hec)" (is "~(?z_hed&?z_hef)")
            show FALSE
            proof (rule zenon_notand [OF z_Hfw])
             assume z_Hfi:"(a_vunde_Uhash_primea~=a_vunde_Ua)"
             show FALSE
             by (rule zenon_L10_ [OF z_Hh z_Hfi])
            next
             assume z_Hfx:"(~?z_hef)" (is "~(?z_heg&?z_hei)")
             show FALSE
             proof (rule zenon_notand [OF z_Hfx])
              assume z_Hfj:"(a_aunde_Uhash_primea~=a_aunde_Ua)"
              show FALSE
              by (rule zenon_L11_ [OF z_Hh z_Hfj])
             next
              assume z_Hfy:"(~?z_hei)" (is "~(?z_hej&?z_hem)")
              show FALSE
              proof (rule zenon_notand [OF z_Hfy])
               assume z_Hfk:"(a_bunde_Uhash_primea~=a_bunde_Ua)"
               show FALSE
               by (rule zenon_L12_ [OF z_Hh z_Hfk])
              next
               assume z_Hfz:"(~?z_hem)" (is "~(?z_hen&?z_heq)")
               show FALSE
               proof (rule zenon_notand [OF z_Hfz])
               assume z_Hfl:"(a_chash_primea~=a_ca)"
               show FALSE
               by (rule zenon_L13_ [OF z_Hh z_Hfl])
               next
               assume z_Hfm:"(a_dhash_primea~=d)"
               show FALSE
               by (rule zenon_L14_ [OF z_Hh z_Hfm])
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
    next
     assume z_Het:"a_h398deecb70354c47fc829b1a4e2cb6a"
     show FALSE
     by (rule notE [OF z_Hi z_Het])
    qed
   next
    assume z_Hfr:"(~?z_hdh)" (is "~(?z_hdi&?z_hdn)")
    show FALSE
    proof (rule zenon_notand [OF z_Hfr])
     assume z_Hfd:"(a_pchash_primea~=except(pc, p, ''U7''))" (is "_~=?z_hdk")
     show FALSE
     by (rule zenon_L5_ [OF z_Hh z_Hfd])
    next
     assume z_Hfs:"(~?z_hdn)" (is "~(?z_hdo&?z_hdr)")
     show FALSE
     proof (rule zenon_notand [OF z_Hfs])
      assume z_Hfe:"(a_uunde_Fhash_primea~=a_uunde_Fa)"
      show FALSE
      by (rule zenon_L6_ [OF z_Hh z_Hfe])
     next
      assume z_Hft:"(~?z_hdr)" (is "~(?z_hds&?z_hdv)")
      show FALSE
      proof (rule zenon_notand [OF z_Hft])
       assume z_Hff:"(a_aunde_Fhash_primea~=a_aunde_Fa)"
       show FALSE
       by (rule zenon_L7_ [OF z_Hh z_Hff])
      next
       assume z_Hfu:"(~?z_hdv)" (is "~(?z_hdw&?z_hdz)")
       show FALSE
       proof (rule zenon_notand [OF z_Hfu])
        assume z_Hfg:"(a_bunde_Fhash_primea~=a_bunde_Fa)"
        show FALSE
        by (rule zenon_L8_ [OF z_Hh z_Hfg])
       next
        assume z_Hfv:"(~?z_hdz)" (is "~(?z_hea&?z_hec)")
        show FALSE
        proof (rule zenon_notand [OF z_Hfv])
         assume z_Hfh:"(a_uunde_Uhash_primea~=a_uunde_Ua)"
         show FALSE
         by (rule zenon_L9_ [OF z_Hh z_Hfh])
        next
         assume z_Hfw:"(~?z_hec)" (is "~(?z_hed&?z_hef)")
         show FALSE
         proof (rule zenon_notand [OF z_Hfw])
          assume z_Hfi:"(a_vunde_Uhash_primea~=a_vunde_Ua)"
          show FALSE
          by (rule zenon_L10_ [OF z_Hh z_Hfi])
         next
          assume z_Hfx:"(~?z_hef)" (is "~(?z_heg&?z_hei)")
          show FALSE
          proof (rule zenon_notand [OF z_Hfx])
           assume z_Hfj:"(a_aunde_Uhash_primea~=a_aunde_Ua)"
           show FALSE
           by (rule zenon_L11_ [OF z_Hh z_Hfj])
          next
           assume z_Hfy:"(~?z_hei)" (is "~(?z_hej&?z_hem)")
           show FALSE
           proof (rule zenon_notand [OF z_Hfy])
            assume z_Hfk:"(a_bunde_Uhash_primea~=a_bunde_Ua)"
            show FALSE
            by (rule zenon_L12_ [OF z_Hh z_Hfk])
           next
            assume z_Hfz:"(~?z_hem)" (is "~(?z_hen&?z_heq)")
            show FALSE
            proof (rule zenon_notand [OF z_Hfz])
             assume z_Hfl:"(a_chash_primea~=a_ca)"
             show FALSE
             by (rule zenon_L13_ [OF z_Hh z_Hfl])
            next
             assume z_Hfm:"(a_dhash_primea~=d)"
             show FALSE
             by (rule zenon_L14_ [OF z_Hh z_Hfm])
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
 next
  assume z_Het:"a_h398deecb70354c47fc829b1a4e2cb6a"
  show FALSE
  by (rule notE [OF z_Hi z_Het])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 1"; *} qed
end
