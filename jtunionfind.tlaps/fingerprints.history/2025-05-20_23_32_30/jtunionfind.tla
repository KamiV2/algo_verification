---------------------------- MODULE jtunionfind ----------------------------

\* Main module file. See Linearizability.tla for the proof of linearizability.

EXTENDS Implementation, TypeSafety, Inv, Lemmas, FiniteSetTheorems, Linearizability

SLEquivalent == \A s, t \in M: s = t

THEOREM InitSLPrelim == Init => SLEquivalent
    BY DEF Init, SLEquivalent

THEOREM NextSLPrelim == Inv /\ SLEquivalent /\ [Next]_varlist => SLEquivalent'
  <1> SUFFICES ASSUME Inv,
                      SLEquivalent,
                      [Next]_varlist
               PROVE  SLEquivalent'
    OBVIOUS
  <1> TypeOK /\ TypeOK'
    BY NextTypeOK DEF Inv
  <1>1. ASSUME NEW p \in PROCESSES,
               F1(p)
        PROVE  SLEquivalent'
    BY <1>1 DEF SLEquivalent, F1, Inv, TypeOK
  <1>2. ASSUME NEW p \in PROCESSES,
               F2(p)
        PROVE  SLEquivalent'
    <2> USE <1>2 DEF F2
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: told.ret[p] = BOT /\ told.arg[p] \in NodeSet
            BY DEF Inv, InvF2, Linearizable
        <3>1. told  \in Configs   
            BY DEF TypeOK, Valid_M  
        <3> M' = {t \in Configs :   /\ (told.ret)[p] = BOT /\ t.sigma = told.sigma
                                    /\ t.ret = [told.ret EXCEPT ![p] = (told.sigma)[(told.arg)[p]]]
                                    /\ t.op = told.op 
                                    /\ t.arg = told.arg}
            BY DEF TypeOK, Valid_M, SLEquivalent
        <3> DEFINE t == [sigma |-> told.sigma,
                         ret |-> [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]],
                         op |-> told.op,
                         arg |-> told.arg]
        <3> t \in M' /\ (\A r \in M': r = t)
            BY <3>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M            
        <3> QED
            BY DEF SLEquivalent
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, SLEquivalent
    <2> QED
        BY <2>1, <2>2
  <1>3. ASSUME NEW p \in PROCESSES,
               F3(p)
        PROVE  SLEquivalent'
    BY <1>3 DEF SLEquivalent, F3, Inv, TypeOK
  <1>4. ASSUME NEW p \in PROCESSES,
               F4(p)
        PROVE  SLEquivalent'
    <2> USE <1>4 DEF F4
    <2>1. CASE F[a_F[p].parent].bit = 1 /\ pc[p] = "F4"
        <3> USE <2>1
        <3> PICK told \in M: told.ret[p] = BOT /\ told.arg[p] \in NodeSet
            BY DEF Inv, InvF4, Linearizable
        <3>1. told  \in Configs   
            BY DEF TypeOK, Valid_M  
        <3> M' = {t \in Configs :   /\ (told.ret)[p] = BOT 
                                    /\ t.sigma = told.sigma
                                    /\ t.ret = [told.ret EXCEPT ![p] = (told.sigma)[(told.arg)[p]]]
                                    /\ t.op = told.op 
                                    /\ t.arg = told.arg}
            BY DEF TypeOK, Valid_M, SLEquivalent
        <3> DEFINE t == [sigma |-> told.sigma,
                         ret |-> [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]],
                         op |-> told.op,
                         arg |-> told.arg]
        <3> t \in M' /\ (\A r \in M': r = t)
            BY <3>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M            
        <3> QED
            BY DEF SLEquivalent
    <2>2. CASE ~(F[a_F[p].parent].bit = 1 /\ pc[p] = "F4")
        BY <2>2 DEF Inv, SLEquivalent
    <2> QED
        BY <2>1, <2>2
  <1>5. ASSUME NEW p \in PROCESSES,
               F5(p)
        PROVE  SLEquivalent'
    BY <1>5 DEF SLEquivalent, F5, Inv, TypeOK
  <1>6. ASSUME NEW p \in PROCESSES,
               F6(p)
        PROVE  SLEquivalent'
    BY <1>6 DEF SLEquivalent, F6, Inv, TypeOK
  <1>7. ASSUME NEW p \in PROCESSES,
               F7(p)
        PROVE  SLEquivalent'
    BY <1>7 DEF SLEquivalent, F7, Inv, TypeOK
  <1>8. ASSUME NEW p \in PROCESSES,
               FR(p)
        PROVE  SLEquivalent'
    <2> USE <1>8 DEF FR
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot, Linearizable
        <3>1. told \in Configs
            BY DEF Inv, TypeOK, Valid_M
        <3> M' = {t \in Configs :   /\ (told.ret)[p] = u_F[p] 
                                    /\ t.sigma = told.sigma
                                    /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                    /\ t.op = [told.op EXCEPT ![p] = BOT]
                                    /\ t.arg = [told.arg EXCEPT ![p] = BOT]}
            BY DEF TypeOK, Valid_M, SLEquivalent
        <3> DEFINE t == [sigma |-> told.sigma,
                         ret |-> [told.ret EXCEPT ![p] = BOT],
                         op |-> [told.op EXCEPT ![p] = BOT],
                         arg |-> [told.arg EXCEPT ![p] = BOT]]
        <3> t \in M' 
            BY <3>1 DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
        <3> \A r \in M': r = t 
            BY <3>1 DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
        <3> QED
            BY DEF SLEquivalent
    <2>2. CASE pc[p] # "FR"
            BY <2>2 DEF SLEquivalent
    <2> QED
        BY <2>1, <2>2
  <1>9. ASSUME NEW p \in PROCESSES,
               U1(p)
        PROVE  SLEquivalent'
    BY <1>9 DEF SLEquivalent, U1, Inv, TypeOK
  <1>10. ASSUME NEW p \in PROCESSES,
                U2(p)
         PROVE  SLEquivalent'
    BY <1>10 DEF SLEquivalent, U2, Inv, TypeOK
  <1>11. ASSUME NEW p \in PROCESSES,
                U3(p)
         PROVE  SLEquivalent'
    <2> USE <1>11 DEF U3
    <2>1. CASE u_U[p] = v_U[p]
        <3> USE <2>1
        <3>x. M' = {t \in Configs: \E told \in M:
                             \/ /\ told.ret[p] = BOT 
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                THEN told.sigma[told.arg[p][2]] 
                                                                ELSE told.sigma[i]]
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.sigma = told.sigma
                                /\ t.ret = told.ret
                                /\ t.op = told.op
                                /\ t.arg = told.arg}
            BY DEF TypeOK, Valid_M, Configs
        <3> PICK told \in M: /\ (told.ret[p] = BOT \/ told.ret[p] = ACK) 
                             /\ told.arg[p] \in NodeSet \X NodeSet
                             /\ told.sigma[told.arg[p][1]] = told.sigma[told.arg[p][2]]
            BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot, Linearizable
        <3> HIDE <2>1 DEF U3
        <3>a. told \in Configs
            BY <3>x DEF Inv, TypeOK, Valid_M
        <3>b. M' = {t \in Configs: \E rold \in M:
                        (\/ /\ rold.ret[p] = BOT 
                            /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[rold.arg[p][1]] 
                                                            THEN rold.sigma[rold.arg[p][2]] 
                                                            ELSE rold.sigma[i]]
                            /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                            /\ t.op = rold.op
                            /\ t.arg = rold.arg
                         \/ /\ rold.ret[p] = ACK
                            /\ t.sigma = rold.sigma
                            /\ t.ret = rold.ret
                            /\ t.op = rold.op
                            /\ t.arg = rold.arg) /\ rold = told}
            BY <3>x DEF TypeOK, Valid_M, SLEquivalent
        <3>c. M' = {t \in Configs:
                         \/ /\ told.ret[p] = BOT 
                            /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                            THEN told.sigma[told.arg[p][2]] 
                                                            ELSE told.sigma[i]]
                            /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                            /\ t.op = told.op
                            /\ t.arg = told.arg
                         \/ /\ told.ret[p] = ACK
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ t.op = told.op
                            /\ t.arg = told.arg}
          BY <3>b
        <3>1. CASE told.ret[p] = BOT
            <4>a. ACK # BOT
                BY AckBotDef
            <4> USE <3>1
            <4> M' = {t \in Configs: /\ told.ret[p] = BOT 
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                     THEN told.sigma[told.arg[p][2]] 
                                                                     ELSE told.sigma[i]]
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg}
                BY <3>a, <3>c, <4>a DEF TypeOK, Valid_M, SLEquivalent, Configs, ReturnSet
            <4> DEFINE t == [sigma |-> [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][1]] 
                                                              THEN told.sigma[told.arg[p][2]] 
                                                              ELSE told.sigma[j]],
                             ret |-> [told.ret EXCEPT ![p] = ACK],
                             op |-> told.op,
                             arg |-> told.arg]
            <4>b. t \in M'
                BY <3>a DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
            <4>c. (\A r \in M': r = t)
                BY <3>a DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
            <4> QED
                BY <4>b, <4>c DEF SLEquivalent
        <3>2. CASE told.ret[p] = ACK
            <4> USE <3>2
            <4>a. ACK # BOT
                BY AckBotDef
            <4> M' = {t \in Configs: /\ told.ret[p] = ACK 
                                     /\ t.sigma = told.sigma
                                     /\ t.ret = told.ret
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg}
                BY <3>a, <3>c, <4>a DEF TypeOK, Valid_M, SLEquivalent, Configs, ReturnSet
            <4> \A t \in M': t = told
                BY <3>a DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, Valid_M
            <4> QED
                BY DEF SLEquivalent
        <3> QED
            BY <3>1, <3>2
    <2>2. CASE u_U[p] # v_U[p]
        BY <2>2 DEF SLEquivalent
    <2> QED
        BY <2>1, <2>2
  <1>12. ASSUME NEW p \in PROCESSES,
                U4(p)
         PROVE  SLEquivalent'
    BY <1>12 DEF SLEquivalent, U4, Inv, TypeOK
  <1>13. ASSUME NEW p \in PROCESSES,
                U5(p)
         PROVE  SLEquivalent'
    BY <1>13 DEF SLEquivalent, U5, Inv, TypeOK
  <1>14. ASSUME NEW p \in PROCESSES,
                U6(p)
         PROVE  SLEquivalent'
      <2>1. CASE /\ a_U[p].rank < b_U[p].rank 
                 /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
            <3> /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                            /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                            /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                                            THEN told.sigma[told.arg[p][2]] 
                                                                                            ELSE told.sigma[i]]
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg
                                                        \/  /\ told.ret[p] = ACK
                                                            /\ t.ret = told.ret
                                                            /\ t.sigma = told.sigma
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg}
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
                BY <2>1, <1>14 DEF U6
            <3> QED
    <2>2. CASE /\ a_U[p].rank > b_U[p].rank 
                 /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
            <3>a. ~(a_U[p].rank < b_U[p].rank)
                BY <2>2 DEF Inv, TypeOK, Valid_a_U, Valid_b_U, FieldSet
            <3> /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                            /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                            /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                                            THEN told.sigma[told.arg[p][1]] 
                                                                                            ELSE told.sigma[i]]
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg
                                                        \/  /\ told.ret[p] = ACK
                                                            /\ t.ret = told.ret
                                                            /\ t.sigma = told.sigma
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg}
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
                BY <2>2, <3>a, <1>14 DEF U6
            <3> QED
      <2> QED
  <1>15. ASSUME NEW p \in PROCESSES,
                U7(p)
         PROVE  SLEquivalent'
    BY <1>15 DEF SLEquivalent, U7, Inv, TypeOK
  <1>16. ASSUME NEW p \in PROCESSES,
                U8(p)
         PROVE  SLEquivalent'
    BY <1>16 DEF SLEquivalent, U8, Inv, TypeOK
  <1>17. ASSUME NEW p \in PROCESSES,
                UR(p)
         PROVE  SLEquivalent'
    <2> USE <1>17 DEF UR
    <2> PICK told \in M: /\ told.ret[p] = ACK 
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot, Linearizable
    <2>1. told \in Configs
        BY DEF Inv, TypeOK, Valid_M
    <2> M' = {t \in Configs :   /\ (told.ret)[p] = ACK 
                                /\ t.sigma = told.sigma
                                /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                /\ t.op = [told.op EXCEPT ![p] = BOT]
                                /\ t.arg = [told.arg EXCEPT ![p] = BOT]}
        BY DEF TypeOK, Valid_M, SLEquivalent
    <2> HIDE DEF UR
    <2> DEFINE t == [sigma |-> told.sigma,
                     ret |-> [told.ret EXCEPT ![p] = BOT],
                     op |-> [told.op EXCEPT ![p] = BOT],
                     arg |-> [told.arg EXCEPT ![p] = BOT]]
    <2> t \in M' 
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
    <2> \A r \in M': r = t 
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
    <2> QED
        BY DEF SLEquivalent
  <1>18. ASSUME NEW p \in PROCESSES,
                Decide(p)
         PROVE  SLEquivalent'
    <2>a. \/ \E i \in NodeSet:    M' = {t \in Configs: \E told \in M:
                                                      /\ told.ret[p] = BOT
                                                      /\ told.op[p] = BOT
                                                      /\ told.arg[p] = BOT
                                                      /\ t.sigma = told.sigma
                                                      /\ t.op = [told.op EXCEPT ![p] = "F"]
                                                      /\ t.arg = [told.arg EXCEPT ![p] = i]
                                                      /\ t.ret = told.ret} 
          \/ \E i, j \in NodeSet: M' = {t \in Configs: \E told \in M:
                                                      /\ told.ret[p] = BOT
                                                      /\ told.op[p] = BOT
                                                      /\ told.arg[p] = BOT
                                                      /\ t.sigma = told.sigma
                                                      /\ t.op = [told.op EXCEPT ![p] = "U"]
                                                      /\ t.arg = [told.arg EXCEPT ![p] = <<i, j>>]
                                                      /\ t.ret = told.ret}
        BY <1>18 DEF Decide
    <2> PICK t_old \in M:   (/\ t_old.ret[p] = BOT
                            /\ t_old.op[p] = BOT
                            /\ t_old.arg[p] = BOT)
        BY <1>18 DEF Inv, Decide, InvDecide, Linearizable
    <2>b. t_old \in Configs
        BY DEF Inv, TypeOK, Valid_M
    <2>x. \A told \in M: told = t_old
        BY DEF SLEquivalent
    <2>1. CASE \E i \in NodeSet:    M' = {t \in Configs: \E told \in M:
                                                          /\ told.ret[p] = BOT
                                                          /\ told.op[p] = BOT
                                                          /\ told.arg[p] = BOT
                                                          /\ t.sigma = told.sigma
                                                          /\ t.op = [told.op EXCEPT ![p] = "F"]
                                                          /\ t.arg = [told.arg EXCEPT ![p] = i]
                                                          /\ t.ret = told.ret} 
        <3>a. PICK i \in NodeSet: M' = {t \in Configs: \E told \in M:
                                                          /\ told = t_old
                                                          /\ told.ret[p] = BOT
                                                          /\ told.op[p] = BOT
                                                          /\ told.arg[p] = BOT
                                                          /\ t.sigma = told.sigma
                                                          /\ t.op = [told.op EXCEPT ![p] = "F"]
                                                          /\ t.arg = [told.arg EXCEPT ![p] = i]
                                                          /\ t.ret = told.ret} 
            BY <2>x, <2>1
        <3>b. M' = {t \in Configs: 
                              /\ t.sigma = t_old.sigma
                              /\ t.op = [t_old.op EXCEPT ![p] = "F"]
                              /\ t.arg = [t_old.arg EXCEPT ![p] = i]
                              /\ t.ret = t_old.ret}
            BY <3>a
        <3> DEFINE tF    == [sigma |-> t_old.sigma, 
                             op |-> [t_old.op EXCEPT ![p] = "F"], 
                             arg |-> [t_old.arg EXCEPT ![p] = i],
                             ret |-> t_old.ret]
        <3>c. tF \in Configs
            BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, Valid_M, tF 
        <3> tF \in M' /\ \A t \in M': t = tF
            BY <3>c, <2>b, <3>b DEF tF, TypeOK, Valid_M, Configs
        <3> QED
            BY DEF SLEquivalent
    <2>2. CASE \E i, j \in NodeSet: M' = {t \in Configs: \E told \in M:
                                                          /\ told.ret[p] = BOT
                                                          /\ told.op[p] = BOT
                                                          /\ told.arg[p] = BOT
                                                          /\ t.sigma = told.sigma
                                                          /\ t.op = [told.op EXCEPT ![p] = "U"]
                                                          /\ t.arg = [told.arg EXCEPT ![p] = <<i, j>>]
                                                          /\ t.ret = told.ret}
        <3>a. PICK i, j \in NodeSet: M' = {t \in Configs: \E told \in M:
                                                          /\ told.ret[p] = BOT
                                                          /\ told.op[p] = BOT
                                                          /\ told.arg[p] = BOT
                                                          /\ t.sigma = told.sigma
                                                          /\ t.op = [told.op EXCEPT ![p] = "U"]
                                                          /\ t.arg = [told.arg EXCEPT ![p] = <<i, j>>]
                                                          /\ t.ret = told.ret}
            BY <2>x, <2>2
        <3>b. M' = {t \in Configs: 
                              /\ t.sigma = t_old.sigma
                              /\ t.op = [t_old.op EXCEPT ![p] = "U"]
                              /\ t.arg = [t_old.arg EXCEPT ![p] = <<i, j>>]
                              /\ t.ret = t_old.ret}
            BY <3>a, <2>x
        <3> DEFINE tU    == [sigma |-> t_old.sigma, 
                             op |-> [t_old.op EXCEPT ![p] = "U"], 
                             arg |-> [t_old.arg EXCEPT ![p] = <<i, j>>],
                             ret |-> t_old.ret]
        <3>c. tU \in Configs
            BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, Valid_M, tU 
        <3> tU \in M' /\ \A t \in M': t = tU
            BY <3>c, <2>b, <3>b DEF tU, TypeOK, Valid_M, Configs
        <3> QED
            BY DEF SLEquivalent
    <2> QED
        BY <2>a, <2>1, <2>2
  <1>19. CASE UNCHANGED varlist
    BY <1>19 DEF SLEquivalent, varlist
  <1>20. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Next, Step
    
THEOREM SLEquiv == Linearizable /\ SLEquivalent => Cardinality(M) = 1
  <1> SUFFICES ASSUME Linearizable /\ SLEquivalent
               PROVE  Cardinality(M) = 1
    OBVIOUS
  <1> USE DEF Linearizable, SLEquivalent
  <1> PICK t \in M: TRUE
      OBVIOUS 
  <1> M = {t}
      OBVIOUS
  <1> QED
      BY FS_Singleton

THEOREM SLInvariantHolds == Spec => [](Linearizable /\ SLEquivalent)
    BY PTL, InvariantHolds, InitSLPrelim, NextSLPrelim DEF Inv, Spec

THEOREM StrongLinearizability == Spec => [](Cardinality(M) = 1)
    BY PTL, SLEquiv, SLInvariantHolds
    
=============================================================================
\* Modification History
\* Last modified Tue May 20 23:32:25 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
