(* automatically generated -- do not edit manually *)
theory TypeEquivalence imports Constant Zenon begin
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

lemma ob'12:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
assumes v'32: "((\<And> P :: c. P \<in> (a_Lunde_Ua) \<Longrightarrow> (\<And> p :: c. p \<in> (P) \<Longrightarrow> (\<And> q :: c. q \<in> (P) \<Longrightarrow> (((((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) \<in> (a_Lunde_Ua)))))))"
shows "(\<forall> P \<in> (a_Lunde_Ua) : (\<forall> p \<in> (P) : (\<forall> q \<in> (P) : (((((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) \<in> (a_Lunde_Ua))))))"(is "PROP ?ob'12")
proof -
ML_command {* writeln "*** TLAPS ENTER 12"; *}
show "PROP ?ob'12"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_553adc.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_553adc.znn.out
;; obligation #12
$hyp "v'32" (TLA.bAll a_Lunde_Ua ((P) (TLA.bAll P ((p) (TLA.bAll P ((q) (TLA.in (TLA.cup (TLA.setminus P
(TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))
a_Lunde_Ua)))))))
$goal (TLA.bAll a_Lunde_Ua ((P) (TLA.bAll P ((p) (TLA.bAll P ((q) (TLA.in (TLA.cup (TLA.setminus P
(TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))
a_Lunde_Ua)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"bAll(a_Lunde_Ua, (\<lambda>P. bAll(P, (\<lambda>p. bAll(P, (\<lambda>q. (((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua)))))))" (is "?z_ha")
 using v'32 by blast
 assume z_Hb:"(~?z_ha)"
 show FALSE
 by (rule notE [OF z_Hb z_Ha])
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 12"; *} qed
lemma ob'11:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes p
assumes p_in : "(p \<in> (P))"
fixes q
assumes q_in : "(q \<in> (P))"
assumes v'40: "(\<forall> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((fapply ((r), (''X''))) \<noteq> ({}))))"
assumes v'41: "(\<forall> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (\<forall> s \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((((r) \<noteq> (s))) \<Rightarrow> (((((fapply ((r), (''X''))) \<inter> (fapply ((s), (''X''))))) = ({})))))))"
assumes v'42: "(\<forall> i \<in> (U) : (\<exists> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((i) \<in> (fapply ((r), (''X'')))))))"
assumes v'43: "(\<forall> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((fapply ((r), (''r''))) \<in> (fapply ((r), (''X''))))))"
assumes v'44: "(((((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) \<in> ((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))])))))"
shows "(((((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P_1. ((\<forall> x \<in> (P_1) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P_1) : (\<forall> a_x2a \<in> (P_1) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P_1) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p_1 \<in> (P_1) : (((fapply ((p_1), (''r''))) \<in> (fapply ((p_1), (''X'')))))))))))"(is "PROP ?ob'11")
proof -
ML_command {* writeln "*** TLAPS ENTER 11"; *}
show "PROP ?ob'11"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_7ec781.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_7ec781.znn.out
;; obligation #11
$hyp "P_in" (TLA.in P (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "p_in" (TLA.in p P)
$hyp "q_in" (TLA.in q P)
$hyp "v'40" (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (-. (= (TLA.fapply r "X")
TLA.emptyset))))
$hyp "v'41" (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((s) (=> (-. (= r s)) (= (TLA.cap (TLA.fapply r "X")
(TLA.fapply s "X"))
TLA.emptyset))))))
$hyp "v'42" (TLA.bAll U ((i) (TLA.bEx (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (TLA.in i
(TLA.fapply r "X"))))))
$hyp "v'43" (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (TLA.in (TLA.fapply r "r")
(TLA.fapply r "X"))))
$hyp "v'44" (TLA.in (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))
(TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))))
$goal (TLA.in (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))
(TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P_1) (/\ (TLA.bAll P_1 ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset))))
(TLA.bAll P_1 ((a_x1a) (TLA.bAll P_1 ((a_x2a) (=> (-. (= a_x1a a_x2a))
(= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X")) TLA.emptyset))))))
(TLA.bAll U ((i) (TLA.bEx P_1 ((x) (TLA.in i (TLA.fapply x "X"))))))
(TLA.bAll P_1 ((p_1) (TLA.in (TLA.fapply p_1 "r")
(TLA.fapply p_1 "X"))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hd:"bAll(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>x. ((x[''X''])~={})))" (is "?z_hd")
 using v'40 by blast
 have z_He:"bAll(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>r. bAll(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>s. ((r~=s)=>(((r[''X'']) \\cap (s[''X'']))={}))))))" (is "?z_he")
 using v'41 by blast
 have z_Hf:"bAll(U, (\<lambda>i. bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>x. (i \\in (x[''X'']))))))" (is "?z_hf")
 using v'42 by blast
 have z_Hg:"bAll(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))" (is "?z_hg")
 using v'43 by blast
 have z_Hh:"(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]))" (is "?z_hh")
 using v'44 by blast
 assume z_Hi:"(~(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))))))" (is "~?z_hby")
 show FALSE
 proof (rule zenon_notin_subsetof [of "((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))})" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Hi])
  assume z_Hcv:"(~?z_hh)"
  show FALSE
  by (rule notE [OF z_Hcv z_Hh])
 next
  assume z_Hcw:"(~(?z_hd&(?z_he&(?z_hf&?z_hg))))" (is "~(_&?z_hcy)")
  show FALSE
  proof (rule zenon_notand [OF z_Hcw])
   assume z_Hda:"(~?z_hd)"
   show FALSE
   by (rule notE [OF z_Hda z_Hd])
  next
   assume z_Hdb:"(~?z_hcy)" (is "~(_&?z_hcz)")
   show FALSE
   proof (rule zenon_notand [OF z_Hdb])
    assume z_Hdc:"(~?z_he)"
    show FALSE
    by (rule notE [OF z_Hdc z_He])
   next
    assume z_Hdd:"(~?z_hcz)"
    show FALSE
    proof (rule zenon_notand [OF z_Hdd])
     assume z_Hde:"(~?z_hf)"
     show FALSE
     by (rule notE [OF z_Hde z_Hf])
    next
     assume z_Hdf:"(~?z_hg)"
     show FALSE
     by (rule notE [OF z_Hdf z_Hg])
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 11"; *} qed
lemma ob'6:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
shows "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))) : (\<forall> x \<in> (U) : (\<forall> y \<in> (U) : (((((fapply (([ i \<in> (U)  \<mapsto> (fapply ((bChoice((P), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))]), (x))) = (fapply (([ i \<in> (U)  \<mapsto> (fapply ((bChoice((P), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))]), (y))))) \<Rightarrow> (\<exists> p \<in> (P) : ((((x) \<in> (fapply ((p), (''X''))))) & (((y) \<in> (fapply ((p), (''X''))))) & (((fapply ((p), (''r''))) = (fapply (([ i \<in> (U)  \<mapsto> (fapply ((bChoice((P), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))]), (x))))))))))))"(is "PROP ?ob'6")
proof -
ML_command {* writeln "*** TLAPS ENTER 6"; *}
show "PROP ?ob'6"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_7925b9.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_7925b9.znn.out
;; obligation #6
$goal (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))) ((P) (TLA.bAll U ((x) (TLA.bAll U ((y) (=> (= (TLA.fapply (TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice P ((q) (TLA.in i
(TLA.fapply q "X")))) "r"))) x)
(TLA.fapply (TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice P ((q) (TLA.in i
(TLA.fapply q "X")))) "r"))) y)) (TLA.bEx P ((p) (/\ (TLA.in x
(TLA.fapply p "X")) (TLA.in y (TLA.fapply p "X")) (= (TLA.fapply p "r")
(TLA.fapply (TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice P ((q) (TLA.in i
(TLA.fapply q "X")))) "r"))) x))))))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have zenon_L1_: "(\\A x:((x \\in U)=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>zenon_Vv. (x \\in (zenon_Vv[''X''])))))) ==> ((CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))) \\in U) ==> (~(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))) \\in (x[''X'']))))) ==> FALSE" (is "?z_hb ==> ?z_hcy ==> ?z_hee ==> FALSE")
 proof -
  assume z_Hb:"?z_hb" (is "\\A x : ?z_hej(x)")
  assume z_Hcy:"?z_hcy"
  assume z_Hee:"?z_hee" (is "~(\\E x : ?z_hek(x))")
  have z_Hel: "?z_hej((CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))))" (is "_=>?z_hem")
  by (rule zenon_all_0 [of "?z_hej" "(CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))]))))))))))", OF z_Hb])
  show FALSE
  proof (rule zenon_imply [OF z_Hel])
   assume z_Hen:"(~?z_hcy)"
   show FALSE
   by (rule notE [OF z_Hen z_Hcy])
  next
   assume z_Hem:"?z_hem"
   have z_Hef_z_Hem: "(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))) \\in (x[''X''])))) == ?z_hem" (is "?z_hef == _")
   by (unfold bEx_def)
   have z_Hef: "?z_hef"
   by (unfold z_Hef_z_Hem, fact z_Hem)
   show FALSE
   by (rule notE [OF z_Hee z_Hef])
  qed
 qed
 assume z_Ha:"(~bAll(subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))), (\<lambda>P. bAll(U, (\<lambda>x. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(P, (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))))" (is "~?z_heo")
 have z_Hfh_z_Ha: "(~(\\A x:((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))) == (~?z_heo)" (is "?z_hfh == ?z_ha")
 by (unfold bAll_def)
 have z_Hfh: "?z_hfh" (is "~(\\A x : ?z_hfj(x))")
 by (unfold z_Hfh_z_Ha, fact z_Ha)
 have z_Hfk: "(\\E x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg]))))))))))))))" (is "\\E x : ?z_hfl(x)")
 by (rule zenon_notallex_0 [of "?z_hfj", OF z_Hfh])
 have z_Hfm: "?z_hfl((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))" (is "~(?z_hfn=>?z_hfo)")
 by (rule zenon_ex_choose_0 [of "?z_hfl", OF z_Hfk])
 have z_Hfn: "?z_hfn"
 by (rule zenon_notimply_0 [OF z_Hfm])
 have z_Hfp: "(~?z_hfo)"
 by (rule zenon_notimply_1 [OF z_Hfm])
 have z_Hfq: "(bAll((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. ((x[''X''])~={})))&(bAll((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>a_x1a. bAll((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))))&bAll((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hfr&?z_hfs")
 by (rule zenon_in_subsetof_1 [of "(CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg]))))))))))))))" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Hfn])
 have z_Hfs: "?z_hfs" (is "?z_hft&?z_hfw")
 by (rule zenon_and_1 [OF z_Hfq])
 have z_Hft: "?z_hft"
 by (rule zenon_and_0 [OF z_Hfs])
 have z_Hfw: "?z_hfw" (is "?z_hfx&?z_hga")
 by (rule zenon_and_1 [OF z_Hfs])
 have z_Hfx: "?z_hfx"
 by (rule zenon_and_0 [OF z_Hfw])
 have z_Hga: "?z_hga"
 by (rule zenon_and_1 [OF z_Hfw])
 have z_Hgb_z_Hft: "(\\A x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))=>bAll((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) == ?z_hft" (is "?z_hgb == _")
 by (unfold bAll_def)
 have z_Hgb: "?z_hgb" (is "\\A x : ?z_hgj(x)")
 by (unfold z_Hgb_z_Hft, fact z_Hft)
 have z_Hb_z_Hfx: "(\\A x:((x \\in U)=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>zenon_Vv. (x \\in (zenon_Vv[''X''])))))) == ?z_hfx" (is "?z_hb == _")
 by (unfold bAll_def)
 have z_Hb: "?z_hb" (is "\\A x : ?z_hej(x)")
 by (unfold z_Hb_z_Hfx, fact z_Hfx)
 have z_Hgk_z_Hga: "(\\A x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))=>((x[''r'']) \\in (x[''X''])))) == ?z_hga" (is "?z_hgk == _")
 by (unfold bAll_def)
 have z_Hgk: "?z_hgk" (is "\\A x : ?z_hgo(x)")
 by (unfold z_Hgk_z_Hga, fact z_Hga)
 have z_Hgp_z_Hfp: "(~(\\A x:((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) == (~?z_hfo)" (is "?z_hgp == ?z_hfp")
 by (unfold bAll_def)
 have z_Hgp: "?z_hgp" (is "~(\\A x : ?z_hgr(x))")
 by (unfold z_Hgp_z_Hfp, fact z_Hfp)
 have z_Hgs: "(\\E x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))" (is "\\E x : ?z_hgt(x)")
 by (rule zenon_notallex_0 [of "?z_hgr", OF z_Hgp])
 have z_Hgu: "?z_hgt((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))))" (is "~(?z_hgv=>?z_hgw)")
 by (rule zenon_ex_choose_0 [of "?z_hgt", OF z_Hgs])
 have z_Hgv: "?z_hgv"
 by (rule zenon_notimply_0 [OF z_Hgu])
 have z_Hgx: "(~?z_hgw)"
 by (rule zenon_notimply_1 [OF z_Hgu])
 have z_Hgy_z_Hgx: "(~(\\A x:((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))) == (~?z_hgw)" (is "?z_hgy == ?z_hgx")
 by (unfold bAll_def)
 have z_Hgy: "?z_hgy" (is "~(\\A x : ?z_hha(x))")
 by (unfold z_Hgy_z_Hgx, fact z_Hgx)
 have z_Hhb: "(\\E x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))]))))))))))" (is "\\E x : ?z_hhc(x)")
 by (rule zenon_notallex_0 [of "?z_hha", OF z_Hgy])
 have z_Hhd: "?z_hhc((CHOOSE x:(~((x \\in U)=>(((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))])))))))))))" (is "~(?z_hcy=>?z_hhe)")
 by (rule zenon_ex_choose_0 [of "?z_hhc", OF z_Hhb])
 have z_Hcy: "?z_hcy"
 by (rule zenon_notimply_0 [OF z_Hhd])
 have z_Hhf: "(~?z_hhe)" (is "~(?z_hhg=>?z_hhh)")
 by (rule zenon_notimply_1 [OF z_Hhd])
 have z_Hhg: "?z_hhg" (is "?z_hde=?z_hhi")
 by (rule zenon_notimply_0 [OF z_Hhf])
 have z_Hhj: "(~?z_hhh)"
 by (rule zenon_notimply_1 [OF z_Hhf])
 have z_Hhk_z_Hhj: "(~(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&(((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))&(((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))&((x[''r''])=?z_hde)))))) == (~?z_hhh)" (is "?z_hhk == ?z_hhj")
 by (unfold bEx_def)
 have z_Hhk: "?z_hhk" (is "~(\\E x : ?z_hhr(x))")
 by (unfold z_Hhk_z_Hhj, fact z_Hhj)
 show FALSE
 proof (rule zenon_em [of "(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))"])
  assume z_Hhs:"(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))" (is "\\E x : ?z_hhu(x)")
  have z_Hhv: "?z_hhu((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X''])))))" (is "?z_hhx&?z_hhy")
  by (rule zenon_ex_choose_0 [of "?z_hhu", OF z_Hhs])
  have z_Hhx: "?z_hhx"
  by (rule zenon_and_0 [OF z_Hhv])
  have z_Hhy: "?z_hhy"
  by (rule zenon_and_1 [OF z_Hhv])
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vma. (zenon_Vma=?z_hhi))" "U" "(\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r'']))" "(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))", OF z_Hhg])
   assume z_Hic:"(~?z_hgv)"
   show FALSE
   by (rule notE [OF z_Hic z_Hgv])
  next
   assume z_Hid:"((bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. ((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))[''r''])=?z_hhi)" (is "?z_hie=_")
   have z_Hih_z_Hid: "(((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))[''r''])=?z_hhi) == (?z_hie=?z_hhi)" (is "?z_hih == ?z_hid")
   by (unfold bChoose_def)
   have z_Hih: "?z_hih" (is "?z_hii=_")
   by (unfold z_Hih_z_Hid, fact z_Hid)
   show FALSE
   proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vzl. (?z_hii=zenon_Vzl))" "U" "(\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r'']))" "(CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde)))))))))", OF z_Hih])
    assume z_Hen:"(~?z_hcy)"
    show FALSE
    by (rule notE [OF z_Hen z_Hcy])
   next
    assume z_Him:"(?z_hii=(bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. ((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))[''r'']))" (is "_=?z_hin")
    have z_Hiq_z_Him: "(?z_hii=((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))[''r''])) == (?z_hii=?z_hin)" (is "?z_hiq == ?z_him")
    by (unfold bChoose_def)
    have z_Hiq: "?z_hiq" (is "_=?z_hir")
    by (unfold z_Hiq_z_Him, fact z_Him)
    show FALSE
    proof (rule zenon_em [of "(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))"])
     assume z_Hef:"(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))" (is "\\E x : ?z_hek(x)")
     have z_Hit: "?z_hek((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X''])))))" (is "?z_hiu&?z_hiv")
     by (rule zenon_ex_choose_0 [of "?z_hek", OF z_Hef])
     have z_Hiu: "?z_hiu"
     by (rule zenon_and_0 [OF z_Hit])
     have z_Hiv: "?z_hiv"
     by (rule zenon_and_1 [OF z_Hit])
     have z_Hiw: "~?z_hhr((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X''])))))" (is "~(_&?z_hix)")
     by (rule zenon_notex_0 [of "?z_hhr" "(CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))", OF z_Hhk])
     show FALSE
     proof (rule zenon_notand [OF z_Hiw])
      assume z_Hiy:"(~?z_hhx)"
      show FALSE
      by (rule notE [OF z_Hiy z_Hhx])
     next
      assume z_Hiz:"(~?z_hix)" (is "~(_&?z_hja)")
      show FALSE
      proof (rule zenon_notand [OF z_Hiz])
       assume z_Hjb:"(~?z_hhy)"
       show FALSE
       by (rule notE [OF z_Hjb z_Hhy])
      next
       assume z_Hjc:"(~?z_hja)" (is "~(?z_hjd&?z_hje)")
       show FALSE
       proof (rule zenon_notand [OF z_Hjc])
        assume z_Hjf:"(~?z_hjd)"
        show FALSE
        proof (rule notE [OF z_Hjf])
         have z_Hjg: "(((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))[''X''])=((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X'']))))[''X'']))" (is "?z_hjh=?z_hji")
         proof (rule zenon_nnpp [of "(?z_hjh=?z_hji)"])
          assume z_Hjj:"(?z_hjh~=?z_hji)"
          show FALSE
          proof (rule zenon_noteq [of "?z_hji"])
           have z_Hjk: "((CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X'']))))=(CHOOSE x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X''])))))" (is "?z_his=?z_hhw")
           proof (rule zenon_nnpp [of "(?z_his=?z_hhw)"])
            assume z_Hjl:"(?z_his~=?z_hhw)"
            have z_Hjm: "?z_hgo(?z_his)" (is "_=>?z_hjn")
            by (rule zenon_all_0 [of "?z_hgo" "?z_his", OF z_Hgk])
            show FALSE
            proof (rule zenon_imply [OF z_Hjm])
             assume z_Hjo:"(~?z_hiu)"
             show FALSE
             by (rule notE [OF z_Hjo z_Hiu])
            next
             assume z_Hjn:"?z_hjn"
             have z_Hjp: "?z_hgo(?z_hhw)" (is "_=>?z_hjq")
             by (rule zenon_all_0 [of "?z_hgo" "?z_hhw", OF z_Hgk])
             show FALSE
             proof (rule zenon_imply [OF z_Hjp])
              assume z_Hiy:"(~?z_hhx)"
              show FALSE
              by (rule notE [OF z_Hiy z_Hhx])
             next
              assume z_Hjq:"?z_hjq"
              have z_Hjr: "?z_hgj(?z_his)" (is "_=>?z_hjs")
              by (rule zenon_all_0 [of "?z_hgj" "?z_his", OF z_Hgb])
              show FALSE
              proof (rule zenon_imply [OF z_Hjr])
               assume z_Hjo:"(~?z_hiu)"
               show FALSE
               by (rule notE [OF z_Hjo z_Hiu])
              next
               assume z_Hjs:"?z_hjs"
               have z_Hjt_z_Hjs: "(\\A x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))=>((?z_his~=x)=>((?z_hjh \\cap (x[''X'']))={})))) == ?z_hjs" (is "?z_hjt == _")
               by (unfold bAll_def)
               have z_Hjt: "?z_hjt" (is "\\A x : ?z_hjz(x)")
               by (unfold z_Hjt_z_Hjs, fact z_Hjs)
               have z_Hka: "?z_hjz(?z_hhw)" (is "_=>?z_hkb")
               by (rule zenon_all_0 [of "?z_hjz" "?z_hhw", OF z_Hjt])
               show FALSE
               proof (rule zenon_imply [OF z_Hka])
               assume z_Hiy:"(~?z_hhx)"
               show FALSE
               by (rule notE [OF z_Hiy z_Hhx])
               next
               assume z_Hkb:"?z_hkb" (is "?z_hjl=>?z_hkc")
               show FALSE
               proof (rule zenon_imply [OF z_Hkb])
               assume z_Hkd:"(~?z_hjl)" (is "~~?z_hjk")
               show FALSE
               by (rule notE [OF z_Hkd z_Hjl])
               next
               assume z_Hkc:"?z_hkc" (is "?z_hke=_")
               have z_Hkf: "(\\A zenon_Vfs:(~(zenon_Vfs \\in ?z_hke)))" (is "\\A x : ?z_hkj(x)")
               by (rule zenon_setequalempty_0 [of "?z_hke", OF z_Hkc])
               have z_Hkk: "?z_hkj(?z_hii)" (is "~?z_hkl")
               by (rule zenon_all_0 [of "?z_hkj" "?z_hii", OF z_Hkf])
               show FALSE
               proof (rule zenon_notin_cap [of "?z_hii" "?z_hjh" "?z_hji", OF z_Hkk])
               assume z_Hkm:"(~(?z_hii \\in ?z_hjh))" (is "~?z_hkn")
               show FALSE
               proof (rule notE [OF z_Hkm])
               have z_Hko: "(?z_hir=?z_hii)"
               by (rule sym [OF z_Hiq])
               have z_Hkn: "?z_hkn"
               by (rule subst [where P="(\<lambda>zenon_Vct. (zenon_Vct \\in ?z_hjh))", OF z_Hko], fact z_Hjn)
               thus "?z_hkn" .
               qed
               next
               assume z_Hks:"(~?z_hjq)"
               show FALSE
               by (rule notE [OF z_Hks z_Hjq])
               qed
               qed
               qed
              qed
             qed
            qed
           qed
           have z_Hkt: "(?z_hji~=?z_hji)"
           by (rule subst [where P="(\<lambda>zenon_Vdt. ((zenon_Vdt[''X''])~=?z_hji))", OF z_Hjk], fact z_Hjj)
           thus "(?z_hji~=?z_hji)" .
          qed
         qed
         have z_Hjd: "?z_hjd"
         by (rule subst [where P="(\<lambda>zenon_Vet. ((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in zenon_Vet))", OF z_Hjg], fact z_Hiv)
         thus "?z_hjd" .
        qed
       next
        assume z_Hlb:"(?z_hii~=?z_hde)"
        show FALSE
        proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vln. (?z_hii~=zenon_Vln))" "U" "(\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r'']))" "(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))", OF z_Hlb])
         assume z_Hic:"(~?z_hgv)"
         show FALSE
         by (rule notE [OF z_Hic z_Hgv])
        next
         assume z_Hlf:"(?z_hii~=?z_hie)"
         have z_Hlg_z_Hlf: "(?z_hii~=?z_hii) == (?z_hii~=?z_hie)" (is "?z_hlg == ?z_hlf")
         by (unfold bChoose_def)
         have z_Hlg: "?z_hlg"
         by (unfold z_Hlg_z_Hlf, fact z_Hlf)
         show FALSE
         by (rule zenon_noteq [OF z_Hlg])
        qed
       qed
      qed
     qed
    next
     assume z_Hee:"(~(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>((?z_hde=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. (((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (p[''X'']))&((x \\in (p[''X'']))&((p[''r''])=?z_hde))))))))) \\in (x[''X''])))))" (is "~(\\E x : ?z_hek(x))")
     show FALSE
     by (rule zenon_L1_ [OF z_Hb z_Hcy z_Hee])
    qed
   qed
  qed
 next
  assume z_Hlh:"(~(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X''])))))" (is "~(\\E x : ?z_hhu(x))")
  have z_Hli: "?z_hej((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))))" (is "_=>?z_hlj")
  by (rule zenon_all_0 [of "?z_hej" "(CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x]))))))))))))", OF z_Hb])
  show FALSE
  proof (rule zenon_imply [OF z_Hli])
   assume z_Hic:"(~?z_hgv)"
   show FALSE
   by (rule notE [OF z_Hic z_Hgv])
  next
   assume z_Hlj:"?z_hlj"
   have z_Hhs_z_Hlj: "(\\E x:((x \\in (CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))))&((CHOOSE x:(~((x \\in U)=>bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>p. ((x \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice((CHOOSE x:(~((x \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))=>bAll(U, (\<lambda>zenon_Vg. bAll(U, (\<lambda>y. (((Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[y]))=>bEx(x, (\<lambda>p. ((zenon_Vg \\in (p[''X'']))&((y \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(x, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[zenon_Vg])))))))))))))), (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[x])))))))))))) \\in (x[''X''])))) == ?z_hlj" (is "?z_hhs == _")
   by (unfold bEx_def)
   have z_Hhs: "?z_hhs"
   by (unfold z_Hhs_z_Hlj, fact z_Hlj)
   show FALSE
   by (rule notE [OF z_Hlh z_Hhs])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 6"; *} qed
lemma ob'23:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (a_Lunde_Ua))"
fixes p
assumes p_in : "(p \<in> (P))"
fixes q
assumes q_in : "(q \<in> (P))"
assumes v'41: "(\<forall> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((fapply ((r), (''X''))) \<noteq> ({}))))"
assumes v'42: "(\<forall> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (\<forall> s \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((((r) \<noteq> (s))) \<Rightarrow> (((((fapply ((r), (''X''))) \<inter> (fapply ((s), (''X''))))) = ({})))))))"
assumes v'45: "(\<forall> i \<in> (U) : (((((i) \<in> (fapply ((((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X'')))))))), (''X''))))) \<or> (\<exists> t \<in> (((P) \\ ({(p), (q)}))) : (((i) \<in> (fapply ((t), (''X'')))))))))"
shows "(\<forall> i \<in> (U) : (\<exists> r \<in> (((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) : (((i) \<in> (fapply ((r), (''X'')))))))"(is "PROP ?ob'23")
proof -
ML_command {* writeln "*** TLAPS ENTER 23"; *}
show "PROP ?ob'23"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_e5df5b.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_e5df5b.znn.out
;; obligation #23
$hyp "P_in" (TLA.in P a_Lunde_Ua)
$hyp "p_in" (TLA.in p P)
$hyp "q_in" (TLA.in q P)
$hyp "v'41" (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (-. (= (TLA.fapply r "X")
TLA.emptyset))))
$hyp "v'42" (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (TLA.bAll (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((s) (=> (-. (= r s)) (= (TLA.cap (TLA.fapply r "X")
(TLA.fapply s "X"))
TLA.emptyset))))))
$hyp "v'45" (TLA.bAll U ((i) (\/ (TLA.in i
(TLA.fapply (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))) "X")) (TLA.bEx (TLA.setminus P
(TLA.set p q)) ((t) (TLA.in i
(TLA.fapply t "X")))))))
$goal (TLA.bAll U ((i) (TLA.bEx (TLA.cup (TLA.setminus P (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))) ((r) (TLA.in i
(TLA.fapply r "X"))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"bAll(U, (\<lambda>i. ((i \\in ((''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))[''X'']))|bEx((P \\ {p, q}), (\<lambda>t. (i \\in (t[''X''])))))))" (is "?z_hf")
 using v'45 by blast
 assume z_Hg:"(~bAll(U, (\<lambda>i. bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (i \\in (t[''X''])))))))" (is "~?z_hbe")
 have z_Hbj_z_Hf: "(\\A x:((x \\in U)=>((x \\in ((''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))[''X'']))|bEx((P \\ {p, q}), (\<lambda>t. (x \\in (t[''X'']))))))) == ?z_hf" (is "?z_hbj == _")
 by (unfold bAll_def)
 have z_Hbj: "?z_hbj" (is "\\A x : ?z_hbs(x)")
 by (unfold z_Hbj_z_Hf, fact z_Hf)
 have z_Hbt_z_Hg: "(~(\\A x:((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) == (~?z_hbe)" (is "?z_hbt == ?z_hg")
 by (unfold bAll_def)
 have z_Hbt: "?z_hbt" (is "~(\\A x : ?z_hbx(x))")
 by (unfold z_Hbt_z_Hg, fact z_Hg)
 have z_Hby: "(\\E x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X''])))))))" (is "\\E x : ?z_hca(x)")
 by (rule zenon_notallex_0 [of "?z_hbx", OF z_Hbt])
 have z_Hcb: "?z_hca((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))))" (is "~(?z_hcd=>?z_hce)")
 by (rule zenon_ex_choose_0 [of "?z_hca", OF z_Hby])
 have z_Hcd: "?z_hcd"
 by (rule zenon_notimply_0 [OF z_Hcb])
 have z_Hcf: "(~?z_hce)"
 by (rule zenon_notimply_1 [OF z_Hcb])
 have z_Hcg_z_Hcf: "(~(\\E x:((x \\in ((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X'']))))) == (~?z_hce)" (is "?z_hcg == ?z_hcf")
 by (unfold bEx_def)
 have z_Hcg: "?z_hcg" (is "~(\\E x : ?z_hcm(x))")
 by (unfold z_Hcg_z_Hcf, fact z_Hcf)
 have z_Hcn: "?z_hbs((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))))" (is "_=>?z_hco")
 by (rule zenon_all_0 [of "?z_hbs" "(CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X''])))))))", OF z_Hbj])
 show FALSE
 proof (rule zenon_imply [OF z_Hcn])
  assume z_Hcp:"(~?z_hcd)"
  show FALSE
  by (rule notE [OF z_Hcp z_Hcd])
 next
  assume z_Hco:"?z_hco" (is "?z_hcq|?z_hcr")
  show FALSE
  proof (rule zenon_or [OF z_Hco])
   assume z_Hcq:"?z_hcq"
   have z_Hcs: "~?z_hcm((''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X''])))))" (is "~(?z_hct&_)")
   by (rule zenon_notex_0 [of "?z_hcm" "(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))", OF z_Hcg])
   show FALSE
   proof (rule zenon_notand [OF z_Hcs])
    assume z_Hcu:"(~?z_hct)"
    have z_Hcv: "(~((''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X''])))) \\in {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}))" (is "~?z_hcw")
    by (rule zenon_notin_cup_1 [of "(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))" "(P \\ {p, q})" "{(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}", OF z_Hcu])
    have z_Hcx: "((''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))~=(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X''])))))" (is "?z_hn~=_")
    by (rule zenon_notin_addElt_0 [of "?z_hn" "?z_hn" "{}", OF z_Hcv])
    show FALSE
    by (rule zenon_noteq [OF z_Hcx])
   next
    assume z_Hcz:"(~?z_hcq)"
    show FALSE
    by (rule notE [OF z_Hcz z_Hcq])
   qed
  next
   assume z_Hcr:"?z_hcr"
   have z_Hda_z_Hcr: "(\\E x:((x \\in (P \\ {p, q}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X''])))) == ?z_hcr" (is "?z_hda == _")
   by (unfold bEx_def)
   have z_Hda: "?z_hda" (is "\\E x : ?z_hdd(x)")
   by (unfold z_Hda_z_Hcr, fact z_Hcr)
   have z_Hde: "?z_hdd((CHOOSE x:((x \\in (P \\ {p, q}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X''])))))" (is "?z_hdg&?z_hdh")
   by (rule zenon_ex_choose_0 [of "?z_hdd", OF z_Hda])
   have z_Hdg: "?z_hdg"
   by (rule zenon_and_0 [OF z_Hde])
   have z_Hdh: "?z_hdh"
   by (rule zenon_and_1 [OF z_Hde])
   have z_Hdi: "~?z_hcm((CHOOSE x:((x \\in (P \\ {p, q}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X''])))))" (is "~(?z_hdj&_)")
   by (rule zenon_notex_0 [of "?z_hcm" "(CHOOSE x:((x \\in (P \\ {p, q}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X'']))))", OF z_Hcg])
   show FALSE
   proof (rule zenon_notand [OF z_Hdi])
    assume z_Hdk:"(~?z_hdj)"
    have z_Hdl: "(~?z_hdg)"
    by (rule zenon_notin_cup_0 [of "(CHOOSE x:((x \\in (P \\ {p, q}))&((CHOOSE x:(~((x \\in U)=>bEx(((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}), (\<lambda>t. (x \\in (t[''X'']))))))) \\in (x[''X'']))))" "(P \\ {p, q})" "{(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}", OF z_Hdk])
    show FALSE
    by (rule notE [OF z_Hdl z_Hdg])
   next
    assume z_Hdm:"(~?z_hdh)"
    show FALSE
    by (rule notE [OF z_Hdm z_Hdh])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 23"; *} qed
lemma ob'35:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes Q
assumes Q_in : "(Q \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P_1. ((\<forall> x \<in> (P_1) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P_1) : (\<forall> a_x2a \<in> (P_1) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P_1) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P_1) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
assumes v'34: "((((f ((P)))) = ((f ((Q))))))"
fixes x
assumes x_in : "(x \<in> (P))"
assumes v'46: "(((((''r'' :> (fapply ((x), (''r'')))) @@ (''X'' :> (fapply ((x), (''X'')))))) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((P)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((P)))), (i))) = (j))))))))))))"
shows "(((x) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((P)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((P)))), (i))) = (j))))))))))))"(is "PROP ?ob'35")
proof -
ML_command {* writeln "*** TLAPS ENTER 35"; *}
show "PROP ?ob'35"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_7e2b01.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_7e2b01.znn.out
;; obligation #35
$hyp "P_in" (TLA.in P (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "Q_in" (TLA.in Q (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P_1) (/\ (TLA.bAll P_1 ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset))))
(TLA.bAll P_1 ((a_x1a) (TLA.bAll P_1 ((a_x2a) (=> (-. (= a_x1a a_x2a))
(= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X")) TLA.emptyset))))))
(TLA.bAll U ((i) (TLA.bEx P_1 ((x) (TLA.in i (TLA.fapply x "X"))))))
(TLA.bAll P_1 ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "v'34" (= (f P)
(f Q))
$hyp "x_in" (TLA.in x P)
$hyp "v'46" (TLA.in (TLA.record "r" (TLA.fapply x "r") "X" (TLA.fapply x "X"))
(TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f P) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f P) i)
j)))))))
$goal (TLA.in x (TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f P) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f P) i)
j)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(P \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using P_in by blast
 have z_Hd:"(x \\in P)" (is "?z_hd")
 using x_in by blast
 have z_He:"((''r'' :> ((x[''r''])) @@ ''X'' :> ((x[''X'']))) \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(P)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=j))))))))" (is "?z_he")
 using v'46 by blast
 have zenon_L1_: "bAll(P, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) ==> ?z_hd ==> (~isAFcn(x)) ==> FALSE" (is "?z_hcm ==> _ ==> ?z_hcp ==> FALSE")
 proof -
  assume z_Hcm:"?z_hcm"
  assume z_Hd:"?z_hd"
  assume z_Hcp:"?z_hcp" (is "~?z_hcq")
  have z_Hco: "(x \\in [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hco")
  by (rule zenon_all_in_0 [of "P" "(\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))", OF z_Hcm z_Hd])
  have z_Hcq: "?z_hcq" using z_Hco by auto
  let ?z_hcr = "<<''r'', ''X''>>"
  let ?z_hcs = "<<U, SUBSET(U)>>"
  show FALSE
  by (rule notE [OF z_Hcp z_Hcq])
 qed
 have zenon_L2_: "bAll(P, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) ==> ?z_hd ==> (DOMAIN(x)~={''r'', ''X''}) ==> FALSE" (is "?z_hcm ==> _ ==> ?z_hct ==> FALSE")
 proof -
  assume z_Hcm:"?z_hcm"
  assume z_Hd:"?z_hd"
  assume z_Hct:"?z_hct" (is "?z_hcu~=?z_hcv")
  have z_Hco: "(x \\in [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hco")
  by (rule zenon_all_in_0 [of "P" "(\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))", OF z_Hcm z_Hd])
  have z_Hcw: "(?z_hcu=?z_hcv)" using z_Hco by auto
  let ?z_hcr = "<<''r'', ''X''>>"
  let ?z_hcs = "<<U, SUBSET(U)>>"
  show FALSE
  by (rule notE [OF z_Hct z_Hcw])
 qed
 assume z_Hf:"(~(x \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(P)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=j)))))))))" (is "~?z_hcx")
 have z_Hcy: "(P \\in SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]))" (is "?z_hcy")
 by (rule zenon_in_subsetof_0 [of "P" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hcz: "(P \\subseteq [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hcz")
 by (rule zenon_in_SUBSET_0 [of "P" "[''r'' : (U), ''X'' : (SUBSET(U))]", OF z_Hcy])
 have z_Hcm_z_Hcz: "bAll(P, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) == ?z_hcz" (is "?z_hcm == _")
 by (unfold subset_def)
 have z_Hcm: "?z_hcm"
 by (unfold z_Hcm_z_Hcz, fact z_Hcz)
 show FALSE
 proof (rule notE [OF z_Hf])
  have z_Hda: "((''r'' :> ((x[''r''])) @@ ''X'' :> ((x[''X''])))=x)" (is "?z_hbw=_")
  proof (rule zenon_nnpp [of "(?z_hbw=x)"])
   assume z_Hdb:"(?z_hbw~=x)"
   sorry
  qed
  have z_Hcx: "?z_hcx"
  by (rule subst [where P="(\<lambda>zenon_Vmtb. (zenon_Vmtb \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(P)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=j)))))))))", OF z_Hda], fact z_He)
  thus "?z_hcx" .
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 35"; *} qed
lemma ob'40:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (a_Lunde_Ua))"
fixes Q
assumes Q_in : "(Q \<in> (a_Lunde_Ua))"
assumes v'35: "((((f ((P)))) = ((f ((Q))))))"
fixes x
assumes x_in : "(x \<in> (P))"
assumes v'49: "(((fapply ((x), (''X''))) = (subsetOf((U), %i. (((fapply (((f ((P)))), (i))) = (fapply ((x), (''r'')))))))))"
assumes v'50: "(((fapply ((x), (''r''))) \<in> (U)))"
assumes v'51: "(((fapply (((f ((P)))), (fapply ((x), (''r''))))) = (fapply ((x), (''r'')))))"
shows "(((((''r'' :> (fapply ((x), (''r'')))) @@ (''X'' :> (fapply ((x), (''X'')))))) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((P)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((P)))), (i))) = (j))))))))))))"(is "PROP ?ob'40")
proof -
ML_command {* writeln "*** TLAPS ENTER 40"; *}
show "PROP ?ob'40"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_7648bd.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_7648bd.znn.out
;; obligation #40
$hyp "P_in" (TLA.in P a_Lunde_Ua)
$hyp "Q_in" (TLA.in Q a_Lunde_Ua)
$hyp "v'35" (= (f P)
(f Q))
$hyp "x_in" (TLA.in x P)
$hyp "v'49" (= (TLA.fapply x "X")
(TLA.subsetOf U ((i) (= (TLA.fapply (f P) i)
(TLA.fapply x "r")))))
$hyp "v'50" (TLA.in (TLA.fapply x "r")
U)
$hyp "v'51" (= (TLA.fapply (f P) (TLA.fapply x "r"))
(TLA.fapply x "r"))
$goal (TLA.in (TLA.record "r" (TLA.fapply x "r") "X" (TLA.fapply x "X"))
(TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f P) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f P) i)
j)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_He:"((x[''X''])=subsetOf(U, (\<lambda>i. ((f(P)[i])=(x[''r''])))))" (is "?z_hi=?z_hl")
 using v'49 by blast
 have z_Hf:"((x[''r'']) \\in U)" (is "?z_hf")
 using v'50 by blast
 have z_Hg:"((f(P)[(x[''r''])])=(x[''r'']))" (is "?z_hv=?z_ht")
 using v'51 by blast
 assume z_Hh:"(~((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi)) \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(P)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=j)))))))))" (is "~?z_hw")
 have z_Hbk: "(~(\\E zenon_Vh:((zenon_Vh \\in subsetOf(U, (\<lambda>k. ((f(P)[k])=k))))&((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))=(''r'' :> (zenon_Vh) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=zenon_Vh)))))))))" (is "~(\\E x : ?z_hbu(x))")
 by (rule zenon_notin_setofall_0 [of "(''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))" "subsetOf(U, (\<lambda>k. ((f(P)[k])=k)))" "(\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(P)[i])=j))))))", OF z_Hh])
 have z_Hbv: "~?z_hbu(?z_ht)" (is "~(?z_hbw&?z_hbx)")
 by (rule zenon_notex_0 [of "?z_hbu" "?z_ht", OF z_Hbk])
 show FALSE
 proof (rule zenon_notand [OF z_Hbv])
  assume z_Hby:"(~?z_hbw)"
  show FALSE
  proof (rule zenon_notin_subsetof [of "?z_ht" "U" "(\<lambda>k. ((f(P)[k])=k))", OF z_Hby])
   assume z_Hbz:"(~?z_hf)"
   show FALSE
   by (rule notE [OF z_Hbz z_Hf])
  next
   assume z_Hca:"(?z_hv~=?z_ht)"
   show FALSE
   by (rule notE [OF z_Hca z_Hg])
  qed
 next
  assume z_Hcb:"((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))~=(''r'' :> (?z_ht) @@ ''X'' :> (?z_hl)))" (is "?z_hx~=?z_hcc")
  sorry
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 40"; *} qed
lemma ob'37:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
fixes P
assumes P_in : "(P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes Q
assumes Q_in : "(Q \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P_1. ((\<forall> x \<in> (P_1) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P_1) : (\<forall> a_x2a \<in> (P_1) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P_1) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P_1) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
assumes v'33: "((([ i \<in> (U)  \<mapsto> (fapply ((bChoice((P), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))]) = ([ i \<in> (U)  \<mapsto> (fapply ((bChoice((Q), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))])))"
fixes x
assumes x_in : "(x \<in> (P))"
assumes v'45: "(\<forall> P_1 \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P_1. ((\<forall> x_1 \<in> (P_1) : (((fapply ((x_1), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P_1) : (\<forall> a_x2a \<in> (P_1) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x_1 \<in> (P_1) : (((i) \<in> (fapply ((x_1), (''X''))))))) & (\<forall> p \<in> (P_1) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))) : (\<forall> x_1 \<in> (P_1) : (\<forall> y \<in> (P_1) : (((((fapply ((x_1), (''r''))) = (fapply ((y), (''r''))))) \<Rightarrow> (((x_1) = (y))))))))"
shows "(((fapply ((x), (''X''))) = (subsetOf((U), %i. (((fapply (([ i_1 \<in> (U)  \<mapsto> (fapply ((bChoice((P), %q. (((i_1) \<in> (fapply ((q), (''X''))))))), (''r'')))]), (i))) = (fapply ((x), (''r'')))))))))"(is "PROP ?ob'37")
proof -
ML_command {* writeln "*** TLAPS ENTER 37"; *}
show "PROP ?ob'37"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_c8604e.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_c8604e.znn.out
;; obligation #37
$hyp "P_in" (TLA.in P (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "Q_in" (TLA.in Q (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P_1) (/\ (TLA.bAll P_1 ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset))))
(TLA.bAll P_1 ((a_x1a) (TLA.bAll P_1 ((a_x2a) (=> (-. (= a_x1a a_x2a))
(= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X")) TLA.emptyset))))))
(TLA.bAll U ((i) (TLA.bEx P_1 ((x) (TLA.in i (TLA.fapply x "X"))))))
(TLA.bAll P_1 ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "v'33" (= (TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice P ((q) (TLA.in i
(TLA.fapply q "X")))) "r")))
(TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice Q ((q) (TLA.in i
(TLA.fapply q "X")))) "r"))))
$hyp "x_in" (TLA.in x P)
$hyp "v'45" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P_1) (/\ (TLA.bAll P_1 ((x_1) (-. (= (TLA.fapply x_1 "X")
TLA.emptyset))))
(TLA.bAll P_1 ((a_x1a) (TLA.bAll P_1 ((a_x2a) (=> (-. (= a_x1a a_x2a))
(= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X")) TLA.emptyset))))))
(TLA.bAll U ((i) (TLA.bEx P_1 ((x_1) (TLA.in i (TLA.fapply x_1 "X"))))))
(TLA.bAll P_1 ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))) ((P_1) (TLA.bAll P_1 ((x_1) (TLA.bAll P_1 ((y) (=> (= (TLA.fapply x_1 "r")
(TLA.fapply y "r")) (= x_1 y))))))))
$goal (= (TLA.fapply x "X")
(TLA.subsetOf U ((i) (= (TLA.fapply (TLA.Fcn U ((i_1) (TLA.fapply (TLA.bChoice P ((q) (TLA.in i_1
(TLA.fapply q "X")))) "r"))) i)
(TLA.fapply x "r")))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(P \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using P_in by blast
 have z_Hd:"(x \\in P)" (is "?z_hd")
 using x_in by blast
 have zenon_L1_: "(\\A zenon_Voqb:((zenon_Voqb \\in P)=>(((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))~=zenon_Voqb)=>((((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''X'']) \\cap (zenon_Voqb[''X'']))={})))) ==> ?z_hd ==> ((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))~=x) ==> ((x[''r'']) \\in (x[''X''])) ==> (((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''r''])=(x[''r''])) ==> (((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''r'']) \\in ((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''X''])) ==> FALSE" (is "?z_hbw ==> _ ==> ?z_hdb ==> ?z_hdc ==> ?z_hdd ==> ?z_hdf ==> FALSE")
 proof -
  assume z_Hbw:"?z_hbw" (is "\\A x : ?z_hdg(x)")
  assume z_Hd:"?z_hd"
  assume z_Hdb:"?z_hdb" (is "?z_hcc~=_")
  assume z_Hdc:"?z_hdc"
  assume z_Hdd:"?z_hdd" (is "?z_hde=?z_hcv")
  assume z_Hdf:"?z_hdf"
  have z_Hdh: "?z_hdg(x)" (is "_=>?z_hdi")
  by (rule zenon_all_0 [of "?z_hdg" "x", OF z_Hbw])
  show FALSE
  proof (rule zenon_imply [OF z_Hdh])
   assume z_Hdj:"(~?z_hd)"
   show FALSE
   by (rule notE [OF z_Hdj z_Hd])
  next
   assume z_Hdi:"?z_hdi" (is "_=>?z_hdk")
   show FALSE
   proof (rule zenon_imply [OF z_Hdi])
    assume z_Hdl:"(~?z_hdb)" (is "~~?z_hdm")
    show FALSE
    by (rule notE [OF z_Hdl z_Hdb])
   next
    assume z_Hdk:"?z_hdk" (is "?z_hdn=_")
    have z_Hdo: "(\\A zenon_Vawb:(~(zenon_Vawb \\in ?z_hdn)))" (is "\\A x : ?z_hds(x)")
    by (rule zenon_setequalempty_0 [of "?z_hdn", OF z_Hdk])
    have z_Hdt: "?z_hds(?z_hcv)" (is "~?z_hdu")
    by (rule zenon_all_0 [of "?z_hds" "?z_hcv", OF z_Hdo])
    show FALSE
    proof (rule zenon_notin_cap [of "?z_hcv" "(?z_hcc[''X''])" "(x[''X''])", OF z_Hdt])
     assume z_Hdv:"(~(?z_hcv \\in (?z_hcc[''X''])))" (is "~?z_hdw")
     show FALSE
     proof (rule notE [OF z_Hdv])
      have z_Hdw: "?z_hdw"
      by (rule subst [where P="(\<lambda>zenon_Vrjc. (zenon_Vrjc \\in (?z_hcc[''X''])))", OF z_Hdd], fact z_Hdf)
      thus "?z_hdw" .
     qed
    next
     assume z_Hea:"(~?z_hdc)"
     show FALSE
     by (rule notE [OF z_Hea z_Hdc])
    qed
   qed
  qed
 qed
 have zenon_L2_: "(\\A x:((x \\in P)=>bAll(P, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) ==> ((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X''])))) \\in P) ==> (((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''r'']) \\in ((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''X''])) ==> (((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))[''r''])=(x[''r''])) ==> ((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (zenon_Vvl[''X'']))))~=x) ==> ?z_hd ==> (\\A x:((x \\in P)=>((x[''r'']) \\in (x[''X''])))) ==> FALSE" (is "?z_heb ==> ?z_hej ==> ?z_hdf ==> ?z_hdd ==> ?z_hdb ==> _ ==> ?z_hek ==> FALSE")
 proof -
  assume z_Heb:"?z_heb" (is "\\A x : ?z_hem(x)")
  assume z_Hej:"?z_hej"
  assume z_Hdf:"?z_hdf"
  assume z_Hdd:"?z_hdd" (is "?z_hde=?z_hcv")
  assume z_Hdb:"?z_hdb" (is "?z_hcc~=_")
  assume z_Hd:"?z_hd"
  assume z_Hek:"?z_hek" (is "\\A x : ?z_hen(x)")
  have z_Heo: "?z_hem(?z_hcc)" (is "_=>?z_hep")
  by (rule zenon_all_0 [of "?z_hem" "?z_hcc", OF z_Heb])
  show FALSE
  proof (rule zenon_imply [OF z_Heo])
   assume z_Heq:"(~?z_hej)"
   show FALSE
   by (rule notE [OF z_Heq z_Hej])
  next
   assume z_Hep:"?z_hep"
   have z_Hbw_z_Hep: "(\\A zenon_Voqb:((zenon_Voqb \\in P)=>((?z_hcc~=zenon_Voqb)=>(((?z_hcc[''X'']) \\cap (zenon_Voqb[''X'']))={})))) == ?z_hep" (is "?z_hbw == _")
   by (unfold bAll_def)
   have z_Hbw: "?z_hbw" (is "\\A x : ?z_hdg(x)")
   by (unfold z_Hbw_z_Hep, fact z_Hep)
   have z_Hel: "?z_hen(x)" (is "_=>?z_hdc")
   by (rule zenon_all_0 [of "?z_hen" "x", OF z_Hek])
   show FALSE
   proof (rule zenon_imply [OF z_Hel])
    assume z_Hdj:"(~?z_hd)"
    show FALSE
    by (rule notE [OF z_Hdj z_Hd])
   next
    assume z_Hdc:"?z_hdc"
    show FALSE
    by (rule zenon_L1_ [OF z_Hbw z_Hd z_Hdb z_Hdc z_Hdd z_Hdf])
   qed
  qed
 qed
 have zenon_L3_: "bAll(P, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) ==> ?z_hd ==> (~((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in U)) ==> ((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))) \\in (x[''X''])) ==> FALSE" (is "?z_her ==> _ ==> ?z_heu ==> ?z_hew ==> FALSE")
 proof -
  assume z_Her:"?z_her"
  assume z_Hd:"?z_hd"
  assume z_Heu:"?z_heu" (is "~?z_hev")
  assume z_Hew:"?z_hew"
  have z_Het: "(x \\in [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_het")
  by (rule zenon_all_in_0 [of "P" "(\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))", OF z_Her z_Hd])
  let ?z_hex = "<<''r'', ''X''>>"
  let ?z_hey = "<<U, SUBSET(U)>>"
  have z_Hez: "(2 \\in DOMAIN(?z_hex))" by auto
  have z_Hfc: "((x[(?z_hex[2])]) \\in (?z_hey[2]))" (is "?z_hfc")
  by (rule zenon_in_recordset_field [OF z_Het z_Hez])
  have z_Hfg: "((x[''X'']) \\in SUBSET(U))" (is "?z_hfg")
  using z_Hfc by auto
  have z_Hfh: "((x[''X'']) \\subseteq U)" (is "?z_hfh")
  by (rule zenon_in_SUBSET_0 [of "(x[''X''])" "U", OF z_Hfg])
  have z_Hfi_z_Hfh: "bAll((x[''X'']), (\<lambda>zenon_Vxfb. (zenon_Vxfb \\in U))) == ?z_hfh" (is "?z_hfi == _")
  by (unfold subset_def)
  have z_Hfi: "?z_hfi"
  by (unfold z_Hfi_z_Hfh, fact z_Hfh)
  have z_Hfm_z_Hfi: "(\\A zenon_Vzfb:((zenon_Vzfb \\in (x[''X'']))=>(zenon_Vzfb \\in U))) == ?z_hfi" (is "?z_hfm == _")
  by (unfold bAll_def)
  have z_Hfm: "?z_hfm" (is "\\A x : ?z_hfr(x)")
  by (unfold z_Hfm_z_Hfi, fact z_Hfi)
  have z_Hfs: "?z_hfr((CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))))))"
  by (rule zenon_all_0 [of "?z_hfr" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in (x[''X'']))<=>(zenon_Vg \\in subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r'']))))))))", OF z_Hfm])
  show FALSE
  proof (rule zenon_imply [OF z_Hfs])
   assume z_Hft:"(~?z_hew)"
   show FALSE
   by (rule notE [OF z_Hft z_Hew])
  next
   assume z_Hev:"?z_hev"
   show FALSE
   by (rule notE [OF z_Heu z_Hev])
  qed
 qed
 assume z_Hf:"((x[''X''])~=subsetOf(U, (\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))))" (is "?z_ht~=?z_hcn")
 have z_Hfu: "(P \\in SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]))" (is "?z_hfu")
 by (rule zenon_in_subsetof_0 [of "P" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hp: "(bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hq&?z_hw")
 by (rule zenon_in_subsetof_1 [of "P" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hfv: "(P \\subseteq [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hfv")
 by (rule zenon_in_SUBSET_0 [of "P" "[''r'' : (U), ''X'' : (SUBSET(U))]", OF z_Hfu])
 have z_Her_z_Hfv: "bAll(P, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) == ?z_hfv" (is "?z_her == _")
 by (unfold subset_def)
 have z_Her: "?z_her"
 by (unfold z_Her_z_Hfv, fact z_Hfv)
 have z_Hw: "?z_hw" (is "?z_hx&?z_hbj")
 by (rule zenon_and_1 [OF z_Hp])
 have z_Hx: "?z_hx"
 by (rule zenon_and_0 [OF z_Hw])
 have z_Hbj: "?z_hbj" (is "?z_hbk&?z_hbq")
 by (rule zenon_and_1 [OF z_Hw])
 have z_Hbk: "?z_hbk"
 by (rule zenon_and_0 [OF z_Hbj])
 have z_Hbq: "?z_hbq"
 by (rule zenon_and_1 [OF z_Hbj])
 have z_Heb_z_Hx: "(\\A x:((x \\in P)=>bAll(P, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) == ?z_hx" (is "?z_heb == _")
 by (unfold bAll_def)
 have z_Heb: "?z_heb" (is "\\A x : ?z_hem(x)")
 by (unfold z_Heb_z_Hx, fact z_Hx)
 have z_Hfw_z_Hbk: "(\\A x:((x \\in U)=>bEx(P, (\<lambda>zenon_Vy. (x \\in (zenon_Vy[''X''])))))) == ?z_hbk" (is "?z_hfw == _")
 by (unfold bAll_def)
 have z_Hfw: "?z_hfw" (is "\\A x : ?z_hge(x)")
 by (unfold z_Hfw_z_Hbk, fact z_Hbk)
 have z_Hek_z_Hbq: "(\\A x:((x \\in P)=>((x[''r'']) \\in (x[''X''])))) == ?z_hbq" (is "?z_hek == _")
 by (unfold bAll_def)
 have z_Hek: "?z_hek" (is "\\A x : ?z_hen(x)")
 by (unfold z_Hek_z_Hbq, fact z_Hbq)
 have z_Hgf: "(~(\\A zenon_Vg:((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" (is "~(\\A x : ?z_hgh(x))")
 by (rule zenon_notsetequal_0 [of "?z_ht" "?z_hcn", OF z_Hf])
 have z_Hgi: "(\\E zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" (is "\\E x : ?z_hgj(x)")
 by (rule zenon_notallex_0 [of "?z_hgh", OF z_Hgf])
 have z_Hgk: "?z_hgj((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))))" (is "~(?z_hew<=>?z_hgl)")
 by (rule zenon_ex_choose_0 [of "?z_hgj", OF z_Hgi])
 show FALSE
 proof (rule zenon_notequiv [OF z_Hgk])
  assume z_Hft:"(~?z_hew)"
  assume z_Hgl:"?z_hgl"
  have z_Hev: "((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in U)" (is "?z_hev")
  by (rule zenon_in_subsetof_0 [of "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" "U" "(\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))", OF z_Hgl])
  have z_Hgm: "((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))])=(x[''r'']))" (is "?z_hgn=?z_hcv")
  by (rule zenon_in_subsetof_1 [of "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" "U" "(\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=?z_hcv))", OF z_Hgl])
  show FALSE
  proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vxgb. (zenon_Vxgb=?z_hcv))" "U" "(\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r'']))" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))", OF z_Hgm])
   assume z_Heu:"(~?z_hev)"
   show FALSE
   by (rule notE [OF z_Heu z_Hev])
  next
   assume z_Hgr:"((bChoice(P, (\<lambda>zenon_Vsl. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vsl[''X'']))))[''r''])=?z_hcv)" (is "?z_hgs=_")
   have z_Hdd_z_Hgr: "(((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))[''r''])=?z_hcv) == (?z_hgs=?z_hcv)" (is "?z_hdd == ?z_hgr")
   by (unfold bChoose_def)
   have z_Hdd: "?z_hdd" (is "?z_hde=_")
   by (unfold z_Hdd_z_Hgr, fact z_Hgr)
   show FALSE
   proof (rule zenon_em [of "(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))"])
    assume z_Hgy:"(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))" (is "\\E x : ?z_hgz(x)")
    have z_Hha: "?z_hgz((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X''])))))" (is "?z_hej&?z_hhb")
    by (rule zenon_ex_choose_0 [of "?z_hgz", OF z_Hgy])
    have z_Hej: "?z_hej"
    by (rule zenon_and_0 [OF z_Hha])
    have z_Hhb: "?z_hhb"
    by (rule zenon_and_1 [OF z_Hha])
    show FALSE
    proof (rule notE [OF z_Hft])
     have z_Hhc: "(((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))[''X''])=?z_ht)" (is "?z_hcz=_")
     proof (rule zenon_nnpp [of "(?z_hcz=?z_ht)"])
      assume z_Hhd:"(?z_hcz~=?z_ht)"
      show FALSE
      proof (rule zenon_noteq [of "?z_ht"])
       have z_Hdm: "((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))=x)" (is "?z_hcc=_")
       proof (rule zenon_nnpp [of "(?z_hcc=x)"])
        assume z_Hdb:"(?z_hcc~=x)"
        have z_Hhe: "?z_hen(?z_hcc)" (is "_=>?z_hdf")
        by (rule zenon_all_0 [of "?z_hen" "?z_hcc", OF z_Hek])
        show FALSE
        proof (rule zenon_imply [OF z_Hhe])
         assume z_Heq:"(~?z_hej)"
         show FALSE
         by (rule notE [OF z_Heq z_Hej])
        next
         assume z_Hdf:"?z_hdf"
         show FALSE
         by (rule zenon_L2_ [OF z_Heb z_Hej z_Hdf z_Hdd z_Hdb z_Hd z_Hek])
        qed
       qed
       have z_Hhf: "(?z_ht~=?z_ht)"
       by (rule subst [where P="(\<lambda>zenon_Vujc. ((zenon_Vujc[''X''])~=?z_ht))", OF z_Hdm], fact z_Hhd)
       thus "(?z_ht~=?z_ht)" .
      qed
     qed
     have z_Hew: "?z_hew"
     by (rule subst [where P="(\<lambda>zenon_Vvjc. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in zenon_Vvjc))", OF z_Hhc], fact z_Hhb)
     thus "?z_hew" .
    qed
   next
    assume z_Hhn:"(~(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X''])))))" (is "~(\\E x : ?z_hgz(x))")
    have z_Hho: "?z_hge((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))))" (is "_=>?z_hhp")
    by (rule zenon_all_0 [of "?z_hge" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))", OF z_Hfw])
    show FALSE
    proof (rule zenon_imply [OF z_Hho])
     assume z_Heu:"(~?z_hev)"
     show FALSE
     by (rule notE [OF z_Heu z_Hev])
    next
     assume z_Hhp:"?z_hhp"
     have z_Hgy_z_Hhp: "(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X''])))) == ?z_hhp" (is "?z_hgy == _")
     by (unfold bEx_def)
     have z_Hgy: "?z_hgy"
     by (unfold z_Hgy_z_Hhp, fact z_Hhp)
     show FALSE
     by (rule notE [OF z_Hhn z_Hgy])
    qed
   qed
  qed
 next
  assume z_Hew:"?z_hew"
  assume z_Hhq:"(~?z_hgl)"
  show FALSE
  proof (rule zenon_notin_subsetof [of "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" "U" "(\<lambda>i. ((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[i])=(x[''r''])))", OF z_Hhq])
   assume z_Heu:"(~((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in U))" (is "~?z_hev")
   show FALSE
   by (rule zenon_L3_ [OF z_Her z_Hd z_Heu z_Hew])
  next
   assume z_Hhr:"((Fcn(U, (\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r''])))[(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))])~=(x[''r'']))" (is "?z_hgn~=?z_hcv")
   show FALSE
   proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vrl. (zenon_Vrl~=?z_hcv))" "U" "(\<lambda>i. (bChoice(P, (\<lambda>x. (i \\in (x[''X'']))))[''r'']))" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))", OF z_Hhr])
    assume z_Heu:"(~((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in U))" (is "~?z_hev")
    show FALSE
    by (rule zenon_L3_ [OF z_Her z_Hd z_Heu z_Hew])
   next
    assume z_Hhv:"((bChoice(P, (\<lambda>zenon_Vsl. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vsl[''X'']))))[''r''])~=?z_hcv)" (is "?z_hgs~=_")
    have z_Hhw_z_Hhv: "(((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))[''r''])~=?z_hcv) == (?z_hgs~=?z_hcv)" (is "?z_hhw == ?z_hhv")
    by (unfold bChoose_def)
    have z_Hhw: "?z_hhw" (is "?z_hde~=_")
    by (unfold z_Hhw_z_Hhv, fact z_Hhv)
    show FALSE
    proof (rule zenon_noteq [of "?z_hcv"])
     have z_Hdm: "((CHOOSE zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))=x)" (is "?z_hcc=_")
     proof (rule zenon_nnpp [of "(?z_hcc=x)"])
      assume z_Hdb:"(?z_hcc~=x)"
      show FALSE
      proof (rule zenon_em [of "(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))"])
       assume z_Hgy:"(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X'']))))" (is "\\E x : ?z_hgz(x)")
       have z_Hha: "?z_hgz(?z_hcc)" (is "?z_hej&?z_hhb")
       by (rule zenon_ex_choose_0 [of "?z_hgz", OF z_Hgy])
       have z_Hej: "?z_hej"
       by (rule zenon_and_0 [OF z_Hha])
       have z_Hhb: "?z_hhb"
       by (rule zenon_and_1 [OF z_Hha])
       have z_Hec: "?z_hem(x)" (is "_=>?z_hed")
       by (rule zenon_all_0 [of "?z_hem" "x", OF z_Heb])
       show FALSE
       proof (rule zenon_imply [OF z_Hec])
        assume z_Hdj:"(~?z_hd)"
        show FALSE
        by (rule notE [OF z_Hdj z_Hd])
       next
        assume z_Hed:"?z_hed"
        have z_Hhx_z_Hed: "(\\A zenon_Vpfa:((zenon_Vpfa \\in P)=>((x~=zenon_Vpfa)=>((?z_ht \\cap (zenon_Vpfa[''X'']))={})))) == ?z_hed" (is "?z_hhx == _")
        by (unfold bAll_def)
        have z_Hhx: "?z_hhx" (is "\\A x : ?z_hig(x)")
        by (unfold z_Hhx_z_Hed, fact z_Hed)
        have z_Hih: "?z_hig(?z_hcc)" (is "_=>?z_hii")
        by (rule zenon_all_0 [of "?z_hig" "?z_hcc", OF z_Hhx])
        show FALSE
        proof (rule zenon_imply [OF z_Hih])
         assume z_Heq:"(~?z_hej)"
         show FALSE
         by (rule notE [OF z_Heq z_Hej])
        next
         assume z_Hii:"?z_hii" (is "?z_hij=>?z_hik")
         show FALSE
         proof (rule zenon_imply [OF z_Hii])
          assume z_Hil:"(~?z_hij)" (is "~~?z_him")
          have z_Him: "?z_him"
          by (rule zenon_notnot_0 [OF z_Hil])
          show FALSE
          by (rule zenon_eqsym [OF z_Him z_Hdb])
         next
          assume z_Hik:"?z_hik" (is "?z_hin=_")
          have z_Hio: "(\\A zenon_Vvha:(~(zenon_Vvha \\in ?z_hin)))" (is "\\A x : ?z_his(x)")
          by (rule zenon_setequalempty_0 [of "?z_hin", OF z_Hik])
          have z_Hit: "?z_his((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))))" (is "~?z_hiu")
          by (rule zenon_all_0 [of "?z_his" "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))", OF z_Hio])
          show FALSE
          proof (rule zenon_notin_cap [of "(CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn))))" "?z_ht" "(?z_hcc[''X''])", OF z_Hit])
           assume z_Hft:"(~?z_hew)"
           show FALSE
           by (rule notE [OF z_Hft z_Hew])
          next
           assume z_Hiv:"(~?z_hhb)"
           show FALSE
           by (rule notE [OF z_Hiv z_Hhb])
          qed
         qed
        qed
       qed
      next
       assume z_Hhn:"(~(\\E zenon_Vvl:((zenon_Vvl \\in P)&((CHOOSE zenon_Vg:(~((zenon_Vg \\in ?z_ht)<=>(zenon_Vg \\in ?z_hcn)))) \\in (zenon_Vvl[''X''])))))" (is "~(\\E x : ?z_hgz(x))")
       have z_Hiw: "~?z_hgz(x)"
       by (rule zenon_notex_0 [of "?z_hgz" "x", OF z_Hhn])
       show FALSE
       proof (rule zenon_notand [OF z_Hiw])
        assume z_Hdj:"(~?z_hd)"
        show FALSE
        by (rule notE [OF z_Hdj z_Hd])
       next
        assume z_Hft:"(~?z_hew)"
        show FALSE
        by (rule notE [OF z_Hft z_Hew])
       qed
      qed
     qed
     have z_Hix: "(?z_hcv~=?z_hcv)"
     by (rule subst [where P="(\<lambda>zenon_Vwjc. ((zenon_Vwjc[''r''])~=?z_hcv))", OF z_Hdm], fact z_Hhw)
     thus "(?z_hcv~=?z_hcv)" .
    qed
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 37"; *} qed
lemma ob'54:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (a_Lunde_Ua))"
fixes Q
assumes Q_in : "(Q \<in> (a_Lunde_Ua))"
assumes v'35: "((((f ((P)))) = ((f ((Q))))))"
fixes x
assumes x_in : "(x \<in> (Q))"
assumes v'50: "(((fapply ((x), (''X''))) = (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (fapply ((x), (''r'')))))))))"
assumes v'51: "(((fapply ((x), (''r''))) \<in> (U)))"
assumes v'52: "(((fapply (((f ((Q)))), (fapply ((x), (''r''))))) = (fapply ((x), (''r'')))))"
shows "(((((''r'' :> (fapply ((x), (''r'')))) @@ (''X'' :> (fapply ((x), (''X'')))))) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j))))))))))))"(is "PROP ?ob'54")
proof -
ML_command {* writeln "*** TLAPS ENTER 54"; *}
show "PROP ?ob'54"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_5609c3.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_5609c3.znn.out
;; obligation #54
$hyp "P_in" (TLA.in P a_Lunde_Ua)
$hyp "Q_in" (TLA.in Q a_Lunde_Ua)
$hyp "v'35" (= (f P)
(f Q))
$hyp "x_in" (TLA.in x Q)
$hyp "v'50" (= (TLA.fapply x "X")
(TLA.subsetOf U ((i) (= (TLA.fapply (f Q) i)
(TLA.fapply x "r")))))
$hyp "v'51" (TLA.in (TLA.fapply x "r")
U)
$hyp "v'52" (= (TLA.fapply (f Q) (TLA.fapply x "r"))
(TLA.fapply x "r"))
$goal (TLA.in (TLA.record "r" (TLA.fapply x "r") "X" (TLA.fapply x "X"))
(TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f Q) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f Q) i)
j)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_He:"((x[''X''])=subsetOf(U, (\<lambda>i. ((f(Q)[i])=(x[''r''])))))" (is "?z_hi=?z_hl")
 using v'50 by blast
 have z_Hf:"((x[''r'']) \\in U)" (is "?z_hf")
 using v'51 by blast
 have z_Hg:"((f(Q)[(x[''r''])])=(x[''r'']))" (is "?z_hv=?z_ht")
 using v'52 by blast
 assume z_Hh:"(~((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi)) \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(Q)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=j)))))))))" (is "~?z_hw")
 have z_Hbk: "(~(\\E zenon_Vh:((zenon_Vh \\in subsetOf(U, (\<lambda>k. ((f(Q)[k])=k))))&((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))=(''r'' :> (zenon_Vh) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=zenon_Vh)))))))))" (is "~(\\E x : ?z_hbu(x))")
 by (rule zenon_notin_setofall_0 [of "(''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))" "subsetOf(U, (\<lambda>k. ((f(Q)[k])=k)))" "(\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=j))))))", OF z_Hh])
 have z_Hbv: "~?z_hbu(?z_ht)" (is "~(?z_hbw&?z_hbx)")
 by (rule zenon_notex_0 [of "?z_hbu" "?z_ht", OF z_Hbk])
 show FALSE
 proof (rule zenon_notand [OF z_Hbv])
  assume z_Hby:"(~?z_hbw)"
  show FALSE
  proof (rule zenon_notin_subsetof [of "?z_ht" "U" "(\<lambda>k. ((f(Q)[k])=k))", OF z_Hby])
   assume z_Hbz:"(~?z_hf)"
   show FALSE
   by (rule notE [OF z_Hbz z_Hf])
  next
   assume z_Hca:"(?z_hv~=?z_ht)"
   show FALSE
   by (rule notE [OF z_Hca z_Hg])
  qed
 next
  assume z_Hcb:"((''r'' :> (?z_ht) @@ ''X'' :> (?z_hi))~=(''r'' :> (?z_ht) @@ ''X'' :> (?z_hl)))" (is "?z_hx~=?z_hcc")
  sorry
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 54"; *} qed
lemma ob'49:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes Q
assumes Q_in : "(Q \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P_1. ((\<forall> x \<in> (P_1) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P_1) : (\<forall> a_x2a \<in> (P_1) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P_1) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P_1) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
assumes v'34: "((((f ((P)))) = ((f ((Q))))))"
fixes x
assumes x_in : "(x \<in> (Q))"
assumes v'47: "(((((''r'' :> (fapply ((x), (''r'')))) @@ (''X'' :> (fapply ((x), (''X'')))))) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j))))))))))))"
shows "(((x) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j))))))))))))"(is "PROP ?ob'49")
proof -
ML_command {* writeln "*** TLAPS ENTER 49"; *}
show "PROP ?ob'49"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_c60e9d.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_c60e9d.znn.out
;; obligation #49
$hyp "P_in" (TLA.in P (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "Q_in" (TLA.in Q (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P_1) (/\ (TLA.bAll P_1 ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset))))
(TLA.bAll P_1 ((a_x1a) (TLA.bAll P_1 ((a_x2a) (=> (-. (= a_x1a a_x2a))
(= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X")) TLA.emptyset))))))
(TLA.bAll U ((i) (TLA.bEx P_1 ((x) (TLA.in i (TLA.fapply x "X"))))))
(TLA.bAll P_1 ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "v'34" (= (f P)
(f Q))
$hyp "x_in" (TLA.in x Q)
$hyp "v'47" (TLA.in (TLA.record "r" (TLA.fapply x "r") "X" (TLA.fapply x "X"))
(TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f Q) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f Q) i)
j)))))))
$goal (TLA.in x (TLA.setOfAll (TLA.subsetOf U ((k) (= (TLA.fapply (f Q) k)
k))) ((j) (TLA.record "r" j "X" (TLA.subsetOf U ((i) (= (TLA.fapply (f Q) i)
j)))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hb:"(Q \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_hb")
 using Q_in by blast
 have z_Hd:"(x \\in Q)" (is "?z_hd")
 using x_in by blast
 have z_He:"((''r'' :> ((x[''r''])) @@ ''X'' :> ((x[''X'']))) \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(Q)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=j))))))))" (is "?z_he")
 using v'47 by blast
 have zenon_L1_: "bAll(Q, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) ==> ?z_hd ==> (~isAFcn(x)) ==> FALSE" (is "?z_hcn ==> _ ==> ?z_hcq ==> FALSE")
 proof -
  assume z_Hcn:"?z_hcn"
  assume z_Hd:"?z_hd"
  assume z_Hcq:"?z_hcq" (is "~?z_hcr")
  have z_Hcp: "(x \\in [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hcp")
  by (rule zenon_all_in_0 [of "Q" "(\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))", OF z_Hcn z_Hd])
  have z_Hcr: "?z_hcr" using z_Hcp by auto
  let ?z_hcs = "<<''r'', ''X''>>"
  let ?z_hct = "<<U, SUBSET(U)>>"
  show FALSE
  by (rule notE [OF z_Hcq z_Hcr])
 qed
 have zenon_L2_: "bAll(Q, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) ==> ?z_hd ==> (DOMAIN(x)~={''r'', ''X''}) ==> FALSE" (is "?z_hcn ==> _ ==> ?z_hcu ==> FALSE")
 proof -
  assume z_Hcn:"?z_hcn"
  assume z_Hd:"?z_hd"
  assume z_Hcu:"?z_hcu" (is "?z_hcv~=?z_hcw")
  have z_Hcp: "(x \\in [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hcp")
  by (rule zenon_all_in_0 [of "Q" "(\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))", OF z_Hcn z_Hd])
  have z_Hcx: "(?z_hcv=?z_hcw)" using z_Hcp by auto
  let ?z_hcs = "<<''r'', ''X''>>"
  let ?z_hct = "<<U, SUBSET(U)>>"
  show FALSE
  by (rule notE [OF z_Hcu z_Hcx])
 qed
 assume z_Hf:"(~(x \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(Q)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=j)))))))))" (is "~?z_hcy")
 have z_Hcz: "(Q \\in SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]))" (is "?z_hcz")
 by (rule zenon_in_subsetof_0 [of "Q" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Hb])
 have z_Hda: "(Q \\subseteq [''r'' : (U), ''X'' : (SUBSET(U))])" (is "?z_hda")
 by (rule zenon_in_SUBSET_0 [of "Q" "[''r'' : (U), ''X'' : (SUBSET(U))]", OF z_Hcz])
 have z_Hcn_z_Hda: "bAll(Q, (\<lambda>x. (x \\in [''r'' : (U), ''X'' : (SUBSET(U))]))) == ?z_hda" (is "?z_hcn == _")
 by (unfold subset_def)
 have z_Hcn: "?z_hcn"
 by (unfold z_Hcn_z_Hda, fact z_Hda)
 show FALSE
 proof (rule notE [OF z_Hf])
  have z_Hdb: "((''r'' :> ((x[''r''])) @@ ''X'' :> ((x[''X''])))=x)" (is "?z_hbx=_")
  proof (rule zenon_nnpp [of "(?z_hbx=x)"])
   assume z_Hdc:"(?z_hbx~=x)"
   sorry
  qed
  have z_Hcy: "?z_hcy"
  by (rule subst [where P="(\<lambda>zenon_Vqic. (zenon_Vqic \\in setOfAll(subsetOf(U, (\<lambda>k. ((f(Q)[k])=k))), (\<lambda>j. (''r'' :> (j) @@ ''X'' :> (subsetOf(U, (\<lambda>i. ((f(Q)[i])=j)))))))))", OF z_Hdb], fact z_He)
  thus "?z_hcy" .
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 49"; *} qed
lemma ob'114:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'43: "((delta ((a_s1a), (o), (a_s2a), (r))))"
assumes v'51: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) & (\<exists> p \<in> (a_s1a) : ((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((p), (''r''))) = (r))))))"
assumes v'52: "(((fapply ((o), ((Succ[0])))) = (''Find'')))"
assumes v'53: "(((a_s2a) = (a_s1a)))"
shows "(\<exists> p \<in> (a_s1a) : (((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) \<and> (((fapply ((p), (''r''))) = (fapply (([ i \<in> (U)  \<mapsto> (fapply ((bChoice((a_s1a), %q. (((i) \<in> (fapply ((q), (''X''))))))), (''r'')))]), (fapply ((o), ((Succ[Succ[0]])))))))))))"(is "PROP ?ob'114")
proof -
ML_command {* writeln "*** TLAPS ENTER 114"; *}
show "PROP ?ob'114"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_744a42.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_744a42.znn.out
;; obligation #114
$hyp "a_s1a_in" (TLA.in a_s1a a_Lunde_Ua)
$hyp "a_s2a_in" (TLA.in a_s2a a_Lunde_Ua)
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'43" (delta a_s1a o a_s2a
r)
$hyp "v'51" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.bEx a_s1a ((p) (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply p "X")) (= (TLA.fapply p "r")
r)))))
$hyp "v'52" (= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Find")
$hyp "v'53" (= a_s2a
a_s1a)
$goal (TLA.bEx a_s1a ((p) (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply p "X")) (= (TLA.fapply p "r")
(TLA.fapply (TLA.Fcn U ((i) (TLA.fapply (TLA.bChoice a_s1a ((q) (TLA.in i
(TLA.fapply q "X")))) "r"))) (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Hf:"(((o[2]) \\in U)&bEx(a_s1a, (\<lambda>p. (((o[2]) \\in (p[''X'']))&((p[''r''])=r)))))" (is "?z_hj&?z_ho")
 using v'51 by blast
 assume z_Hi:"(~bEx(a_s1a, (\<lambda>p. (((o[2]) \\in (p[''X'']))&((p[''r''])=(Fcn(U, (\<lambda>i. (bChoice(a_s1a, (\<lambda>q. (i \\in (q[''X'']))))[''r''])))[(o[2])]))))))" (is "~?z_hba")
 have z_Hj: "?z_hj"
 by (rule zenon_and_0 [OF z_Hf])
 have z_Ho: "?z_ho"
 by (rule zenon_and_1 [OF z_Hf])
 have z_Hbo_z_Ho: "(\\E x:((x \\in a_s1a)&(((o[2]) \\in (x[''X'']))&((x[''r''])=r)))) == ?z_ho" (is "?z_hbo == _")
 by (unfold bEx_def)
 have z_Hbo: "?z_hbo" (is "\\E x : ?z_hbx(x)")
 by (unfold z_Hbo_z_Ho, fact z_Ho)
 have z_Hby: "?z_hbx((CHOOSE x:((x \\in a_s1a)&(((o[2]) \\in (x[''X'']))&((x[''r''])=r)))))" (is "?z_hca&?z_hcb")
 by (rule zenon_ex_choose_0 [of "?z_hbx", OF z_Hbo])
 have z_Hca: "?z_hca"
 by (rule zenon_and_0 [OF z_Hby])
 have z_Hcb: "?z_hcb" (is "?z_hcc&?z_hcd")
 by (rule zenon_and_1 [OF z_Hby])
 have z_Hcc: "?z_hcc"
 by (rule zenon_and_0 [OF z_Hcb])
 have z_Hce_z_Hi: "(~(\\E x:((x \\in a_s1a)&(((o[2]) \\in (x[''X'']))&((x[''r''])=(Fcn(U, (\<lambda>i. (bChoice(a_s1a, (\<lambda>q. (i \\in (q[''X'']))))[''r''])))[(o[2])])))))) == (~?z_hba)" (is "?z_hce == ?z_hi")
 by (unfold bEx_def)
 have z_Hce: "?z_hce" (is "~(\\E x : ?z_hcj(x))")
 by (unfold z_Hce_z_Hi, fact z_Hi)
 show FALSE
 proof (rule zenon_em [of "(\\E x:((x \\in a_s1a)&((o[2]) \\in (x[''X'']))))"])
  assume z_Hck:"(\\E x:((x \\in a_s1a)&((o[2]) \\in (x[''X'']))))" (is "\\E x : ?z_hcm(x)")
  have z_Hcn: "?z_hcm((CHOOSE x:((x \\in a_s1a)&((o[2]) \\in (x[''X''])))))" (is "?z_hcp&?z_hcq")
  by (rule zenon_ex_choose_0 [of "?z_hcm", OF z_Hck])
  have z_Hcp: "?z_hcp"
  by (rule zenon_and_0 [OF z_Hcn])
  have z_Hcq: "?z_hcq"
  by (rule zenon_and_1 [OF z_Hcn])
  have z_Hcr: "~?z_hcj((CHOOSE x:((x \\in a_s1a)&((o[2]) \\in (x[''X''])))))" (is "~(_&?z_hcs)")
  by (rule zenon_notex_0 [of "?z_hcj" "(CHOOSE x:((x \\in a_s1a)&((o[2]) \\in (x[''X'']))))", OF z_Hce])
  show FALSE
  proof (rule zenon_notand [OF z_Hcr])
   assume z_Hct:"(~?z_hcp)"
   show FALSE
   by (rule notE [OF z_Hct z_Hcp])
  next
   assume z_Hcu:"(~?z_hcs)" (is "~(_&?z_hcv)")
   show FALSE
   proof (rule zenon_notand [OF z_Hcu])
    assume z_Hcw:"(~?z_hcq)"
    show FALSE
    by (rule notE [OF z_Hcw z_Hcq])
   next
    assume z_Hcx:"(((CHOOSE x:((x \\in a_s1a)&((o[2]) \\in (x[''X'']))))[''r''])~=(Fcn(U, (\<lambda>i. (bChoice(a_s1a, (\<lambda>q. (i \\in (q[''X'']))))[''r''])))[(o[2])]))" (is "?z_hcy~=?z_hbe")
    show FALSE
    proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vfc. (?z_hcy~=zenon_Vfc))" "U" "(\<lambda>i. (bChoice(a_s1a, (\<lambda>q. (i \\in (q[''X'']))))[''r'']))" "(o[2])", OF z_Hcx])
     assume z_Hdc:"(~?z_hj)"
     show FALSE
     by (rule notE [OF z_Hdc z_Hj])
    next
     assume z_Hdd:"(?z_hcy~=(bChoice(a_s1a, (\<lambda>q. ((o[2]) \\in (q[''X'']))))[''r'']))" (is "_~=?z_hde")
     have z_Hdi_z_Hdd: "(?z_hcy~=?z_hcy) == (?z_hcy~=?z_hde)" (is "?z_hdi == ?z_hdd")
     by (unfold bChoose_def)
     have z_Hdi: "?z_hdi"
     by (unfold z_Hdi_z_Hdd, fact z_Hdd)
     show FALSE
     by (rule zenon_noteq [OF z_Hdi])
    qed
   qed
  qed
 next
  assume z_Hdj:"(~(\\E x:((x \\in a_s1a)&((o[2]) \\in (x[''X''])))))" (is "~(\\E x : ?z_hcm(x))")
  have z_Hdk: "~?z_hcm((CHOOSE x:((x \\in a_s1a)&(((o[2]) \\in (x[''X'']))&((x[''r''])=r)))))"
  by (rule zenon_notex_0 [of "?z_hcm" "(CHOOSE x:((x \\in a_s1a)&(((o[2]) \\in (x[''X'']))&((x[''r''])=r))))", OF z_Hdj])
  show FALSE
  proof (rule zenon_notand [OF z_Hdk])
   assume z_Hdl:"(~?z_hca)"
   show FALSE
   by (rule notE [OF z_Hdl z_Hca])
  next
   assume z_Hdm:"(~?z_hcc)"
   show FALSE
   by (rule notE [OF z_Hdm z_Hcc])
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 114"; *} qed
lemma ob'30:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (a_Lunde_Ua))"
fixes Q
assumes Q_in : "(Q \<in> (a_Lunde_Ua))"
assumes v'35: "((((f ((P)))) = ((f ((Q))))))"
assumes v'40: "(((P) = (setOfAll((subsetOf((U), %k. (((fapply (((f ((P)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((P)))), (i))) = (j))))))))))))"
assumes v'41: "(((Q) = (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j))))))))))))"
shows "(((P) = (Q)))"(is "PROP ?ob'30")
proof -
ML_command {* writeln "*** TLAPS ENTER 30"; *}
show "PROP ?ob'30"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 30"; *} qed
lemma ob'90:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes A
assumes A_in : "(A \<in> (Idems))"
assumes v'45: "(((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))) \<in> (a_Lunde_Ua)))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'56: "(((fapply ((A), (i))) = (i)))"
assumes v'57: "(((i) \<in> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i)))))))"
shows "(\<exists> q \<in> (setOfAll((subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i_1))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (x)))))))))) : (((((fapply ((q), (''r''))) = (i))) \<and> (((i) \<in> (fapply ((q), (''X''))))))))"(is "PROP ?ob'90")
proof -
ML_command {* writeln "*** TLAPS ENTER 90"; *}
show "PROP ?ob'90"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 90"; *} qed
lemma ob'153:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'43: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'53: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'71: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'72: "(((((i) \<notin> (fapply ((p), (''X''))))) \<and> (((i) \<notin> (fapply ((q), (''X'')))))))"
shows "(\<exists> d \<in> (a_s1a) : (((((((i) \<in> (fapply ((d), (''X''))))) \<and> (((d) \<noteq> (p))))) \<and> (((d) \<noteq> (q))))))"(is "PROP ?ob'153")
proof -
ML_command {* writeln "*** TLAPS ENTER 153"; *}
show "PROP ?ob'153"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_f0aa71.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_f0aa71.znn.out
;; obligation #153
$hyp "a_s1a_in" (TLA.in a_s1a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "a_s2a_in" (TLA.in a_s2a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'43" (delta a_s1a o a_s2a
r)
$hyp "p_in" (TLA.in p a_s1a)
$hyp "q_in" (TLA.in q a_s1a)
$hyp "v'53" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply p "X"))
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply q "X")) (\/ (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))) (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply q "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))))
$hyp "i_in" (TLA.in i U)
$hyp "v'71" (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))
$hyp "v'72" (/\ (-. (TLA.in i (TLA.fapply p "X"))) (-. (TLA.in i
(TLA.fapply q "X"))))
$goal (TLA.bEx a_s1a ((d) (/\ (/\ (TLA.in i (TLA.fapply d "X")) (-. (= d p)))
(-. (= d
q)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hi:"(i \\in U)" (is "?z_hi")
 using i_in by blast
 have z_Hk:"((~(i \\in (p[''X''])))&(~(i \\in (q[''X'']))))" (is "?z_hcd&?z_hcf")
 using v'72 by blast
 assume z_Hl:"(~bEx(a_s1a, (\<lambda>d. (((i \\in (d[''X'']))&(d~=p))&(d~=q)))))" (is "~?z_hcj")
 have z_Hcs: "(bAll(a_s1a, (\<lambda>x. ((x[''X''])~={})))&(bAll(a_s1a, (\<lambda>a_x1a. bAll(a_s1a, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(a_s1a, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hct&?z_hcu")
 by (rule zenon_in_subsetof_1 [of "a_s1a" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hcu: "?z_hcu" (is "?z_hcv&?z_hcy")
 by (rule zenon_and_1 [OF z_Hcs])
 have z_Hcy: "?z_hcy" (is "?z_hcz&?z_hdc")
 by (rule zenon_and_1 [OF z_Hcu])
 have z_Hcz: "?z_hcz"
 by (rule zenon_and_0 [OF z_Hcy])
 have z_Hdd_z_Hcz: "(\\A x:((x \\in U)=>bEx(a_s1a, (\<lambda>zenon_Vfa. (x \\in (zenon_Vfa[''X''])))))) == ?z_hcz" (is "?z_hdd == _")
 by (unfold bAll_def)
 have z_Hdd: "?z_hdd" (is "\\A x : ?z_hdl(x)")
 by (unfold z_Hdd_z_Hcz, fact z_Hcz)
 have z_Hcd: "?z_hcd" (is "~?z_hce")
 by (rule zenon_and_0 [OF z_Hk])
 have z_Hcf: "?z_hcf" (is "~?z_hcg")
 by (rule zenon_and_1 [OF z_Hk])
 have z_Hdm_z_Hl: "(~(\\E x:((x \\in a_s1a)&(((i \\in (x[''X'']))&(x~=p))&(x~=q))))) == (~?z_hcj)" (is "?z_hdm == ?z_hl")
 by (unfold bEx_def)
 have z_Hdm: "?z_hdm" (is "~(\\E x : ?z_hdu(x))")
 by (unfold z_Hdm_z_Hl, fact z_Hl)
 have z_Hdv: "?z_hdl(i)" (is "_=>?z_hdb")
 by (rule zenon_all_0 [of "?z_hdl" "i", OF z_Hdd])
 show FALSE
 proof (rule zenon_imply [OF z_Hdv])
  assume z_Hdw:"(~?z_hi)"
  show FALSE
  by (rule notE [OF z_Hdw z_Hi])
 next
  assume z_Hdb:"?z_hdb"
  have z_Hdx_z_Hdb: "(\\E x:((x \\in a_s1a)&(i \\in (x[''X''])))) == ?z_hdb" (is "?z_hdx == _")
  by (unfold bEx_def)
  have z_Hdx: "?z_hdx" (is "\\E x : ?z_hdz(x)")
  by (unfold z_Hdx_z_Hdb, fact z_Hdb)
  have z_Hea: "?z_hdz((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "?z_hec&?z_hed")
  by (rule zenon_ex_choose_0 [of "?z_hdz", OF z_Hdx])
  have z_Hec: "?z_hec"
  by (rule zenon_and_0 [OF z_Hea])
  have z_Hed: "?z_hed"
  by (rule zenon_and_1 [OF z_Hea])
  show FALSE
  proof (rule notE [OF z_Hcf])
   have z_Hee: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])=(q[''X'']))" (is "?z_hef=?z_hch")
   proof (rule zenon_nnpp [of "(?z_hef=?z_hch)"])
    assume z_Heg:"(?z_hef~=?z_hch)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hch"])
     have z_Heh: "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=q)" (is "?z_heb=_")
     proof (rule zenon_nnpp [of "(?z_heb=q)"])
      assume z_Hei:"(?z_heb~=q)"
      show FALSE
      proof (rule notE [OF z_Hcd])
       have z_Hej: "(?z_hef=(p[''X'']))" (is "_=?z_hcc")
       proof (rule zenon_nnpp [of "(?z_hef=?z_hcc)"])
        assume z_Hek:"(?z_hef~=?z_hcc)"
        show FALSE
        proof (rule zenon_noteq [of "?z_hcc"])
         have z_Hel: "(?z_heb=p)"
         proof (rule zenon_nnpp [of "(?z_heb=p)"])
          assume z_Hem:"(?z_heb~=p)"
          have z_Hen: "~?z_hdu(?z_heb)" (is "~(_&?z_heo)")
          by (rule zenon_notex_0 [of "?z_hdu" "?z_heb", OF z_Hdm])
          show FALSE
          proof (rule zenon_notand [OF z_Hen])
           assume z_Hep:"(~?z_hec)"
           show FALSE
           by (rule notE [OF z_Hep z_Hec])
          next
           assume z_Heq:"(~?z_heo)" (is "~(?z_her&?z_hei)")
           show FALSE
           proof (rule zenon_notand [OF z_Heq])
            assume z_Hes:"(~?z_her)" (is "~(_&?z_hem)")
            show FALSE
            proof (rule zenon_notand [OF z_Hes])
             assume z_Het:"(~?z_hed)"
             show FALSE
             by (rule notE [OF z_Het z_Hed])
            next
             assume z_Heu:"(~?z_hem)" (is "~~?z_hel")
             show FALSE
             by (rule notE [OF z_Heu z_Hem])
            qed
           next
            assume z_Hev:"(~?z_hei)" (is "~~?z_heh")
            show FALSE
            by (rule notE [OF z_Hev z_Hei])
           qed
          qed
         qed
         have z_Hew: "(?z_hcc~=?z_hcc)"
         by (rule subst [where P="(\<lambda>zenon_Vav. ((zenon_Vav[''X''])~=?z_hcc))", OF z_Hel], fact z_Hek)
         thus "(?z_hcc~=?z_hcc)" .
        qed
       qed
       have z_Hce: "?z_hce"
       by (rule subst [where P="(\<lambda>zenon_Vbv. (i \\in zenon_Vbv))", OF z_Hej], fact z_Hed)
       thus "?z_hce" .
      qed
     qed
     have z_Hfe: "(?z_hch~=?z_hch)"
     by (rule subst [where P="(\<lambda>zenon_Vcv. ((zenon_Vcv[''X''])~=?z_hch))", OF z_Heh], fact z_Heg)
     thus "(?z_hch~=?z_hch)" .
    qed
   qed
   have z_Hcg: "?z_hcg"
   by (rule subst [where P="(\<lambda>zenon_Vbv. (i \\in zenon_Vbv))", OF z_Hee], fact z_Hed)
   thus "?z_hcg" .
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 153"; *} qed
lemma ob'72:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes A
assumes A_in : "(A \<in> (Idems))"
assumes v'43: "(\<forall> q \<in> (setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))) : (((((fapply ((q), (''r''))) \<in> (U))) \<and> (((fapply ((q), (''X''))) \<in> ((SUBSET (U))))))))"
assumes v'44: "(\<forall> a_x1a \<in> (setOfAll((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))), %q. (fapply ((q), (''X''))))) : (\<forall> a_x2a \<in> (setOfAll((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))), %q. (fapply ((q), (''X''))))) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((a_x1a) \<inter> (a_x2a))) = ({})))))))"
assumes v'45: "(\<forall> x \<in> (setOfAll((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))), %q. (fapply ((q), (''X''))))) : (((x) \<noteq> ({}))))"
assumes v'46: "(\<forall> i \<in> (U) : (\<exists> x \<in> (setOfAll((setOfAll((subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i_1))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (x)))))))))), %q. (fapply ((q), (''X''))))) : (((i) \<in> (x)))))"
assumes v'47: "(\<forall> p \<in> (setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))"
shows "(((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X'')))))))))))"(is "PROP ?ob'72")
proof -
ML_command {* writeln "*** TLAPS ENTER 72"; *}
show "PROP ?ob'72"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 72"; *} qed
lemma ob'57:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes P
assumes P_in : "(P \<in> (a_Lunde_Ua))"
fixes Q
assumes Q_in : "(Q \<in> (a_Lunde_Ua))"
assumes v'35: "((((f ((P)))) = ((f ((Q))))))"
assumes v'41: "(\<forall> x \<in> (Q) : (((x) \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j)))))))))))))"
fixes x
assumes x_in : "(x \<in> (setOfAll((subsetOf((U), %k. (((fapply (((f ((Q)))), (k))) = (k))))), %j. (((''r'' :> (j)) @@ (''X'' :> (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j)))))))))))"
fixes j
assumes j_in : "(j \<in> (U))"
assumes v'49: "(((fapply (((f ((Q)))), (j))) = (j)))"
assumes v'50: "(((fapply ((x), (''r''))) = (j)))"
assumes v'51: "(((fapply ((x), (''X''))) = (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j)))))))"
fixes p
assumes p_in : "(p \<in> (Q))"
assumes v'56: "(((fapply ((p), (''r''))) = (j)))"
assumes v'57: "(((fapply ((p), (''X''))) = (subsetOf((U), %i. (((fapply (((f ((Q)))), (i))) = (j)))))))"
shows "(((x) \<in> (Q)))"(is "PROP ?ob'57")
proof -
ML_command {* writeln "*** TLAPS ENTER 57"; *}
show "PROP ?ob'57"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 57"; *} qed
lemma ob'70:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes A
assumes A_in : "(A \<in> (subsetOf(([(U) \<rightarrow> (U)]), %A. (\<forall> i \<in> (U) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))))"
shows "(\<forall> i \<in> (U) : (\<exists> x \<in> (setOfAll((setOfAll((subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i_1))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (x)))))))))), %q. (fapply ((q), (''X''))))) : (((i) \<in> (x)))))"(is "PROP ?ob'70")
proof -
ML_command {* writeln "*** TLAPS ENTER 70"; *}
show "PROP ?ob'70"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 70"; *} qed
lemma ob'156:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'42: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'52: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
fixes d
assumes d_in : "(d \<in> (a_s1a))"
assumes v'70: "(((((((i) \<in> (fapply ((d), (''X''))))) \<and> (((d) \<noteq> (p))))) \<and> (((d) \<noteq> (q)))))"
assumes v'75: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p_1 \<in> (P) : (((fapply ((p_1), (''r''))) \<in> (fapply ((p_1), (''X''))))))))) : (\<forall> x \<in> (P) : (\<forall> y \<in> (P) : (((((fapply ((x), (''r''))) = (fapply ((y), (''r''))))) \<Rightarrow> (((x) = (y))))))))"
assumes v'76: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p_1 \<in> (P) : (((fapply ((p_1), (''r''))) \<in> (fapply ((p_1), (''X''))))))))) : (\<forall> i_1 \<in> (U) : (\<forall> p_1 \<in> (P) : (\<forall> q_1 \<in> (P) : (((((((i_1) \<in> (fapply ((p_1), (''X''))))) \<and> (((i_1) \<in> (fapply ((q_1), (''X''))))))) \<Rightarrow> (((p_1) = (q_1)))))))))"
assumes v'77: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'78: "((((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U))))) & (\<exists> a_p1a \<in> (a_s1a) : (\<exists> a_p2a \<in> (a_s1a) : ((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X''))))) & (((a_s2a) \<in> ({(((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))), (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))})))})))))))"
assumes v'79: "(((fapply ((o), ((Succ[0])))) = (''Unite'')))"
assumes v'80: "(((r) = (ACK)))"
shows "(((fapply (([ i_1 \<in> (U)  \<mapsto> (fapply ((bChoice((a_s1a), %q_1. (((i_1) \<in> (fapply ((q_1), (''X''))))))), (''r'')))]), (i))) \<noteq> (fapply ((q), (''r'')))))"(is "PROP ?ob'156")
proof -
ML_command {* writeln "*** TLAPS ENTER 156"; *}
show "PROP ?ob'156"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_6014e4.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_6014e4.znn.out
;; obligation #156
$hyp "a_s1a_in" (TLA.in a_s1a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "a_s2a_in" (TLA.in a_s2a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'42" (delta a_s1a o a_s2a
r)
$hyp "p_in" (TLA.in p a_s1a)
$hyp "q_in" (TLA.in q a_s1a)
$hyp "v'52" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply p "X"))
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply q "X")) (\/ (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))) (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply q "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))))
$hyp "i_in" (TLA.in i U)
$hyp "d_in" (TLA.in d a_s1a)
$hyp "v'70" (/\ (/\ (TLA.in i (TLA.fapply d "X")) (-. (= d p))) (-. (= d
q)))
$hyp "v'75" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p_1) (TLA.in (TLA.fapply p_1 "r")
(TLA.fapply p_1 "X"))))))) ((P) (TLA.bAll P ((x) (TLA.bAll P ((y) (=> (= (TLA.fapply x "r")
(TLA.fapply y "r")) (= x
y))))))))
$hyp "v'76" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p_1) (TLA.in (TLA.fapply p_1 "r")
(TLA.fapply p_1 "X"))))))) ((P) (TLA.bAll U ((i_1) (TLA.bAll P ((p_1) (TLA.bAll P ((q_1) (=> (/\ (TLA.in i_1
(TLA.fapply p_1 "X")) (TLA.in i_1 (TLA.fapply q_1 "X"))) (= p_1
q_1))))))))))
$hyp "v'77" (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))
$hyp "v'78" (/\ (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
U))
(TLA.bEx a_s1a ((a_p1a) (TLA.bEx a_s1a ((a_p2a) (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_p1a "X"))
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply a_p2a "X")) (TLA.in a_s2a (TLA.set (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))) (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p2a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))))))))))
$hyp "v'79" (= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Unite")
$hyp "v'80" (= r
ACK)
$goal (-. (= (TLA.fapply (TLA.Fcn U ((i_1) (TLA.fapply (TLA.bChoice a_s1a ((q_1) (TLA.in i_1
(TLA.fapply q_1 "X")))) "r"))) i)
(TLA.fapply q "r")))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hk:"(((i \\in (d[''X'']))&(d~=p))&(d~=q))" (is "?z_hcj&?z_hco")
 using v'70 by blast
 have z_Hg:"(q \\in a_s1a)" (is "?z_hg")
 using q_in by blast
 have z_Hj:"(d \\in a_s1a)" (is "?z_hj")
 using d_in by blast
 have z_Hi:"(i \\in U)" (is "?z_hi")
 using i_in by blast
 have zenon_L1_: "(((q[''X'']) \\cap ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X'']))={}) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(q[''r''])) ==> ((q[''r'']) \\in (q[''X''])) ==> FALSE" (is "?z_hcq ==> ?z_hcx ==> ?z_hcz ==> ?z_hdb ==> FALSE")
 proof -
  assume z_Hcq:"?z_hcq" (is "?z_hcr=_")
  assume z_Hcx:"?z_hcx"
  assume z_Hcz:"?z_hcz" (is "?z_hcy=?z_hda")
  assume z_Hdb:"?z_hdb"
  have z_Hdc: "(\\A zenon_Vxde:(~(zenon_Vxde \\in ?z_hcr)))" (is "\\A x : ?z_hdg(x)")
  by (rule zenon_setequalempty_0 [of "?z_hcr", OF z_Hcq])
  have z_Hdh: "?z_hdg(?z_hcy)" (is "~?z_hdi")
  by (rule zenon_all_0 [of "?z_hdg" "?z_hcy", OF z_Hdc])
  show FALSE
  proof (rule zenon_notin_cap [of "?z_hcy" "(q[''X''])" "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])", OF z_Hdh])
   assume z_Hdj:"(~(?z_hcy \\in (q[''X''])))" (is "~?z_hdk")
   show FALSE
   proof (rule notE [OF z_Hdj])
    have z_Hdl: "(?z_hda=?z_hcy)"
    by (rule sym [OF z_Hcz])
    have z_Hdk: "?z_hdk"
    by (rule subst [where P="(\<lambda>zenon_Vqcub. (zenon_Vqcub \\in (q[''X''])))", OF z_Hdl], fact z_Hdb)
    thus "?z_hdk" .
   qed
  next
   assume z_Hdp:"(~?z_hcx)"
   show FALSE
   by (rule notE [OF z_Hdp z_Hcx])
  qed
 qed
 have zenon_L2_: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])~=(q[''X''])) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))) \\in a_s1a) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(q[''r''])) ==> (\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) ==> ?z_hg ==> (\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) ==> FALSE" (is "?z_hdq ==> ?z_hdr ==> ?z_hcx ==> ?z_hcz ==> ?z_hds ==> _ ==> ?z_hea ==> FALSE")
 proof -
  assume z_Hdq:"?z_hdq" (is "?z_hct~=?z_hcs")
  assume z_Hdr:"?z_hdr"
  assume z_Hcx:"?z_hcx"
  assume z_Hcz:"?z_hcz" (is "?z_hcy=?z_hda")
  assume z_Hds:"?z_hds" (is "\\A x : ?z_hee(x)")
  assume z_Hg:"?z_hg"
  assume z_Hea:"?z_hea" (is "\\A x : ?z_hef(x)")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcs"])
   have z_Heg: "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=q)" (is "?z_hcu=_")
   proof (rule zenon_nnpp [of "(?z_hcu=q)"])
    assume z_Heh:"(?z_hcu~=q)"
    have z_Hei: "?z_hef(q)" (is "_=>?z_hdb")
    by (rule zenon_all_0 [of "?z_hef" "q", OF z_Hea])
    show FALSE
    proof (rule zenon_imply [OF z_Hei])
     assume z_Hej:"(~?z_hg)"
     show FALSE
     by (rule notE [OF z_Hej z_Hg])
    next
     assume z_Hdb:"?z_hdb"
     have z_Hek: "?z_hee(q)" (is "_=>?z_hel")
     by (rule zenon_all_0 [of "?z_hee" "q", OF z_Hds])
     show FALSE
     proof (rule zenon_imply [OF z_Hek])
      assume z_Hej:"(~?z_hg)"
      show FALSE
      by (rule notE [OF z_Hej z_Hg])
     next
      assume z_Hel:"?z_hel"
      have z_Hem_z_Hel: "(\\A x:((x \\in a_s1a)=>((q~=x)=>((?z_hcs \\cap (x[''X'']))={})))) == ?z_hel" (is "?z_hem == _")
      by (unfold bAll_def)
      have z_Hem: "?z_hem" (is "\\A x : ?z_hes(x)")
      by (unfold z_Hem_z_Hel, fact z_Hel)
      have z_Het: "?z_hes(?z_hcu)" (is "_=>?z_heu")
      by (rule zenon_all_0 [of "?z_hes" "?z_hcu", OF z_Hem])
      show FALSE
      proof (rule zenon_imply [OF z_Het])
       assume z_Hev:"(~?z_hdr)"
       show FALSE
       by (rule notE [OF z_Hev z_Hdr])
      next
       assume z_Heu:"?z_heu" (is "?z_hew=>?z_hcq")
       show FALSE
       proof (rule zenon_imply [OF z_Heu])
        assume z_Hex:"(~?z_hew)" (is "~~?z_hey")
        have z_Hey: "?z_hey"
        by (rule zenon_notnot_0 [OF z_Hex])
        show FALSE
        by (rule zenon_eqsym [OF z_Hey z_Heh])
       next
        assume z_Hcq:"?z_hcq" (is "?z_hcr=_")
        show FALSE
        by (rule zenon_L1_ [OF z_Hcq z_Hcx z_Hcz z_Hdb])
       qed
      qed
     qed
    qed
   qed
   have z_Hez: "(?z_hcs~=?z_hcs)"
   by (rule subst [where P="(\<lambda>zenon_Vrcub. ((zenon_Vrcub[''X''])~=?z_hcs))", OF z_Heg], fact z_Hdq)
   thus "(?z_hcs~=?z_hcs)" .
  qed
 qed
 have zenon_L3_: "(~(i \\in (q[''X'']))) ==> (i \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) ==> ?z_hg ==> (\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(q[''r''])) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))) \\in a_s1a) ==> FALSE" (is "?z_hfe ==> ?z_hfg ==> ?z_hea ==> _ ==> ?z_hds ==> ?z_hcz ==> ?z_hcx ==> ?z_hdr ==> FALSE")
 proof -
  assume z_Hfe:"?z_hfe" (is "~?z_hff")
  assume z_Hfg:"?z_hfg"
  assume z_Hea:"?z_hea" (is "\\A x : ?z_hef(x)")
  assume z_Hg:"?z_hg"
  assume z_Hds:"?z_hds" (is "\\A x : ?z_hee(x)")
  assume z_Hcz:"?z_hcz" (is "?z_hcy=?z_hda")
  assume z_Hcx:"?z_hcx"
  assume z_Hdr:"?z_hdr"
  show FALSE
  proof (rule notE [OF z_Hfe])
   have z_Hfh: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])=(q[''X'']))" (is "?z_hct=?z_hcs")
   proof (rule zenon_nnpp [of "(?z_hct=?z_hcs)"])
    assume z_Hdq:"(?z_hct~=?z_hcs)"
    show FALSE
    by (rule zenon_L2_ [OF z_Hdq z_Hdr z_Hcx z_Hcz z_Hds z_Hg z_Hea])
   qed
   have z_Hff: "?z_hff"
   by (rule subst [where P="(\<lambda>zenon_Vscub. (i \\in zenon_Vscub))", OF z_Hfh], fact z_Hfg)
   thus "?z_hff" .
  qed
 qed
 have zenon_L4_: "(((d[''X'']) \\cap (q[''X'']))={}) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))) \\in a_s1a) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(q[''r''])) ==> (\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) ==> ?z_hg ==> (\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) ==> (i \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (i \\in (d[''X''])) ==> FALSE" (is "?z_hfl ==> ?z_hdr ==> ?z_hcx ==> ?z_hcz ==> ?z_hds ==> _ ==> ?z_hea ==> ?z_hfg ==> ?z_hck ==> FALSE")
 proof -
  assume z_Hfl:"?z_hfl" (is "?z_hfm=_")
  assume z_Hdr:"?z_hdr"
  assume z_Hcx:"?z_hcx"
  assume z_Hcz:"?z_hcz" (is "?z_hcy=?z_hda")
  assume z_Hds:"?z_hds" (is "\\A x : ?z_hee(x)")
  assume z_Hg:"?z_hg"
  assume z_Hea:"?z_hea" (is "\\A x : ?z_hef(x)")
  assume z_Hfg:"?z_hfg"
  assume z_Hck:"?z_hck"
  have z_Hfn: "(\\A zenon_Vqia:(~(zenon_Vqia \\in ?z_hfm)))" (is "\\A x : ?z_hfr(x)")
  by (rule zenon_setequalempty_0 [of "?z_hfm", OF z_Hfl])
  have z_Hfs: "?z_hfr(i)" (is "~?z_hft")
  by (rule zenon_all_0 [of "?z_hfr" "i", OF z_Hfn])
  show FALSE
  proof (rule zenon_notin_cap [of "i" "(d[''X''])" "(q[''X''])", OF z_Hfs])
   assume z_Hfu:"(~?z_hck)"
   show FALSE
   by (rule notE [OF z_Hfu z_Hck])
  next
   assume z_Hfe:"(~(i \\in (q[''X''])))" (is "~?z_hff")
   show FALSE
   by (rule zenon_L3_ [OF z_Hfe z_Hfg z_Hea z_Hg z_Hds z_Hcz z_Hcx z_Hdr])
  qed
 qed
 assume z_Hr:"(~((Fcn(U, (\<lambda>i_1. (bChoice(a_s1a, (\<lambda>x. (i_1 \\in (x[''X'']))))[''r''])))[i])~=(q[''r''])))" (is "~~?z_hge")
 have z_Hgf: "(bAll(a_s1a, (\<lambda>x. ((x[''X''])~={})))&(bAll(a_s1a, (\<lambda>a_x1a. bAll(a_s1a, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(a_s1a, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hgg&?z_hgh")
 by (rule zenon_in_subsetof_1 [of "a_s1a" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hgh: "?z_hgh" (is "?z_hgi&?z_hgl")
 by (rule zenon_and_1 [OF z_Hgf])
 have z_Hgi: "?z_hgi"
 by (rule zenon_and_0 [OF z_Hgh])
 have z_Hgl: "?z_hgl" (is "?z_hgm&?z_hgp")
 by (rule zenon_and_1 [OF z_Hgh])
 have z_Hgp: "?z_hgp"
 by (rule zenon_and_1 [OF z_Hgl])
 have z_Hds_z_Hgi: "(\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) == ?z_hgi" (is "?z_hds == _")
 by (unfold bAll_def)
 have z_Hds: "?z_hds" (is "\\A x : ?z_hee(x)")
 by (unfold z_Hds_z_Hgi, fact z_Hgi)
 have z_Hea_z_Hgp: "(\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) == ?z_hgp" (is "?z_hea == _")
 by (unfold bAll_def)
 have z_Hea: "?z_hea" (is "\\A x : ?z_hef(x)")
 by (unfold z_Hea_z_Hgp, fact z_Hgp)
 have z_Hcj: "?z_hcj" (is "?z_hck&?z_hcn")
 by (rule zenon_and_0 [OF z_Hk])
 have z_Hco: "?z_hco"
 by (rule zenon_and_1 [OF z_Hk])
 have z_Hck: "?z_hck"
 by (rule zenon_and_0 [OF z_Hcj])
 have z_Hge: "?z_hge" (is "?z_hfw=?z_hda")
 by (rule zenon_notnot_0 [OF z_Hr])
 show FALSE
 proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vnc. (zenon_Vnc=?z_hda))" "U" "(\<lambda>i_1. (bChoice(a_s1a, (\<lambda>x. (i_1 \\in (x[''X'']))))[''r'']))" "i", OF z_Hge])
  assume z_Hgt:"(~?z_hi)"
  show FALSE
  by (rule notE [OF z_Hgt z_Hi])
 next
  assume z_Hgu:"((bChoice(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))[''r''])=?z_hda)" (is "?z_hgv=_")
  have z_Hcz_z_Hgu: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=?z_hda) == (?z_hgv=?z_hda)" (is "?z_hcz == ?z_hgu")
  by (unfold bChoose_def)
  have z_Hcz: "?z_hcz" (is "?z_hcy=_")
  by (unfold z_Hcz_z_Hgu, fact z_Hgu)
  show FALSE
  proof (rule zenon_em [of "(\\E x:((x \\in a_s1a)&(i \\in (x[''X'']))))"])
   assume z_Hgx:"(\\E x:((x \\in a_s1a)&(i \\in (x[''X'']))))" (is "\\E x : ?z_hgy(x)")
   have z_Hgz: "?z_hgy((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "?z_hdr&?z_hfg")
   by (rule zenon_ex_choose_0 [of "?z_hgy", OF z_Hgx])
   have z_Hdr: "?z_hdr"
   by (rule zenon_and_0 [OF z_Hgz])
   have z_Hfg: "?z_hfg"
   by (rule zenon_and_1 [OF z_Hgz])
   have z_Hha: "?z_hef((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "_=>?z_hcx")
   by (rule zenon_all_0 [of "?z_hef" "(CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))", OF z_Hea])
   show FALSE
   proof (rule zenon_imply [OF z_Hha])
    assume z_Hev:"(~?z_hdr)"
    show FALSE
    by (rule notE [OF z_Hev z_Hdr])
   next
    assume z_Hcx:"?z_hcx"
    have z_Hhb: "?z_hee(d)" (is "_=>?z_hhc")
    by (rule zenon_all_0 [of "?z_hee" "d", OF z_Hds])
    show FALSE
    proof (rule zenon_imply [OF z_Hhb])
     assume z_Hhd:"(~?z_hj)"
     show FALSE
     by (rule notE [OF z_Hhd z_Hj])
    next
     assume z_Hhc:"?z_hhc"
     have z_Hhe_z_Hhc: "(\\A x:((x \\in a_s1a)=>((d~=x)=>(((d[''X'']) \\cap (x[''X'']))={})))) == ?z_hhc" (is "?z_hhe == _")
     by (unfold bAll_def)
     have z_Hhe: "?z_hhe" (is "\\A x : ?z_hhk(x)")
     by (unfold z_Hhe_z_Hhc, fact z_Hhc)
     have z_Hhl: "?z_hhk(q)" (is "_=>?z_hhm")
     by (rule zenon_all_0 [of "?z_hhk" "q", OF z_Hhe])
     show FALSE
     proof (rule zenon_imply [OF z_Hhl])
      assume z_Hej:"(~?z_hg)"
      show FALSE
      by (rule notE [OF z_Hej z_Hg])
     next
      assume z_Hhm:"?z_hhm" (is "_=>?z_hfl")
      show FALSE
      proof (rule zenon_imply [OF z_Hhm])
       assume z_Hhn:"(~?z_hco)" (is "~~?z_hho")
       show FALSE
       by (rule notE [OF z_Hhn z_Hco])
      next
       assume z_Hfl:"?z_hfl" (is "?z_hfm=_")
       show FALSE
       by (rule zenon_L4_ [OF z_Hfl z_Hdr z_Hcx z_Hcz z_Hds z_Hg z_Hea z_Hfg z_Hck])
      qed
     qed
    qed
   qed
  next
   assume z_Hhp:"(~(\\E x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "~(\\E x : ?z_hgy(x))")
   have z_Hhq: "~?z_hgy(d)"
   by (rule zenon_notex_0 [of "?z_hgy" "d", OF z_Hhp])
   show FALSE
   proof (rule zenon_notand [OF z_Hhq])
    assume z_Hhd:"(~?z_hj)"
    show FALSE
    by (rule notE [OF z_Hhd z_Hj])
   next
    assume z_Hfu:"(~?z_hck)"
    show FALSE
    by (rule notE [OF z_Hfu z_Hck])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 156"; *} qed
lemma ob'193:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'42: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'52: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
fixes d
assumes d_in : "(d \<in> (a_s1a))"
assumes v'71: "(((((((i) \<in> (fapply ((d), (''X''))))) \<and> (((d) \<noteq> (p))))) \<and> (((d) \<noteq> (q)))))"
assumes v'76: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p_1 \<in> (P) : (((fapply ((p_1), (''r''))) \<in> (fapply ((p_1), (''X''))))))))) : (\<forall> x \<in> (P) : (\<forall> y \<in> (P) : (((((fapply ((x), (''r''))) = (fapply ((y), (''r''))))) \<Rightarrow> (((x) = (y))))))))"
assumes v'77: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p_1 \<in> (P) : (((fapply ((p_1), (''r''))) \<in> (fapply ((p_1), (''X''))))))))) : (\<forall> i_1 \<in> (U) : (\<forall> p_1 \<in> (P) : (\<forall> q_1 \<in> (P) : (((((((i_1) \<in> (fapply ((p_1), (''X''))))) \<and> (((i_1) \<in> (fapply ((q_1), (''X''))))))) \<Rightarrow> (((p_1) = (q_1)))))))))"
assumes v'78: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'79: "((((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U))))) & (\<exists> a_p1a \<in> (a_s1a) : (\<exists> a_p2a \<in> (a_s1a) : ((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X''))))) & (((a_s2a) \<in> ({(((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))), (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))})))})))))))"
assumes v'80: "(((fapply ((o), ((Succ[0])))) = (''Unite'')))"
assumes v'81: "(((r) = (ACK)))"
shows "(((fapply (([ i_1 \<in> (U)  \<mapsto> (fapply ((bChoice((a_s1a), %q_1. (((i_1) \<in> (fapply ((q_1), (''X''))))))), (''r'')))]), (i))) \<noteq> (fapply ((p), (''r'')))))"(is "PROP ?ob'193")
proof -
ML_command {* writeln "*** TLAPS ENTER 193"; *}
show "PROP ?ob'193"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_e260c4.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_e260c4.znn.out
;; obligation #193
$hyp "a_s1a_in" (TLA.in a_s1a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "a_s2a_in" (TLA.in a_s2a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'42" (delta a_s1a o a_s2a
r)
$hyp "p_in" (TLA.in p a_s1a)
$hyp "q_in" (TLA.in q a_s1a)
$hyp "v'52" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply p "X"))
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply q "X")) (\/ (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))) (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply q "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))))
$hyp "i_in" (TLA.in i U)
$hyp "d_in" (TLA.in d a_s1a)
$hyp "v'71" (/\ (/\ (TLA.in i (TLA.fapply d "X")) (-. (= d p))) (-. (= d
q)))
$hyp "v'76" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p_1) (TLA.in (TLA.fapply p_1 "r")
(TLA.fapply p_1 "X"))))))) ((P) (TLA.bAll P ((x) (TLA.bAll P ((y) (=> (= (TLA.fapply x "r")
(TLA.fapply y "r")) (= x
y))))))))
$hyp "v'77" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p_1) (TLA.in (TLA.fapply p_1 "r")
(TLA.fapply p_1 "X"))))))) ((P) (TLA.bAll U ((i_1) (TLA.bAll P ((p_1) (TLA.bAll P ((q_1) (=> (/\ (TLA.in i_1
(TLA.fapply p_1 "X")) (TLA.in i_1 (TLA.fapply q_1 "X"))) (= p_1
q_1))))))))))
$hyp "v'78" (= a_s2a (TLA.cup (TLA.setminus a_s1a (TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply q "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X"))))))
$hyp "v'79" (/\ (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
U))
(TLA.bEx a_s1a ((a_p1a) (TLA.bEx a_s1a ((a_p2a) (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_p1a "X"))
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply a_p2a "X")) (TLA.in a_s2a (TLA.set (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))) (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p2a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))))))))))
$hyp "v'80" (= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Unite")
$hyp "v'81" (= r
ACK)
$goal (-. (= (TLA.fapply (TLA.Fcn U ((i_1) (TLA.fapply (TLA.bChoice a_s1a ((q_1) (TLA.in i_1
(TLA.fapply q_1 "X")))) "r"))) i)
(TLA.fapply p "r")))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hk:"(((i \\in (d[''X'']))&(d~=p))&(d~=q))" (is "?z_hcj&?z_hco")
 using v'71 by blast
 have z_Hf:"(p \\in a_s1a)" (is "?z_hf")
 using p_in by blast
 have z_Hj:"(d \\in a_s1a)" (is "?z_hj")
 using d_in by blast
 have z_Hi:"(i \\in U)" (is "?z_hi")
 using i_in by blast
 have zenon_L1_: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])~=(d[''X''])) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=d) ==> FALSE" (is "?z_hcq ==> ?z_hcv ==> FALSE")
 proof -
  assume z_Hcq:"?z_hcq" (is "?z_hcr~=?z_hcl")
  assume z_Hcv:"?z_hcv" (is "?z_hcs=_")
  show FALSE
  proof (rule zenon_noteq [of "?z_hcl"])
   have z_Hcw: "(?z_hcl~=?z_hcl)"
   by (rule subst [where P="(\<lambda>zenon_Vaiia. ((zenon_Vaiia[''X''])~=?z_hcl))", OF z_Hcv], fact z_Hcq)
   thus "(?z_hcl~=?z_hcl)" .
  qed
 qed
 have zenon_L2_: "(\\A zenon_Vuka:(~(zenon_Vuka \\in ((d[''X'']) \\cap (p[''X'']))))) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=d) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(p[''r''])) ==> ((p[''r'']) \\in (p[''X''])) ==> FALSE" (is "?z_hdb ==> ?z_hdg ==> ?z_hcv ==> ?z_hdi ==> ?z_hcf ==> FALSE")
 proof -
  assume z_Hdb:"?z_hdb" (is "\\A x : ?z_hdj(x)")
  assume z_Hdg:"?z_hdg"
  assume z_Hcv:"?z_hcv" (is "?z_hcs=_")
  assume z_Hdi:"?z_hdi" (is "?z_hdh=?z_hcg")
  assume z_Hcf:"?z_hcf"
  have z_Hdk: "?z_hdj(?z_hcg)" (is "~?z_hdl")
  by (rule zenon_all_0 [of "?z_hdj" "?z_hcg", OF z_Hdb])
  show FALSE
  proof (rule zenon_notin_cap [of "?z_hcg" "(d[''X''])" "(p[''X''])", OF z_Hdk])
   assume z_Hdm:"(~(?z_hcg \\in (d[''X''])))" (is "~?z_hdn")
   show FALSE
   proof (rule notE [OF z_Hdm])
    have z_Hdo: "((?z_hcs[''X''])=(d[''X'']))" (is "?z_hcr=?z_hcl")
    proof (rule zenon_nnpp [of "(?z_hcr=?z_hcl)"])
     assume z_Hcq:"(?z_hcr~=?z_hcl)"
     show FALSE
     by (rule zenon_L1_ [OF z_Hcq z_Hcv])
    qed
    have z_Hdp: "(?z_hcg \\in ?z_hcr)" (is "?z_hdp")
    by (rule subst [where P="(\<lambda>zenon_Vbiia. (zenon_Vbiia \\in ?z_hcr))", OF z_Hdi], fact z_Hdg)
    have z_Hdn: "?z_hdn"
    by (rule subst [where P="(\<lambda>zenon_Vciia. (?z_hcg \\in zenon_Vciia))", OF z_Hdo], fact z_Hdp)
    thus "?z_hdn" .
   qed
  next
   assume z_Hdw:"(~?z_hcf)"
   show FALSE
   by (rule notE [OF z_Hdw z_Hcf])
  qed
 qed
 have zenon_L3_: "(?z_hf=>((p[''r'']) \\in (p[''X'']))) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(p[''r''])) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=d) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (\\A zenon_Vuka:(~(zenon_Vuka \\in ((d[''X'']) \\cap (p[''X'']))))) ==> ?z_hf ==> FALSE" (is "?z_hdx ==> ?z_hdi ==> ?z_hcv ==> ?z_hdg ==> ?z_hdb ==> _ ==> FALSE")
 proof -
  assume z_Hdx:"?z_hdx" (is "_=>?z_hcf")
  assume z_Hdi:"?z_hdi" (is "?z_hdh=?z_hcg")
  assume z_Hcv:"?z_hcv" (is "?z_hcs=_")
  assume z_Hdg:"?z_hdg"
  assume z_Hdb:"?z_hdb" (is "\\A x : ?z_hdj(x)")
  assume z_Hf:"?z_hf"
  show FALSE
  proof (rule zenon_imply [OF z_Hdx])
   assume z_Hdy:"(~?z_hf)"
   show FALSE
   by (rule notE [OF z_Hdy z_Hf])
  next
   assume z_Hcf:"?z_hcf"
   show FALSE
   by (rule zenon_L2_ [OF z_Hdb z_Hdg z_Hcv z_Hdi z_Hcf])
  qed
 qed
 have zenon_L4_: "((((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X'']) \\cap (d[''X'']))={}) ==> (i \\in (d[''X''])) ==> (i \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> FALSE" (is "?z_hdz ==> ?z_hck ==> ?z_heb ==> FALSE")
 proof -
  assume z_Hdz:"?z_hdz" (is "?z_hea=_")
  assume z_Hck:"?z_hck"
  assume z_Heb:"?z_heb"
  have z_Hec: "(\\A zenon_Vobb:(~(zenon_Vobb \\in ?z_hea)))" (is "\\A x : ?z_heg(x)")
  by (rule zenon_setequalempty_0 [of "?z_hea", OF z_Hdz])
  have z_Heh: "?z_heg(i)" (is "~?z_hei")
  by (rule zenon_all_0 [of "?z_heg" "i", OF z_Hec])
  show FALSE
  proof (rule zenon_notin_cap [of "i" "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])" "(d[''X''])", OF z_Heh])
   assume z_Hej:"(~?z_heb)"
   show FALSE
   by (rule notE [OF z_Hej z_Heb])
  next
   assume z_Hek:"(~?z_hck)"
   show FALSE
   by (rule notE [OF z_Hek z_Hck])
  qed
 qed
 have zenon_L5_: "(((d[''X'']) \\cap (p[''X'']))={}) ==> (\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) ==> ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))) \\in a_s1a) ==> (i \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (i \\in (d[''X''])) ==> ?z_hf ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r'']) \\in ((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])) ==> (((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=(p[''r''])) ==> ?z_hj ==> (\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) ==> FALSE" (is "?z_hel ==> ?z_hem ==> ?z_heu ==> ?z_heb ==> ?z_hck ==> _ ==> ?z_hdg ==> ?z_hdi ==> _ ==> ?z_hev ==> FALSE")
 proof -
  assume z_Hel:"?z_hel" (is "?z_hdf=_")
  assume z_Hem:"?z_hem" (is "\\A x : ?z_hez(x)")
  assume z_Heu:"?z_heu"
  assume z_Heb:"?z_heb"
  assume z_Hck:"?z_hck"
  assume z_Hf:"?z_hf"
  assume z_Hdg:"?z_hdg"
  assume z_Hdi:"?z_hdi" (is "?z_hdh=?z_hcg")
  assume z_Hj:"?z_hj"
  assume z_Hev:"?z_hev" (is "\\A x : ?z_hfa(x)")
  have z_Hdb: "(\\A zenon_Vuka:(~(zenon_Vuka \\in ?z_hdf)))" (is "\\A x : ?z_hdj(x)")
  by (rule zenon_setequalempty_0 [of "?z_hdf", OF z_Hel])
  have z_Hdx: "?z_hfa(p)" (is "_=>?z_hcf")
  by (rule zenon_all_0 [of "?z_hfa" "p", OF z_Hev])
  have z_Hfb: "?z_hez((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "_=>?z_hfc")
  by (rule zenon_all_0 [of "?z_hez" "(CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))", OF z_Hem])
  show FALSE
  proof (rule zenon_imply [OF z_Hfb])
   assume z_Hfd:"(~?z_heu)"
   show FALSE
   by (rule notE [OF z_Hfd z_Heu])
  next
   assume z_Hfc:"?z_hfc"
   have z_Hfe_z_Hfc: "(\\A x:((x \\in a_s1a)=>(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))~=x)=>((((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X'']) \\cap (x[''X'']))={})))) == ?z_hfc" (is "?z_hfe == _")
   by (unfold bAll_def)
   have z_Hfe: "?z_hfe" (is "\\A x : ?z_hfk(x)")
   by (unfold z_Hfe_z_Hfc, fact z_Hfc)
   have z_Hfl: "?z_hfk(d)" (is "_=>?z_hfm")
   by (rule zenon_all_0 [of "?z_hfk" "d", OF z_Hfe])
   show FALSE
   proof (rule zenon_imply [OF z_Hfl])
    assume z_Hfn:"(~?z_hj)"
    show FALSE
    by (rule notE [OF z_Hfn z_Hj])
   next
    assume z_Hfm:"?z_hfm" (is "?z_hfo=>?z_hdz")
    show FALSE
    proof (rule zenon_imply [OF z_Hfm])
     assume z_Hfp:"(~?z_hfo)" (is "~~?z_hcv")
     have z_Hcv: "?z_hcv" (is "?z_hcs=_")
     by (rule zenon_notnot_0 [OF z_Hfp])
     show FALSE
     by (rule zenon_L3_ [OF z_Hdx z_Hdi z_Hcv z_Hdg z_Hdb z_Hf])
    next
     assume z_Hdz:"?z_hdz" (is "?z_hea=_")
     show FALSE
     by (rule zenon_L4_ [OF z_Hdz z_Hck z_Heb])
    qed
   qed
  qed
 qed
 assume z_Hr:"(~((Fcn(U, (\<lambda>i_1. (bChoice(a_s1a, (\<lambda>x. (i_1 \\in (x[''X'']))))[''r''])))[i])~=(p[''r''])))" (is "~~?z_hfz")
 have z_Hga: "(bAll(a_s1a, (\<lambda>x. ((x[''X''])~={})))&(bAll(a_s1a, (\<lambda>a_x1a. bAll(a_s1a, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(a_s1a, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hgb&?z_hgc")
 by (rule zenon_in_subsetof_1 [of "a_s1a" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hgc: "?z_hgc" (is "?z_hgd&?z_hgg")
 by (rule zenon_and_1 [OF z_Hga])
 have z_Hgd: "?z_hgd"
 by (rule zenon_and_0 [OF z_Hgc])
 have z_Hgg: "?z_hgg" (is "?z_hgh&?z_hgk")
 by (rule zenon_and_1 [OF z_Hgc])
 have z_Hgk: "?z_hgk"
 by (rule zenon_and_1 [OF z_Hgg])
 have z_Hem_z_Hgd: "(\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>a_x2a. ((x~=a_x2a)=>(((x[''X'']) \\cap (a_x2a[''X'']))={})))))) == ?z_hgd" (is "?z_hem == _")
 by (unfold bAll_def)
 have z_Hem: "?z_hem" (is "\\A x : ?z_hez(x)")
 by (unfold z_Hem_z_Hgd, fact z_Hgd)
 have z_Hev_z_Hgk: "(\\A x:((x \\in a_s1a)=>((x[''r'']) \\in (x[''X''])))) == ?z_hgk" (is "?z_hev == _")
 by (unfold bAll_def)
 have z_Hev: "?z_hev" (is "\\A x : ?z_hfa(x)")
 by (unfold z_Hev_z_Hgk, fact z_Hgk)
 have z_Hcj: "?z_hcj" (is "?z_hck&?z_hcn")
 by (rule zenon_and_0 [OF z_Hk])
 have z_Hck: "?z_hck"
 by (rule zenon_and_0 [OF z_Hcj])
 have z_Hcn: "?z_hcn"
 by (rule zenon_and_1 [OF z_Hcj])
 have z_Hfz: "?z_hfz" (is "?z_hfr=?z_hcg")
 by (rule zenon_notnot_0 [OF z_Hr])
 show FALSE
 proof (rule zenon_fapplyfcn [of "(\<lambda>zenon_Vnc. (zenon_Vnc=?z_hcg))" "U" "(\<lambda>i_1. (bChoice(a_s1a, (\<lambda>x. (i_1 \\in (x[''X'']))))[''r'']))" "i", OF z_Hfz])
  assume z_Hgo:"(~?z_hi)"
  show FALSE
  by (rule notE [OF z_Hgo z_Hi])
 next
  assume z_Hgp:"((bChoice(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))[''r''])=?z_hcg)" (is "?z_hgq=_")
  have z_Hdi_z_Hgp: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''r''])=?z_hcg) == (?z_hgq=?z_hcg)" (is "?z_hdi == ?z_hgp")
  by (unfold bChoose_def)
  have z_Hdi: "?z_hdi" (is "?z_hdh=_")
  by (unfold z_Hdi_z_Hgp, fact z_Hgp)
  show FALSE
  proof (rule zenon_em [of "(\\E x:((x \\in a_s1a)&(i \\in (x[''X'']))))"])
   assume z_Hgs:"(\\E x:((x \\in a_s1a)&(i \\in (x[''X'']))))" (is "\\E x : ?z_hgt(x)")
   have z_Hgu: "?z_hgt((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "?z_heu&?z_heb")
   by (rule zenon_ex_choose_0 [of "?z_hgt", OF z_Hgs])
   have z_Heu: "?z_heu"
   by (rule zenon_and_0 [OF z_Hgu])
   have z_Heb: "?z_heb"
   by (rule zenon_and_1 [OF z_Hgu])
   have z_Hgv: "?z_hfa((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "_=>?z_hdg")
   by (rule zenon_all_0 [of "?z_hfa" "(CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))", OF z_Hev])
   show FALSE
   proof (rule zenon_imply [OF z_Hgv])
    assume z_Hfd:"(~?z_heu)"
    show FALSE
    by (rule notE [OF z_Hfd z_Heu])
   next
    assume z_Hdg:"?z_hdg"
    have z_Hgw: "?z_hez(d)" (is "_=>?z_hgx")
    by (rule zenon_all_0 [of "?z_hez" "d", OF z_Hem])
    show FALSE
    proof (rule zenon_imply [OF z_Hgw])
     assume z_Hfn:"(~?z_hj)"
     show FALSE
     by (rule notE [OF z_Hfn z_Hj])
    next
     assume z_Hgx:"?z_hgx"
     have z_Hgy_z_Hgx: "(\\A x:((x \\in a_s1a)=>((d~=x)=>(((d[''X'']) \\cap (x[''X'']))={})))) == ?z_hgx" (is "?z_hgy == _")
     by (unfold bAll_def)
     have z_Hgy: "?z_hgy" (is "\\A x : ?z_hhe(x)")
     by (unfold z_Hgy_z_Hgx, fact z_Hgx)
     have z_Hhf: "?z_hhe(p)" (is "_=>?z_hhg")
     by (rule zenon_all_0 [of "?z_hhe" "p", OF z_Hgy])
     show FALSE
     proof (rule zenon_imply [OF z_Hhf])
      assume z_Hdy:"(~?z_hf)"
      show FALSE
      by (rule notE [OF z_Hdy z_Hf])
     next
      assume z_Hhg:"?z_hhg" (is "_=>?z_hel")
      show FALSE
      proof (rule zenon_imply [OF z_Hhg])
       assume z_Hhh:"(~?z_hcn)" (is "~~?z_hhi")
       show FALSE
       by (rule notE [OF z_Hhh z_Hcn])
      next
       assume z_Hel:"?z_hel" (is "?z_hdf=_")
       show FALSE
       by (rule zenon_L5_ [OF z_Hel z_Hem z_Heu z_Heb z_Hck z_Hf z_Hdg z_Hdi z_Hj z_Hev])
      qed
     qed
    qed
   qed
  next
   assume z_Hhj:"(~(\\E x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "~(\\E x : ?z_hgt(x))")
   have z_Hhk: "~?z_hgt(d)"
   by (rule zenon_notex_0 [of "?z_hgt" "d", OF z_Hhj])
   show FALSE
   proof (rule zenon_notand [OF z_Hhk])
    assume z_Hfn:"(~?z_hj)"
    show FALSE
    by (rule notE [OF z_Hfn z_Hj])
   next
    assume z_Hek:"(~?z_hck)"
    show FALSE
    by (rule notE [OF z_Hek z_Hck])
   qed
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 193"; *} qed
lemma ob'97:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes A
assumes A_in : "(A \<in> (Idems))"
assumes v'45: "(((setOfAll((subsetOf((U), %i. (((fapply ((A), (i))) = (i))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i. (((fapply ((A), (i))) = (x)))))))))) \<in> (a_Lunde_Ua)))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'56: "(((((fapply ((A), (i))) \<in> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i_1))))))) \<and> (((i) \<in> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (fapply ((A), (i)))))))))))"
shows "(\<exists> q \<in> (setOfAll((subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (i_1))))), %x. (((''r'' :> (x)) @@ (''X'' :> (subsetOf((U), %i_1. (((fapply ((A), (i_1))) = (x)))))))))) : (((((fapply ((q), (''r''))) = (fapply ((A), (i))))) \<and> (((i) \<in> (fapply ((q), (''X''))))))))"(is "PROP ?ob'97")
proof -
ML_command {* writeln "*** TLAPS ENTER 97"; *}
show "PROP ?ob'97"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 97"; *} qed
lemma ob'254:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'48: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'60: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'65: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'71: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
assumes v'74: "((\<And> i :: c. i \<in> (U) \<Longrightarrow> (((fapply (((f ((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))})))))), (i))) = (fapply (([ i_1 \<in> (U)  \<mapsto> (cond((((fapply (((f ((a_s1a)))), (i_1))) = (fapply (((f ((a_s1a)))), (fapply ((o), ((Succ[Succ[Succ[0]]])))))))), (fapply (((f ((a_s1a)))), (fapply ((o), ((Succ[Succ[0]])))))), (fapply (((f ((a_s1a)))), (i_1)))))]), (i)))))))"
assumes v'75: "(\<forall> P \<in> (a_Lunde_Ua) : (\<forall> p \<in> (P) : (\<forall> q \<in> (P) : (((((((P) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))) \<in> (a_Lunde_Ua))))))"
assumes v'76: "(\<forall> P \<in> (a_Lunde_Ua) : ((((f ((P)))) \<in> (subsetOf(([(U) \<rightarrow> (U)]), %A. (\<forall> i \<in> (U) : (((fapply ((A), (fapply ((A), (i))))) = (fapply ((A), (i)))))))))))"
shows "((((f ((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))})))))) = ([ i \<in> (U)  \<mapsto> (cond((((fapply (((f ((a_s1a)))), (i))) = (fapply (((f ((a_s1a)))), (fapply ((o), ((Succ[Succ[Succ[0]]])))))))), (fapply (((f ((a_s1a)))), (fapply ((o), ((Succ[Succ[0]])))))), (fapply (((f ((a_s1a)))), (i)))))])))"(is "PROP ?ob'254")
proof -
ML_command {* writeln "*** TLAPS ENTER 254"; *}
show "PROP ?ob'254"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_52b7d2.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_52b7d2.znn.out
;; obligation #254
$hyp "a_s1a_in" (TLA.in a_s1a a_Lunde_Ua)
$hyp "a_s2a_in" (TLA.in a_s2a a_Lunde_Ua)
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'44" (-. (delta a_s1a o a_s2a
r))
$hyp "v'48" (\/ (= (TLA.fapply o (TLA.fapply TLA.Succ 0)) "Find")
(= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Unite"))
$hyp "a_p1a_in" (TLA.in a_p1a a_s1a)
$hyp "v'60" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_p1a "X"))
$hyp "a_p2a_in" (TLA.in a_p2a a_s1a)
$hyp "v'65" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply a_p2a "X"))
$hyp "v'71" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
U))
$hyp "v'74" (TLA.bAll U ((i) (= (TLA.fapply (f (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))) i)
(TLA.fapply (TLA.Fcn U ((i_1) (TLA.cond (= (TLA.fapply (f a_s1a) i_1)
(TLA.fapply (f a_s1a) (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))))) (TLA.fapply (f a_s1a) (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (f a_s1a) i_1)))) i))))
$hyp "v'75" (TLA.bAll a_Lunde_Ua ((P) (TLA.bAll P ((p) (TLA.bAll P ((q) (TLA.in (TLA.cup (TLA.setminus P
(TLA.set p q))
(TLA.set (TLA.record "r" (TLA.fapply p "r") "X" (TLA.cup (TLA.fapply p "X")
(TLA.fapply q "X")))))
a_Lunde_Ua)))))))
$hyp "v'76" (TLA.bAll a_Lunde_Ua ((P) (TLA.in (f P)
(TLA.subsetOf (TLA.FuncSet U U) ((A) (TLA.bAll U ((i) (= (TLA.fapply A (TLA.fapply A i))
(TLA.fapply A i)))))))))
$goal (= (f (TLA.cup (TLA.setminus a_s1a (TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))))
(TLA.Fcn U ((i) (TLA.cond (= (TLA.fapply (f a_s1a) i)
(TLA.fapply (f a_s1a) (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))))) (TLA.fapply (f a_s1a) (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))) (TLA.fapply (f a_s1a) i)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in a_Lunde_Ua)" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hi:"(a_p2a \\in a_s1a)" (is "?z_hi")
 using a_p2a_in by blast
 have z_Hg:"(a_p1a \\in a_s1a)" (is "?z_hg")
 using a_p1a_in by blast
 have z_Hm:"bAll(a_Lunde_Ua, (\<lambda>P. bAll(P, (\<lambda>p. bAll(P, (\<lambda>q. (((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua)))))))" (is "?z_hm")
 using v'75 by blast
 have z_Hl:"bAll(U, (\<lambda>i. ((f(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))[i])=(Fcn(U, (\<lambda>i_1. cond(((f(a_s1a)[i_1])=(f(a_s1a)[(o[3])])), (f(a_s1a)[(o[2])]), (f(a_s1a)[i_1]))))[i]))))" (is "?z_hl")
 using v'74 by blast
 have z_Hn:"bAll(a_Lunde_Ua, (\<lambda>P. (f(P) \\in subsetOf(FuncSet(U, U), (\<lambda>A. bAll(U, (\<lambda>i. ((A[(A[i])])=(A[i])))))))))" (is "?z_hn")
 using v'76 by blast
 have zenon_L1_: "(\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>q. (((a_s1a \\ {x, q}) \\cup {(''r'' :> ((x[''r''])) @@ ''X'' :> (((x[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua))))) ==> ?z_hg ==> (~(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}) \\in a_Lunde_Ua)) ==> ?z_hi ==> FALSE" (is "?z_hdd ==> _ ==> ?z_hds ==> _ ==> FALSE")
 proof -
  assume z_Hdd:"?z_hdd" (is "\\A x : ?z_hdu(x)")
  assume z_Hg:"?z_hg"
  assume z_Hds:"?z_hds" (is "~?z_hdt")
  assume z_Hi:"?z_hi"
  have z_Hdv: "?z_hdu(a_p1a)" (is "_=>?z_hdw")
  by (rule zenon_all_0 [of "?z_hdu" "a_p1a", OF z_Hdd])
  show FALSE
  proof (rule zenon_imply [OF z_Hdv])
   assume z_Hdx:"(~?z_hg)"
   show FALSE
   by (rule notE [OF z_Hdx z_Hg])
  next
   assume z_Hdw:"?z_hdw"
   have z_Hdy_z_Hdw: "(\\A x:((x \\in a_s1a)=>(((a_s1a \\ {a_p1a, x}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (x[''X'']))))}) \\in a_Lunde_Ua))) == ?z_hdw" (is "?z_hdy == _")
   by (unfold bAll_def)
   have z_Hdy: "?z_hdy" (is "\\A x : ?z_heh(x)")
   by (unfold z_Hdy_z_Hdw, fact z_Hdw)
   have z_Hei: "?z_heh(a_p2a)"
   by (rule zenon_all_0 [of "?z_heh" "a_p2a", OF z_Hdy])
   show FALSE
   proof (rule zenon_imply [OF z_Hei])
    assume z_Hej:"(~?z_hi)"
    show FALSE
    by (rule notE [OF z_Hej z_Hi])
   next
    assume z_Hdt:"?z_hdt"
    show FALSE
    by (rule notE [OF z_Hds z_Hdt])
   qed
  qed
 qed
 assume z_Ho:"(f(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))~=Fcn(U, (\<lambda>i_1. cond(((f(a_s1a)[i_1])=(f(a_s1a)[(o[3])])), (f(a_s1a)[(o[2])]), (f(a_s1a)[i_1])))))" (is "?z_hbr~=?z_hcd")
 have z_Hek_z_Hm: "(\\A x:((x \\in a_Lunde_Ua)=>bAll(x, (\<lambda>p. bAll(x, (\<lambda>q. (((x \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua))))))) == ?z_hm" (is "?z_hek == _")
 by (unfold bAll_def)
 have z_Hek: "?z_hek" (is "\\A x : ?z_heu(x)")
 by (unfold z_Hek_z_Hm, fact z_Hm)
 have z_Hev_z_Hn: "(\\A x:((x \\in a_Lunde_Ua)=>(f(x) \\in subsetOf(FuncSet(U, U), (\<lambda>A. bAll(U, (\<lambda>i. ((A[(A[i])])=(A[i]))))))))) == ?z_hn" (is "?z_hev == _")
 by (unfold bAll_def)
 have z_Hev: "?z_hev" (is "\\A x : ?z_hez(x)")
 by (unfold z_Hev_z_Hn, fact z_Hn)
 have z_Hfa: "(~(((isAFcn(?z_hbr)&isAFcn(?z_hcd))&(DOMAIN(?z_hbr)=DOMAIN(?z_hcd)))&(\\A zenon_Vg:((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg]))))))" (is "~(?z_hfc&?z_hfj)")
 by (rule zenon_notfunequal_0 [of "?z_hbr" "?z_hcd", OF z_Ho])
 show FALSE
 proof (rule zenon_notand [OF z_Hfa])
  assume z_Hfq:"(~?z_hfc)" (is "~(?z_hfd&?z_hfg)")
  show FALSE
  proof (rule zenon_notand [OF z_Hfq])
   assume z_Hfr:"(~?z_hfd)" (is "~(?z_hfe&?z_hff)")
   show FALSE
   proof (rule zenon_notand [OF z_Hfr])
    assume z_Hfs:"(~?z_hfe)"
    have z_Hft: "?z_hez(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))" (is "?z_hdt=>?z_hfu")
    by (rule zenon_all_0 [of "?z_hez" "((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))})", OF z_Hev])
    show FALSE
    proof (rule zenon_imply [OF z_Hft])
     assume z_Hds:"(~?z_hdt)"
     have z_Hfv: "?z_heu(a_s1a)" (is "_=>?z_hfw")
     by (rule zenon_all_0 [of "?z_heu" "a_s1a", OF z_Hek])
     show FALSE
     proof (rule zenon_imply [OF z_Hfv])
      assume z_Hfx:"(~?z_ha)"
      show FALSE
      by (rule notE [OF z_Hfx z_Ha])
     next
      assume z_Hfw:"?z_hfw"
      have z_Hdd_z_Hfw: "(\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>q. (((a_s1a \\ {x, q}) \\cup {(''r'' :> ((x[''r''])) @@ ''X'' :> (((x[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua))))) == ?z_hfw" (is "?z_hdd == _")
      by (unfold bAll_def)
      have z_Hdd: "?z_hdd" (is "\\A x : ?z_hdu(x)")
      by (unfold z_Hdd_z_Hfw, fact z_Hfw)
      show FALSE
      by (rule zenon_L1_ [OF z_Hdd z_Hg z_Hds z_Hi])
     qed
    next
     assume z_Hfu:"?z_hfu"
     have z_Hfy: "(?z_hbr \\in FuncSet(U, U))" (is "?z_hfy")
     by (rule zenon_in_subsetof_0 [of "?z_hbr" "FuncSet(U, U)" "(\<lambda>A. bAll(U, (\<lambda>i. ((A[(A[i])])=(A[i])))))", OF z_Hfu])
     have z_Hfe: "?z_hfe"
     by (rule zenon_in_funcset_0 [of "?z_hbr" "U" "U", OF z_Hfy])
     show FALSE
     by (rule notE [OF z_Hfs z_Hfe])
    qed
   next
    assume z_Hfz:"(~?z_hff)"
    show FALSE
    by (rule zenon_notisafcn_fcn [of "U" "(\<lambda>i_1. cond(((f(a_s1a)[i_1])=(f(a_s1a)[(o[3])])), (f(a_s1a)[(o[2])]), (f(a_s1a)[i_1])))", OF z_Hfz])
   qed
  next
   assume z_Hga:"(DOMAIN(?z_hbr)~=DOMAIN(?z_hcd))" (is "?z_hfh~=?z_hfi")
   have z_Hgb: "(?z_hfh~=U)"
   by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vtaa. (?z_hfh~=zenon_Vtaa))" "U" "(\<lambda>i_1. cond(((f(a_s1a)[i_1])=(f(a_s1a)[(o[3])])), (f(a_s1a)[(o[2])]), (f(a_s1a)[i_1])))", OF z_Hga])
   have z_Hfw: "bAll(a_s1a, (\<lambda>p. bAll(a_s1a, (\<lambda>q. (((a_s1a \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua)))))" (is "?z_hfw")
   by (rule zenon_all_in_0 [of "a_Lunde_Ua" "(\<lambda>P. bAll(P, (\<lambda>p. bAll(P, (\<lambda>q. (((P \\ {p, q}) \\cup {(''r'' :> ((p[''r''])) @@ ''X'' :> (((p[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua))))))", OF z_Hm z_Ha])
   have z_Hdd_z_Hfw: "(\\A x:((x \\in a_s1a)=>bAll(a_s1a, (\<lambda>q. (((a_s1a \\ {x, q}) \\cup {(''r'' :> ((x[''r''])) @@ ''X'' :> (((x[''X'']) \\cup (q[''X'']))))}) \\in a_Lunde_Ua))))) == ?z_hfw" (is "?z_hdd == _")
   by (unfold bAll_def)
   have z_Hdd: "?z_hdd" (is "\\A x : ?z_hdu(x)")
   by (unfold z_Hdd_z_Hfw, fact z_Hfw)
   have z_Hft: "?z_hez(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))" (is "?z_hdt=>?z_hfu")
   by (rule zenon_all_0 [of "?z_hez" "((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))})", OF z_Hev])
   show FALSE
   proof (rule zenon_imply [OF z_Hft])
    assume z_Hds:"(~?z_hdt)"
    show FALSE
    by (rule zenon_L1_ [OF z_Hdd z_Hg z_Hds z_Hi])
   next
    assume z_Hfu:"?z_hfu"
    have z_Hfy: "(?z_hbr \\in FuncSet(U, U))" (is "?z_hfy")
    by (rule zenon_in_subsetof_0 [of "?z_hbr" "FuncSet(U, U)" "(\<lambda>A. bAll(U, (\<lambda>i. ((A[(A[i])])=(A[i])))))", OF z_Hfu])
    have z_Hgl: "(?z_hfh=U)"
    by (rule zenon_in_funcset_1 [of "?z_hbr" "U" "U", OF z_Hfy])
    show FALSE
    by (rule notE [OF z_Hgb z_Hgl])
   qed
  qed
 next
  assume z_Hgm:"(~?z_hfj)" (is "~(\\A x : ?z_hgn(x))")
  have z_Hgo: "(\\E zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg])))))" (is "\\E x : ?z_hgq(x)")
  by (rule zenon_notallex_0 [of "?z_hgn", OF z_Hgm])
  have z_Hgr: "?z_hgq((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg]))))))" (is "~(?z_hgt=>?z_hgu)")
  by (rule zenon_ex_choose_0 [of "?z_hgq", OF z_Hgo])
  have z_Hgt: "?z_hgt"
  by (rule zenon_notimply_0 [OF z_Hgr])
  have z_Hgv: "((?z_hbr[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg])))))])~=(?z_hcd[(CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg])))))]))" (is "?z_hgw~=?z_hgx")
  by (rule zenon_notimply_1 [OF z_Hgr])
  have z_Hgy: "((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg]))))) \\in U)" (is "?z_hgy")
  by (rule zenon_domain_fcn_0 [of "(\<lambda>zenon_Vqh. ((CHOOSE zenon_Vg:(~((zenon_Vg \\in DOMAIN(?z_hcd))=>((?z_hbr[zenon_Vg])=(?z_hcd[zenon_Vg]))))) \\in zenon_Vqh))" "U" "(\<lambda>i_1. cond(((f(a_s1a)[i_1])=(f(a_s1a)[(o[3])])), (f(a_s1a)[(o[2])]), (f(a_s1a)[i_1])))", OF z_Hgt])
  have z_Hgu: "?z_hgu"
  by (rule zenon_all_in_0 [of "U" "(\<lambda>i. ((?z_hbr[i])=(?z_hcd[i])))", OF z_Hl z_Hgy])
  show FALSE
  by (rule notE [OF z_Hgv z_Hgu])
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 254"; *} qed
lemma ob'145:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'54: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'71: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'72: "(((i) \<in> (fapply ((q), (''X'')))))"
shows "(\<exists> d \<in> (a_s2a) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((p), (''r''))))))))"(is "PROP ?ob'145")
proof -
ML_command {* writeln "*** TLAPS ENTER 145"; *}
show "PROP ?ob'145"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 145"; *} qed
lemma ob'138:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'54: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'70: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'71: "(((i) \<in> (fapply ((p), (''X'')))))"
shows "(\<exists> d \<in> (a_s2a) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((p), (''r''))))))))"(is "PROP ?ob'138")
proof -
ML_command {* writeln "*** TLAPS ENTER 138"; *}
show "PROP ?ob'138"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 138"; *} qed
lemma ob'277:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'48: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'60: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'65: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'71: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'84: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X'')))))))))))))"
assumes v'85: "(((i) \<notin> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X'')))))))"
assumes v'86: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))) : (\<forall> x \<in> (P) : (\<forall> y \<in> (P) : (((((fapply ((x), (''r''))) = (fapply ((y), (''r''))))) \<Rightarrow> (((x) = (y))))))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((((i) \<in> (fapply ((d), (''X''))))) \<and> (((d) \<noteq> (a_p1a))))) \<and> (((d) \<noteq> (a_p2a))))))"(is "PROP ?ob'277")
proof -
ML_command {* writeln "*** TLAPS ENTER 277"; *}
show "PROP ?ob'277"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_60dc03.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_60dc03.znn.out
;; obligation #277
$hyp "a_s1a_in" (TLA.in a_s1a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "a_s2a_in" (TLA.in a_s2a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'44" (-. (delta a_s1a o a_s2a
r))
$hyp "v'48" (\/ (= (TLA.fapply o (TLA.fapply TLA.Succ 0)) "Find")
(= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Unite"))
$hyp "a_p1a_in" (TLA.in a_p1a a_s1a)
$hyp "v'60" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_p1a "X"))
$hyp "a_p2a_in" (TLA.in a_p2a a_s1a)
$hyp "v'65" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply a_p2a "X"))
$hyp "v'71" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
U))
$hyp "i_in" (TLA.in i U)
$hyp "v'84" (/\ (TLA.in (TLA.cup (TLA.setminus a_s1a (TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))
(TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X")))))))) (TLA.in (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p2a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))
(TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X")))))))))
$hyp "v'85" (-. (TLA.in i (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))
$hyp "v'86" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))) ((P) (TLA.bAll P ((x) (TLA.bAll P ((y) (=> (= (TLA.fapply x "r")
(TLA.fapply y "r")) (= x y))))))))
$goal (TLA.bEx (TLA.cup (TLA.setminus a_s1a (TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))) ((d) (/\ (/\ (TLA.in i (TLA.fapply d "X"))
(-. (= d a_p1a))) (-. (= d
a_p2a)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hl:"(i \\in U)" (is "?z_hl")
 using i_in by blast
 have z_Hn:"(~(i \\in ((a_p1a[''X'']) \\cup (a_p2a[''X'']))))" (is "~?z_hch")
 using v'85 by blast
 assume z_Hp:"(~bEx(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}), (\<lambda>d. (((i \\in (d[''X'']))&(d~=a_p1a))&(d~=a_p2a)))))" (is "~?z_hcn")
 have z_Hdc: "(bAll(a_s1a, (\<lambda>x. ((x[''X''])~={})))&(bAll(a_s1a, (\<lambda>a_x1a. bAll(a_s1a, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(a_s1a, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hdd&?z_hde")
 by (rule zenon_in_subsetof_1 [of "a_s1a" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hde: "?z_hde" (is "?z_hdf&?z_hdi")
 by (rule zenon_and_1 [OF z_Hdc])
 have z_Hdi: "?z_hdi" (is "?z_hdj&?z_hdm")
 by (rule zenon_and_1 [OF z_Hde])
 have z_Hdj: "?z_hdj"
 by (rule zenon_and_0 [OF z_Hdi])
 have z_Hdn_z_Hdj: "(\\A x:((x \\in U)=>bEx(a_s1a, (\<lambda>zenon_Voa. (x \\in (zenon_Voa[''X''])))))) == ?z_hdj" (is "?z_hdn == _")
 by (unfold bAll_def)
 have z_Hdn: "?z_hdn" (is "\\A x : ?z_hdv(x)")
 by (unfold z_Hdn_z_Hdj, fact z_Hdj)
 have z_Hdw: "(~(i \\in (a_p1a[''X''])))" (is "~?z_hdx")
 by (rule zenon_notin_cup_0 [of "i" "(a_p1a[''X''])" "(a_p2a[''X''])", OF z_Hn])
 have z_Hdy: "(~(i \\in (a_p2a[''X''])))" (is "~?z_hdz")
 by (rule zenon_notin_cup_1 [of "i" "(a_p1a[''X''])" "(a_p2a[''X''])", OF z_Hn])
 have z_Hea_z_Hp: "(~(\\E x:((x \\in ((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))&(((i \\in (x[''X'']))&(x~=a_p1a))&(x~=a_p2a))))) == (~?z_hcn)" (is "?z_hea == ?z_hp")
 by (unfold bEx_def)
 have z_Hea: "?z_hea" (is "~(\\E x : ?z_hei(x))")
 by (unfold z_Hea_z_Hp, fact z_Hp)
 have z_Hej: "?z_hdv(i)" (is "_=>?z_hdl")
 by (rule zenon_all_0 [of "?z_hdv" "i", OF z_Hdn])
 show FALSE
 proof (rule zenon_imply [OF z_Hej])
  assume z_Hek:"(~?z_hl)"
  show FALSE
  by (rule notE [OF z_Hek z_Hl])
 next
  assume z_Hdl:"?z_hdl"
  have z_Hel_z_Hdl: "(\\E x:((x \\in a_s1a)&(i \\in (x[''X''])))) == ?z_hdl" (is "?z_hel == _")
  by (unfold bEx_def)
  have z_Hel: "?z_hel" (is "\\E x : ?z_heo(x)")
  by (unfold z_Hel_z_Hdl, fact z_Hdl)
  have z_Hep: "?z_heo((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "?z_her&?z_hes")
  by (rule zenon_ex_choose_0 [of "?z_heo", OF z_Hel])
  have z_Her: "?z_her"
  by (rule zenon_and_0 [OF z_Hep])
  have z_Hes: "?z_hes"
  by (rule zenon_and_1 [OF z_Hep])
  show FALSE
  proof (rule notE [OF z_Hdy])
   have z_Het: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])=(a_p2a[''X'']))" (is "?z_heu=?z_hcl")
   proof (rule zenon_nnpp [of "(?z_heu=?z_hcl)"])
    assume z_Hev:"(?z_heu~=?z_hcl)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hcl"])
     have z_Hew: "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=a_p2a)" (is "?z_heq=_")
     proof (rule zenon_nnpp [of "(?z_heq=a_p2a)"])
      assume z_Hex:"(?z_heq~=a_p2a)"
      show FALSE
      proof (rule notE [OF z_Hdw])
       have z_Hey: "(?z_heu=(a_p1a[''X'']))" (is "_=?z_hcj")
       proof (rule zenon_nnpp [of "(?z_heu=?z_hcj)"])
        assume z_Hez:"(?z_heu~=?z_hcj)"
        show FALSE
        proof (rule zenon_noteq [of "?z_hcj"])
         have z_Hfa: "(?z_heq=a_p1a)"
         proof (rule zenon_nnpp [of "(?z_heq=a_p1a)"])
          assume z_Hfb:"(?z_heq~=a_p1a)"
          have z_Hfc: "~?z_hei(?z_heq)" (is "~(?z_hfd&?z_hfe)")
          by (rule zenon_notex_0 [of "?z_hei" "?z_heq", OF z_Hea])
          show FALSE
          proof (rule zenon_notand [OF z_Hfc])
           assume z_Hff:"(~?z_hfd)"
           have z_Hfg: "(~(?z_heq \\in (a_s1a \\ {a_p1a, a_p2a})))" (is "~?z_hfh")
           by (rule zenon_notin_cup_0 [of "?z_heq" "(a_s1a \\ {a_p1a, a_p2a})" "{(''r'' :> ((a_p1a[''r''])) @@ ''X'' :> ((?z_hcj \\cup ?z_hcl)))}", OF z_Hff])
           show FALSE
           proof (rule zenon_notin_setminus [of "?z_heq" "a_s1a" "{a_p1a, a_p2a}", OF z_Hfg])
            assume z_Hfi:"(~?z_her)"
            show FALSE
            by (rule notE [OF z_Hfi z_Her])
           next
            assume z_Hfj:"(?z_heq \\in {a_p1a, a_p2a})" (is "?z_hfj")
            show FALSE
            proof (rule zenon_in_addElt [of "?z_heq" "a_p1a" "{a_p2a}", OF z_Hfj])
             assume z_Hfa:"(?z_heq=a_p1a)"
             show FALSE
             by (rule notE [OF z_Hfb z_Hfa])
            next
             assume z_Hfl:"(?z_heq \\in {a_p2a})" (is "?z_hfl")
             show FALSE
             proof (rule zenon_in_addElt [of "?z_heq" "a_p2a" "{}", OF z_Hfl])
              assume z_Hew:"(?z_heq=a_p2a)"
              show FALSE
              by (rule notE [OF z_Hex z_Hew])
             next
              assume z_Hfn:"(?z_heq \\in {})" (is "?z_hfn")
              show FALSE
              by (rule zenon_in_emptyset [of "?z_heq", OF z_Hfn])
             qed
            qed
           qed
          next
           assume z_Hfo:"(~?z_hfe)" (is "~(?z_hfp&?z_hex)")
           show FALSE
           proof (rule zenon_notand [OF z_Hfo])
            assume z_Hfq:"(~?z_hfp)" (is "~(_&?z_hfb)")
            show FALSE
            proof (rule zenon_notand [OF z_Hfq])
             assume z_Hfr:"(~?z_hes)"
             show FALSE
             by (rule notE [OF z_Hfr z_Hes])
            next
             assume z_Hfs:"(~?z_hfb)" (is "~~?z_hfa")
             show FALSE
             by (rule notE [OF z_Hfs z_Hfb])
            qed
           next
            assume z_Hft:"(~?z_hex)" (is "~~?z_hew")
            show FALSE
            by (rule notE [OF z_Hft z_Hex])
           qed
          qed
         qed
         have z_Hfu: "(?z_hcj~=?z_hcj)"
         by (rule subst [where P="(\<lambda>zenon_Vfu. ((zenon_Vfu[''X''])~=?z_hcj))", OF z_Hfa], fact z_Hez)
         thus "(?z_hcj~=?z_hcj)" .
        qed
       qed
       have z_Hdx: "?z_hdx"
       by (rule subst [where P="(\<lambda>zenon_Vgu. (i \\in zenon_Vgu))", OF z_Hey], fact z_Hes)
       thus "?z_hdx" .
      qed
     qed
     have z_Hgc: "(?z_hcl~=?z_hcl)"
     by (rule subst [where P="(\<lambda>zenon_Vhu. ((zenon_Vhu[''X''])~=?z_hcl))", OF z_Hew], fact z_Hev)
     thus "(?z_hcl~=?z_hcl)" .
    qed
   qed
   have z_Hdz: "?z_hdz"
   by (rule subst [where P="(\<lambda>zenon_Vgu. (i \\in zenon_Vgu))", OF z_Het], fact z_Hes)
   thus "?z_hdz" .
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 277"; *} qed
lemma ob'261:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'45: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'49: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'61: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'66: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'72: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'83: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua)))))"
assumes v'84: "(((i) \<in> (fapply ((a_p2a), (''X'')))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((a_p1a), (''r''))))))))"(is "PROP ?ob'261")
proof -
ML_command {* writeln "*** TLAPS ENTER 261"; *}
show "PROP ?ob'261"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 261"; *} qed
lemma ob'175:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'54: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'71: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'72: "(((i) \<in> (fapply ((p), (''X'')))))"
shows "(\<exists> d \<in> (a_s2a) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((q), (''r''))))))))"(is "PROP ?ob'175")
proof -
ML_command {* writeln "*** TLAPS ENTER 175"; *}
show "PROP ?ob'175"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 175"; *} qed
lemma ob'300:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'45: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'49: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'61: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'66: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'72: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'85: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua)))))"
assumes v'86: "(((i) \<in> (fapply ((a_p1a), (''X'')))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((a_p2a), (''r''))))))))"(is "PROP ?ob'300")
proof -
ML_command {* writeln "*** TLAPS ENTER 300"; *}
show "PROP ?ob'300"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 300"; *} qed
lemma ob'182:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((delta ((a_s1a), (o), (a_s2a), (r))))"
fixes p
assumes p_in : "(p \<in> (a_s1a))"
fixes q
assumes q_in : "(q \<in> (a_s1a))"
assumes v'54: "((((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((p), (''X''))))) & (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((q), (''X''))))) & ((((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((p), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))}))))) | (((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'72: "(((a_s2a) = (((((a_s1a) \\ ({(p), (q)}))) \<union> ({(((''r'' :> (fapply ((q), (''r'')))) @@ (''X'' :> (((fapply ((p), (''X''))) \<union> (fapply ((q), (''X''))))))))})))))"
assumes v'73: "(((i) \<in> (fapply ((q), (''X'')))))"
shows "(\<exists> d \<in> (a_s2a) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((q), (''r''))))))))"(is "PROP ?ob'182")
proof -
ML_command {* writeln "*** TLAPS ENTER 182"; *}
show "PROP ?ob'182"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 182"; *} qed
lemma ob'309:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i \<in> (U) : (\<exists> x \<in> (P) : (((i) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'44: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'48: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'60: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'65: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'71: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'85: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X'')))))))))))))"
assumes v'86: "(((i) \<notin> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X'')))))))"
assumes v'87: "(\<forall> P \<in> (subsetOf(((SUBSET ([''r'' : (U), ''X'' : ((SUBSET (U)))]))), %P. ((\<forall> x \<in> (P) : (((fapply ((x), (''X''))) \<noteq> ({})))) & (\<forall> a_x1a \<in> (P) : (\<forall> a_x2a \<in> (P) : (((((a_x1a) \<noteq> (a_x2a))) \<Rightarrow> (((((fapply ((a_x1a), (''X''))) \<inter> (fapply ((a_x2a), (''X''))))) = ({}))))))) & (\<forall> i_1 \<in> (U) : (\<exists> x \<in> (P) : (((i_1) \<in> (fapply ((x), (''X''))))))) & (\<forall> p \<in> (P) : (((fapply ((p), (''r''))) \<in> (fapply ((p), (''X''))))))))) : (\<forall> x \<in> (P) : (\<forall> y \<in> (P) : (((((fapply ((x), (''r''))) = (fapply ((y), (''r''))))) \<Rightarrow> (((x) = (y))))))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((((i) \<in> (fapply ((d), (''X''))))) \<and> (((d) \<noteq> (a_p1a))))) \<and> (((d) \<noteq> (a_p2a))))))"(is "PROP ?ob'309")
proof -
ML_command {* writeln "*** TLAPS ENTER 309"; *}
show "PROP ?ob'309"

(* BEGIN ZENON INPUT
;; file=TypeEquivalence.tlaps/tlapm_3274a8.znn; PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/lib/tlaps/bin'; zenon -p0 -x tla -oisar -max-time 1d "$file" >TypeEquivalence.tlaps/tlapm_3274a8.znn.out
;; obligation #309
$hyp "a_s1a_in" (TLA.in a_s1a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "a_s2a_in" (TLA.in a_s2a (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i) (TLA.bEx P ((x) (TLA.in i
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))))
$hyp "o_in" (TLA.in o Ops)
$hyp "r_in" (TLA.in r Rets)
$hyp "v'44" (-. (delta a_s1a o a_s2a
r))
$hyp "v'48" (\/ (= (TLA.fapply o (TLA.fapply TLA.Succ 0)) "Find")
(= (TLA.fapply o (TLA.fapply TLA.Succ 0))
"Unite"))
$hyp "a_p1a_in" (TLA.in a_p1a a_s1a)
$hyp "v'60" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
(TLA.fapply a_p1a "X"))
$hyp "a_p2a_in" (TLA.in a_p2a a_s1a)
$hyp "v'65" (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
(TLA.fapply a_p2a "X"))
$hyp "v'71" (/\ (TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0)))
U)
(TLA.in (TLA.fapply o (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ (TLA.fapply TLA.Succ 0))))
U))
$hyp "i_in" (TLA.in i U)
$hyp "v'85" (/\ (TLA.in (TLA.cup (TLA.setminus a_s1a (TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p1a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))
(TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X")))))))) (TLA.in (TLA.cup (TLA.setminus a_s1a
(TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p2a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X")))))
(TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X")))))))))
$hyp "v'86" (-. (TLA.in i (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))
$hyp "v'87" (TLA.bAll (TLA.subsetOf (TLA.SUBSET (TLA.recordset "r" U "X" (TLA.SUBSET U))) ((P) (/\ (TLA.bAll P ((x) (-. (= (TLA.fapply x "X")
TLA.emptyset)))) (TLA.bAll P ((a_x1a) (TLA.bAll P ((a_x2a) (=> (-. (= a_x1a
a_x2a)) (= (TLA.cap (TLA.fapply a_x1a "X") (TLA.fapply a_x2a "X"))
TLA.emptyset)))))) (TLA.bAll U ((i_1) (TLA.bEx P ((x) (TLA.in i_1
(TLA.fapply x "X")))))) (TLA.bAll P ((p) (TLA.in (TLA.fapply p "r")
(TLA.fapply p "X"))))))) ((P) (TLA.bAll P ((x) (TLA.bAll P ((y) (=> (= (TLA.fapply x "r")
(TLA.fapply y "r")) (= x y))))))))
$goal (TLA.bEx (TLA.cup (TLA.setminus a_s1a (TLA.set a_p1a a_p2a))
(TLA.set (TLA.record "r" (TLA.fapply a_p2a "r") "X" (TLA.cup (TLA.fapply a_p1a "X")
(TLA.fapply a_p2a "X"))))) ((d) (/\ (/\ (TLA.in i (TLA.fapply d "X"))
(-. (= d a_p1a))) (-. (= d
a_p2a)))))
END ZENON  INPUT *)
(* PROOF-FOUND *)
(* BEGIN-PROOF *)
proof (rule zenon_nnpp)
 have z_Ha:"(a_s1a \\in subsetOf(SUBSET([''r'' : (U), ''X'' : (SUBSET(U))]), (\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))))" (is "?z_ha")
 using a_s1a_in by blast
 have z_Hl:"(i \\in U)" (is "?z_hl")
 using i_in by blast
 have z_Hn:"(~(i \\in ((a_p1a[''X'']) \\cup (a_p2a[''X'']))))" (is "~?z_hch")
 using v'86 by blast
 assume z_Hp:"(~bEx(((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p2a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}), (\<lambda>d. (((i \\in (d[''X'']))&(d~=a_p1a))&(d~=a_p2a)))))" (is "~?z_hcn")
 have z_Hdc: "(bAll(a_s1a, (\<lambda>x. ((x[''X''])~={})))&(bAll(a_s1a, (\<lambda>a_x1a. bAll(a_s1a, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(a_s1a, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(a_s1a, (\<lambda>p. ((p[''r'']) \\in (p[''X''])))))))" (is "?z_hdd&?z_hde")
 by (rule zenon_in_subsetof_1 [of "a_s1a" "SUBSET([''r'' : (U), ''X'' : (SUBSET(U))])" "(\<lambda>P. (bAll(P, (\<lambda>x. ((x[''X''])~={})))&(bAll(P, (\<lambda>a_x1a. bAll(P, (\<lambda>a_x2a. ((a_x1a~=a_x2a)=>(((a_x1a[''X'']) \\cap (a_x2a[''X'']))={}))))))&(bAll(U, (\<lambda>i. bEx(P, (\<lambda>x. (i \\in (x[''X'']))))))&bAll(P, (\<lambda>p. ((p[''r'']) \\in (p[''X'']))))))))", OF z_Ha])
 have z_Hde: "?z_hde" (is "?z_hdf&?z_hdi")
 by (rule zenon_and_1 [OF z_Hdc])
 have z_Hdi: "?z_hdi" (is "?z_hdj&?z_hdm")
 by (rule zenon_and_1 [OF z_Hde])
 have z_Hdj: "?z_hdj"
 by (rule zenon_and_0 [OF z_Hdi])
 have z_Hdn_z_Hdj: "(\\A x:((x \\in U)=>bEx(a_s1a, (\<lambda>zenon_Voa. (x \\in (zenon_Voa[''X''])))))) == ?z_hdj" (is "?z_hdn == _")
 by (unfold bAll_def)
 have z_Hdn: "?z_hdn" (is "\\A x : ?z_hdv(x)")
 by (unfold z_Hdn_z_Hdj, fact z_Hdj)
 have z_Hdw: "(~(i \\in (a_p1a[''X''])))" (is "~?z_hdx")
 by (rule zenon_notin_cup_0 [of "i" "(a_p1a[''X''])" "(a_p2a[''X''])", OF z_Hn])
 have z_Hdy: "(~(i \\in (a_p2a[''X''])))" (is "~?z_hdz")
 by (rule zenon_notin_cup_1 [of "i" "(a_p1a[''X''])" "(a_p2a[''X''])", OF z_Hn])
 have z_Hea_z_Hp: "(~(\\E x:((x \\in ((a_s1a \\ {a_p1a, a_p2a}) \\cup {(''r'' :> ((a_p2a[''r''])) @@ ''X'' :> (((a_p1a[''X'']) \\cup (a_p2a[''X'']))))}))&(((i \\in (x[''X'']))&(x~=a_p1a))&(x~=a_p2a))))) == (~?z_hcn)" (is "?z_hea == ?z_hp")
 by (unfold bEx_def)
 have z_Hea: "?z_hea" (is "~(\\E x : ?z_hei(x))")
 by (unfold z_Hea_z_Hp, fact z_Hp)
 have z_Hej: "?z_hdv(i)" (is "_=>?z_hdl")
 by (rule zenon_all_0 [of "?z_hdv" "i", OF z_Hdn])
 show FALSE
 proof (rule zenon_imply [OF z_Hej])
  assume z_Hek:"(~?z_hl)"
  show FALSE
  by (rule notE [OF z_Hek z_Hl])
 next
  assume z_Hdl:"?z_hdl"
  have z_Hel_z_Hdl: "(\\E x:((x \\in a_s1a)&(i \\in (x[''X''])))) == ?z_hdl" (is "?z_hel == _")
  by (unfold bEx_def)
  have z_Hel: "?z_hel" (is "\\E x : ?z_heo(x)")
  by (unfold z_Hel_z_Hdl, fact z_Hdl)
  have z_Hep: "?z_heo((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X''])))))" (is "?z_her&?z_hes")
  by (rule zenon_ex_choose_0 [of "?z_heo", OF z_Hel])
  have z_Her: "?z_her"
  by (rule zenon_and_0 [OF z_Hep])
  have z_Hes: "?z_hes"
  by (rule zenon_and_1 [OF z_Hep])
  show FALSE
  proof (rule notE [OF z_Hdy])
   have z_Het: "(((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))[''X''])=(a_p2a[''X'']))" (is "?z_heu=?z_hcl")
   proof (rule zenon_nnpp [of "(?z_heu=?z_hcl)"])
    assume z_Hev:"(?z_heu~=?z_hcl)"
    show FALSE
    proof (rule zenon_noteq [of "?z_hcl"])
     have z_Hew: "((CHOOSE x:((x \\in a_s1a)&(i \\in (x[''X'']))))=a_p2a)" (is "?z_heq=_")
     proof (rule zenon_nnpp [of "(?z_heq=a_p2a)"])
      assume z_Hex:"(?z_heq~=a_p2a)"
      show FALSE
      proof (rule notE [OF z_Hdw])
       have z_Hey: "(?z_heu=(a_p1a[''X'']))" (is "_=?z_hcj")
       proof (rule zenon_nnpp [of "(?z_heu=?z_hcj)"])
        assume z_Hez:"(?z_heu~=?z_hcj)"
        show FALSE
        proof (rule zenon_noteq [of "?z_hcj"])
         have z_Hfa: "(?z_heq=a_p1a)"
         proof (rule zenon_nnpp [of "(?z_heq=a_p1a)"])
          assume z_Hfb:"(?z_heq~=a_p1a)"
          have z_Hfc: "~?z_hei(?z_heq)" (is "~(?z_hfd&?z_hfe)")
          by (rule zenon_notex_0 [of "?z_hei" "?z_heq", OF z_Hea])
          show FALSE
          proof (rule zenon_notand [OF z_Hfc])
           assume z_Hff:"(~?z_hfd)"
           have z_Hfg: "(~(?z_heq \\in (a_s1a \\ {a_p1a, a_p2a})))" (is "~?z_hfh")
           by (rule zenon_notin_cup_0 [of "?z_heq" "(a_s1a \\ {a_p1a, a_p2a})" "{(''r'' :> ((a_p2a[''r''])) @@ ''X'' :> ((?z_hcj \\cup ?z_hcl)))}", OF z_Hff])
           show FALSE
           proof (rule zenon_notin_setminus [of "?z_heq" "a_s1a" "{a_p1a, a_p2a}", OF z_Hfg])
            assume z_Hfi:"(~?z_her)"
            show FALSE
            by (rule notE [OF z_Hfi z_Her])
           next
            assume z_Hfj:"(?z_heq \\in {a_p1a, a_p2a})" (is "?z_hfj")
            show FALSE
            proof (rule zenon_in_addElt [of "?z_heq" "a_p1a" "{a_p2a}", OF z_Hfj])
             assume z_Hfa:"(?z_heq=a_p1a)"
             show FALSE
             by (rule notE [OF z_Hfb z_Hfa])
            next
             assume z_Hfl:"(?z_heq \\in {a_p2a})" (is "?z_hfl")
             show FALSE
             proof (rule zenon_in_addElt [of "?z_heq" "a_p2a" "{}", OF z_Hfl])
              assume z_Hew:"(?z_heq=a_p2a)"
              show FALSE
              by (rule notE [OF z_Hex z_Hew])
             next
              assume z_Hfn:"(?z_heq \\in {})" (is "?z_hfn")
              show FALSE
              by (rule zenon_in_emptyset [of "?z_heq", OF z_Hfn])
             qed
            qed
           qed
          next
           assume z_Hfo:"(~?z_hfe)" (is "~(?z_hfp&?z_hex)")
           show FALSE
           proof (rule zenon_notand [OF z_Hfo])
            assume z_Hfq:"(~?z_hfp)" (is "~(_&?z_hfb)")
            show FALSE
            proof (rule zenon_notand [OF z_Hfq])
             assume z_Hfr:"(~?z_hes)"
             show FALSE
             by (rule notE [OF z_Hfr z_Hes])
            next
             assume z_Hfs:"(~?z_hfb)" (is "~~?z_hfa")
             show FALSE
             by (rule notE [OF z_Hfs z_Hfb])
            qed
           next
            assume z_Hft:"(~?z_hex)" (is "~~?z_hew")
            show FALSE
            by (rule notE [OF z_Hft z_Hex])
           qed
          qed
         qed
         have z_Hfu: "(?z_hcj~=?z_hcj)"
         by (rule subst [where P="(\<lambda>zenon_Vfu. ((zenon_Vfu[''X''])~=?z_hcj))", OF z_Hfa], fact z_Hez)
         thus "(?z_hcj~=?z_hcj)" .
        qed
       qed
       have z_Hdx: "?z_hdx"
       by (rule subst [where P="(\<lambda>zenon_Vgu. (i \\in zenon_Vgu))", OF z_Hey], fact z_Hes)
       thus "?z_hdx" .
      qed
     qed
     have z_Hgc: "(?z_hcl~=?z_hcl)"
     by (rule subst [where P="(\<lambda>zenon_Vhu. ((zenon_Vhu[''X''])~=?z_hcl))", OF z_Hew], fact z_Hev)
     thus "(?z_hcl~=?z_hcl)" .
    qed
   qed
   have z_Hdz: "?z_hdz"
   by (rule subst [where P="(\<lambda>zenon_Vgu. (i \\in zenon_Vgu))", OF z_Het], fact z_Hes)
   thus "?z_hdz" .
  qed
 qed
qed
(* END-PROOF *)
ML_command {* writeln "*** TLAPS EXIT 309"; *} qed
lemma ob'268:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'45: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'49: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'61: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'66: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'72: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'84: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua)))))"
assumes v'85: "(((i) \<in> (fapply ((a_p1a), (''X'')))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((a_p1a), (''r''))))))))"(is "PROP ?ob'268")
proof -
ML_command {* writeln "*** TLAPS ENTER 268"; *}
show "PROP ?ob'268"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 268"; *} qed
lemma ob'293:
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
fixes U
fixes ACK
(* usable definition Ops suppressed *)
(* usable definition Rets suppressed *)
(* usable definition L_U suppressed *)
(* usable definition delta suppressed *)
(* usable definition Idems suppressed *)
(* usable definition delta_prime suppressed *)
(* usable definition f suppressed *)
fixes a_s1a
assumes a_s1a_in : "(a_s1a \<in> (a_Lunde_Ua))"
fixes a_s2a
assumes a_s2a_in : "(a_s2a \<in> (a_Lunde_Ua))"
fixes o
assumes o_in : "(o \<in> (Ops))"
fixes r
assumes r_in : "(r \<in> (Rets))"
assumes v'45: "((~ ((delta ((a_s1a), (o), (a_s2a), (r))))))"
assumes v'49: "(((((fapply ((o), ((Succ[0])))) = (''Find''))) \<or> (((fapply ((o), ((Succ[0])))) = (''Unite'')))))"
fixes a_p1a
assumes a_p1a_in : "(a_p1a \<in> (a_s1a))"
assumes v'61: "(((fapply ((o), ((Succ[Succ[0]])))) \<in> (fapply ((a_p1a), (''X'')))))"
fixes a_p2a
assumes a_p2a_in : "(a_p2a \<in> (a_s1a))"
assumes v'66: "(((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (fapply ((a_p2a), (''X'')))))"
assumes v'72: "(((((fapply ((o), ((Succ[Succ[0]])))) \<in> (U))) \<and> (((fapply ((o), ((Succ[Succ[Succ[0]]])))) \<in> (U)))))"
fixes i
assumes i_in : "(i \<in> (U))"
assumes v'84: "(((((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p1a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua))) \<and> (((((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) \<in> (a_Lunde_Ua)))))"
assumes v'85: "(((i) \<in> (fapply ((a_p2a), (''X'')))))"
shows "(\<exists> d \<in> (((((a_s1a) \\ ({(a_p1a), (a_p2a)}))) \<union> ({(((''r'' :> (fapply ((a_p2a), (''r'')))) @@ (''X'' :> (((fapply ((a_p1a), (''X''))) \<union> (fapply ((a_p2a), (''X''))))))))}))) : (((((i) \<in> (fapply ((d), (''X''))))) \<and> (((fapply ((d), (''r''))) = (fapply ((a_p2a), (''r''))))))))"(is "PROP ?ob'293")
proof -
ML_command {* writeln "*** TLAPS ENTER 293"; *}
show "PROP ?ob'293"
using assms by auto
ML_command {* writeln "*** TLAPS EXIT 293"; *} qed
end
