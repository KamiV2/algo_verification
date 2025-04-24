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
;;        /\ /\ pc
;;              \in [PROCESSES ->
;;                     {"0", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "FR",
;;                      "U1", "U2", "U3", "U4", "U5", "U6", "U7", "U8", "UR",
;;                      "F1U1", "F2U1", "F3U1", "F4U1", "F5U1", "F6U1", "F7U1",
;;                      "F8U1", "FRU1", "F1U2", "F2U2", "F3U2", "F4U2", "F5U2",
;;                      "F6U2", "F7U2", "F8U2", "FRU2", "F1U7", "F2U7", "F3U7",
;;                      "F4U7", "F5U7", "F6U7", "F7U7", "F8U7", "FRU7", "F1U8",
;;                      "F2U8", "F3U8", "F4U8", "F5U8", "F6U8", "F7U8", "F8U8",
;;                      "FRU8"}]
;;           /\ Valid_F
;;           /\ Valid_u_F
;;           /\ Valid_a_F
;;           /\ Valid_b_F
;;           /\ Valid_u_U
;;           /\ Valid_v_U
;;           /\ Valid_a_U
;;           /\ Valid_b_U
;;           /\ Valid_c
;;           /\ Valid_d
;;           /\ Valid_M
;;        /\ InvDecide
;;        /\ InvF1
;;        /\ InvF2
;;        /\ InvF3
;;        /\ InvF4
;;        /\ InvF5
;;        /\ InvF6
;;        /\ InvF7
;;        /\ InvFR
;;        /\ InvU1
;;        /\ InvU2
;;        /\ \A p \in PROCESSES :
;;              \A t \in M :
;;                 pc[p] = "U3"
;;                 => (/\ (t.ret)[p] \in {BOT, ACK}
;;                     /\ (t.op)[p] = "U"
;;                     /\ (t.arg)[p] \in NodeSet \X NodeSet
;;                     /\ (t.sigma)[(t.arg)[p][1]] = (t.sigma)[u_U[p]]
;;                     /\ (t.sigma)[(t.arg)[p][2]] = (t.sigma)[v_U[p]]
;;                     /\ (t.ret)[p] = ACK
;;                        => (t.sigma)[u_U[p]] = (t.sigma)[v_U[p]])
;;        /\ InvU4
;;        /\ InvU5
;;        /\ InvU6
;;        /\ InvU7
;;        /\ InvU8
;;        /\ InvUR
;;        /\ SigmaRespectsShared
;;        /\ SharedRespectsSigma
;;        /\ Linearizable ,
;;        Next \/ ?hbf6f3f86ac3e561c1ee154bb0de6ab = varlist ,
;;        NEW CONSTANT p \in PROCESSES,
;;        \/ pc[p] = "FR" /\ ?pc#prime = [pc EXCEPT ![p] = "0"]
;;           /\ ?u_U#prime = u_U
;;           /\ ?M#prime
;;              = {t \in Configs :
;;                   \E told \in M :
;;                      /\ (told.ret)[p] = u_F[p]
;;                      /\ t.sigma = told.sigma
;;                      /\ t.ret = [told.ret EXCEPT ![p] = BOT]
;;                      /\ t.op = [told.op EXCEPT ![p] = BOT]
;;                      /\ t.arg = [told.arg EXCEPT ![p] = BOT]}
;;        \/ pc[p] = "FRU1" /\ ?pc#prime = [pc EXCEPT ![p] = "U2"]
;;           /\ ?u_U#prime = [u_U EXCEPT ![p] = u_F[p]] /\ ?M#prime = M
;;        \/ pc[p] = "FRU2" /\ ?pc#prime = [pc EXCEPT ![p] = "U3"]
;;           /\ ?v_U#prime = [v_U EXCEPT ![p] = u_F[p]] /\ ?M#prime = M
;;        \/ pc[p] = "FRU7" /\ ?pc#prime = [pc EXCEPT ![p] = "U8"]
;;           /\ ?u_U#prime = [u_U EXCEPT ![p] = u_F[p]] /\ ?M#prime = M
;;        \/ pc[p] = "FRU8" /\ ?pc#prime = [pc EXCEPT ![p] = "U3"]
;;           /\ ?v_U#prime = [v_U EXCEPT ![p] = u_F[p]] /\ ?M#prime = M ,
;;        ?pc#prime = [pc EXCEPT ![p] = "0"] ,
;;        ?F#prime = F ,
;;        ?a_F#prime = a_F ,
;;        ?b_F#prime = b_F ,
;;        ?u_F#prime = u_F ,
;;        ?u_U#prime = u_U ,
;;        ?v_U#prime = v_U ,
;;        ?a_U#prime = a_U ,
;;        ?b_U#prime = b_U ,
;;        ?c#prime = c ,
;;        ?d#prime = d ,
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
;;        NEW CONSTANT p_1 \in PROCESSES,
;;        NEW CONSTANT t \in ?M#prime,
;;        ?pc#prime[p_1] = "U3" ,
;;        pc[p] # "FR" 
;; PROVE  /\ (t.ret)[p_1] \in {BOT, ACK}
;;        /\ (t.op)[p_1] = "U"
;;        /\ (t.arg)[p_1] \in NodeSet \X NodeSet
;;        /\ (t.sigma)[(t.arg)[p_1][1]] = (t.sigma)[?u_U#prime[p_1]]
;;        /\ (t.sigma)[(t.arg)[p_1][2]] = (t.sigma)[?v_U#prime[p_1]]
;;        /\ (t.ret)[p_1] = ACK
;;           => (t.sigma)[?u_U#prime[p_1]] = (t.sigma)[?v_U#prime[p_1]]
;; TLA+ Proof Manager 1.4.5 (build 33809)
;; Proof obligation #329
;;   generated from file "/Users/karunram/Desktop/TLAPS/jtunionfind/FRInv_Proof.tla", line 888, characters 9-10

(set-logic UFNIA)
(declare-sort u 0)
(declare-sort str 0)
;; Standard TLA+ operators
(declare-fun int2u (Int) u)
(declare-fun u2int (u) Int)
(declare-fun str2u (str) u)
(declare-fun u2str (u) str)
(declare-fun boolify (u) Bool)
(declare-fun tla__in (u u) Bool)
(declare-fun tla__isAFcn (u) Bool)
(declare-fun tla__DOMAIN (u) u)
(declare-fun tla__fcnapp (u u) u)
(declare-fun tla__unspec (u u) u)

;; Terms, predicates and strings
(declare-fun ACK () u)
(declare-fun BOT () u)
(declare-fun Configs () u)
(declare-fun F () u)
(declare-fun InvDecide () u)
(declare-fun InvFR () u)
(declare-fun InvUR () u)
(declare-fun Linearizable () u)
(declare-fun M () u)
(declare-fun Next () u)
(declare-fun NodeSet () u)
(declare-fun PROCESSES () u)
(declare-fun SharedRespectsSigma () u)
(declare-fun SigmaRespectsShared () u)
(declare-fun a_Fhash_primea () u)
(declare-fun a_InvF1a () u)
(declare-fun a_InvF2a () u)
(declare-fun a_InvF3a () u)
(declare-fun a_InvF4a () u)
(declare-fun a_InvF5a () u)
(declare-fun a_InvF6a () u)
(declare-fun a_InvF7a () u)
(declare-fun a_InvU1a () u)
(declare-fun a_InvU2a () u)
(declare-fun a_InvU4a () u)
(declare-fun a_InvU5a () u)
(declare-fun a_InvU6a () u)
(declare-fun a_InvU7a () u)
(declare-fun a_InvU8a () u)
(declare-fun a_Mhash_primea () u)
(declare-fun a_Validunde_Fa () u)
(declare-fun a_Validunde_Ma () u)
(declare-fun a_Validunde_aunde_Fa () u)
(declare-fun a_Validunde_aunde_Ua () u)
(declare-fun a_Validunde_bunde_Fa () u)
(declare-fun a_Validunde_bunde_Ua () u)
(declare-fun a_Validunde_ca () u)
(declare-fun a_Validunde_da () u)
(declare-fun a_Validunde_uunde_Fa () u)
(declare-fun a_Validunde_uunde_Ua () u)
(declare-fun a_Validunde_vunde_Ua () u)
(declare-fun a_aunde_Fa () u)
(declare-fun a_aunde_Fhash_primea () u)
(declare-fun a_aunde_Ua () u)
(declare-fun a_aunde_Uhash_primea () u)
(declare-fun a_aunde_unde_10a () u)
(declare-fun a_aunde_unde_11a () u)
(declare-fun a_aunde_unde_12a () u)
(declare-fun a_aunde_unde_13a () u)
(declare-fun a_aunde_unde_14a () u)
(declare-fun a_aunde_unde_15a () u)
(declare-fun a_aunde_unde_16a () u)
(declare-fun a_aunde_unde_9a () u)
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
(declare-fun string__op () str)
(declare-fun string__ret () str)
(declare-fun string__sigma () str)

(assert
  (forall ((X_27 Int))
  (! (= (u2int (int2u X_27)) X_27) :pattern ((int2u X_27)))))
(assert
  (forall ((X_27 str))
  (! (= (u2str (str2u X_27)) X_27) :pattern ((str2u X_27)))))
(assert
  (forall ((S_30 u) (T_31 u))
  (=>
  (forall ((X_27 u)) (= (tla__in X_27 S_30) (tla__in X_27 T_31)))
  (= S_30 T_31))))
(assert
  (forall ((F_33 u) (G_34 u))
  (=>
  (and
  (tla__isAFcn F_33) (tla__isAFcn G_34)
  (forall ((X_27 u))
  (= (tla__in X_27 (tla__DOMAIN F_33)) (tla__in X_27 (tla__DOMAIN G_34)))))
  (= (tla__DOMAIN F_33) (tla__DOMAIN G_34)))))
(assert
  (forall ((F_33 u) (G_34 u))
  (=>
  (and
  (tla__isAFcn F_33) (tla__isAFcn G_34)
  (= (tla__DOMAIN F_33) (tla__DOMAIN G_34))
  (forall ((X_27 u))
  (=>
  (tla__in X_27 (tla__DOMAIN G_34))
  (= (tla__fcnapp F_33 X_27) (tla__fcnapp G_34 X_27)))))
  (= F_33 G_34))))
(assert (distinct string__a_x0a string__a_F1a string__a_F1U1a string__a_F1U2a string__a_F1U7a string__a_F1U8a string__a_F2a string__a_F2U1a string__a_F2U2a string__a_F2U7a string__a_F2U8a string__a_F3a string__a_F3U1a string__a_F3U2a string__a_F3U7a string__a_F3U8a string__a_F4a string__a_F4U1a string__a_F4U2a string__a_F4U7a string__a_F4U8a string__a_F5a string__a_F5U1a string__a_F5U2a string__a_F5U7a string__a_F5U8a string__a_F6a string__a_F6U1a string__a_F6U2a string__a_F6U7a string__a_F6U8a string__a_F7a string__a_F7U1a string__a_F7U2a string__a_F7U7a string__a_F7U8a string__a_F8U1a string__a_F8U2a string__a_F8U7a string__a_F8U8a string__FR string__a_FRU1a string__a_FRU2a string__a_FRU7a string__a_FRU8a string__U string__a_U1a string__a_U2a string__a_U3a string__a_U4a string__a_U5a string__a_U6a string__a_U7a string__a_U8a string__UR string__arg string__op string__ret string__sigma))

(assert (not
  (and
    (ite
      (tla__in (str2u string__ret) (tla__DOMAIN t))
      (ite
        (tla__in
          a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__ret))))
        (or
          (=
            (tla__fcnapp (tla__fcnapp t (str2u string__ret)) a_punde_1a) BOT)
          (=
            (tla__fcnapp (tla__fcnapp t (str2u string__ret)) a_punde_1a) ACK))
        (or
          (=
            (tla__unspec (tla__fcnapp t (str2u string__ret)) a_punde_1a) BOT)
          (=
            (tla__unspec (tla__fcnapp t (str2u string__ret)) a_punde_1a) ACK)))
      (ite
        (tla__in
          a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__ret))))
        (or
          (=
            (tla__fcnapp (tla__unspec t (str2u string__ret)) a_punde_1a) BOT)
          (=
            (tla__fcnapp (tla__unspec t (str2u string__ret)) a_punde_1a) ACK))
        (or
          (=
            (tla__unspec (tla__unspec t (str2u string__ret)) a_punde_1a) BOT)
          (=
            (tla__unspec (tla__unspec t (str2u string__ret)) a_punde_1a) ACK))))
    (ite
      (tla__in (str2u string__op) (tla__DOMAIN t))
      (ite
        (tla__in a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__op))))
        (=
          (tla__fcnapp (tla__fcnapp t (str2u string__op)) a_punde_1a)
          (str2u string__U))
        (=
          (tla__unspec (tla__fcnapp t (str2u string__op)) a_punde_1a)
          (str2u string__U)))
      (ite
        (tla__in a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__op))))
        (=
          (tla__fcnapp (tla__unspec t (str2u string__op)) a_punde_1a)
          (str2u string__U))
        (=
          (tla__unspec (tla__unspec t (str2u string__op)) a_punde_1a)
          (str2u string__U))))
    (ite
      (tla__in (str2u string__arg) (tla__DOMAIN t))
      (ite
        (tla__in
          a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__arg))))
        (and
          (tla__isAFcn
            (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a))
          (=
            (tla__DOMAIN
              (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a))
            a_aunde_unde_9a)
          (tla__in
            (tla__fcnapp
              (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
              (int2u 1)) NodeSet)
          (tla__in
            (tla__fcnapp
              (tla__fcnapp (tla__fcnapp t (str2u string__arg)) a_punde_1a)
              (int2u 2)) NodeSet))
        (and
          (tla__isAFcn
            (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a))
          (=
            (tla__DOMAIN
              (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a))
            a_aunde_unde_9a)
          (tla__in
            (tla__fcnapp
              (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
              (int2u 1)) NodeSet)
          (tla__in
            (tla__fcnapp
              (tla__unspec (tla__fcnapp t (str2u string__arg)) a_punde_1a)
              (int2u 2)) NodeSet)))
      (ite
        (tla__in
          a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__arg))))
        (and
          (tla__isAFcn
            (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a))
          (=
            (tla__DOMAIN
              (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a))
            a_aunde_unde_9a)
          (tla__in
            (tla__fcnapp
              (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
              (int2u 1)) NodeSet)
          (tla__in
            (tla__fcnapp
              (tla__fcnapp (tla__unspec t (str2u string__arg)) a_punde_1a)
              (int2u 2)) NodeSet))
        (and
          (tla__isAFcn
            (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a))
          (=
            (tla__DOMAIN
              (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a))
            a_aunde_unde_9a)
          (tla__in
            (tla__fcnapp
              (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
              (int2u 1)) NodeSet)
          (tla__in
            (tla__fcnapp
              (tla__unspec (tla__unspec t (str2u string__arg)) a_punde_1a)
              (int2u 2)) NodeSet))))
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
    (=>
      (ite
        (tla__in (str2u string__ret) (tla__DOMAIN t))
        (ite
          (tla__in
            a_punde_1a (tla__DOMAIN (tla__fcnapp t (str2u string__ret))))
          (=
            (tla__fcnapp (tla__fcnapp t (str2u string__ret)) a_punde_1a) ACK)
          (=
            (tla__unspec (tla__fcnapp t (str2u string__ret)) a_punde_1a) ACK))
        (ite
          (tla__in
            a_punde_1a (tla__DOMAIN (tla__unspec t (str2u string__ret))))
          (=
            (tla__fcnapp (tla__unspec t (str2u string__ret)) a_punde_1a) ACK)
          (=
            (tla__unspec (tla__unspec t (str2u string__ret)) a_punde_1a) ACK)))
      (=
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
                (tla__unspec a_uunde_Ua a_punde_1a)))))
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
                (tla__unspec a_vunde_Ua a_punde_1a))))))))))
(assert (tla__isAFcn a_aunde_unde_13a))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (= (tla__fcnapp a_aunde_unde_13a p) (str2u string__a_x0a)))
(assert
  (forall ((a_v17a u))
    (=>
      (and (tla__in a_v17a PROCESSES) (not (= a_v17a p)))
      (= (tla__fcnapp pc a_v17a) (tla__fcnapp a_aunde_unde_13a a_v17a)))))
(assert (tla__isAFcn a_aunde_unde_14a))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (= (tla__fcnapp a_aunde_unde_14a p) (str2u string__a_U2a)))
(assert
  (forall ((a_v18a u))
    (=>
      (and (tla__in a_v18a PROCESSES) (not (= a_v18a p)))
      (= (tla__fcnapp pc a_v18a) (tla__fcnapp a_aunde_unde_14a a_v18a)))))
(assert (tla__isAFcn a_aunde_unde_15a))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (= (tla__fcnapp a_aunde_unde_15a p) (str2u string__a_U3a)))
(assert
  (forall ((a_v19a u))
    (=>
      (and (tla__in a_v19a PROCESSES) (not (= a_v19a p)))
      (= (tla__fcnapp pc a_v19a) (tla__fcnapp a_aunde_unde_15a a_v19a)))))
(assert (tla__isAFcn a_aunde_unde_16a))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (= (tla__fcnapp a_aunde_unde_16a p) (str2u string__a_U8a)))
(assert
  (forall ((a_v20a u))
    (=>
      (and (tla__in a_v20a PROCESSES) (not (= a_v20a p)))
      (= (tla__fcnapp pc a_v20a) (tla__fcnapp a_aunde_unde_16a a_v20a)))))
(assert
  (forall ((a_v21a u))
    (! (=
         (tla__in a_v21a a_aunde_unde_9a)
         (or (= a_v21a (int2u 1)) (= a_v21a (int2u 2)))) :pattern ((tla__in
                                                                    a_v21a
                                                                    a_aunde_unde_9a)))))
(assert (tla__isAFcn pc))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert
  (forall ((a_v1a u))
    (=>
      (tla__in a_v1a PROCESSES)
      (or
        (= (tla__fcnapp pc a_v1a) (str2u string__a_x0a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F1U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F1U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F1U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F1U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F2U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F2U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F2U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F2U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F3a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F3U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F3U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F3U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F3U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F4a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F4U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F4U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F4U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F4U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F5a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F5U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F5U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F5U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F5U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F6a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F6U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F6U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F6U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F6U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F7U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F7U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F7U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F7U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F8U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F8U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F8U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_F8U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__FR))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_FRU1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_FRU2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_FRU7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_FRU8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U1a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U2a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U3a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U4a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U5a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U6a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U7a))
        (= (tla__fcnapp pc a_v1a) (str2u string__a_U8a))
        (= (tla__fcnapp pc a_v1a) (str2u string__UR))))))
(assert (boolify a_Validunde_Fa))
(assert (boolify a_Validunde_uunde_Fa))
(assert (boolify a_Validunde_aunde_Fa))
(assert (boolify a_Validunde_bunde_Fa))
(assert (boolify a_Validunde_uunde_Ua))
(assert (boolify a_Validunde_vunde_Ua))
(assert (boolify a_Validunde_aunde_Ua))
(assert (boolify a_Validunde_bunde_Ua))
(assert (boolify a_Validunde_ca))
(assert (boolify a_Validunde_da))
(assert (boolify a_Validunde_Ma))
(assert (boolify InvDecide))
(assert (boolify a_InvF1a))
(assert (boolify a_InvF2a))
(assert (boolify a_InvF3a))
(assert (boolify a_InvF4a))
(assert (boolify a_InvF5a))
(assert (boolify a_InvF6a))
(assert (boolify a_InvF7a))
(assert (boolify InvFR))
(assert (boolify a_InvU1a))
(assert (boolify a_InvU2a))
(assert
  (forall ((a_punde_2a u))
    (=>
      (tla__in a_punde_2a PROCESSES)
      (forall ((a_tunde_1a u))
        (=>
          (and
            (tla__in a_tunde_1a M)
            (= (tla__fcnapp pc a_punde_2a) (str2u string__a_U3a)))
          (and
            (ite
              (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__fcnapp a_tunde_1a (str2u string__ret))))
                (or
                  (=
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    BOT)
                  (=
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK))
                (or
                  (=
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    BOT)
                  (=
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK)))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__unspec a_tunde_1a (str2u string__ret))))
                (or
                  (=
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    BOT)
                  (=
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK))
                (or
                  (=
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    BOT)
                  (=
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK))))
            (ite
              (tla__in (str2u string__op) (tla__DOMAIN a_tunde_1a))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__fcnapp a_tunde_1a (str2u string__op))))
                (=
                  (tla__fcnapp
                    (tla__fcnapp a_tunde_1a (str2u string__op)) a_punde_2a)
                  (str2u string__U))
                (=
                  (tla__unspec
                    (tla__fcnapp a_tunde_1a (str2u string__op)) a_punde_2a)
                  (str2u string__U)))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__unspec a_tunde_1a (str2u string__op))))
                (=
                  (tla__fcnapp
                    (tla__unspec a_tunde_1a (str2u string__op)) a_punde_2a)
                  (str2u string__U))
                (=
                  (tla__unspec
                    (tla__unspec a_tunde_1a (str2u string__op)) a_punde_2a)
                  (str2u string__U))))
            (ite
              (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__fcnapp a_tunde_1a (str2u string__arg))))
                (and
                  (tla__isAFcn
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__arg)) a_punde_2a))
                  (=
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a)) a_aunde_unde_9a)
                  (tla__in
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 1)) NodeSet)
                  (tla__in
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 2)) NodeSet))
                (and
                  (tla__isAFcn
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__arg)) a_punde_2a))
                  (=
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a)) a_aunde_unde_9a)
                  (tla__in
                    (tla__fcnapp
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 1)) NodeSet)
                  (tla__in
                    (tla__fcnapp
                      (tla__unspec
                        (tla__fcnapp a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 2)) NodeSet)))
              (ite
                (tla__in
                  a_punde_2a
                  (tla__DOMAIN (tla__unspec a_tunde_1a (str2u string__arg))))
                (and
                  (tla__isAFcn
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__arg)) a_punde_2a))
                  (=
                    (tla__DOMAIN
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a)) a_aunde_unde_9a)
                  (tla__in
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 1)) NodeSet)
                  (tla__in
                    (tla__fcnapp
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 2)) NodeSet))
                (and
                  (tla__isAFcn
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__arg)) a_punde_2a))
                  (=
                    (tla__DOMAIN
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a)) a_aunde_unde_9a)
                  (tla__in
                    (tla__fcnapp
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 1)) NodeSet)
                  (tla__in
                    (tla__fcnapp
                      (tla__unspec
                        (tla__unspec a_tunde_1a (str2u string__arg))
                        a_punde_2a) (int2u 2)) NodeSet))))
            (=
              (ite
                (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                (ite
                  (tla__in
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))))
                    (tla__DOMAIN
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))))
                  (tla__unspec
                    (tla__fcnapp a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))))))
                (ite
                  (tla__in
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))))
                    (tla__DOMAIN
                      (tla__unspec a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          (int2u 1)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))))
                  (tla__unspec
                    (tla__unspec a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1)))
                        (ite
                          (tla__in
                            (int2u 1)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 1))))))))
              (ite
                (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                (ite
                  (tla__in
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_2a)
                      (tla__unspec a_uunde_Ua a_punde_2a))
                    (tla__DOMAIN
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (tla__fcnapp a_uunde_Ua a_punde_2a))
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (tla__unspec a_uunde_Ua a_punde_2a)))
                  (tla__unspec
                    (tla__fcnapp a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_2a)
                      (tla__unspec a_uunde_Ua a_punde_2a))))
                (ite
                  (tla__in
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_2a)
                      (tla__unspec a_uunde_Ua a_punde_2a))
                    (tla__DOMAIN
                      (tla__unspec a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (tla__fcnapp a_uunde_Ua a_punde_2a))
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (tla__unspec a_uunde_Ua a_punde_2a)))
                  (tla__unspec
                    (tla__unspec a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp a_uunde_Ua a_punde_2a)
                      (tla__unspec a_uunde_Ua a_punde_2a))))))
            (=
              (ite
                (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                (ite
                  (tla__in
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))))
                    (tla__DOMAIN
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__fcnapp a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))))
                  (tla__unspec
                    (tla__fcnapp a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))))))
                (ite
                  (tla__in
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))))
                    (tla__DOMAIN
                      (tla__unspec a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__fcnapp a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))))
                    (ite
                      (tla__in
                        a_punde_2a
                        (tla__DOMAIN
                          (tla__unspec a_tunde_1a (str2u string__arg))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          (int2u 2)
                          (tla__DOMAIN
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (tla__fcnapp
                          (tla__unspec a_tunde_1a (str2u string__sigma))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))))
                  (tla__unspec
                    (tla__unspec a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_tunde_1a))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__fcnapp a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__fcnapp a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__fcnapp a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))
                      (ite
                        (tla__in
                          a_punde_2a
                          (tla__DOMAIN
                            (tla__unspec a_tunde_1a (str2u string__arg))))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__fcnapp
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__fcnapp
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2)))
                        (ite
                          (tla__in
                            (int2u 2)
                            (tla__DOMAIN
                              (tla__unspec
                                (tla__unspec a_tunde_1a (str2u string__arg))
                                a_punde_2a)))
                          (tla__fcnapp
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))
                          (tla__unspec
                            (tla__unspec
                              (tla__unspec a_tunde_1a (str2u string__arg))
                              a_punde_2a) (int2u 2))))))))
              (ite
                (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                (ite
                  (tla__in
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_2a)
                      (tla__unspec a_vunde_Ua a_punde_2a))
                    (tla__DOMAIN
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (tla__fcnapp a_vunde_Ua a_punde_2a))
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (tla__unspec a_vunde_Ua a_punde_2a)))
                  (tla__unspec
                    (tla__fcnapp a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_2a)
                      (tla__unspec a_vunde_Ua a_punde_2a))))
                (ite
                  (tla__in
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_2a)
                      (tla__unspec a_vunde_Ua a_punde_2a))
                    (tla__DOMAIN
                      (tla__unspec a_tunde_1a (str2u string__sigma))))
                  (ite
                    (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (tla__fcnapp a_vunde_Ua a_punde_2a))
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (tla__unspec a_vunde_Ua a_punde_2a)))
                  (tla__unspec
                    (tla__unspec a_tunde_1a (str2u string__sigma))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp a_vunde_Ua a_punde_2a)
                      (tla__unspec a_vunde_Ua a_punde_2a))))))
            (=>
              (ite
                (tla__in (str2u string__ret) (tla__DOMAIN a_tunde_1a))
                (ite
                  (tla__in
                    a_punde_2a
                    (tla__DOMAIN
                      (tla__fcnapp a_tunde_1a (str2u string__ret))))
                  (=
                    (tla__fcnapp
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK)
                  (=
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK))
                (ite
                  (tla__in
                    a_punde_2a
                    (tla__DOMAIN
                      (tla__unspec a_tunde_1a (str2u string__ret))))
                  (=
                    (tla__fcnapp
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK)
                  (=
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__ret)) a_punde_2a)
                    ACK)))
              (=
                (ite
                  (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_2a)
                        (tla__unspec a_uunde_Ua a_punde_2a))
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (tla__fcnapp a_uunde_Ua a_punde_2a))
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (tla__unspec a_uunde_Ua a_punde_2a)))
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_2a)
                        (tla__unspec a_uunde_Ua a_punde_2a))))
                  (ite
                    (tla__in
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_2a)
                        (tla__unspec a_uunde_Ua a_punde_2a))
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__sigma))))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (tla__fcnapp a_uunde_Ua a_punde_2a))
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (tla__unspec a_uunde_Ua a_punde_2a)))
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_uunde_Ua))
                        (tla__fcnapp a_uunde_Ua a_punde_2a)
                        (tla__unspec a_uunde_Ua a_punde_2a)))))
                (ite
                  (tla__in (str2u string__sigma) (tla__DOMAIN a_tunde_1a))
                  (ite
                    (tla__in
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_2a)
                        (tla__unspec a_vunde_Ua a_punde_2a))
                      (tla__DOMAIN
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (tla__fcnapp a_vunde_Ua a_punde_2a))
                      (tla__fcnapp
                        (tla__fcnapp a_tunde_1a (str2u string__sigma))
                        (tla__unspec a_vunde_Ua a_punde_2a)))
                    (tla__unspec
                      (tla__fcnapp a_tunde_1a (str2u string__sigma))
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_2a)
                        (tla__unspec a_vunde_Ua a_punde_2a))))
                  (ite
                    (tla__in
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_2a)
                        (tla__unspec a_vunde_Ua a_punde_2a))
                      (tla__DOMAIN
                        (tla__unspec a_tunde_1a (str2u string__sigma))))
                    (ite
                      (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (tla__fcnapp a_vunde_Ua a_punde_2a))
                      (tla__fcnapp
                        (tla__unspec a_tunde_1a (str2u string__sigma))
                        (tla__unspec a_vunde_Ua a_punde_2a)))
                    (tla__unspec
                      (tla__unspec a_tunde_1a (str2u string__sigma))
                      (ite
                        (tla__in a_punde_2a (tla__DOMAIN a_vunde_Ua))
                        (tla__fcnapp a_vunde_Ua a_punde_2a)
                        (tla__unspec a_vunde_Ua a_punde_2a)))))))))))))
(assert (boolify a_InvU4a))
(assert (boolify a_InvU5a))
(assert (boolify a_InvU6a))
(assert (boolify a_InvU7a))
(assert (boolify a_InvU8a))
(assert (boolify InvUR))
(assert (boolify SigmaRespectsShared))
(assert (boolify SharedRespectsSigma))
(assert (boolify Linearizable))
(assert (or (boolify Next) (= hbf6f3f86ac3e561c1ee154bb0de6ab varlist)))
(assert (tla__in p PROCESSES))
(assert
  (or
    (and
      (= (tla__fcnapp pc p) (str2u string__FR))
      (forall ((a_v2a u))
        (=
          (tla__in a_v2a a_Mhash_primea)
          (and
            (tla__in a_v2a Configs)
            (exists ((told u))
              (forall
                ((a_aunde_unde_10a u) (a_aunde_unde_11a u) (a_aunde_unde_12a u))
                (=>
                  (and
                    (tla__isAFcn a_aunde_unde_12a)
                    (=
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN told))
                        (tla__DOMAIN (tla__fcnapp told (str2u string__arg)))
                        (tla__DOMAIN (tla__unspec told (str2u string__arg))))
                      (tla__DOMAIN a_aunde_unde_12a))
                    (=>
                      (ite
                        (tla__in (str2u string__arg) (tla__DOMAIN told))
                        (tla__in
                          p
                          (tla__DOMAIN
                            (tla__fcnapp told (str2u string__arg))))
                        (tla__in
                          p
                          (tla__DOMAIN
                            (tla__unspec told (str2u string__arg)))))
                      (= (tla__fcnapp a_aunde_unde_12a p) BOT))
                    (forall ((a_v22a u))
                      (=>
                        (and
                          (ite
                            (tla__in (str2u string__arg) (tla__DOMAIN told))
                            (tla__in
                              a_v22a
                              (tla__DOMAIN
                                (tla__fcnapp told (str2u string__arg))))
                            (tla__in
                              a_v22a
                              (tla__DOMAIN
                                (tla__unspec told (str2u string__arg)))))
                          (not (= a_v22a p)))
                        (=
                          (tla__fcnapp
                            (ite
                              (tla__in
                                (str2u string__arg) (tla__DOMAIN told))
                              (tla__fcnapp told (str2u string__arg))
                              (tla__unspec told (str2u string__arg))) a_v22a)
                          (tla__fcnapp a_aunde_unde_12a a_v22a))))
                    (tla__isAFcn a_aunde_unde_10a)
                    (=
                      (ite
                        (tla__in (str2u string__ret) (tla__DOMAIN told))
                        (tla__DOMAIN (tla__fcnapp told (str2u string__ret)))
                        (tla__DOMAIN (tla__unspec told (str2u string__ret))))
                      (tla__DOMAIN a_aunde_unde_10a))
                    (=>
                      (ite
                        (tla__in (str2u string__ret) (tla__DOMAIN told))
                        (tla__in
                          p
                          (tla__DOMAIN
                            (tla__fcnapp told (str2u string__ret))))
                        (tla__in
                          p
                          (tla__DOMAIN
                            (tla__unspec told (str2u string__ret)))))
                      (= (tla__fcnapp a_aunde_unde_10a p) BOT))
                    (forall ((a_v23a u))
                      (=>
                        (and
                          (ite
                            (tla__in (str2u string__ret) (tla__DOMAIN told))
                            (tla__in
                              a_v23a
                              (tla__DOMAIN
                                (tla__fcnapp told (str2u string__ret))))
                            (tla__in
                              a_v23a
                              (tla__DOMAIN
                                (tla__unspec told (str2u string__ret)))))
                          (not (= a_v23a p)))
                        (=
                          (tla__fcnapp
                            (ite
                              (tla__in
                                (str2u string__ret) (tla__DOMAIN told))
                              (tla__fcnapp told (str2u string__ret))
                              (tla__unspec told (str2u string__ret))) a_v23a)
                          (tla__fcnapp a_aunde_unde_10a a_v23a))))
                    (tla__isAFcn a_aunde_unde_11a)
                    (=
                      (ite
                        (tla__in (str2u string__op) (tla__DOMAIN told))
                        (tla__DOMAIN (tla__fcnapp told (str2u string__op)))
                        (tla__DOMAIN (tla__unspec told (str2u string__op))))
                      (tla__DOMAIN a_aunde_unde_11a))
                    (=>
                      (ite
                        (tla__in (str2u string__op) (tla__DOMAIN told))
                        (tla__in
                          p
                          (tla__DOMAIN (tla__fcnapp told (str2u string__op))))
                        (tla__in
                          p
                          (tla__DOMAIN (tla__unspec told (str2u string__op)))))
                      (= (tla__fcnapp a_aunde_unde_11a p) BOT))
                    (forall ((a_v24a u))
                      (=>
                        (and
                          (ite
                            (tla__in (str2u string__op) (tla__DOMAIN told))
                            (tla__in
                              a_v24a
                              (tla__DOMAIN
                                (tla__fcnapp told (str2u string__op))))
                            (tla__in
                              a_v24a
                              (tla__DOMAIN
                                (tla__unspec told (str2u string__op)))))
                          (not (= a_v24a p)))
                        (=
                          (tla__fcnapp
                            (ite
                              (tla__in (str2u string__op) (tla__DOMAIN told))
                              (tla__fcnapp told (str2u string__op))
                              (tla__unspec told (str2u string__op))) a_v24a)
                          (tla__fcnapp a_aunde_unde_11a a_v24a)))))
                  (and
                    (tla__in told M)
                    (=
                      (ite
                        (tla__in (str2u string__ret) (tla__DOMAIN told))
                        (ite
                          (tla__in
                            p
                            (tla__DOMAIN
                              (tla__fcnapp told (str2u string__ret))))
                          (tla__fcnapp
                            (tla__fcnapp told (str2u string__ret)) p)
                          (tla__unspec
                            (tla__fcnapp told (str2u string__ret)) p))
                        (ite
                          (tla__in
                            p
                            (tla__DOMAIN
                              (tla__unspec told (str2u string__ret))))
                          (tla__fcnapp
                            (tla__unspec told (str2u string__ret)) p)
                          (tla__unspec
                            (tla__unspec told (str2u string__ret)) p)))
                      (ite
                        (tla__in p (tla__DOMAIN a_uunde_Fa))
                        (tla__fcnapp a_uunde_Fa p) (tla__unspec a_uunde_Fa p)))
                    (=
                      (ite
                        (tla__in (str2u string__sigma) (tla__DOMAIN a_v2a))
                        (tla__fcnapp a_v2a (str2u string__sigma))
                        (tla__unspec a_v2a (str2u string__sigma)))
                      (ite
                        (tla__in (str2u string__sigma) (tla__DOMAIN told))
                        (tla__fcnapp told (str2u string__sigma))
                        (tla__unspec told (str2u string__sigma))))
                    (ite
                      (tla__in (str2u string__ret) (tla__DOMAIN a_v2a))
                      (=
                        (tla__fcnapp a_v2a (str2u string__ret))
                        a_aunde_unde_10a)
                      (=
                        (tla__unspec a_v2a (str2u string__ret))
                        a_aunde_unde_10a))
                    (ite
                      (tla__in (str2u string__op) (tla__DOMAIN a_v2a))
                      (=
                        (tla__fcnapp a_v2a (str2u string__op))
                        a_aunde_unde_11a)
                      (=
                        (tla__unspec a_v2a (str2u string__op))
                        a_aunde_unde_11a))
                    (ite
                      (tla__in (str2u string__arg) (tla__DOMAIN a_v2a))
                      (=
                        (tla__fcnapp a_v2a (str2u string__arg))
                        a_aunde_unde_12a)
                      (=
                        (tla__unspec a_v2a (str2u string__arg))
                        a_aunde_unde_12a))))))))))
    (and
      (= (tla__fcnapp pc p) (str2u string__a_FRU1a))
      (= a_aunde_unde_13a a_aunde_unde_14a) (tla__isAFcn a_uunde_Ua)
      (=>
        (tla__in p (tla__DOMAIN a_uunde_Ua))
        (ite
          (tla__in p (tla__DOMAIN a_uunde_Fa))
          (= (tla__fcnapp a_uunde_Ua p) (tla__fcnapp a_uunde_Fa p))
          (= (tla__fcnapp a_uunde_Ua p) (tla__unspec a_uunde_Fa p))))
      (= a_Mhash_primea M))
    (and
      (= (tla__fcnapp pc p) (str2u string__a_FRU2a))
      (= a_aunde_unde_13a a_aunde_unde_15a) (tla__isAFcn a_vunde_Ua)
      (=>
        (tla__in p (tla__DOMAIN a_vunde_Ua))
        (ite
          (tla__in p (tla__DOMAIN a_uunde_Fa))
          (= (tla__fcnapp a_vunde_Ua p) (tla__fcnapp a_uunde_Fa p))
          (= (tla__fcnapp a_vunde_Ua p) (tla__unspec a_uunde_Fa p))))
      (= a_Mhash_primea M))
    (and
      (= (tla__fcnapp pc p) (str2u string__a_FRU7a))
      (= a_aunde_unde_13a a_aunde_unde_16a) (tla__isAFcn a_uunde_Ua)
      (=>
        (tla__in p (tla__DOMAIN a_uunde_Ua))
        (ite
          (tla__in p (tla__DOMAIN a_uunde_Fa))
          (= (tla__fcnapp a_uunde_Ua p) (tla__fcnapp a_uunde_Fa p))
          (= (tla__fcnapp a_uunde_Ua p) (tla__unspec a_uunde_Fa p))))
      (= a_Mhash_primea M))
    (and
      (= (tla__fcnapp pc p) (str2u string__a_FRU8a))
      (= a_aunde_unde_13a a_aunde_unde_15a) (tla__isAFcn a_vunde_Ua)
      (=>
        (tla__in p (tla__DOMAIN a_vunde_Ua))
        (ite
          (tla__in p (tla__DOMAIN a_uunde_Fa))
          (= (tla__fcnapp a_vunde_Ua p) (tla__fcnapp a_uunde_Fa p))
          (= (tla__fcnapp a_vunde_Ua p) (tla__unspec a_uunde_Fa p))))
      (= a_Mhash_primea M))))
(assert (tla__isAFcn a_pchash_primea))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (= (tla__fcnapp a_pchash_primea p) (str2u string__a_x0a)))
(assert
  (forall ((a_v7a u))
    (=>
      (and (tla__in a_v7a PROCESSES) (not (= a_v7a p)))
      (= (tla__fcnapp pc a_v7a) (tla__fcnapp a_pchash_primea a_v7a)))))
(assert (= a_Fhash_primea F))
(assert (= a_aunde_Fhash_primea a_aunde_Fa))
(assert (= a_bunde_Fhash_primea a_bunde_Fa))
(assert (= a_uunde_Fhash_primea a_uunde_Fa))
(assert (= a_uunde_Uhash_primea a_uunde_Ua))
(assert (= a_vunde_Uhash_primea a_vunde_Ua))
(assert (= a_aunde_Uhash_primea a_aunde_Ua))
(assert (= a_bunde_Uhash_primea a_bunde_Ua))
(assert (= a_chash_primea a_ca))
(assert (= a_dhash_primea d))
(assert (tla__isAFcn pc))
(assert (= (tla__DOMAIN pc) PROCESSES))
(assert (tla__in p PROCESSES))
(assert
  (forall ((a_v8a u))
    (=>
      (and (tla__in a_v8a PROCESSES) (not (= a_v8a p)))
      (or
        (= (tla__fcnapp pc a_v8a) (str2u string__a_x0a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F1U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F1U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F1U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F1U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F2U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F2U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F2U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F2U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F3a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F3U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F3U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F3U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F3U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F4a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F4U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F4U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F4U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F4U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F5a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F5U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F5U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F5U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F5U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F6a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F6U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F6U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F6U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F6U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F7U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F7U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F7U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F7U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F8U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F8U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F8U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_F8U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__FR))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_FRU1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_FRU2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_FRU7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_FRU8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U1a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U2a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U3a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U4a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U5a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U6a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U7a))
        (= (tla__fcnapp pc a_v8a) (str2u string__a_U8a))
        (= (tla__fcnapp pc a_v8a) (str2u string__UR))))))
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
(assert (tla__in a_punde_1a PROCESSES))
(assert (tla__in t a_Mhash_primea))
(assert
  (ite
    (= a_punde_1a p) false
    (= (tla__fcnapp pc a_punde_1a) (str2u string__a_U3a))))
(assert (not (= (tla__fcnapp pc p) (str2u string__FR))))

(check-sat)
(exit)
