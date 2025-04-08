;; Proof obligation:
;;ASSUME NEW CONSTANT BOT,
;;        NEW CONSTANT ACK,
;;        NEW CONSTANT PROCESSES,
;;        NEW CONSTANT N,
;;        NEW VARIABLE pc,
;;        NEW VARIABLE F,
;;        NEW VARIABLE u_F,
;;        NEW VARIABLE a_F,
;;        NEW VARIABLE b_F,
;;        NEW VARIABLE u_U,
;;        NEW VARIABLE v_U,
;;        NEW VARIABLE a_U,
;;        NEW VARIABLE b_U,
;;        NEW VARIABLE c,
;;        NEW VARIABLE d,
;;        NEW VARIABLE M,
;;        Inv ,
;;        Next \/ ?hbf6f3f86ac3e561c1ee154bb0de6ab = varlist ,
;;        NEW CONSTANT p \in PROCESSES,
;;        \/ pc[p] = "F1" /\ ?pc#prime = [pc EXCEPT ![p] = "F2"]
;;        \/ pc[p] = "F1U1" /\ ?pc#prime = [pc EXCEPT ![p] = "F2U1"]
;;        \/ pc[p] = "F1U2" /\ ?pc#prime = [pc EXCEPT ![p] = "F2U2"]
;;        \/ pc[p] = "F1U7" /\ ?pc#prime = [pc EXCEPT ![p] = "F2U7"]
;;        \/ pc[p] = "F1U8" /\ ?pc#prime = [pc EXCEPT ![p] = "F2U8"] ,
;;        ?u_F#prime = [u_F EXCEPT ![p] = c[p]] ,
;;        ?F#prime = F ,
;;        ?a_F#prime = a_F ,
;;        ?b_F#prime = b_F ,
;;        ?u_U#prime = u_U ,
;;        ?v_U#prime = v_U ,
;;        ?a_U#prime = a_U ,
;;        ?b_U#prime = b_U ,
;;        ?c#prime = c ,
;;        ?d#prime = d ,
;;        ?M#prime = M ,
;;        /\ ?pc#prime
;;           \in [PROCESSES ->
;;                  {"0", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "FR", "U1",
;;                   "U2", "U3", "U4", "U5", "U6", "U7", "U8", "UR", "F1U1",
;;                   "F2U1", "F3U1", "F4U1", "F5U1", "F6U1", "F7U1", "F8U1",
;;                   "FRU1", "F1U2", "F2U2", "F3U2", "F4U2", "F5U2", "F6U2",
;;                   "F7U2", "F8U2", "FRU2", "F1U7", "F2U7", "F3U7", "F4U7",
;;                   "F5U7", "F6U7", "F7U7", "F8U7", "FRU7", "F1U8", "F2U8",
;;                   "F3U8", "F4U8", "F5U8", "F6U8", "F7U8", "F8U8", "FRU8"}]
;;        /\ ?hf9aeb3897da94c7352f843ff1e508c
;;        /\ ?h20451dbf6bb505ef64a23efc0d6b3f
;;        /\ ?h6d4c4cb96f3fa83008da51bad83fbb
;;        /\ ?he269618ebe6078075ae33489842a63
;;        /\ ?h3c17892ec704c5c790d6c650bc1169
;;        /\ ?h4e0910ff04d5282a7607ee7b7eab81
;;        /\ ?hec61390ce29cfa3163e637effefe5f
;;        /\ ?h602df0f4906d91bdcf73ac652471ea
;;        /\ ?h1ef1e69610c58c66ee5436c27a2e53
;;        /\ ?h14c0a5932541232a01b2e9de8e7f49
;;        /\ ?h46e5ced0ed3f2b9f4026c7a4eba44c ,
;;        \A p_1 \in PROCESSES :
;;           \A t \in M :
;;              /\ pc[p_1] = "F4"
;;                 => (/\ (t.ret)[p_1] = BOT
;;                     /\ (t.op)[p_1] = "F"
;;                     /\ (t.arg)[p_1] \in NodeSet
;;                     /\ InvF4All(p_1, t))
;;              /\ pc[p_1] = "F4U1"
;;                 => (/\ (t.ret)[p_1] = BOT
;;                     /\ (t.op)[p_1] = "U"
;;                     /\ (t.arg)[p_1] \in NodeSet \X NodeSet
;;                     /\ InvF4All(p_1, t)
;;                     /\ (t.sigma)[c[p_1]] = (t.sigma)[u_U[p_1]])
;;              /\ pc[p_1] = "F4U2"
;;                 => (/\ (t.ret)[p_1] = BOT
;;                     /\ (t.op)[p_1] = "U"
;;                     /\ (t.arg)[p_1] \in NodeSet \X NodeSet
;;                     /\ InvU2All(p_1, t)
;;                     /\ InvF4All(p_1, t)
;;                     /\ (t.sigma)[c[p_1]] = (t.sigma)[v_U[p_1]])
;;              /\ pc[p_1] = "F4U7"
;;                 => (/\ (t.ret)[p_1] = BOT
;;                     /\ (t.op)[p_1] = "U"
;;                     /\ (t.arg)[p_1] \in NodeSet \X NodeSet
;;                     /\ /\ (t.sigma)[(t.arg)[p_1][1]] = (t.sigma)[u_U[p_1]]
;;                        /\ (t.sigma)[(t.arg)[p_1][2]] = (t.sigma)[v_U[p_1]]
;;                        /\ \/ (t.arg)[p_1][1] = u_U[p_1]
;;                           \/ F[(t.arg)[p_1][1]].bit = 1
;;                           \/ /\ F[(t.arg)[p_1][1]].bit = 0
;;                              /\ \/ F[u_U[p_1]].rank > F[(t.arg)[p_1][1]].rank
;;                                 \/ F[u_U[p_1]].rank = F[(t.arg)[p_1][1]].rank
;;                                    /\ u_U[p_1] >= (t.arg)[p_1][1]
;;                        /\ \/ (t.arg)[p_1][2] = v_U[p_1]
;;                           \/ F[(t.arg)[p_1][2]].bit = 1
;;                           \/ /\ F[(t.arg)[p_1][2]].bit = 0
;;                              /\ \/ F[v_U[p_1]].rank > F[(t.arg)[p_1][2]].rank
;;                                 \/ F[v_U[p_1]].rank = F[(t.arg)[p_1][2]].rank
;;                                    /\ v_U[p_1] >= (t.arg)[p_1][2]
;;                     /\ InvF4All(p_1, t)
;;                     /\ (t.sigma)[c[p_1]] = (t.sigma)[u_U[p_1]])
;;              /\ pc[p_1] = "F4U8"
;;                 => (/\ (t.ret)[p_1] = BOT
;;                     /\ (t.op)[p_1] = "U"
;;                     /\ (t.arg)[p_1] \in NodeSet \X NodeSet
;;                     /\ InvU8All(p_1, t)
;;                     /\ InvF4All(p_1, t)
;;                     /\ (t.sigma)[c[p_1]] = (t.sigma)[v_U[p_1]]) ,
;;        NEW CONSTANT p_1 \in PROCESSES,
;;        NEW CONSTANT t \in ?M#prime,
;;        ?pc#prime[p_1] = "F4U7" 
;; PROVE  /\ (t.sigma)[(t.arg)[p_1][1]] = (t.sigma)[?u_U#prime[p_1]]
;;        /\ (t.sigma)[(t.arg)[p_1][2]] = (t.sigma)[?v_U#prime[p_1]]
;;        /\ \/ (t.arg)[p_1][1] = ?u_U#prime[p_1]
;;           \/ ?F#prime[(t.arg)[p_1][1]].bit = 1
;;           \/ /\ ?F#prime[(t.arg)[p_1][1]].bit = 0
;;              /\ \/ ?F#prime[?u_U#prime[p_1]].rank
;;                    > ?F#prime[(t.arg)[p_1][1]].rank
;;                 \/ ?F#prime[?u_U#prime[p_1]].rank
;;                    = ?F#prime[(t.arg)[p_1][1]].rank
;;                    /\ ?u_U#prime[p_1] >= (t.arg)[p_1][1]
;;        /\ \/ (t.arg)[p_1][2] = ?v_U#prime[p_1]
;;           \/ ?F#prime[(t.arg)[p_1][2]].bit = 1
;;           \/ /\ ?F#prime[(t.arg)[p_1][2]].bit = 0
;;              /\ \/ ?F#prime[?v_U#prime[p_1]].rank
;;                    > ?F#prime[(t.arg)[p_1][2]].rank
;;                 \/ ?F#prime[?v_U#prime[p_1]].rank
;;                    = ?F#prime[(t.arg)[p_1][2]].rank
;;                    /\ ?v_U#prime[p_1] >= (t.arg)[p_1][2]
;; TLA+ Proof Manager 1.4.5 (build 33809)
;; Proof obligation #127
;;   generated from file "/Users/karunram/Desktop/TLAPS/jtunionfind/F1Inv_proof.tla", line 338, characters 11-12

(set-logic UFNIA)
(declare-sort u 0)
(declare-sort str 0)
;; Standard TLA+ operators
(declare-fun int2u (Int) u)
(declare-fun u2int (u) Int)
(declare-fun str2u (str) u)
(declare-fun u2str (u) str)
(declare-fun tla__lt (u u) Bool)
(declare-fun tla__le (u u) Bool)
(declare-fun boolify (u) Bool)
(declare-fun tla__in (u u) Bool)
(declare-fun tla__isAFcn (u) Bool)
(declare-fun tla__DOMAIN (u) u)
(declare-fun tla__fcnapp (u u) u)
(declare-fun tla__unspec (u u) u)

;; Terms, predicates and strings
(declare-fun BOT () u)
(declare-fun F () u)
(declare-fun Inv () u)
(declare-fun InvF4All (u u) u)
(declare-fun InvU2All (u u) u)
(declare-fun InvU8All (u u) u)
(declare-fun M () u)
(declare-fun Next () u)
(declare-fun NodeSet () u)
(declare-fun PROCESSES () u)
(declare-fun a_Fhash_primea () u)
(declare-fun a_Mhash_primea () u)
(declare-fun a_aunde_Fa () u)
(declare-fun a_aunde_Fhash_primea () u)
(declare-fun a_aunde_Ua () u)
(declare-fun a_aunde_Uhash_primea () u)
(declare-fun a_aunde_unde_8a () u)
(declare-fun a_bunde_Fa () u)
(declare-fun a_bunde_Fhash_primea () u)
(declare-fun a_bunde_Ua () u)
(declare-fun a_bunde_Uhash_primea () u)
(declare-fun a_ca () u)
(declare-fun a_chash_primea () u)
(declare-fun a_dhash_primea () u)
(declare-fun a_h14c0a5932541232a01b2e9de8e7f49a () u)
(declare-fun a_h1ef1e69610c58c66ee5436c27a2e53a () u)
(declare-fun a_h3c17892ec704c5c790d6c650bc1169a () u)
(declare-fun a_h4e0910ff04d5282a7607ee7b7eab81a () u)
(declare-fun a_he269618ebe6078075ae33489842a63a () u)
(declare-fun a_pchash_primea () u)
(declare-fun a_punde_1a () u)
(declare-fun a_uunde_Fa () u)
(declare-fun a_uunde_Fhash_primea () u)
(declare-fun a_uunde_Ua () u)
(declare-fun a_uunde_Uhash_primea () u)
(declare-fun a_vunde_Ua () u)
(declare-fun a_vunde_Uhash_primea () u)
(declare-fun d () u)
(declare-fun h20451dbf6bb505ef64a23efc0d6b3f () u)
(declare-fun h46e5ced0ed3f2b9f4026c7a4eba44c () u)
(declare-fun h602df0f4906d91bdcf73ac652471ea () u)
(declare-fun h6d4c4cb96f3fa83008da51bad83fbb () u)
(declare-fun hbf6f3f86ac3e561c1ee154bb0de6ab () u)
(declare-fun hec61390ce29cfa3163e637effefe5f () u)
(declare-fun hf9aeb3897da94c7352f843ff1e508c () u)
(declare-fun p () u)
(declare-fun pc () u)
(declare-fun t () u)
(declare-fun varlist () u)
(declare-fun string__a_x0a () str)
(declare-fun string__F () str)
(declare-fun string__a_F1a () str)
(declare-fun string__a_F1U1a () str)
(declare-fun string__a_F1U2a () str)
(declare-fun string__a_F1U7a () str)
(declare-fun string__a_F1U8a () str)
(declare-fun string__a_F2a () str)
(declare-fun string__a_F2U1a () str)
(declare-fun string__a_F2U2a () str)
(declare-fun string__a_F2U7a () str)
(declare-fun string__a_F2U8a () str)
(declare-fun string__a_F3a () str)
(declare-fun string__a_F3U1a () str)
(declare-fun string__a_F3U2a () str)
(declare-fun string__a_F3U7a () str)
(declare-fun string__a_F3U8a () str)
(declare-fun string__a_F4a () str)
(declare-fun string__a_F4U1a () str)
(declare-fun string__a_F4U2a () str)
(declare-fun string__a_F4U7a () str)
(declare-fun string__a_F4U8a () str)
(declare-fun string__a_F5a () str)
(declare-fun string__a_F5U1a () str)
(declare-fun string__a_F5U2a () str)
(declare-fun string__a_F5U7a () str)
(declare-fun string__a_F5U8a () str)
(declare-fun string__a_F6a () str)
(declare-fun string__a_F6U1a () str)
(declare-fun string__a_F6U2a () str)
(declare-fun string__a_F6U7a () str)
(declare-fun string__a_F6U8a () str)
(declare-fun string__a_F7a () str)
(declare-fun string__a_F7U1a () str)
(declare-fun string__a_F7U2a () str)
(declare-fun string__a_F7U7a () str)
(declare-fun string__a_F7U8a () str)
(declare-fun string__a_F8U1a () str)
(declare-fun string__a_F8U2a () str)
(declare-fun string__a_F8U7a () str)
(declare-fun string__a_F8U8a () str)
(declare-fun string__FR () str)
(declare-fun string__a_FRU1a () str)
(declare-fun string__a_FRU2a () str)
(declare-fun string__a_FRU7a () str)
(declare-fun string__a_FRU8a () str)
(declare-fun string__U () str)
(declare-fun string__a_U1a () str)
(declare-fun string__a_U2a () str)
(declare-fun string__a_U3a () str)
(declare-fun string__a_U4a () str)
(declare-fun string__a_U5a () str)
(declare-fun string__a_U6a () str)
(declare-fun string__a_U7a () str)
(declare-fun string__a_U8a () str)
(declare-fun string__UR () str)
(declare-fun string__arg () str)
(declare-fun string__bit () str)
(declare-fun string__op () str)
(declare-fun string__rank () str)
(declare-fun string__ret () str)
(declare-fun string__sigma () str)

(assert
  (forall ((X_12 Int))
  (! (= (u2int (int2u X_12)) X_12) :pattern ((int2u X_12)))))
(assert
  (forall ((X_12 str))
  (! (= (u2str (str2u X_12)) X_12) :pattern ((str2u X_12)))))
(assert
  (forall ((M_10 Int) (N_11 Int))
  (! (= (tla__lt (int2u M_10) (int2u N_11)) (< M_10 N_11)) :pattern ((tla__lt (int2u M_10) (int2u N_11))))))
(assert
  (forall ((M_10 Int) (N_11 Int))
  (! (= (tla__le (int2u M_10) (int2u N_11)) (<= M_10 N_11)) :pattern ((tla__le (int2u M_10) (int2u N_11))))))
(assert
  (forall ((S_15 u) (T_16 u))
  (=>
  (forall ((X_12 u)) (= (tla__in X_12 S_15) (tla__in X_12 T_16)))
  (= S_15 T_16))))
(assert
  (forall ((F_18 u) (G_19 u))
  (=>
  (and
  (tla__isAFcn F_18) (tla__isAFcn G_19)
  (forall ((X_12 u))
  (= (tla__in X_12 (tla__DOMAIN F_18)) (tla__in X_12 (tla__DOMAIN G_19)))))
  (= (tla__DOMAIN F_18) (tla__DOMAIN G_19)))))
(assert
  (forall ((F_18 u) (G_19 u))
  (=>
  (and
  (tla__isAFcn F_18) (tla__isAFcn G_19)
  (= (tla__DOMAIN F_18) (tla__DOMAIN G_19))
  (forall ((X_12 u))
  (=>
  (tla__in X_12 (tla__DOMAIN G_19))
  (= (tla__fcnapp F_18 X_12) (tla__fcnapp G_19 X_12)))))
  (= F_18 G_19))))
(assert (distinct string__a_x0a string__F string__a_F1a string__a_F1U1a string__a_F1U2a string__a_F1U7a string__a_F1U8a string__a_F2a string__a_F2U1a string__a_F2U2a string__a_F2U7a string__a_F2U8a string__a_F3a string__a_F3U1a string__a_F3U2a string__a_F3U7a string__a_F3U8a string__a_F4a string__a_F4U1a string__a_F4U2a string__a_F4U7a string__a_F4U8a string__a_F5a string__a_F5U1a string__a_F5U2a string__a_F5U7a string__a_F5U8a string__a_F6a string__a_F6U1a string__a_F6U2a string__a_F6U7a string__a_F6U8a string__a_F7a string__a_F7U1a string__a_F7U2a string__a_F7U7a string__a_F7U8a string__a_F8U1a string__a_F8U2a string__a_F8U7a string__a_F8U8a string__FR string__a_FRU1a string__a_FRU2a string__a_FRU7a string__a_FRU8a string__U string__a_U1a string__a_U2a string__a_U3a string__a_U4a string__a_U5a string__a_U6a string__a_U7a string__a_U8a string__UR string__arg string__bit string__op string__rank string__ret string__sigma))

(assert (not
  (and
    (=
      (ite
        (tla__in (str2u string__sigma) (tla__DOMAIN t))
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))))
            (tla__DOMAIN (tla__fcnapp t (str2u string__sigma))))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))))
          (tla__unspec
            (tla__fcnapp t (str2u string__sigma))
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))))))
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))))
            (tla__DOMAIN (tla__unspec t (str2u string__sigma))))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))))
          (tla__unspec
            (tla__unspec t (str2u string__sigma))
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))))))
      (ite
        (tla__in (str2u string__sigma) (tla__DOMAIN t))
        (ite
          (tla__in
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
              (tla__fcnapp a_uunde_Ua a_punde_1a)
              (tla__unspec a_uunde_Ua a_punde_1a))
            (tla__DOMAIN (tla__fcnapp t (str2u string__sigma))))
          (ite
            (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
            (tla__fcnapp
              (tla__fcnapp t (str2u string__sigma))
              (tla__fcnapp a_uunde_Ua a_punde_1a))
            (tla__fcnapp
              (tla__fcnapp t (str2u string__sigma))
              (tla__unspec a_uunde_Ua a_punde_1a)))
          (tla__unspec
            (tla__fcnapp t (str2u string__sigma))
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
              (tla__fcnapp a_uunde_Ua a_punde_1a)
              (tla__unspec a_uunde_Ua a_punde_1a))))
        (ite
          (tla__in
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
              (tla__fcnapp a_uunde_Ua a_punde_1a)
              (tla__unspec a_uunde_Ua a_punde_1a))
            (tla__DOMAIN (tla__unspec t (str2u string__sigma))))
          (ite
            (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
            (tla__fcnapp
              (tla__unspec t (str2u string__sigma))
              (tla__fcnapp a_uunde_Ua a_punde_1a))
            (tla__fcnapp
              (tla__unspec t (str2u string__sigma))
              (tla__unspec a_uunde_Ua a_punde_1a)))
          (tla__unspec
            (tla__unspec t (str2u string__sigma))
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
              (tla__fcnapp a_uunde_Ua a_punde_1a)
              (tla__unspec a_uunde_Ua a_punde_1a))))))
    (=
      (ite
        (tla__in (str2u string__sigma) (tla__DOMAIN t))
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))))
            (tla__DOMAIN (tla__fcnapp t (str2u string__sigma))))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__fcnapp t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))))
          (tla__unspec
            (tla__fcnapp t (str2u string__sigma))
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))))))
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))))
            (tla__DOMAIN (tla__unspec t (str2u string__sigma))))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (tla__fcnapp
                  (tla__unspec t (str2u string__sigma))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))))
          (tla__unspec
            (tla__unspec t (str2u string__sigma))
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))))))
      (ite
        (tla__in (str2u string__sigma) (tla__DOMAIN t))
        (ite
          (tla__in
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
              (tla__fcnapp a_vunde_Ua a_punde_1a)
              (tla__unspec a_vunde_Ua a_punde_1a))
            (tla__DOMAIN (tla__fcnapp t (str2u string__sigma))))
          (ite
            (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
            (tla__fcnapp
              (tla__fcnapp t (str2u string__sigma))
              (tla__fcnapp a_vunde_Ua a_punde_1a))
            (tla__fcnapp
              (tla__fcnapp t (str2u string__sigma))
              (tla__unspec a_vunde_Ua a_punde_1a)))
          (tla__unspec
            (tla__fcnapp t (str2u string__sigma))
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
              (tla__fcnapp a_vunde_Ua a_punde_1a)
              (tla__unspec a_vunde_Ua a_punde_1a))))
        (ite
          (tla__in
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
              (tla__fcnapp a_vunde_Ua a_punde_1a)
              (tla__unspec a_vunde_Ua a_punde_1a))
            (tla__DOMAIN (tla__unspec t (str2u string__sigma))))
          (ite
            (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
            (tla__fcnapp
              (tla__unspec t (str2u string__sigma))
              (tla__fcnapp a_vunde_Ua a_punde_1a))
            (tla__fcnapp
              (tla__unspec t (str2u string__sigma))
              (tla__unspec a_vunde_Ua a_punde_1a)))
          (tla__unspec
            (tla__unspec t (str2u string__sigma))
            (ite
              (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
              (tla__fcnapp a_vunde_Ua a_punde_1a)
              (tla__unspec a_vunde_Ua a_punde_1a))))))
    (or
      (=
        (ite
          (tla__in (str2u string__arg) (tla__DOMAIN t))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 1))
              (tla__unspec
                (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 1)))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 1))
              (tla__unspec
                (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 1))))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 1))
              (tla__unspec
                (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 1)))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 1))
              (tla__unspec
                (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 1)))))
        (ite
          (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
          (tla__fcnapp a_uunde_Ua a_punde_1a)
          (tla__unspec a_uunde_Ua a_punde_1a)))
      (ite
        (tla__in
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 1))
                (tla__unspec
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 1)))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 1))
                (tla__unspec
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 1))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 1))
                (tla__unspec
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 1)))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 1))
                (tla__unspec
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 1)))))
          (tla__DOMAIN F))
        (ite
          (tla__in (str2u string__arg) (tla__DOMAIN t))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1)))))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))))
            (ite
              (tla__in
                (int2u 1)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))) (str2u string__bit)) (int2u 1))))))
        (ite
          (tla__in
            (str2u string__bit)
            (tla__DOMAIN
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))))))
          (=
            (tla__fcnapp
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))) (str2u string__bit)) (int2u 1))
          (=
            (tla__unspec
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))))) (str2u string__bit)) (int2u 1))))
      (and
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1)))
                (ite
                  (tla__in
                    (int2u 1)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 1))))) (tla__DOMAIN F))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))))
              (ite
                (tla__in
                  (int2u 1)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))) (str2u string__bit)) (int2u 0))))))
          (ite
            (tla__in
              (str2u string__bit)
              (tla__DOMAIN
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))))))
            (=
              (tla__fcnapp
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))) (str2u string__bit)) (int2u 0))
            (=
              (tla__unspec
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))))) (str2u string__bit)) (int2u 0))))
        (or
          (tla__lt
            (ite
              (tla__in
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1)))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 1))))) (tla__DOMAIN F))
              (ite
                (tla__in (str2u string__arg) (tla__DOMAIN t))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank)))))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))) (str2u string__rank))))))
              (ite
                (tla__in
                  (str2u string__rank)
                  (tla__DOMAIN
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))))))))
                (tla__fcnapp
                  (tla__unspec
                    F
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN t))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))))) (str2u string__rank))
                (tla__unspec
                  (tla__unspec
                    F
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN t))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 1)))))) (str2u string__rank))))
            (ite
              (tla__in
                (ite
                  (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                  (tla__fcnapp a_uunde_Ua a_punde_1a)
                  (tla__unspec a_uunde_Ua a_punde_1a)) (tla__DOMAIN F))
              (ite
                (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))))
                  (tla__fcnapp
                    (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))
                    (str2u string__rank)))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))))
                  (tla__fcnapp
                    (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))
                    (str2u string__rank))))
              (ite
                (tla__in
                  (str2u string__rank)
                  (tla__DOMAIN
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_1a)
                        (tla__unspec a_uunde_Ua a_punde_1a)))))
                (tla__fcnapp
                  (tla__unspec
                    F
                    (ite
                      (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_1a)
                      (tla__unspec a_uunde_Ua a_punde_1a)))
                  (str2u string__rank))
                (tla__unspec
                  (tla__unspec
                    F
                    (ite
                      (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_1a)
                      (tla__unspec a_uunde_Ua a_punde_1a)))
                  (str2u string__rank)))))
          (and
            (=
              (ite
                (tla__in
                  (ite
                    (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                    (tla__fcnapp a_uunde_Ua a_punde_1a)
                    (tla__unspec a_uunde_Ua a_punde_1a)) (tla__DOMAIN F))
                (ite
                  (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                  (ite
                    (tla__in
                      (str2u string__rank)
                      (tla__DOMAIN
                        (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))))
                    (tla__fcnapp
                      (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))
                      (str2u string__rank))
                    (tla__unspec
                      (tla__fcnapp F (tla__fcnapp a_uunde_Ua a_punde_1a))
                      (str2u string__rank)))
                  (ite
                    (tla__in
                      (str2u string__rank)
                      (tla__DOMAIN
                        (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))))
                    (tla__fcnapp
                      (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))
                      (str2u string__rank))
                    (tla__unspec
                      (tla__fcnapp F (tla__unspec a_uunde_Ua a_punde_1a))
                      (str2u string__rank))))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__unspec
                        F
                        (ite
                          (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_1a)
                          (tla__unspec a_uunde_Ua a_punde_1a)))))
                  (tla__fcnapp
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_1a)
                        (tla__unspec a_uunde_Ua a_punde_1a)))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_1a)
                        (tla__unspec a_uunde_Ua a_punde_1a)))
                    (str2u string__rank))))
              (ite
                (tla__in
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1)))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 1))))) (tla__DOMAIN F))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank)))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))))
                    (ite
                      (tla__in
                        (int2u 1)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))) (str2u string__rank))))))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__unspec
                        F
                        (ite
                          (tla__in (str2u string__arg) (tla__DOMAIN t))
                          (ite
                            (tla__in
                              a_punde_1a
                              (tla__DOMAIN
                                (tla__fcnapp t (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_1a
                              (tla__DOMAIN
                                (tla__unspec t (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 1))))))))
                  (tla__fcnapp
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))))))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 1))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 1))))))
                    (str2u string__rank)))))
            (tla__le
              (ite
                (tla__in (str2u string__arg) (tla__DOMAIN t))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 1))
                    (tla__unspec
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 1)))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 1))
                    (tla__unspec
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 1))))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 1))
                    (tla__unspec
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 1)))
                  (ite
                    (tla__in
                      (int2u 1)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 1))
                    (tla__unspec
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 1)))))
              (ite
                (tla__in a_punde_1a (tla__DOMAIN a_uunde_Ua))
                (tla__fcnapp a_uunde_Ua a_punde_1a)
                (tla__unspec a_uunde_Ua a_punde_1a)))))))
    (or
      (=
        (ite
          (tla__in (str2u string__arg) (tla__DOMAIN t))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 2))
              (tla__unspec
                (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 2)))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 2))
              (tla__unspec
                (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                (int2u 2))))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 2))
              (tla__unspec
                (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 2)))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (tla__fcnapp
                (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 2))
              (tla__unspec
                (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
                (int2u 2)))))
        (ite
          (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
          (tla__fcnapp a_vunde_Ua a_punde_1a)
          (tla__unspec a_vunde_Ua a_punde_1a)))
      (ite
        (tla__in
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 2))
                (tla__unspec
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 2)))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 2))
                (tla__unspec
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a) (int2u 2))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 2))
                (tla__unspec
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 2)))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (tla__fcnapp
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 2))
                (tla__unspec
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a) (int2u 2)))))
          (tla__DOMAIN F))
        (ite
          (tla__in (str2u string__arg) (tla__DOMAIN t))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1)))))
          (ite
            (tla__in
              a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__fcnapp
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))))
            (ite
              (tla__in
                (int2u 2)
                (tla__DOMAIN
                  (tla__unspec
                    (tla__unspec t (str2u string__arg)) a_punde_1a)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1)))
              (ite
                (tla__in
                  (str2u string__bit)
                  (tla__DOMAIN
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))
                (=
                  (tla__unspec
                    (tla__fcnapp
                      F
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))) (str2u string__bit)) (int2u 1))))))
        (ite
          (tla__in
            (str2u string__bit)
            (tla__DOMAIN
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))))))
          (=
            (tla__fcnapp
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))) (str2u string__bit)) (int2u 1))
          (=
            (tla__unspec
              (tla__unspec
                F
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))))) (str2u string__bit)) (int2u 1))))
      (and
        (ite
          (tla__in
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN t))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))
              (ite
                (tla__in
                  a_punde_1a
                  (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2)))
                (ite
                  (tla__in
                    (int2u 2)
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)))
                  (tla__fcnapp
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))
                  (tla__unspec
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)
                    (int2u 2))))) (tla__DOMAIN F))
          (ite
            (tla__in (str2u string__arg) (tla__DOMAIN t))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0)))))
            (ite
              (tla__in
                a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__fcnapp
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))))
              (ite
                (tla__in
                  (int2u 2)
                  (tla__DOMAIN
                    (tla__unspec
                      (tla__unspec t (str2u string__arg)) a_punde_1a)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0)))
                (ite
                  (tla__in
                    (str2u string__bit)
                    (tla__DOMAIN
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))
                  (=
                    (tla__unspec
                      (tla__fcnapp
                        F
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))) (str2u string__bit)) (int2u 0))))))
          (ite
            (tla__in
              (str2u string__bit)
              (tla__DOMAIN
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))))))
            (=
              (tla__fcnapp
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))) (str2u string__bit)) (int2u 0))
            (=
              (tla__unspec
                (tla__unspec
                  F
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))))) (str2u string__bit)) (int2u 0))))
        (or
          (tla__lt
            (ite
              (tla__in
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2)))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (tla__fcnapp
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))
                      (tla__unspec
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)
                        (int2u 2))))) (tla__DOMAIN F))
              (ite
                (tla__in (str2u string__arg) (tla__DOMAIN t))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank)))))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank)))
                    (ite
                      (tla__in
                        (str2u string__rank)
                        (tla__DOMAIN
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))))
                      (tla__fcnapp
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))
                      (tla__unspec
                        (tla__fcnapp
                          F
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))) (str2u string__rank))))))
              (ite
                (tla__in
                  (str2u string__rank)
                  (tla__DOMAIN
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))))))))
                (tla__fcnapp
                  (tla__unspec
                    F
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN t))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))))) (str2u string__rank))
                (tla__unspec
                  (tla__unspec
                    F
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN t))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                            (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_1a
                          (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)
                            (int2u 2)))))) (str2u string__rank))))
            (ite
              (tla__in
                (ite
                  (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                  (tla__fcnapp a_vunde_Ua a_punde_1a)
                  (tla__unspec a_vunde_Ua a_punde_1a)) (tla__DOMAIN F))
              (ite
                (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))))
                  (tla__fcnapp
                    (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))
                    (str2u string__rank)))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))))
                  (tla__fcnapp
                    (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))
                    (str2u string__rank))))
              (ite
                (tla__in
                  (str2u string__rank)
                  (tla__DOMAIN
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_1a)
                        (tla__unspec a_vunde_Ua a_punde_1a)))))
                (tla__fcnapp
                  (tla__unspec
                    F
                    (ite
                      (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_1a)
                      (tla__unspec a_vunde_Ua a_punde_1a)))
                  (str2u string__rank))
                (tla__unspec
                  (tla__unspec
                    F
                    (ite
                      (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_1a)
                      (tla__unspec a_vunde_Ua a_punde_1a)))
                  (str2u string__rank)))))
          (and
            (=
              (ite
                (tla__in
                  (ite
                    (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                    (tla__fcnapp a_vunde_Ua a_punde_1a)
                    (tla__unspec a_vunde_Ua a_punde_1a)) (tla__DOMAIN F))
                (ite
                  (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                  (ite
                    (tla__in
                      (str2u string__rank)
                      (tla__DOMAIN
                        (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))))
                    (tla__fcnapp
                      (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))
                      (str2u string__rank))
                    (tla__unspec
                      (tla__fcnapp F (tla__fcnapp a_vunde_Ua a_punde_1a))
                      (str2u string__rank)))
                  (ite
                    (tla__in
                      (str2u string__rank)
                      (tla__DOMAIN
                        (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))))
                    (tla__fcnapp
                      (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))
                      (str2u string__rank))
                    (tla__unspec
                      (tla__fcnapp F (tla__unspec a_vunde_Ua a_punde_1a))
                      (str2u string__rank))))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__unspec
                        F
                        (ite
                          (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_1a)
                          (tla__unspec a_vunde_Ua a_punde_1a)))))
                  (tla__fcnapp
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_1a)
                        (tla__unspec a_vunde_Ua a_punde_1a)))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__unspec
                      F
                      (ite
                        (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_1a)
                        (tla__unspec a_vunde_Ua a_punde_1a)))
                    (str2u string__rank))))
              (ite
                (tla__in
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN t))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))
                    (ite
                      (tla__in
                        a_punde_1a
                        (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2)))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec t (str2u string__arg)) a_punde_1a)))
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))
                        (tla__unspec
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)
                          (int2u 2))))) (tla__DOMAIN F))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN t))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank)))))
                  (ite
                    (tla__in
                      a_punde_1a
                      (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))))
                    (ite
                      (tla__in
                        (int2u 2)
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec t (str2u string__arg)) a_punde_1a)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank)))
                      (ite
                        (tla__in
                          (str2u string__rank)
                          (tla__DOMAIN
                            (tla__fcnapp
                              F
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))))
                        (tla__fcnapp
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))
                        (tla__unspec
                          (tla__fcnapp
                            F
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))) (str2u string__rank))))))
                (ite
                  (tla__in
                    (str2u string__rank)
                    (tla__DOMAIN
                      (tla__unspec
                        F
                        (ite
                          (tla__in (str2u string__arg) (tla__DOMAIN t))
                          (ite
                            (tla__in
                              a_punde_1a
                              (tla__DOMAIN
                                (tla__fcnapp t (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_1a
                              (tla__DOMAIN
                                (tla__unspec t (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec t (str2u string__arg))
                                    a_punde_1a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a) (int2u 2))))))))
                  (tla__fcnapp
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))))))
                    (str2u string__rank))
                  (tla__unspec
                    (tla__unspec
                      F
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN t))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp t (str2u string__arg))
                                a_punde_1a) (int2u 2))))
                        (ite
                          (tla__in
                            a_punde_1a
                            (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec t (str2u string__arg))
                                  a_punde_1a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec t (str2u string__arg))
                                a_punde_1a) (int2u 2))))))
                    (str2u string__rank)))))
            (tla__le
              (ite
                (tla__in (str2u string__arg) (tla__DOMAIN t))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 2))
                    (tla__unspec
                      (tla__fcnapp
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 2)))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__fcnapp t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 2))
                    (tla__unspec
                      (tla__unspec
                        (tla__fcnapp t (str2u string__arg)) a_punde_1a)
                      (int2u 2))))
                (ite
                  (tla__in
                    a_punde_1a
                    (tla__DOMAIN (tla__unspec t (str2u string__arg))))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__fcnapp
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 2))
                    (tla__unspec
                      (tla__fcnapp
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 2)))
                  (ite
                    (tla__in
                      (int2u 2)
                      (tla__DOMAIN
                        (tla__unspec
                          (tla__unspec t (str2u string__arg)) a_punde_1a)))
                    (tla__fcnapp
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 2))
                    (tla__unspec
                      (tla__unspec
                        (tla__unspec t (str2u string__arg)) a_punde_1a)
                      (int2u 2)))))
              (ite
                (tla__in a_punde_1a (tla__DOMAIN a_vunde_Ua))
                (tla__fcnapp a_vunde_Ua a_punde_1a)
                (tla__unspec a_vunde_Ua a_punde_1a))))))))))
(assert
  (forall ((a_v9a u))
    (! (=
         (tla__in a_v9a a_aunde_unde_8a)
         (or (= a_v9a (int2u 1)) (= a_v9a (int2u 2)))) :pattern ((tla__in
                                                                   a_v9a
                                                                   a_aunde_unde_8a)))))
(assert (boolify Inv))
(assert (or (boolify Next) (= hbf6f3f86ac3e561c1ee154bb0de6ab varlist)))
(assert (tla__in p PROCESSES))
(assert
  (or
    (and
      (ite
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp pc p) (str2u string__a_F1a))
        (= (tla__unspec pc p) (str2u string__a_F1a)))
      (tla__isAFcn a_pchash_primea) (= (tla__DOMAIN pc) PROCESSES)
      (=>
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp a_pchash_primea p) (str2u string__a_F2a)))
      (forall ((a_v1a u))
        (=>
          (and (tla__in a_v1a (tla__DOMAIN pc)) (not (= a_v1a p)))
          (= (tla__fcnapp pc a_v1a) (tla__fcnapp a_pchash_primea a_v1a)))))
    (and
      (ite
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp pc p) (str2u string__a_F1U1a))
        (= (tla__unspec pc p) (str2u string__a_F1U1a)))
      (tla__isAFcn a_pchash_primea) (= (tla__DOMAIN pc) PROCESSES)
      (=>
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp a_pchash_primea p) (str2u string__a_F2U1a)))
      (forall ((a_v2a u))
        (=>
          (and (tla__in a_v2a (tla__DOMAIN pc)) (not (= a_v2a p)))
          (= (tla__fcnapp pc a_v2a) (tla__fcnapp a_pchash_primea a_v2a)))))
    (and
      (ite
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp pc p) (str2u string__a_F1U2a))
        (= (tla__unspec pc p) (str2u string__a_F1U2a)))
      (tla__isAFcn a_pchash_primea) (= (tla__DOMAIN pc) PROCESSES)
      (=>
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp a_pchash_primea p) (str2u string__a_F2U2a)))
      (forall ((a_v3a u))
        (=>
          (and (tla__in a_v3a (tla__DOMAIN pc)) (not (= a_v3a p)))
          (= (tla__fcnapp pc a_v3a) (tla__fcnapp a_pchash_primea a_v3a)))))
    (and
      (ite
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp pc p) (str2u string__a_F1U7a))
        (= (tla__unspec pc p) (str2u string__a_F1U7a)))
      (tla__isAFcn a_pchash_primea) (= (tla__DOMAIN pc) PROCESSES)
      (=>
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp a_pchash_primea p) (str2u string__a_F2U7a)))
      (forall ((a_v4a u))
        (=>
          (and (tla__in a_v4a (tla__DOMAIN pc)) (not (= a_v4a p)))
          (= (tla__fcnapp pc a_v4a) (tla__fcnapp a_pchash_primea a_v4a)))))
    (and
      (ite
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp pc p) (str2u string__a_F1U8a))
        (= (tla__unspec pc p) (str2u string__a_F1U8a)))
      (tla__isAFcn a_pchash_primea) (= (tla__DOMAIN pc) PROCESSES)
      (=>
        (tla__in p (tla__DOMAIN pc))
        (= (tla__fcnapp a_pchash_primea p) (str2u string__a_F2U8a)))
      (forall ((a_v5a u))
        (=>
          (and (tla__in a_v5a (tla__DOMAIN pc)) (not (= a_v5a p)))
          (= (tla__fcnapp pc a_v5a) (tla__fcnapp a_pchash_primea a_v5a)))))))
(assert (tla__isAFcn a_uunde_Fhash_primea))
(assert (= (tla__DOMAIN a_uunde_Fa) (tla__DOMAIN a_uunde_Fhash_primea)))
(assert
  (=>
    (tla__in p (tla__DOMAIN a_uunde_Fhash_primea))
    (ite
      (tla__in p (tla__DOMAIN a_ca))
      (= (tla__fcnapp a_uunde_Fhash_primea p) (tla__fcnapp a_ca p))
      (= (tla__fcnapp a_uunde_Fhash_primea p) (tla__unspec a_ca p)))))
(assert
  (forall ((a_v6a u))
    (=>
      (and
        (tla__in a_v6a (tla__DOMAIN a_uunde_Fhash_primea)) (not (= a_v6a p)))
      (=
        (tla__fcnapp a_uunde_Fa a_v6a)
        (tla__fcnapp a_uunde_Fhash_primea a_v6a)))))
(assert (= a_Fhash_primea F))
(assert (= a_aunde_Fhash_primea a_aunde_Fa))
(assert (= a_bunde_Fhash_primea a_bunde_Fa))
(assert (= a_uunde_Uhash_primea a_uunde_Ua))
(assert (= a_vunde_Uhash_primea a_vunde_Ua))
(assert (= a_aunde_Uhash_primea a_aunde_Ua))
(assert (= a_bunde_Uhash_primea a_bunde_Ua))
(assert (= a_chash_primea a_ca))
(assert (= a_dhash_primea d))
(assert (= a_Mhash_primea M))
(assert (tla__isAFcn a_pchash_primea))
(assert (= (tla__DOMAIN a_pchash_primea) PROCESSES))
(assert
  (forall ((a_v7a u))
    (=>
      (tla__in a_v7a PROCESSES)
      (or
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_x0a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F1U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F1U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F1U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F1U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F2U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F2U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F2U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F2U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F3a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F3U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F3U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F3U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F3U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F4a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F4U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F4U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F4U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F4U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F5a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F5U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F5U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F5U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F5U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F6a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F6U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F6U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F6U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F6U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F7U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F7U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F7U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F7U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F8U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F8U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F8U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_F8U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__FR))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_FRU1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_FRU2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_FRU7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_FRU8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U1a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U2a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U3a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U4a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U5a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U6a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U7a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__a_U8a))
        (= (tla__fcnapp a_pchash_primea a_v7a) (str2u string__UR))))))
(assert (boolify hf9aeb3897da94c7352f843ff1e508c))
(assert (boolify h20451dbf6bb505ef64a23efc0d6b3f))
(assert (boolify h6d4c4cb96f3fa83008da51bad83fbb))
(assert (boolify a_he269618ebe6078075ae33489842a63a))
(assert (boolify a_h3c17892ec704c5c790d6c650bc1169a))
(assert (boolify a_h4e0910ff04d5282a7607ee7b7eab81a))
(assert (boolify hec61390ce29cfa3163e637effefe5f))
(assert (boolify h602df0f4906d91bdcf73ac652471ea))
(assert (boolify a_h1ef1e69610c58c66ee5436c27a2e53a))
(assert (boolify a_h14c0a5932541232a01b2e9de8e7f49a))
(assert (boolify h46e5ced0ed3f2b9f4026c7a4eba44c))
(assert
  (forall ((a_punde_3a u))
    (=>
      (tla__in a_punde_3a PROCESSES)
      (forall ((a_tunde_1a u))
        (=>
          (tla__in a_tunde_1a M)
          (and
            (=>
              (ite
                (tla__in a_punde_3a (tla__DOMAIN pc))
                (= (tla__fcnapp pc a_punde_3a) (str2u string__a_F4a))
                (= (tla__unspec pc a_punde_3a) (str2u string__a_F4a)))
              (and
                (ite
                  (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)))
                (ite
                  (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__F))
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__F)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__F))
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__F))))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__arg))))
                    (tla__in
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_3a) NodeSet)
                    (tla__in
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_3a) NodeSet))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__arg))))
                    (tla__in
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_3a) NodeSet)
                    (tla__in
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_3a) NodeSet)))
                (boolify (InvF4All a_punde_3a a_tunde_1a))))
            (=>
              (ite
                (tla__in a_punde_3a (tla__DOMAIN pc))
                (= (tla__fcnapp pc a_punde_3a) (str2u string__a_F4U1a))
                (= (tla__unspec pc a_punde_3a) (str2u string__a_F4U1a)))
              (and
                (ite
                  (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)))
                (ite
                  (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))))
                (boolify (InvF4All a_punde_3a a_tunde_1a))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a)))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))))))
            (=>
              (ite
                (tla__in a_punde_3a (tla__DOMAIN pc))
                (= (tla__fcnapp pc a_punde_3a) (str2u string__a_F4U2a))
                (= (tla__unspec pc a_punde_3a) (str2u string__a_F4U2a)))
              (and
                (ite
                  (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)))
                (ite
                  (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))))
                (boolify (InvU2All a_punde_3a a_tunde_1a))
                (boolify (InvF4All a_punde_3a a_tunde_1a))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a)))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))))))
            (=>
              (ite
                (tla__in a_punde_3a (tla__DOMAIN pc))
                (= (tla__fcnapp pc a_punde_3a) (str2u string__a_F4U7a))
                (= (tla__unspec pc a_punde_3a) (str2u string__a_F4U7a)))
              (and
                (ite
                  (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)))
                (ite
                  (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__sigma))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))))
                (or
                  (=
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 1)))))
                    (ite
                      (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_3a)
                      (tla__unspec a_uunde_Ua a_punde_3a)))
                  (ite
                    (tla__in
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1)))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 1))))) (tla__DOMAIN F))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1)))))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (str2u string__bit)) (int2u 1))))))
                    (ite
                      (tla__in
                        (str2u string__bit)
                        (tla__DOMAIN
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))))))
                      (=
                        (tla__fcnapp
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))))
                          (str2u string__bit)) (int2u 1))
                      (=
                        (tla__unspec
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))))
                          (str2u string__bit)) (int2u 1))))
                  (and
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1)))
                            (ite
                              (tla__in
                                (int2u 1)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 1))))) (tla__DOMAIN F))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))))
                          (ite
                            (tla__in
                              (int2u 1)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (str2u string__bit)) (int2u 0))))))
                      (ite
                        (tla__in
                          (str2u string__bit)
                          (tla__DOMAIN
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))))))
                        (=
                          (tla__fcnapp
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))))
                            (str2u string__bit)) (int2u 0))
                        (=
                          (tla__unspec
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))))
                            (str2u string__bit)) (int2u 0))))
                    (or
                      (tla__lt
                        (ite
                          (tla__in
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 1)))))
                            (tla__DOMAIN F))
                          (ite
                            (tla__in
                              (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank)))))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (str2u string__rank))))))
                          (ite
                            (tla__in
                              (str2u string__rank)
                              (tla__DOMAIN
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))))))
                            (tla__fcnapp
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    (str2u string__arg)
                                    (tla__DOMAIN a_tunde_1a))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))))))
                              (str2u string__rank))
                            (tla__unspec
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    (str2u string__arg)
                                    (tla__DOMAIN a_tunde_1a))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1)))
                                    (ite
                                      (tla__in
                                        (int2u 1)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 1))))))
                              (str2u string__rank))))
                        (ite
                          (tla__in
                            (ite
                              (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                              (tla__fcnapp a_uunde_Ua a_punde_3a)
                              (tla__unspec a_uunde_Ua a_punde_3a))
                            (tla__DOMAIN F))
                          (ite
                            (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F (tla__fcnapp a_uunde_Ua a_punde_3a))))
                              (tla__fcnapp
                                (tla__fcnapp
                                  F (tla__fcnapp a_uunde_Ua a_punde_3a))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__fcnapp
                                  F (tla__fcnapp a_uunde_Ua a_punde_3a))
                                (str2u string__rank)))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F (tla__unspec a_uunde_Ua a_punde_3a))))
                              (tla__fcnapp
                                (tla__fcnapp
                                  F (tla__unspec a_uunde_Ua a_punde_3a))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__fcnapp
                                  F (tla__unspec a_uunde_Ua a_punde_3a))
                                (str2u string__rank))))
                          (ite
                            (tla__in
                              (str2u string__rank)
                              (tla__DOMAIN
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                    (tla__fcnapp a_uunde_Ua a_punde_3a)
                                    (tla__unspec a_uunde_Ua a_punde_3a)))))
                            (tla__fcnapp
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                  (tla__fcnapp a_uunde_Ua a_punde_3a)
                                  (tla__unspec a_uunde_Ua a_punde_3a)))
                              (str2u string__rank))
                            (tla__unspec
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                  (tla__fcnapp a_uunde_Ua a_punde_3a)
                                  (tla__unspec a_uunde_Ua a_punde_3a)))
                              (str2u string__rank)))))
                      (and
                        (=
                          (ite
                            (tla__in
                              (ite
                                (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                (tla__fcnapp a_uunde_Ua a_punde_3a)
                                (tla__unspec a_uunde_Ua a_punde_3a))
                              (tla__DOMAIN F))
                            (ite
                              (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                              (ite
                                (tla__in
                                  (str2u string__rank)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      F (tla__fcnapp a_uunde_Ua a_punde_3a))))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F (tla__fcnapp a_uunde_Ua a_punde_3a))
                                  (str2u string__rank))
                                (tla__unspec
                                  (tla__fcnapp
                                    F (tla__fcnapp a_uunde_Ua a_punde_3a))
                                  (str2u string__rank)))
                              (ite
                                (tla__in
                                  (str2u string__rank)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      F (tla__unspec a_uunde_Ua a_punde_3a))))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F (tla__unspec a_uunde_Ua a_punde_3a))
                                  (str2u string__rank))
                                (tla__unspec
                                  (tla__fcnapp
                                    F (tla__unspec a_uunde_Ua a_punde_3a))
                                  (str2u string__rank))))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__unspec
                                    F
                                    (ite
                                      (tla__in
                                        a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                      (tla__fcnapp a_uunde_Ua a_punde_3a)
                                      (tla__unspec a_uunde_Ua a_punde_3a)))))
                              (tla__fcnapp
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                    (tla__fcnapp a_uunde_Ua a_punde_3a)
                                    (tla__unspec a_uunde_Ua a_punde_3a)))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_uunde_Ua))
                                    (tla__fcnapp a_uunde_Ua a_punde_3a)
                                    (tla__unspec a_uunde_Ua a_punde_3a)))
                                (str2u string__rank))))
                          (ite
                            (tla__in
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))
                                  (ite
                                    (tla__in
                                      (int2u 1)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 1)))))
                              (tla__DOMAIN F))
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank)))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))))
                                (ite
                                  (tla__in
                                    (int2u 1)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (str2u string__rank))))))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__unspec
                                    F
                                    (ite
                                      (tla__in
                                        (str2u string__arg)
                                        (tla__DOMAIN a_tunde_1a))
                                      (ite
                                        (tla__in
                                          a_punde_3a
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))))
                                        (ite
                                          (tla__in
                                            (int2u 1)
                                            (tla__DOMAIN
                                              (tla__fcnapp
                                                (tla__fcnapp
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))
                                        (ite
                                          (tla__in
                                            (int2u 1)
                                            (tla__DOMAIN
                                              (tla__unspec
                                                (tla__fcnapp
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))))
                                      (ite
                                        (tla__in
                                          a_punde_3a
                                          (tla__DOMAIN
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))))
                                        (ite
                                          (tla__in
                                            (int2u 1)
                                            (tla__DOMAIN
                                              (tla__fcnapp
                                                (tla__unspec
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1)))
                                        (ite
                                          (tla__in
                                            (int2u 1)
                                            (tla__DOMAIN
                                              (tla__unspec
                                                (tla__unspec
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 1))))))))
                              (tla__fcnapp
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1)))
                                      (ite
                                        (tla__in
                                          (int2u 1)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 1))))))
                                (str2u string__rank)))))
                        (tla__le
                          (ite
                            (tla__in
                              (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1))
                                (tla__unspec
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1)))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1))
                                (tla__unspec
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1))))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1))
                                (tla__unspec
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1)))
                              (ite
                                (tla__in
                                  (int2u 1)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1))
                                (tla__unspec
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 1)))))
                          (ite
                            (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                            (tla__fcnapp a_uunde_Ua a_punde_3a)
                            (tla__unspec a_uunde_Ua a_punde_3a)))))))
                (or
                  (=
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_3a) (int2u 2)))))
                    (ite
                      (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_3a)
                      (tla__unspec a_vunde_Ua a_punde_3a)))
                  (ite
                    (tla__in
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))
                            (tla__unspec
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2)))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (tla__fcnapp
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))
                            (tla__unspec
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a) (int2u 2))))) (tla__DOMAIN F))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1)))))
                      (ite
                        (tla__in
                          a_punde_3a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_3a)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1)))
                          (ite
                            (tla__in
                              (str2u string__bit)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (=
                              (tla__fcnapp
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))
                            (=
                              (tla__unspec
                                (tla__fcnapp
                                  F
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (str2u string__bit)) (int2u 1))))))
                    (ite
                      (tla__in
                        (str2u string__bit)
                        (tla__DOMAIN
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))))))
                      (=
                        (tla__fcnapp
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))))
                          (str2u string__bit)) (int2u 1))
                      (=
                        (tla__unspec
                          (tla__unspec
                            F
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))))
                          (str2u string__bit)) (int2u 1))))
                  (and
                    (ite
                      (tla__in
                        (ite
                          (tla__in
                            (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__fcnapp a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))
                          (ite
                            (tla__in
                              a_punde_3a
                              (tla__DOMAIN
                                (tla__unspec a_tunde_1a (str2u string__arg))))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2)))
                            (ite
                              (tla__in
                                (int2u 2)
                                (tla__DOMAIN
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a)))
                              (tla__fcnapp
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))
                              (tla__unspec
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a) (int2u 2))))) (tla__DOMAIN F))
                      (ite
                        (tla__in
                          (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__fcnapp a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0)))))
                        (ite
                          (tla__in
                            a_punde_3a
                            (tla__DOMAIN
                              (tla__unspec a_tunde_1a (str2u string__arg))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__fcnapp
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))))
                          (ite
                            (tla__in
                              (int2u 2)
                              (tla__DOMAIN
                                (tla__unspec
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))
                                  a_punde_3a)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0)))
                            (ite
                              (tla__in
                                (str2u string__bit)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (=
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))
                              (=
                                (tla__unspec
                                  (tla__fcnapp
                                    F
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (str2u string__bit)) (int2u 0))))))
                      (ite
                        (tla__in
                          (str2u string__bit)
                          (tla__DOMAIN
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))))))
                        (=
                          (tla__fcnapp
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))))
                            (str2u string__bit)) (int2u 0))
                        (=
                          (tla__unspec
                            (tla__unspec
                              F
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))))
                            (str2u string__bit)) (int2u 0))))
                    (or
                      (tla__lt
                        (ite
                          (tla__in
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (tla__fcnapp
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2))
                                  (tla__unspec
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a) (int2u 2)))))
                            (tla__DOMAIN F))
                          (ite
                            (tla__in
                              (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank)))))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank)))
                                (ite
                                  (tla__in
                                    (str2u string__rank)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))))
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))
                                  (tla__unspec
                                    (tla__fcnapp
                                      F
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (str2u string__rank))))))
                          (ite
                            (tla__in
                              (str2u string__rank)
                              (tla__DOMAIN
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))))))
                            (tla__fcnapp
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    (str2u string__arg)
                                    (tla__DOMAIN a_tunde_1a))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))))))
                              (str2u string__rank))
                            (tla__unspec
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    (str2u string__arg)
                                    (tla__DOMAIN a_tunde_1a))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))))
                                  (ite
                                    (tla__in
                                      a_punde_3a
                                      (tla__DOMAIN
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2)))
                                    (ite
                                      (tla__in
                                        (int2u 2)
                                        (tla__DOMAIN
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a)))
                                      (tla__fcnapp
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))
                                      (tla__unspec
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a) (int2u 2))))))
                              (str2u string__rank))))
                        (ite
                          (tla__in
                            (ite
                              (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                              (tla__fcnapp a_vunde_Ua a_punde_3a)
                              (tla__unspec a_vunde_Ua a_punde_3a))
                            (tla__DOMAIN F))
                          (ite
                            (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F (tla__fcnapp a_vunde_Ua a_punde_3a))))
                              (tla__fcnapp
                                (tla__fcnapp
                                  F (tla__fcnapp a_vunde_Ua a_punde_3a))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__fcnapp
                                  F (tla__fcnapp a_vunde_Ua a_punde_3a))
                                (str2u string__rank)))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    F (tla__unspec a_vunde_Ua a_punde_3a))))
                              (tla__fcnapp
                                (tla__fcnapp
                                  F (tla__unspec a_vunde_Ua a_punde_3a))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__fcnapp
                                  F (tla__unspec a_vunde_Ua a_punde_3a))
                                (str2u string__rank))))
                          (ite
                            (tla__in
                              (str2u string__rank)
                              (tla__DOMAIN
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                    (tla__fcnapp a_vunde_Ua a_punde_3a)
                                    (tla__unspec a_vunde_Ua a_punde_3a)))))
                            (tla__fcnapp
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                  (tla__fcnapp a_vunde_Ua a_punde_3a)
                                  (tla__unspec a_vunde_Ua a_punde_3a)))
                              (str2u string__rank))
                            (tla__unspec
                              (tla__unspec
                                F
                                (ite
                                  (tla__in
                                    a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                  (tla__fcnapp a_vunde_Ua a_punde_3a)
                                  (tla__unspec a_vunde_Ua a_punde_3a)))
                              (str2u string__rank)))))
                      (and
                        (=
                          (ite
                            (tla__in
                              (ite
                                (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                (tla__fcnapp a_vunde_Ua a_punde_3a)
                                (tla__unspec a_vunde_Ua a_punde_3a))
                              (tla__DOMAIN F))
                            (ite
                              (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                              (ite
                                (tla__in
                                  (str2u string__rank)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      F (tla__fcnapp a_vunde_Ua a_punde_3a))))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F (tla__fcnapp a_vunde_Ua a_punde_3a))
                                  (str2u string__rank))
                                (tla__unspec
                                  (tla__fcnapp
                                    F (tla__fcnapp a_vunde_Ua a_punde_3a))
                                  (str2u string__rank)))
                              (ite
                                (tla__in
                                  (str2u string__rank)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      F (tla__unspec a_vunde_Ua a_punde_3a))))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    F (tla__unspec a_vunde_Ua a_punde_3a))
                                  (str2u string__rank))
                                (tla__unspec
                                  (tla__fcnapp
                                    F (tla__unspec a_vunde_Ua a_punde_3a))
                                  (str2u string__rank))))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__unspec
                                    F
                                    (ite
                                      (tla__in
                                        a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                      (tla__fcnapp a_vunde_Ua a_punde_3a)
                                      (tla__unspec a_vunde_Ua a_punde_3a)))))
                              (tla__fcnapp
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                    (tla__fcnapp a_vunde_Ua a_punde_3a)
                                    (tla__unspec a_vunde_Ua a_punde_3a)))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      a_punde_3a (tla__DOMAIN a_vunde_Ua))
                                    (tla__fcnapp a_vunde_Ua a_punde_3a)
                                    (tla__unspec a_vunde_Ua a_punde_3a)))
                                (str2u string__rank))))
                          (ite
                            (tla__in
                              (ite
                                (tla__in
                                  (str2u string__arg)
                                  (tla__DOMAIN a_tunde_1a))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))))
                                (ite
                                  (tla__in
                                    a_punde_3a
                                    (tla__DOMAIN
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))
                                  (ite
                                    (tla__in
                                      (int2u 2)
                                      (tla__DOMAIN
                                        (tla__unspec
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))
                                          a_punde_3a)))
                                    (tla__fcnapp
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2))
                                    (tla__unspec
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a) (int2u 2)))))
                              (tla__DOMAIN F))
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__fcnapp
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank)))))
                              (ite
                                (tla__in
                                  a_punde_3a
                                  (tla__DOMAIN
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__fcnapp
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))))
                                (ite
                                  (tla__in
                                    (int2u 2)
                                    (tla__DOMAIN
                                      (tla__unspec
                                        (tla__unspec
                                          a_tunde_1a (str2u string__arg))
                                        a_punde_3a)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank)))
                                  (ite
                                    (tla__in
                                      (str2u string__rank)
                                      (tla__DOMAIN
                                        (tla__fcnapp
                                          F
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))))
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))
                                    (tla__unspec
                                      (tla__fcnapp
                                        F
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (str2u string__rank))))))
                            (ite
                              (tla__in
                                (str2u string__rank)
                                (tla__DOMAIN
                                  (tla__unspec
                                    F
                                    (ite
                                      (tla__in
                                        (str2u string__arg)
                                        (tla__DOMAIN a_tunde_1a))
                                      (ite
                                        (tla__in
                                          a_punde_3a
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))))
                                        (ite
                                          (tla__in
                                            (int2u 2)
                                            (tla__DOMAIN
                                              (tla__fcnapp
                                                (tla__fcnapp
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))
                                        (ite
                                          (tla__in
                                            (int2u 2)
                                            (tla__DOMAIN
                                              (tla__unspec
                                                (tla__fcnapp
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))))
                                      (ite
                                        (tla__in
                                          a_punde_3a
                                          (tla__DOMAIN
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))))
                                        (ite
                                          (tla__in
                                            (int2u 2)
                                            (tla__DOMAIN
                                              (tla__fcnapp
                                                (tla__unspec
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))
                                          (tla__unspec
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2)))
                                        (ite
                                          (tla__in
                                            (int2u 2)
                                            (tla__DOMAIN
                                              (tla__unspec
                                                (tla__unspec
                                                  a_tunde_1a
                                                  (str2u string__arg))
                                                a_punde_3a)))
                                          (tla__fcnapp
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))
                                          (tla__unspec
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a) (int2u 2))))))))
                              (tla__fcnapp
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))))
                                (str2u string__rank))
                              (tla__unspec
                                (tla__unspec
                                  F
                                  (ite
                                    (tla__in
                                      (str2u string__arg)
                                      (tla__DOMAIN a_tunde_1a))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__fcnapp
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__fcnapp
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__fcnapp
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))
                                    (ite
                                      (tla__in
                                        a_punde_3a
                                        (tla__DOMAIN
                                          (tla__unspec
                                            a_tunde_1a (str2u string__arg))))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__fcnapp
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__fcnapp
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2)))
                                      (ite
                                        (tla__in
                                          (int2u 2)
                                          (tla__DOMAIN
                                            (tla__unspec
                                              (tla__unspec
                                                a_tunde_1a
                                                (str2u string__arg))
                                              a_punde_3a)))
                                        (tla__fcnapp
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))
                                        (tla__unspec
                                          (tla__unspec
                                            (tla__unspec
                                              a_tunde_1a (str2u string__arg))
                                            a_punde_3a) (int2u 2))))))
                                (str2u string__rank)))))
                        (tla__le
                          (ite
                            (tla__in
                              (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__fcnapp
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2))
                                (tla__unspec
                                  (tla__fcnapp
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2)))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__fcnapp
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2))
                                (tla__unspec
                                  (tla__unspec
                                    (tla__fcnapp
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2))))
                            (ite
                              (tla__in
                                a_punde_3a
                                (tla__DOMAIN
                                  (tla__unspec
                                    a_tunde_1a (str2u string__arg))))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__fcnapp
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2))
                                (tla__unspec
                                  (tla__fcnapp
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2)))
                              (ite
                                (tla__in
                                  (int2u 2)
                                  (tla__DOMAIN
                                    (tla__unspec
                                      (tla__unspec
                                        a_tunde_1a (str2u string__arg))
                                      a_punde_3a)))
                                (tla__fcnapp
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2))
                                (tla__unspec
                                  (tla__unspec
                                    (tla__unspec
                                      a_tunde_1a (str2u string__arg))
                                    a_punde_3a) (int2u 2)))))
                          (ite
                            (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                            (tla__fcnapp a_vunde_Ua a_punde_3a)
                            (tla__unspec a_vunde_Ua a_punde_3a)))))))
                (boolify (InvF4All a_punde_3a a_tunde_1a))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a)))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_uunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_uunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_uunde_Ua))
                          (tla__fcnapp a_uunde_Ua a_punde_3a)
                          (tla__unspec a_uunde_Ua a_punde_3a))))))))
            (=>
              (ite
                (tla__in a_punde_3a (tla__DOMAIN pc))
                (= (tla__fcnapp pc a_punde_3a) (str2u string__a_F4U8a))
                (= (tla__unspec pc a_punde_3a) (str2u string__a_F4U8a)))
              (and
                (ite
                  (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__ret))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__ret))
                        a_punde_3a) BOT)))
                (ite
                  (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__op))))
                    (=
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))
                    (=
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__op))
                        a_punde_3a) (str2u string__U))))
                (ite
                  (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__fcnapp a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__fcnapp a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet)))
                  (ite
                    (tla__in
                      a_punde_3a
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__arg))))
                    (and
                      (tla__isAFcn
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__fcnapp
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))
                    (and
                      (tla__isAFcn
                        (tla__unspec
                          (tla__unspec a_tunde_1a (str2u string__arg))
                          a_punde_3a))
                      (=
                        (tla__DOMAIN
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a)) a_aunde_unde_8a)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 1)) NodeSet)
                      (tla__in
                        (tla__fcnapp
                          (tla__unspec
                            (tla__unspec a_tunde_1a (str2u string__arg))
                            a_punde_3a) (int2u 2)) NodeSet))))
                (boolify (InvU8All a_punde_3a a_tunde_1a))
                (boolify (InvF4All a_punde_3a a_tunde_1a))
                (=
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_ca))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_ca a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_ca a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_ca))
                          (tla__fcnapp a_ca a_punde_3a)
                          (tla__unspec a_ca a_punde_3a)))))
                  (ite
                    (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))
                    (ite
                      (tla__in
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__sigma))))
                      (ite
                        (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp a_vunde_Ua a_punde_3a))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec a_vunde_Ua a_punde_3a)))
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (ite
                          (tla__in a_punde_3a (tla__DOMAIN a_vunde_Ua))
                          (tla__fcnapp a_vunde_Ua a_punde_3a)
                          (tla__unspec a_vunde_Ua a_punde_3a))))))))))))))
(assert (tla__in a_punde_1a PROCESSES))
(assert (tla__in t M))
(assert (= (tla__fcnapp a_pchash_primea a_punde_1a) (str2u string__a_F4U7a)))

(check-sat)
(exit)
