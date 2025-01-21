---------------------------- MODULE jtunionfind ----------------------------

\*
\* ALGORITHM:

\*     0:  CHOOSE i, j \in [1..n]: Find_p(i) \/ Unite_p(i, j)
    
\*         Find_p(c):
\*     F1:     u = c
\*     F2:     if READ(u)_b = 1 goto FR ELSE goto F3
\*     F3:     [v, u_r, u_b] = READ(u); goto F4 or F7
\*     F4:     [w, v_r, v_b] = READ(v)
\*     F5:     if v_b = 1: u = v; goto FR
\*     F6:     CAS(u, [v, u_r, 0], [w, u_r, 0]); goto F2
\*     F7:     u = v; goto F2
\*     FR:     return u

\*         Unite_p(c, d):
\*     U1:    u = c; v = d
\*            u = Find_p(u)
\*     U2:    v = Find_p(v)
\*     U3:    if u = v goto UR
\*     U4:    [u_p, u_r, u_b] = READ(u)
\*     U5:    [v_p, v_r, v_b] = READ(v)
\*     U6:    if u_r < v_r then CAS(u, [u_p, u_r, 1], [v, u_r, 0])
\*     U6:    elif u_r > v_r then CAS(v, [v_p, v_r, 1], [u, v_r, 0])
\*     U6:    else:
\*     U6:       if u < v then CAS(u, [u_p, u_r, 1], [v, u_r, $])
\*     U6:       else: CAS(v, [v_p, v_r, 1], [u, v_r, $])
\*     U7:    u = Find_p(u)
\*     U8:    v = Find_p(v); goto U3
\*     UR:    return ACK
\* 

EXTENDS FiniteSets, Integers, Sequences, TLAPS, FiniteSetTheorems
CONSTANT BOT, ACK, PROCESSES, N
VARIABLES pc, parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, c, d, M
Z_0 ==              Nat \cup {0}
NodeSet ==          1..N
ASSUME NisNat ==    (N \in Nat) /\ (N > 0)
ASSUME AckBotDef == BOT \notin NodeSet /\ ACK \notin NodeSet /\ BOT # ACK
ASSUME ExistProc == PROCESSES # {}

varlist ==          <<pc, parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, c, d, M>>
FindLines ==        {"F1", "F2", "F3", "F4", "F5", "F6", "F7", "FR"}
UniteLines ==       {"U1", "U2", "U3", "U4", "U5", "U6", "U7", "U8", "UR"}
FindU1 ==           {"F1U1", "F2U1", "F3U1", "F4U1", "F5U1", "F6U1", "F7U1", "F8U1", "FRU1"}
FindU2 ==           {"F1U2", "F2U2", "F3U2", "F4U2", "F5U2", "F6U2", "F7U2", "F8U2", "FRU2"}
FindU7 ==           {"F1U7", "F2U7", "F3U7", "F4U7", "F5U7", "F6U7", "F7U7", "F8U7", "FRU7"}
FindU8 ==           {"F1U8", "F2U8", "F3U8", "F4U8", "F5U8", "F6U8", "F7U8", "F8U8", "FRU8"}
FindRec ==          FindU1 \cup FindU2 \cup FindU7 \cup FindU8
PCVals ==           FindLines \cup UniteLines \cup FindRec \cup {"0"}
StateSet ==         {A \in [NodeSet -> NodeSet]: \A i \in NodeSet : A[A[i]] = A[i]}
ReturnSet ==        [PROCESSES -> NodeSet \cup {BOT} \cup {ACK}]
OpSet ==            [PROCESSES -> {"F", "U", BOT}]
ArgSet ==           [PROCESSES -> {BOT} \cup NodeSet \cup NodeSet \X NodeSet]
Configs ==          [sigma: StateSet, ret: ReturnSet, op: OpSet, arg: ArgSet]
InitState ==        [i \in NodeSet |-> i]
InitRet ==          [p \in PROCESSES |-> BOT]
InitOp ==           [p \in PROCESSES |-> BOT]
InitArg ==          [p \in PROCESSES |-> BOT]



\* Initial state of algorithm
Init ==         /\ pc = [p \in PROCESSES |-> "0"]
                /\ parent = [i \in NodeSet |-> i]
                /\ rank = [i \in NodeSet |-> 0]
                /\ bit = [i \in NodeSet |-> 1]
                /\ u_F \in [PROCESSES -> NodeSet]
                /\ v_F \in [PROCESSES -> NodeSet]
                /\ ur_F \in [PROCESSES -> Z_0]
                /\ ub_F \in [PROCESSES -> {0, 1}]
                /\ w_F \in [PROCESSES -> NodeSet]
                /\ vr_F \in [PROCESSES -> Z_0]
                /\ vb_F \in [PROCESSES -> {0, 1}]
                /\ u_U \in [PROCESSES -> NodeSet]
                /\ v_U \in [PROCESSES -> NodeSet]
                /\ up_U \in [PROCESSES -> NodeSet]
                /\ ur_U \in [PROCESSES -> Z_0]
                /\ ub_U \in [PROCESSES -> {0, 1}]
                /\ vp_U \in [PROCESSES -> NodeSet]
                /\ vr_U \in [PROCESSES -> Z_0]
                /\ vb_U \in [PROCESSES -> {0, 1}]
                /\ c \in [PROCESSES -> NodeSet]
                /\ d \in [PROCESSES -> NodeSet]
                /\ M = {[sigma |-> InitState,  ret |-> InitRet, op |-> InitOp, arg |-> InitArg]}

\* Find operation
F1(p) ==        /\ u_F' = [u_F EXCEPT ![p] = c[p]]
                /\  \/  pc[p] = "F1"    /\ pc' = [pc EXCEPT ![p] = "F2"]
                    \/  pc[p] = "F1U1"  /\ pc' = [pc EXCEPT ![p] = "F2U1"]
                    \/  pc[p] = "F1U2"  /\ pc' = [pc EXCEPT ![p] = "F2U2"]
                    \/  pc[p] = "F1U7"  /\ pc' = [pc EXCEPT ![p] = "F2U7"]
                    \/  pc[p] = "F1U8"  /\ pc' = [pc EXCEPT ![p] = "F2U8"]
                /\ UNCHANGED <<c, d, parent, rank, bit, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, M>>


F2(p) ==        /\ ub_F' = [ub_F EXCEPT ![p] = bit[u_F[p]]]
                /\  IF bit[u_F[p]] = 1
                        THEN    \/ pc[p] = "F2"     /\ pc' = [pc EXCEPT ![p] = "FR"]
                                \/ pc[p] = "F2U1"   /\ pc' = [pc EXCEPT ![p] = "FRU1"]
                                \/ pc[p] = "F2U2"   /\ pc' = [pc EXCEPT ![p] = "FRU2"]
                                \/ pc[p] = "F2U7"   /\ pc' = [pc EXCEPT ![p] = "FRU7"]
                                \/ pc[p] = "F2U8"   /\ pc' = [pc EXCEPT ![p] = "FRU8"]
                        ELSE    \/ pc[p] = "F2"     /\ pc' = [pc EXCEPT ![p] = "F3"]
                                \/ pc[p] = "F2U1"   /\ pc' = [pc EXCEPT ![p] = "F3U1"]
                                \/ pc[p] = "F2U2"   /\ pc' = [pc EXCEPT ![p] = "F3U2"]
                                \/ pc[p] = "F2U7"   /\ pc' = [pc EXCEPT ![p] = "F3U7"]
                                \/ pc[p] = "F2U8"   /\ pc' = [pc EXCEPT ![p] = "F3U8"]
                /\ IF bit[u_F[p]] = 1 /\ pc[p] = "F2"
                        THEN M' =   {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT 
                                                                    /\ t.sigma = t_old.sigma
                                                                    /\ t.ret = [t_old.ret EXCEPT ![p] = u_F[p]]
                                                                    /\ t.op = t_old.op
                                                                    /\ t.arg = t_old.arg}
                        ELSE M' = M
                /\ UNCHANGED <<c, d, parent, rank, bit, u_F, v_F, ur_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U>>
                
F3(p) ==        /\ v_F' = [v_F EXCEPT ![p] = parent[u_F[p]]]
                /\ ur_F' = [ur_F EXCEPT ![p] = rank[u_F[p]]]
                /\ ub_F' = [ub_F EXCEPT ![p] = bit[u_F[p]]]
                /\  \/ pc[p] = "F3"    /\ (pc' = [pc EXCEPT ![p] = "F4"]    \/ pc' = [pc EXCEPT ![p] = "F7"])
                    \/ pc[p] = "F3U1"  /\ (pc' = [pc EXCEPT ![p] = "F4U1"]  \/ pc' = [pc EXCEPT ![p] = "F7U1"])
                    \/ pc[p] = "F3U2"  /\ (pc' = [pc EXCEPT ![p] = "F4U2"]  \/ pc' = [pc EXCEPT ![p] = "F7U2"])
                    \/ pc[p] = "F3U7"  /\ (pc' = [pc EXCEPT ![p] = "F4U7"]  \/ pc' = [pc EXCEPT ![p] = "F7U7"])
                    \/ pc[p] = "F3U8"  /\ (pc' = [pc EXCEPT ![p] = "F4U8"]  \/ pc' = [pc EXCEPT ![p] = "F7U8"])
                /\ UNCHANGED <<c, d, parent, rank, bit, u_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, M>>

F4(p) ==        /\ w_F' = [w_F EXCEPT ![p] = parent[v_F[p]]]
                /\ vr_F' = [vr_F EXCEPT ![p] = rank[v_F[p]]]
                /\ vb_F' = [vb_F EXCEPT ![p] = bit[v_F[p]]]
                /\  \/ pc[p] = "F4"     /\ pc' = [pc EXCEPT ![p] = "F5"]
                    \/ pc[p] = "F4U1"   /\ pc' = [pc EXCEPT ![p] = "F5U1"]
                    \/ pc[p] = "F4U2"   /\ pc' = [pc EXCEPT ![p] = "F5U2"]
                    \/ pc[p] = "F4U7"   /\ pc' = [pc EXCEPT ![p] = "F5U7"]
                    \/ pc[p] = "F4U8"   /\ pc' = [pc EXCEPT ![p] = "F5U8"]
                /\ UNCHANGED <<c, d, pc, parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, M >>

F5(p) ==        /\ IF vb_F[p] = 1
                        THEN    /\ u_F' = [u_F EXCEPT ![p] = v_F[p]]
                                /\  \/ pc[p] = "F5"     /\ pc' = [pc EXCEPT ![p] = "FR"]
                                    \/ pc[p] = "F5U1"   /\ pc' = [pc EXCEPT ![p] = "FRU1"]
                                    \/ pc[p] = "F5U2"   /\ pc' = [pc EXCEPT ![p] = "FRU2"]
                                    \/ pc[p] = "F5U7"   /\ pc' = [pc EXCEPT ![p] = "FRU7"]
                                    \/ pc[p] = "F5U8"   /\ pc' = [pc EXCEPT ![p] = "FRU8"]
                        ELSE    /\ u_F' = u_F
                                /\  \/ pc[p] = "F5"     /\ pc' = [pc EXCEPT ![p] = "F6"]
                                    \/ pc[p] = "F5U1"   /\ pc' = [pc EXCEPT ![p] = "F6U1"]
                                    \/ pc[p] = "F5U2"   /\ pc' = [pc EXCEPT ![p] = "F6U2"]
                                    \/ pc[p] = "F5U7"   /\ pc' = [pc EXCEPT ![p] = "F6U7"]
                                    \/ pc[p] = "F5U8"   /\ pc' = [pc EXCEPT ![p] = "F6U8"]
                /\ IF vb_F[p] = 1
                        THEN M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT 
                                                                  /\ t.sigma = t_old.sigma
                                                                  /\ t.ret = [t_old.ret EXCEPT ![p] = v_F[p]]
                                                                  /\ t.op = t_old.op
                                                                  /\ t.arg = t_old.arg}
                        ELSE M' = M
                /\ UNCHANGED <<c, d, parent, rank, bit, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U>>
                
F6(p) ==        /\ IF (parent[u_F[p]] = v_F[p] /\ rank[u_F[p]] = ur_F[p] /\ bit[u_F[p]] = 0)
                        THEN /\ parent' = [parent EXCEPT ![u_F[p]] = w_F[p]]
                             /\ rank' = [rank EXCEPT ![u_F[p]] = ur_F[p]]
                             /\ bit' = [bit EXCEPT ![u_F[p]] = 0]
                        ELSE /\ parent' = parent
                             /\ rank' = rank
                             /\ bit' = bit
                /\  \/ pc[p] = "F6"     /\ pc' = [pc EXCEPT ![p] = "F2"]
                    \/ pc[p] = "F6U1"   /\ pc' = [pc EXCEPT ![p] = "F2U1"]
                    \/ pc[p] = "F6U2"   /\ pc' = [pc EXCEPT ![p] = "F2U2"]
                    \/ pc[p] = "F6U7"   /\ pc' = [pc EXCEPT ![p] = "F2U7"]
                    \/ pc[p] = "F6U8"   /\ pc' = [pc EXCEPT ![p] = "F2U8"]
                /\ UNCHANGED <<c, d, u_F, v_F, w_F, vr_F, ub_F, vb_F, ur_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, M >>

F7(p) ==        /\ u_F' = [u_F EXCEPT ![p] = v_F[p]]
                /\  \/ pc[p] = "F7"     /\ pc' = [pc EXCEPT ![p] = "F2"]
                    \/ pc[p] = "F7U1"   /\ pc' = [pc EXCEPT ![p] = "F2U1"]
                    \/ pc[p] = "F7U2"   /\ pc' = [pc EXCEPT ![p] = "F2U2"]
                    \/ pc[p] = "F7U7"   /\ pc' = [pc EXCEPT ![p] = "F2U7"]
                    \/ pc[p] = "F7U8"   /\ pc' = [pc EXCEPT ![p] = "F2U8"]
                /\ UNCHANGED <<c, d,  parent, rank, bit, v_F, w_F, ur_F, ub_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, M>>

FR(p) ==        /\ pc' = [pc EXCEPT ![p] = Tail(pc[p])]
                /\  \/ pc[p] = "FR"     /\ pc'  = [pc EXCEPT ![p] = "0"]
                                        /\ u_U' = u_U
                                        /\ M'   = {t \in Configs:   \E t_old \in M: /\ t_old.ret[p] = u_F[p]
                                                                                    /\ t.sigma = t_old.sigma
                                                                                    /\ t.ret = [t_old.ret EXCEPT ![p] = BOT]}
                    \/ pc[p] = "FRU1"   /\ pc'  = [pc EXCEPT ![p] = "U2"]
                                        /\ u_U' = [u_U EXCEPT ![p] = u_F[p]]
                                        /\ M'   = M
                    \/ pc[p] = "FRU2"   /\ pc'  = [pc EXCEPT ![p] = "U3"]
                                        /\ v_U' = [v_U EXCEPT ![p] = u_F[p]]
                                        /\ M'   = M
                    \/ pc[p] = "FRU7"   /\ pc'  = [pc EXCEPT ![p] = "U8"]
                                        /\ u_U' = [u_U EXCEPT ![p] = u_F[p]]
                                        /\ M'   = M
                    \/ pc[p] = "FRU8"   /\ pc'  = [pc EXCEPT ![p] = "U3"]
                                        /\ v_U' = [v_U EXCEPT ![p] = u_F[p]]
                                        /\ M'   = M
                /\ UNCHANGED <<c, d, parent, rank, bit, u_F, v_F, w_F, ur_F, ub_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U >>                

U1(p) ==        /\ pc[p] = "U1"
                /\ pc'  = [pc EXCEPT ![p] = "F1U1"]
                /\ u_U' = [u_U EXCEPT ![p] = c[p]]
                /\ v_U' = [v_U EXCEPT ![p] = d[p]]
                /\ c'   = [c EXCEPT ![p] = c[p]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, d, M>>
                
U2(p) ==        /\ pc[p] = "U2"
                /\ pc'  = [pc EXCEPT ![p] = "F1U2"]
                /\ c'   = [c EXCEPT ![p] = v_U[p]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, d, M>>                
                
U3(p) ==        /\ pc[p] = "U3"
                /\ IF u_U[p] = v_U[p]
                        THEN    /\ pc' = [pc EXCEPT ![p] = "UR"]
                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT 
                                                              /\ t.sigma = t_old.sigma
                                                              /\ t.ret = [t_old.ret EXCEPT ![p] = ACK]
                                                              /\ t.op = t_old.op
                                                              /\ t.arg = t_old.arg}
                        ELSE    /\ pc' = [pc EXCEPT ![p] = "U4"]
                                /\ M' = M
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, c, d, u_U, v_U>>

U4(p) ==        /\ pc[p] = "U4"
                /\ pc' = [pc EXCEPT ![p] = "U5"]
                /\ up_U' = [up_U EXCEPT ![p] = parent[u_U[p]]] 
                /\ ur_U' = [ur_U EXCEPT ![p] = rank[u_U[p]]]
                /\ ub_U' = [ub_U EXCEPT ![p] = bit[u_U[p]]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, u_U, w_F, vr_F, vb_F, v_U, vp_U, vr_U, vb_U, c, d, M>>

U5(p) ==        /\ pc[p] = "U5"
                /\ pc' = [pc EXCEPT ![p] = "U6"]
                /\ vp_U' = [vp_U EXCEPT ![p] = parent[v_U[p]]]
                /\ vr_U' = [vr_U EXCEPT ![p] = rank[v_U[p]]]
                /\ vb_U' = [vb_U EXCEPT ![p] = bit[v_U[p]]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, c, d, M>>

U6(p) ==        /\ pc[p] = "U6"
                /\  IF ur_U[p] < vr_U[p]
                        THEN IF (parent[u_U[p]] = up_U[p] /\ rank[u_U[p]] = ur_U[p] /\ bit[u_U[p]] = 1)
                            THEN    /\ parent' = [parent EXCEPT ![u_U[p]] = v_U[p]]
                                    /\ rank' = [rank EXCEPT ![u_U[p]] = ur_U[p]]
                                    /\ bit' = [bit EXCEPT ![u_F[p]] = 0]
                                    /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                            /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = u_U[p] 
                                                                                                                THEN v_U[p] 
                                                                                                                ELSE t_old.sigma[i]]
                                                                            /\ t_old.op = t.op
                                                                            /\ t_old.arg = t.arg}
                            ELSE    /\ parent' = parent
                                    /\ rank' = rank
                                    /\ bit' = bit
                                    /\ M' = M
                    ELSE IF ur_U[p] > vr_U[p]
                        THEN IF (parent[v_U[p]] = vp_U[p] /\ rank[v_U[p]] = vr_U[p] /\ bit[v_U[p]] = 1)
                            THEN    /\ parent' = [parent EXCEPT ![v_U[p]] = u_U[p]]
                                    /\ rank' = [rank EXCEPT ![v_U[p]] = vr_U[p]]
                                    /\ bit' = [bit EXCEPT ![v_U[p]] = 0]
                                    /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                            /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = v_U[p] 
                                                                                                                THEN u_U[p] 
                                                                                                                ELSE t_old.sigma[i]]
                                                                            /\ t_old.op = t.op
                                                                            /\ t_old.arg = t.arg}
                            ELSE    /\ parent' = parent
                                    /\ rank' = rank
                                    /\ bit' = bit
                                    /\ M' = M
                    ELSE 
                        IF u_U[p] < v_U[p]
                            THEN IF (parent[u_U[p]] = up_U[p] /\ rank[u_U[p]] = ur_U[p] /\ bit[u_U[p]] = 1)
                                    THEN /\ parent' = [parent EXCEPT ![u_U[p]] = v_U[p]]
                                         /\ rank' = [rank EXCEPT ![u_U[p]] = ur_U[p]]
                                         /\ \/  /\ bit' = [bit EXCEPT ![u_U[p]] = 0]
                                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                        /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = u_U[p]
                                                                                                                            THEN v_U[p]
                                                                                                                            ELSE t_old.sigma[i]]
                                                                                        /\ t_old.op = t.op
                                                                                        /\ t_old.arg = t.arg}
                                            \/  /\ bit' = [bit EXCEPT ![u_U[p]] = 1]
                                                /\ M' = M
                                    ELSE /\ parent' = parent
                                         /\ rank' = rank
                                         /\ bit' = bit
                                         /\ M' = M
                            ELSE IF (parent[v_U[p]] = vp_U[p] /\ rank[v_U[p]] = vr_U[p] /\ bit[v_U[p]] = 1)
                                    THEN /\ parent' = [parent EXCEPT ![v_U[p]] = u_U[p]]
                                         /\ rank' = [rank EXCEPT ![v_U[p]] = vr_U[p]]
                                         /\ \/  /\ bit' = [bit EXCEPT ![v_U[p]] = 0]
                                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                        /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = v_U[p] 
                                                                                                                            THEN u_U[p] 
                                                                                                                            ELSE t_old.sigma[i]]
                                                                                        /\ t_old.op = t.op
                                                                                        /\ t_old.arg = t.arg}
                                            \/  /\ bit' = [bit EXCEPT ![v_U[p]] = 1]
                                                /\ M' = M
                                    ELSE /\ parent' = parent
                                         /\ rank' = rank
                                         /\ bit' = bit   
                                         /\ M' = M
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, up_U, ur_U, ub_U, v_U, vp_U, vr_U, vb_U, c, d>>

U7(p) ==        /\ pc[p] = "U7"
                /\ pc' = [pc EXCEPT ![p] = "F1U7"]
                /\ c' = [c EXCEPT ![p] = u_U[p]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, d, M>>

U8(p) ==        /\ pc[p] = "U8"
                /\ pc' = [pc EXCEPT ![p] = "F1U8"]
                /\ c' = [c EXCEPT ![p] = v_U[p]]
                /\ UNCHANGED <<parent, rank, bit, u_F, v_F, ur_F, ub_F, w_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U, d, M>>

UR(p) ==        /\ pc[p] = "UR"
                /\ pc' = [pc EXCEPT ![p] = "0"]
                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = ACK 
                                                        /\ t.sigma = t_old.sigma
                                                        /\ t.ret = [t_old.ret EXCEPT ![p] = BOT]
                                                        /\ t.op = BOT
                                                        /\ t.arg = BOT}
                /\ UNCHANGED <<c, d, parent, rank, bit, u_F, v_F, w_F, ur_F, ub_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, ub_U, vp_U, vr_U, vb_U>>                

Decide(p) ==    /\ pc[p] = "0"
                /\  \/  /\ \E i \in NodeSet:    /\ c' = [c EXCEPT ![p] = i]
                                                /\ pc' = [pc EXCEPT ![p] = "F1"]
                                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.op = BOT
                                                                                        /\ t_old.arg = BOT
                                                                                        /\ t.sigma = t_old.sigma
                                                                                        /\ t.op = "F"
                                                                                        /\ t.arg = i}
                        /\ UNCHANGED << d, parent, rank, bit, u_F, v_F, w_F, ur_F, ub_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, vp_U, vr_U, ub_U, vb_U>>
                    \/  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                /\ c' = [c EXCEPT ![p] = i]
                                /\ d' = [d EXCEPT ![p] = j]
                                /\ pc' = [pc EXCEPT ![p] = "U1"]
                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.op = BOT
                                                                        /\ t_old.arg = BOT
                                                                        /\ t.sigma = t_old.sigma
                                                                        /\ t.op = "U"
                                                                        /\ t.arg = <<i, j>>}
                        /\ UNCHANGED << parent, rank, bit, u_F, v_F, w_F, ur_F, ub_F, vr_F, vb_F, u_U, v_U, up_U, ur_U, vp_U, vr_U, ub_U, vb_U, M>>

Step(p) ==  \/  F1(p)
            \/  F2(p)
            \/  F3(p)
            \/  F4(p)
            \/  F5(p)
            \/  F6(p)
            \/  F7(p)
            \/  FR(p)
            \/  U1(p)
            \/  U2(p)
            \/  U3(p)
            \/  U4(p)
            \/  U5(p)
            \/  U6(p)
            \/  U7(p)
            \/  U8(p)
            \/  UR(p)
            \/  Decide(p)

Next ==     \E p \in PROCESSES: Step(p)

Spec ==     Init /\ [][Next]_varlist

Valid_pc ==     pc \in [PROCESSES -> PCVals]
Valid_parent == parent \in [NodeSet -> NodeSet]
Valid_rank ==   rank \in [NodeSet -> Z_0]
Valid_bit ==    bit \in [NodeSet -> {0, 1}]
Valid_u_F ==    u_F \in [PROCESSES -> NodeSet]
Valid_v_F ==    v_F \in [PROCESSES -> NodeSet]
Valid_ur_F ==   ur_F \in [PROCESSES -> Z_0]
Valid_ub_F ==   ub_F \in [PROCESSES -> {0, 1}]
Valid_w_F ==    w_F \in [PROCESSES -> NodeSet]
Valid_vr_F ==   vr_F \in [PROCESSES -> Z_0]
Valid_vb_F ==   vb_F \in [PROCESSES -> {0, 1}]
Valid_u_U ==    u_U \in [PROCESSES -> NodeSet]
Valid_v_U ==    v_U \in [PROCESSES -> NodeSet]
Valid_up_U ==   up_U \in [PROCESSES -> NodeSet]
Valid_ur_U ==   ur_U \in [PROCESSES -> Z_0]
Valid_ub_U ==   ub_U \in [PROCESSES -> {0, 1}]
Valid_vp_U ==   vp_U \in [PROCESSES -> NodeSet]
Valid_vr_U ==   vr_U \in [PROCESSES -> Z_0]
Valid_vb_U ==   vb_U \in [PROCESSES -> {0, 1}]
Valid_c ==      c \in [PROCESSES -> NodeSet]
Valid_d ==      d \in [PROCESSES -> NodeSet]
Valid_M ==      M \in SUBSET Configs

TypeOK == /\ Valid_pc
          /\ Valid_parent
          /\ Valid_rank
          /\ Valid_bit
          /\ Valid_u_F
          /\ Valid_v_F
          /\ Valid_ur_F
          /\ Valid_ub_F
          /\ Valid_w_F
          /\ Valid_vr_F
          /\ Valid_vb_F
          /\ Valid_u_U
          /\ Valid_v_U
          /\ Valid_up_U
          /\ Valid_ur_U
          /\ Valid_ub_U
          /\ Valid_vp_U
          /\ Valid_vr_U
          /\ Valid_vb_U
          /\ Valid_c
          /\ Valid_d
          /\ Valid_M

LEMMA InitTypeOK == Init => TypeOK
    <1> USE DEF Init, TypeOK, Z_0
    <1> SUFFICES ASSUME Init PROVE TypeOK
        OBVIOUS
    <1>1. Valid_pc
        BY DEF Init, PCVals, Valid_pc
    <1>2. Valid_parent
        BY DEF Init, Valid_parent
    <1>3. Valid_rank
        BY DEF Init, Valid_rank
    <1>4. Valid_bit
        BY DEF Init, Valid_bit
    <1>5. Valid_u_F
        BY DEF Init, Valid_u_F
    <1>6. Valid_v_F
        BY DEF Init, Valid_v_F
    <1>7. Valid_ur_F
        BY DEF Init, Valid_ur_F
    <1>8. Valid_ub_F
        BY DEF Init, Valid_ub_F
    <1>9. Valid_w_F
        BY DEF Init, Valid_w_F
    <1>10. Valid_vr_F
        BY DEF Init, Valid_vr_F
    <1>11. Valid_vb_F
        BY DEF Init, Valid_vb_F
    <1>12. Valid_u_U
        BY DEF Init, Valid_u_U
    <1>13. Valid_v_U
        BY DEF Init, Valid_v_U
    <1>14. Valid_up_U
        BY DEF Init, Valid_up_U
    <1>15. Valid_ur_U
        BY DEF Init, Valid_ur_U
    <1>16. Valid_ub_U
        BY DEF Init, Valid_ub_U
    <1>17. Valid_vp_U
        BY DEF Init, Valid_vp_U
    <1>18. Valid_vr_U
        BY DEF Init, Valid_vr_U
    <1>19. Valid_vb_U
        BY DEF Init, Valid_vb_U
    <1>20. Valid_c
        BY DEF Init, Valid_c
    <1>21. Valid_d
        BY DEF Init, Valid_d
    <1>22. Valid_M
        BY DEF Init, InitState, StateSet, InitRet, ReturnSet, InitOp, OpSet, InitArg, ArgSet, Configs, Valid_M
    <1>23. QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>20, <1>21, <1>22
        
LEMMA NextTypeOK == TypeOK /\ [Next]_varlist => TypeOK'
    <1> USE DEF TypeOK, varlist, Step, NodeSet, PCVals, FindLines, UniteLines, FindU1, FindU2, FindU7, FindU8, FindRec,
                Valid_pc, Valid_parent, Valid_rank, Valid_bit, Valid_u_F, Valid_v_F, Valid_ur_F, Valid_ub_F, 
                Valid_w_F, Valid_vr_F, Valid_vb_F, Valid_u_U, Valid_v_U, Valid_up_U, Valid_ur_U, Valid_ub_U, Valid_vp_U, 
                Valid_vr_U, Valid_vb_U, Valid_c, Valid_d, Valid_M
    <1> SUFFICES ASSUME TypeOK,
                        [Next]_varlist
            PROVE  TypeOK'
        OBVIOUS    
    <1>1. ASSUME NEW p \in PROCESSES, Decide(p)
            PROVE TypeOK'
        BY <1>1 DEF TypeOK, Decide
    <1>2. ASSUME NEW p \in PROCESSES, U1(p)
            PROVE TypeOK'
        BY <1>2 DEF TypeOK, U1 
    <1>3. ASSUME NEW p \in PROCESSES, U2(p)
            PROVE TypeOK'
        BY <1>3 DEF TypeOK, U2
    <1>4. ASSUME NEW p \in PROCESSES, U3(p)
            PROVE TypeOK'
        BY <1>4 DEF TypeOK, U3
    <1>5. ASSUME NEW p \in PROCESSES, U4(p)
            PROVE TypeOK'
        BY <1>5 DEF TypeOK, U4
    <1>6. ASSUME NEW p \in PROCESSES, U5(p)
            PROVE TypeOK'
        BY <1>6 DEF TypeOK, U5
    <1>7. ASSUME NEW p \in PROCESSES, U6(p) \* Seems like the prover needs to be babied along a bit for this proof. Weird!
            PROVE TypeOK'
      <2>1. Valid_pc'
        BY <1>7 DEF TypeOK, U6
      <2>2. Valid_parent'
        BY <1>7 DEF TypeOK, U6
      <2>3. Valid_rank'
        BY <1>7 DEF TypeOK, U6
      <2>4. Valid_bit'
        BY <1>7 DEF TypeOK, U6
      <2>5. Valid_u_F'
        BY <1>7 DEF TypeOK, U6
      <2>6. Valid_v_F'
        BY <1>7 DEF TypeOK, U6
      <2>7. Valid_ur_F'
        BY <1>7 DEF TypeOK, U6
      <2>8. Valid_ub_F'
        BY <1>7 DEF TypeOK, U6
      <2>9. Valid_w_F'
        BY <1>7 DEF TypeOK, U6
      <2>10. Valid_vr_F'
        BY <1>7 DEF TypeOK, U6
      <2>11. Valid_vb_F'
        BY <1>7 DEF TypeOK, U6
      <2>12. Valid_u_U'
        BY <1>7 DEF TypeOK, U6
      <2>13. Valid_v_U'
        BY <1>7 DEF TypeOK, U6
      <2>14. Valid_up_U'
        BY <1>7 DEF TypeOK, U6
      <2>15. Valid_ur_U'
        BY <1>7 DEF TypeOK, U6
      <2>16. Valid_ub_U'
        BY <1>7 DEF TypeOK, U6
      <2>17. Valid_vp_U'
        BY <1>7 DEF TypeOK, U6
      <2>18. Valid_vr_U'
        BY <1>7 DEF TypeOK, U6
      <2>19. Valid_vb_U'
        BY <1>7 DEF TypeOK, U6
      <2>20. Valid_c'
        BY <1>7 DEF TypeOK, U6
      <2>21. Valid_d'
        BY <1>7 DEF TypeOK, U6
      <2>22. Valid_M'
        BY <1>7 DEF TypeOK, U6
      <2>23. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>2, <2>20, <2>21, <2>22, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
    <1>8. ASSUME NEW p \in PROCESSES, U7(p)
            PROVE TypeOK'
        BY <1>8 DEF TypeOK, U7
    <1>9. ASSUME NEW p \in PROCESSES, U8(p)
            PROVE TypeOK'
        BY <1>9 DEF TypeOK, U8
    <1>10. ASSUME NEW p \in PROCESSES, UR(p)
            PROVE TypeOK'
        BY <1>10 DEF TypeOK, UR
    <1>11. ASSUME NEW p \in PROCESSES, F1(p)
            PROVE TypeOK'
        BY <1>11 DEF TypeOK, F1
    <1>12. ASSUME NEW p \in PROCESSES, F2(p)
            PROVE TypeOK'
        BY <1>12 DEF TypeOK, F2
    <1>13. ASSUME NEW p \in PROCESSES, F3(p)
            PROVE TypeOK'
        BY <1>13 DEF TypeOK, F3
    <1>14. ASSUME NEW p \in PROCESSES, F4(p)
            PROVE TypeOK'
        BY <1>14 DEF TypeOK, F4
    <1>15. ASSUME NEW p \in PROCESSES, F5(p)
            PROVE TypeOK'
        BY <1>15 DEF TypeOK, F5
    <1>16. ASSUME NEW p \in PROCESSES, F6(p)
            PROVE TypeOK'
        BY <1>16 DEF TypeOK, F6
    <1>17. ASSUME NEW p \in PROCESSES, F7(p)
            PROVE TypeOK'
        BY <1>17 DEF TypeOK, F7        
    <1>18. ASSUME NEW p \in PROCESSES, FR(p)
            PROVE TypeOK'
        BY <1>18 DEF TypeOK, FR
    <1>19. CASE UNCHANGED varlist
        BY <1>19 DEF TypeOK
     <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19 DEF TypeOK, Step, Next
        
THEOREM TypeSafety == Spec => []TypeOK
    <1> SUFFICES ASSUME Spec 
        PROVE []TypeOK
            OBVIOUS
    <1> QED
        BY PTL, InitTypeOK, NextTypeOK DEF Spec

EdgeOK(i, j) ==     \/ bit[i] = 1
                    \/ rank[j] > rank[i]
                    \/ (rank[j] = rank[i] /\ j >= i)

\* Non line-specific invariants
EdgesMonotone ==            \A i \in NodeSet: EdgeOK(i, parent[i])

SigmaRespectsShared ==      \A t \in M: \A i \in NodeSet:   /\ bit[i] = 0       => t.sigma[i] = t.sigma[parent[i]]
                                                            /\ bit[i] = 1       => t.sigma[i] = i
                                                            
SharedRespectsSigma ==      \A t \in M: \A i \in NodeSet:   /\ t.sigma[i] = i   => bit[i] = 1

AllRootsInSigma ==          \A t \in M: \A i \in NodeSet:   /\   bit[i] = 1       => t.sigma[i] = i

\* Line Specific Invariants
FindOK(p, t) ==     /\ t.ret[p] = BOT
                    /\ t.op[p] = "F"
                    /\ t.arg[p] \in NodeSet
InvF1All(p, t) ==   TRUE
InvF2All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF3All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF4All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[v_F[p]]
                    /\ t.sigma[v_F[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], v_F[p])
InvF5All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ t.sigma[u_F[p]] = t.sigma[v_F[p]]
                    /\ t.sigma[w_F[p]] = t.sigma[v_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], v_F[p])
                    /\ EdgeOK(v_F[p], w_F[p])   
InvF6All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[v_F[p]]
                    /\ t.sigma[v_F[p]] = t.sigma[u_F[p]]
                    /\ t.sigma[w_F[p]] = t.sigma[v_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], v_F[p])
                    /\ EdgeOK(v_F[p], w_F[p])
InvF7All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[v_F[p]]
                    /\ t.sigma[v_F[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], v_F[p])

UniteOK(p, t) ==    /\ t.ret[p] = BOT
                    /\ t.op[p] = "U"
                    /\ t.arg[p] \in NodeSet \X NodeSet
InvU1All(p, t) ==   TRUE
InvU2All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
InvU3All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
InvU4All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
InvU5All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], up_U[p])
InvU6All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], up_U[p])
                    /\ EdgeOK(v_U[p], vp_U[p])
InvU7All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
InvU8All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])

InvDecide ==        \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "0"     =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = BOT
                                                                    /\ t.arg[p] = BOT
InvF1 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F1"    =>  /\ FindOK(p, t)
                                                                    /\ InvF1All(p, t)
                                            /\  pc[p] = "F1U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF1All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF1All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F1U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF1All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF1All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]


InvF2 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F2"    =>  /\ FindOK(p, t)
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F2U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            

InvF3 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F3"    =>  /\ FindOK(p, t)
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "F3U7"  =>   /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF4 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F4"    =>  /\ FindOK(p, t)
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F4U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF5 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F5"    =>  /\ FindOK(p, t)
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F5U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF6 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F6"    =>  /\ FindOK(p, t)
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F6U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF7 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F7"    =>  /\ FindOK(p, t)
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U1"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U2"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F7U7"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U8"  =>  /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvFR ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "FR"    =>  /\ t.ret[p] = u_F[p]
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                                            /\ pc[p] = "FRU1"  =>   /\ UniteOK(p, t)
                                                                    /\ InvU1All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU2"  =>   /\ UniteOK(p, t)
                                                                    /\ InvU2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "FRU7"  =>   /\ UniteOK(p, t)
                                                                    /\ InvU7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU8"  =>   /\ UniteOK(p, t)
                                                                    /\ InvU8All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvU1 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U1"    =>  /\ UniteOK(p, t)
                                                                /\ InvU1All(p, t)


InvU2 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U2"    =>  /\ UniteOK(p, t)
                                                                /\ InvU2All(p, t)

InvU3 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U3"    =>  /\ UniteOK(p, t)
                                                                /\ InvU3All(p, t)
InvU4 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U4"    =>  /\ UniteOK(p, t)
                                                                /\ InvU4All(p, t)

InvU5 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U5"    =>  /\ UniteOK(p, t)
                                                                /\ InvU5All(p, t)
InvU6 ==            \A p \in PROCESSES: \A t \in M:
                                           pc[p] = "U6"    =>   /\ UniteOK(p, t)
                                                                /\ InvU6All(p, t)

InvU7 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U7"    =>  /\ UniteOK(p, t)
                                                                /\ InvU7All(p, t)

InvU8 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U8"    =>  /\ UniteOK(p, t)
                                                                /\ InvU8All(p, t)

InvUR ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "UR"    =>  /\ t.ret[p] = ACK
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ t.sigma[u_U[p]] = t.sigma[v_U[p]]

Linearizable ==     M # {}

Inv ==  /\ InvDecide
        /\ InvF1
        /\ InvF2
        /\ InvF3
        /\ InvF4
        /\ InvF5
        /\ InvF6
        /\ InvF7
        /\ InvFR
        /\ InvU1
        /\ InvU2
        /\ InvU3
        /\ InvU4
        /\ InvU5
        /\ InvU6
        /\ InvU7
        /\ InvU8
        /\ InvUR
        /\ EdgesMonotone
        /\ SigmaRespectsShared
        /\ SharedRespectsSigma
        /\ AllRootsInSigma
        /\ Linearizable

THEOREM InitInv == Init => Inv
  <1> USE DEF Init, InvDecide, InvF1, InvF2, InvF3, InvF4, InvF5, InvF6, InvF7, InvFR, InvU1, InvU2, InvU3, InvU4, InvU5, InvU6, InvU7, InvU8, InvUR, EdgesMonotone, SigmaRespectsShared, SharedRespectsSigma, AllRootsInSigma, Linearizable
  <1> SUFFICES ASSUME Init PROVE Inv
    OBVIOUS
  <1>1. InvDecide
    BY DEF Init, InitState, InitRet, InitOp, InitArg
  <1>2. InvF1
    OBVIOUS
  <1>3. InvF2
    OBVIOUS
  <1>4. InvF3
    OBVIOUS
  <1>5. InvF4
    OBVIOUS
  <1>6. InvF5
    OBVIOUS
  <1>7. InvF6
    OBVIOUS
  <1>8. InvF7
    OBVIOUS
  <1>9. InvFR
    OBVIOUS
  <1>10. InvU1
    OBVIOUS
  <1>11. InvU2
    OBVIOUS
  <1>12. InvU3
    OBVIOUS
  <1>13. InvU4
    OBVIOUS
  <1>14. InvU5
    OBVIOUS
  <1>15. InvU6
    OBVIOUS
  <1>16. InvU7
    OBVIOUS
  <1>17. InvU8
    OBVIOUS
  <1>18. InvUR
    OBVIOUS
  <1>19. EdgesMonotone
    BY DEF Init, EdgesMonotone, EdgeOK
  <1>20. SigmaRespectsShared
    BY DEF Init, InitState
  <1>21. SharedRespectsSigma
    BY DEF Init, InitState
  <1>22. AllRootsInSigma
    BY DEF Init, InitState
  <1>23. Linearizable
    BY DEF Init
  <1>24. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>23, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
                                                            

=============================================================================
\* Modification History
\* Last modified Tue Jan 21 02:09:34 EST 2025 by karunram
\* Created Wed Sep 25 22:47:00 EDT 2024 by karunram