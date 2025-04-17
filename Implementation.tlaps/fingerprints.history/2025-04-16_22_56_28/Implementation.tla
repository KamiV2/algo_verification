--------------------------- MODULE Implementation ---------------------------
\*
\* ALGORITHM:

\*     0:  CHOOSE i, j \in [1..n]: Find_p(i) \/ Unite_p(i, j)
    
\*         Find_p(c):
\*     F1:     u = c
\*     F2:     if F[u].bit = 1 goto FR ELSE goto F3
\*     F3:     a = READ(u); goto F4 or F7
\*     F4:     b = READ(a.parent)
\*     F5:     if b.bit = 1: u = a.parent; goto FR
\*     F6:     CAS(F[u], [a.parent, a.rank, 0], [b.parent, a.rank, 0]); goto F2
\*     F7:     u = v; goto F2
\*     FR:     return u

\*         Unite_p(c, d):
\*     U1:    u = c; v = d
\*            u = Find_p(u)
\*     U2:    v = Find_p(v)
\*     U3:    if u = v goto UR
\*     U4:    a = [u_p, u_r, u_b] = READ(u)
\*     U5:    b = [v_p, v_r, v_b] = READ(v)
\*     U6:    if a.rank < b.rank then CAS(F[u], [a.parent, a.rank, 1], [v, a.rank, 0])
\*     U6:    elif u_r > v_r then CAS(F[v], [b.parent, b.rank, 1], [u, b.rank, 0])
\*     U6:    else:
\*     U6:       if u < v then CAS(F[u], [a.parent, a.rank, 1], [v, a.rank, $])
\*     U6:       else: CAS(F[v], [b.parent, b.rank, 1], [u, b.rank, $])
\*     U7:    u = Find_p(u)
\*     U8:    v = Find_p(v); goto U3
\*     UR:    return ACK
\* 

EXTENDS FiniteSets, Integers
CONSTANT BOT, ACK, PROCESSES, N
VARIABLES pc, F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d, M
NodeSet ==          1..N
ASSUME NisNat ==    (N \in Nat) /\ (N > 0)
ASSUME AckBotDef == BOT \notin NodeSet /\ ACK \notin NodeSet /\ BOT # ACK
ASSUME ExistProc == PROCESSES # {}

\* Line Definitions
varlist ==          <<pc, F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d, M>>

\* Type Sets
PCSet ==            {"0", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "FR", 
                        "U1", "U2", "U3", "U4", "U5", "U6", "U7", "U8", "UR", 
                        "F1U1", "F2U1", "F3U1", "F4U1", "F5U1", "F6U1", "F7U1", "F8U1", "FRU1",
                        "F1U2", "F2U2", "F3U2", "F4U2", "F5U2", "F6U2", "F7U2", "F8U2", "FRU2",
                        "F1U7", "F2U7", "F3U7", "F4U7", "F5U7", "F6U7", "F7U7", "F8U7", "FRU7",
                        "F1U8", "F2U8", "F3U8", "F4U8", "F5U8", "F6U8", "F7U8", "F8U8", "FRU8"}
FieldSet ==         [parent: NodeSet, rank: Nat, bit: {0, 1}]
StateSet ==         {A \in [NodeSet -> NodeSet]: \A i \in NodeSet : A[A[i]] = A[i]}
ReturnSet ==        [PROCESSES -> NodeSet \cup {BOT} \cup {ACK}]
OpSet ==            [PROCESSES -> {"F", "U", BOT}]
ArgSet ==           [PROCESSES -> {BOT} \cup NodeSet \cup NodeSet \X NodeSet]
Configs ==          [sigma: StateSet, ret: ReturnSet, op: OpSet, arg: ArgSet]

\* InitStates
InitState ==        [i \in NodeSet |-> i]
InitF ==            [i \in NodeSet |-> [parent |-> i, rank |-> 0, bit |-> 1]]
InitRet ==          [p \in PROCESSES |-> BOT]
InitOp ==           [p \in PROCESSES |-> BOT]
InitArg ==          [p \in PROCESSES |-> BOT]


\* Initial state of algorithm
Init ==         /\ pc = [p \in PROCESSES |-> "0"]
                /\ F  = InitF
                /\ a_F \in [PROCESSES -> FieldSet]
                /\ b_F \in [PROCESSES -> FieldSet]
                /\ u_F \in [PROCESSES -> NodeSet]
                /\ a_U \in [PROCESSES -> FieldSet]
                /\ b_U \in [PROCESSES -> FieldSet]
                /\ u_U \in [PROCESSES -> NodeSet]
                /\ v_U \in [PROCESSES -> NodeSet]
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
                /\ UNCHANGED <<F, a_F, b_F, u_U, v_U, a_U, b_U, c, d, M>>

F2(p) ==        /\ IF F[u_F[p]].bit = 1
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
                /\ IF F[u_F[p]].bit = 1
                        THEN M' =   {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT 
                                                                    /\ t.sigma = t_old.sigma
                                                                    /\ t.ret = [t_old.ret EXCEPT ![p] = u_F[p]]
                                                                    /\ t.op = t_old.op
                                                                    /\ t.arg = t_old.arg}
                        ELSE M' = M
                /\ UNCHANGED <<F, a_F, b_F, u_F, u_U, v_U, a_U, b_U, c, d>>
                
F3(p) ==        /\  a_F' = [a_F EXCEPT ![p] = F[u_F[p]]]
                /\  \/ pc[p] = "F3"    /\ (pc' = [pc EXCEPT ![p] = "F4"]    \/ pc' = [pc EXCEPT ![p] = "F7"])
                    \/ pc[p] = "F3U1"  /\ (pc' = [pc EXCEPT ![p] = "F4U1"]  \/ pc' = [pc EXCEPT ![p] = "F7U1"])
                    \/ pc[p] = "F3U2"  /\ (pc' = [pc EXCEPT ![p] = "F4U2"]  \/ pc' = [pc EXCEPT ![p] = "F7U2"])
                    \/ pc[p] = "F3U7"  /\ (pc' = [pc EXCEPT ![p] = "F4U7"]  \/ pc' = [pc EXCEPT ![p] = "F7U7"])
                    \/ pc[p] = "F3U8"  /\ (pc' = [pc EXCEPT ![p] = "F4U8"]  \/ pc' = [pc EXCEPT ![p] = "F7U8"])
                /\ UNCHANGED <<F, u_F, b_F, u_U, v_U, a_U, b_U, c, d, M>>

F4(p) ==        /\ b_F' = [b_F EXCEPT ![p] = F[u_F[p]]]
                /\  \/ pc[p] = "F4"     /\ pc' = [pc EXCEPT ![p] = "F5"]
                    \/ pc[p] = "F4U1"   /\ pc' = [pc EXCEPT ![p] = "F5U1"]
                    \/ pc[p] = "F4U2"   /\ pc' = [pc EXCEPT ![p] = "F5U2"]
                    \/ pc[p] = "F4U7"   /\ pc' = [pc EXCEPT ![p] = "F5U7"]
                    \/ pc[p] = "F4U8"   /\ pc' = [pc EXCEPT ![p] = "F5U8"]
                /\ UNCHANGED <<F, u_F, a_F, u_U, v_U, a_U, b_U, c, d, M>>

F5(p) ==        /\ IF b_F[p].bit = 1
                        THEN    /\ u_F' = [u_F EXCEPT ![p] = a_F[p].parent]
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
                /\ IF b_F[p].bit = 1
                        THEN M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT 
                                                                  /\ t.sigma = t_old.sigma
                                                                  /\ t.ret = [t_old.ret EXCEPT ![p] = a_F[p].parent]
                                                                  /\ t.op = t_old.op
                                                                  /\ t.arg = t_old.arg}
                        ELSE M' = M
                /\ UNCHANGED <<F, a_F, b_F, u_F, u_U, v_U, a_U, b_U, c, d>>

F6(p) ==        /\ IF (F[u_F[p]] = [parent |-> a_F[p].parent, rank |-> a_F[p].rank, bit |-> 0])
                        THEN    /\ F' = [F EXCEPT ![u_F[p]] = [parent |-> b_F[p].parent, rank |-> a_F[p].rank, bit |-> 0]]
                        ELSE    /\ F' = F
                /\  \/ pc[p] = "F6"     /\ pc' = [pc EXCEPT ![p] = "F2"]
                    \/ pc[p] = "F6U1"   /\ pc' = [pc EXCEPT ![p] = "F2U1"]
                    \/ pc[p] = "F6U2"   /\ pc' = [pc EXCEPT ![p] = "F2U2"]
                    \/ pc[p] = "F6U7"   /\ pc' = [pc EXCEPT ![p] = "F2U7"]
                    \/ pc[p] = "F6U8"   /\ pc' = [pc EXCEPT ![p] = "F2U8"]
                /\ UNCHANGED <<a_F, b_F, u_F, u_U, v_U, a_U, b_U, c, d, M>>
                

F7(p) ==        /\ u_F' = [u_F EXCEPT ![p] = a_F[p].parent]
                /\  \/ pc[p] = "F7"     /\ pc' = [pc EXCEPT ![p] = "F2"]
                    \/ pc[p] = "F7U1"   /\ pc' = [pc EXCEPT ![p] = "F2U1"]
                    \/ pc[p] = "F7U2"   /\ pc' = [pc EXCEPT ![p] = "F2U2"]
                    \/ pc[p] = "F7U7"   /\ pc' = [pc EXCEPT ![p] = "F2U7"]
                    \/ pc[p] = "F7U8"   /\ pc' = [pc EXCEPT ![p] = "F2U8"]
                /\ UNCHANGED <<F, a_F, b_F, u_U, v_U, a_U, b_U, c, d, M>>

FR(p) ==        /\ pc' = [pc EXCEPT ![p] = "0"]
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
                /\ UNCHANGED <<F, a_F, b_F, u_F, u_U, v_U, a_U, b_U, c, d>>

U1(p) ==        /\ pc[p] = "U1"
                /\ pc'  = [pc EXCEPT ![p] = "F1U1"]
                /\ u_U' = [u_U EXCEPT ![p] = c[p]]
                /\ v_U' = [v_U EXCEPT ![p] = d[p]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, a_U, b_U, c, d, M>>
                
U2(p) ==        /\ pc[p] = "U2"
                /\ pc'  = [pc EXCEPT ![p] = "F1U2"]
                /\ c'   = [c EXCEPT ![p] = v_U[p]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, a_U, b_U, u_U, v_U, d, M>>
                
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
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, u_U, v_U, c, d>>

U4(p) ==        /\ pc[p] = "U4"
                /\ pc' = [pc EXCEPT ![p] = "U5"]
                /\ a_U' = [a_U EXCEPT ![p] = F[u_U[p]]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, b_U, c, d, M>>

U5(p) ==        /\ pc[p] = "U5"
                /\ pc' = [pc EXCEPT ![p] = "U6"]
                /\ b_U' = [b_U EXCEPT ![p] = F[v_U[p]]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, c, d, M>>

U6(p) ==        /\ pc[p] = "U6"
                /\  IF a_U[p].rank < b_U[p].rank
                            THEN IF F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
                                    THEN    /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                                            /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                    /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = u_U[p] 
                                                                                                                        THEN v_U[p] 
                                                                                                                        ELSE t_old.sigma[i]]
                                                                                    /\ t_old.op = t.op
                                                                                    /\ t_old.arg = t.arg}
                                    ELSE    /\ F' = F
                                            /\ M' = M
                    ELSE IF a_U[p].rank < b_U[p].rank
                            THEN IF F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
                                    THEN    /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                                            /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                    /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = v_U[p] 
                                                                                                                        THEN u_U[p] 
                                                                                                                        ELSE t_old.sigma[i]]
                                                                                    /\ t_old.op = t.op
                                                                                    /\ t_old.arg = t.arg}
                                    ELSE    /\ F' = F
                                            /\ M' = M
                    ELSE 
                            IF u_U[p] < v_U[p] \* ranks are equal
                                    THEN IF F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] \* u < v
                                            THEN    \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                                                        /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                                /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = v_U[p] 
                                                                                                                                    THEN u_U[p] 
                                                                                                                                    ELSE t_old.sigma[i]]
                                                                                                /\ t_old.op = t.op
                                                                                                /\ t_old.arg = t.arg}
                                                    \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 1]]
                                                        /\ M' = M
                                            ELSE    /\ F' = F
                                                    /\ M' = M
                                    ELSE IF F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1] \* v > u
                                            THEN    \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                                                        /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret = t.ret
                                                                                                /\ t.sigma = [i \in NodeSet |-> IF t_old.sigma[i] = v_U[p] 
                                                                                                                                    THEN u_U[p] 
                                                                                                                                    ELSE t_old.sigma[i]]
                                                                                                /\ t_old.op = t.op
                                                                                                /\ t_old.arg = t.arg}
                                                    \/  /\ F' = F
                                                        /\ M' = M
                                            ELSE    /\ F' = F
                                                    /\ M' = M
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>

U7(p) ==        /\ pc[p] = "U7"
                /\ pc' = [pc EXCEPT ![p] = "F1U7"]
                /\ c' = [c EXCEPT ![p] = u_U[p]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, d, M>>

U8(p) ==        /\ pc[p] = "U8"
                /\ pc' = [pc EXCEPT ![p] = "F1U8"]
                /\ c' = [c EXCEPT ![p] = v_U[p]]
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, d, M>>

UR(p) ==        /\ pc[p] = "UR"
                /\ pc' = [pc EXCEPT ![p] = "0"]
                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = ACK 
                                                        /\ t.sigma = t_old.sigma
                                                        /\ t.ret = [t_old.ret EXCEPT ![p] = BOT]
                                                        /\ t.op = BOT
                                                        /\ t.arg = BOT}
                /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>

Decide(p) ==    /\ pc[p] = "0"
                /\  \/  /\ \E i \in NodeSet:    /\ c' = [c EXCEPT ![p] = i]
                                                /\ pc' = [pc EXCEPT ![p] = "F1"]
                                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT
                                                                                        /\ t_old.op[p] = BOT
                                                                                        /\ t_old.arg[p] = BOT
                                                                                        /\ t.sigma = t_old.sigma
                                                                                        /\ t.op = [t_old.op EXCEPT ![p] = "F"]
                                                                                        /\ t.arg = [t_old.arg EXCEPT ![p] = i]
                                                                                        /\ t.ret = t_old.ret}
                        /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, d>>
                    \/  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                /\ c' = [c EXCEPT ![p] = i]
                                /\ d' = [d EXCEPT ![p] = j]
                                /\ pc' = [pc EXCEPT ![p] = "U1"]
                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.ret[p] = BOT
                                                                        /\ t_old.op[p] = BOT
                                                                        /\ t_old.arg[p] = BOT
                                                                        /\ t.sigma = t_old.sigma
                                                                        /\ t.op = [t_old.op EXCEPT ![p] = "U"]
                                                                        /\ t.arg = [t_old.arg EXCEPT ![p] = <<i, j>>]
                                                                        /\ t.ret = t_old.ret}
                        /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U>>

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

=============================================================================
\* Modification History
\* Last modified Mon Apr 14 22:09:11 EDT 2025 by karunram
\* Created Thu Apr 03 12:26:37 EDT 2025 by karunram
