---------------------------- MODULE jtunionfind ----------------------------

\*
\* ALGORITHM:

\*     0:  CHOOSE i, j \in [1..n]: Find_p(i) \/ Unite_p(i, j)
    
\*         Find_p(c):
\*     F1:     u = c
\*     F2:     if F[u].bit = 1 goto FR ELSE goto F3
\*     F3:     a = READ(u); goto F4 or F7
\*     F4:     b = READ(a.parent)
\*     F5:     if v.bit = 1: u = a.parent; goto FR
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

EXTENDS FiniteSets, Integers, Sequences, TLAPS, FiniteSetTheorems
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
                                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.op = BOT
                                                                                        /\ t_old.arg = BOT
                                                                                        /\ t.sigma = t_old.sigma
                                                                                        /\ t.op = "F"
                                                                                        /\ t.arg = i}
                        /\ UNCHANGED <<F, u_F, a_F, b_F, u_U, v_U, a_U, b_U, d>>
                    \/  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                /\ c' = [c EXCEPT ![p] = i]
                                /\ d' = [d EXCEPT ![p] = j]
                                /\ pc' = [pc EXCEPT ![p] = "U1"]
                                /\ M' = {t \in Configs: \E t_old \in M: /\ t_old.op = BOT
                                                                        /\ t_old.arg = BOT
                                                                        /\ t.sigma = t_old.sigma
                                                                        /\ t.op = "U"
                                                                        /\ t.arg = <<i, j>>}
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


\* Type Statements
Valid_pc ==     pc \in [PROCESSES -> PCSet]
Valid_F ==      F \in [NodeSet -> FieldSet]
Valid_u_F ==    u_F \in [PROCESSES -> NodeSet]
Valid_a_F ==    a_F \in [PROCESSES -> FieldSet]
Valid_b_F ==    b_F \in [PROCESSES -> FieldSet]
Valid_u_U ==    u_U \in [PROCESSES -> NodeSet]
Valid_v_U ==    v_U \in [PROCESSES -> NodeSet]
Valid_a_U ==    a_U \in [PROCESSES -> FieldSet]
Valid_b_U ==    b_U \in [PROCESSES -> FieldSet]
Valid_c ==      c \in [PROCESSES -> NodeSet]
Valid_d ==      d \in [PROCESSES -> NodeSet]
Valid_M ==      M \in SUBSET Configs

TypeOK == /\ Valid_pc
          /\ Valid_F
          /\ Valid_u_F
          /\ Valid_a_F
          /\ Valid_b_F
          /\ Valid_u_U
          /\ Valid_v_U
          /\ Valid_a_U
          /\ Valid_b_U
          /\ Valid_c
          /\ Valid_d
          /\ Valid_M

LEMMA InitTypeOK == Init => TypeOK
    <1> USE DEF Init, TypeOK, Nat
    <1> SUFFICES ASSUME Init
        PROVE TypeOK
            OBVIOUS
    <1> TypeOK
      <2>1. Valid_pc
        BY DEF Init, Valid_pc, PCSet
      <2>2. Valid_F
        BY DEF Init, Valid_F, InitF, FieldSet
      <2>3. Valid_u_F
        BY DEF Init, Valid_u_F
      <2>4. Valid_a_F
        BY DEF Init, Valid_a_F
      <2>5. Valid_b_F
        BY DEF Init, Valid_b_F
      <2>6. Valid_u_U
        BY DEF Init, Valid_u_U
      <2>7. Valid_v_U
        BY DEF Init, Valid_v_U
      <2>8. Valid_a_U
        BY DEF Init, Valid_a_U
      <2>9. Valid_b_U
        BY DEF Init, Valid_b_U
      <2>10. Valid_c
        BY DEF Init, Valid_c
      <2>11. Valid_d
        BY DEF Init, Valid_d
      <2>12. Valid_M
        BY DEF Init, Valid_M, Configs, InitRet, InitOp, InitState, InitArg, StateSet, ReturnSet, OpSet, ArgSet
      <2>13. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
    <1> QED
        OBVIOUS
    
LEMMA NextTypeOK == TypeOK /\ [Next]_varlist => TypeOK'
    <1> USE DEF TypeOK, varlist, Step, NodeSet, PCSet, Valid_pc, Valid_F, Valid_u_F, Valid_a_F, Valid_b_F, Valid_u_U, Valid_v_U, Valid_a_U, Valid_b_U, Valid_c, Valid_d, Valid_M
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
    <1>7. ASSUME NEW p \in PROCESSES, U6(p)
            PROVE TypeOK'
      <2>1. Valid_pc'
        BY <1>7 DEF TypeOK, U6
      <2>2. Valid_F'
        BY <1>7 DEF TypeOK, U6, FieldSet, Nat
      <2>3. Valid_u_F'
        BY <1>7 DEF TypeOK, U6, FieldSet, Nat
      <2>4. Valid_a_F'
        BY <1>7 DEF TypeOK, U6
      <2>5. Valid_b_F'
        BY <1>7 DEF TypeOK, U6
      <2>6. Valid_u_U'
        BY <1>7 DEF TypeOK, U6
      <2>7. Valid_v_U'
        BY <1>7 DEF TypeOK, U6
      <2>8. Valid_a_U'
        BY <1>7 DEF TypeOK, U6
      <2>9. Valid_b_U'
        BY <1>7 DEF TypeOK, U6
      <2>10. Valid_c'
        BY <1>7 DEF TypeOK, U6
      <2>11. Valid_d'
        BY <1>7 DEF TypeOK, U6
      <2>12. Valid_M'
        BY <1>7 DEF TypeOK, U6
      <2>13. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
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
      <2>1. Valid_pc'
        BY <1>16 DEF TypeOK, F6
      <2>2. Valid_F'
        <3>1. a_F[p] \in FieldSet
            BY DEF FieldSet
        <3>2. b_F[p] \in FieldSet
            BY DEF FieldSet
        <3>3 F'[u_F[p]] = F[u_F[p]] \/ F'[u_F[p]] = [parent |-> b_F[p].parent, rank |-> a_F[p].rank, bit |-> 0]
            BY <1>16 DEF F6
        <3>4. F'[u_F[p]] \in FieldSet
            BY <3>1, <3>2, <3>3 DEF TypeOK, F6, FieldSet
        <3>5. \A i \in NodeSet: i # u_F[p] => F'[i] \in FieldSet 
            BY <1>16 DEF TypeOK, F6
        <3>6. \A j \in NodeSet: F'[j] \in FieldSet 
            BY <3>4, <3>5 DEF TypeOK
        <3>8. F' \in [NodeSet -> FieldSet]
            BY <1>16, <3>6 DEF TypeOK, F6
        <3> QED
            BY <3>8
      <2>3. Valid_u_F'
        BY <1>16 DEF TypeOK, F6
      <2>4. Valid_a_F'
        BY <1>16 DEF TypeOK, F6
      <2>5. Valid_b_F'
        BY <1>16 DEF TypeOK, F6
      <2>6. Valid_u_U'
        BY <1>16 DEF TypeOK, F6
      <2>7. Valid_v_U'
        BY <1>16 DEF TypeOK, F6
      <2>8. Valid_a_U'
        BY <1>16 DEF TypeOK, F6
      <2>9. Valid_b_U'
        BY <1>16 DEF TypeOK, F6
      <2>10. Valid_c'
        BY <1>16 DEF TypeOK, F6
      <2>11. Valid_d'
        BY <1>16 DEF TypeOK, F6
      <2>12. Valid_M'
        BY <1>16 DEF TypeOK, F6
      <2>13. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
        
    <1>17. ASSUME NEW p \in PROCESSES, F7(p)
            PROVE TypeOK'
        BY <1>17 DEF TypeOK, F7, FieldSet
    <1>18. ASSUME NEW p \in PROCESSES, FR(p)
            PROVE TypeOK'
        BY <1>18 DEF TypeOK, FR
    <1>19. CASE UNCHANGED varlist
        BY <1>19 DEF TypeOK
    <1>20. QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19 DEF TypeOK, Step, Next
  
THEOREM TypeSafety == Spec => []TypeOK
    <1> SUFFICES ASSUME Spec 
        PROVE []TypeOK
            OBVIOUS
    <1> QED
        BY PTL, InitTypeOK, NextTypeOK DEF Spec

EdgeOK(i, j) ==     \/ i = j
                    \/ F[i].bit = 1
                    \/  /\ F[i].bit = 0
                        /\  \/  F[j].rank > F[i].rank
                            \/ (F[j].rank = F[i].rank /\ j >= i)

\* Non line-specific invariants
EdgesMonotone ==            \A i \in NodeSet: EdgeOK(i, F[i].parent)

SigmaRespectsShared ==      \A t \in M: \A i \in NodeSet:   /\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                                            /\ F[i].bit = 1     => t.sigma[i] = i
                                                            
SharedRespectsSigma ==      \A t \in M: \A i \in NodeSet:   /\ t.sigma[i] = i   => F[i].bit = 1

InvF1All(p, t) ==   TRUE
InvF2All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF3All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF4All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
InvF5All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ t.sigma[u_F[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[b_F[p].parent] = t.sigma[a_F[p].parent]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
                    /\ EdgeOK(a_F[p].parent, b_F[p].parent)   
InvF6All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ t.sigma[b_F[p].parent] = t.sigma[a_F[p].parent]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
                    /\ EdgeOK(a_F[p].parent, b_F[p].parent)
InvF7All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)

InvU2All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])

InvU5All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], a_U[p].parent)
InvU6All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], a_U[p].parent)
                    /\ EdgeOK(v_U[p], b_U[p].parent)
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
                                            /\  pc[p] = "F1"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                            /\  pc[p] = "F1U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F1U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]


InvF2 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F2"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F2U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            

InvF3 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F3"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                        /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "F3U7"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF4 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F4"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F4U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF5 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F5"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F5U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF6 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F6"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                        /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F6U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF7 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F7"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F7U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvFR ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "FR"    =>  /\ t.ret[p] = u_F[p]
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                                            /\ pc[p] = "FRU1"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ t.sigma[u_F[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU2"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "FRU7"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU8"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvU1 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U1"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet


InvU2 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U2"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])

InvU3 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U3"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
InvU4 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U4"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]

InvU5 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U5"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]
                                                                /\ EdgeOK(u_U[p], a_U[p].parent)
InvU6 ==            \A p \in PROCESSES: \A t \in M:
                                           pc[p] = "U6"    =>   /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]
                                                                /\ EdgeOK(u_U[p], a_U[p].parent)
                                                                /\ EdgeOK(v_U[p], b_U[p].parent)

InvU7 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U7"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])

InvU8 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U8"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])

InvUR ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "UR"    =>  /\ t.ret[p] = ACK
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ t.sigma[u_U[p]] = t.sigma[v_U[p]]

Linearizable ==     M # {}

Inv ==  /\ TypeOK
        /\ InvDecide
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
        /\ Linearizable

THEOREM InitInv == Init => Inv
  <1> USE DEF Init, InvDecide, InvF1, InvF2, InvF3, InvF4, InvF5, InvF6, InvF7, InvFR, InvU1, InvU2, InvU3, InvU4, InvU5, InvU6, InvU7, InvU8, InvUR, EdgesMonotone, SigmaRespectsShared, SharedRespectsSigma, Linearizable, InitTypeOK
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
    BY DEF Init, EdgesMonotone, EdgeOK, InitF
  <1>20. SigmaRespectsShared
    BY DEF Init, InitState, InitF
  <1>21. SharedRespectsSigma
    BY DEF Init, InitState, InitF
  <1>22. Linearizable
    BY DEF Init
  <1>23. TypeOK
    BY InitTypeOK 
  <1>24. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9, <1>23 DEF Inv, TypeSafety

THEOREM NextInv == Inv /\ [Next]_varlist => Inv'
    <1> USE DEF AckBotDef
    <1> SUFFICES ASSUME Inv, [Next]_varlist
            PROVE Inv'
            OBVIOUS
    <1>1. TypeOK'
        BY NextTypeOK DEF Inv
    <1>2. Inv'
      <2>1. ASSUME NEW p \in PROCESSES,
                   F1(p)
            PROVE  Inv'
        <3> USE <2>1 DEF F1
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF2All(p_1, t)
                               /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2
          <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF2All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F2")'
                         PROVE  (/\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF2All(p_1, t))'
              OBVIOUS           
              <5>1. CASE pc[p_1] = "F1"
                  <6> InvF1
                      BY DEF Inv
                  <6> QED
                    BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
              <5>2. CASE pc[p_1] = "F2"  
                <6> QED
                  BY <5>2 DEF InvF2, EdgeOK, InvF2All
              <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F2U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. CASE pc[p_1] = "F1U1"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U1"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U2"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U2"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U7"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU7All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U7"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU7All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U8"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU8All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U8"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU8All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF4All(p_1, t)
                               /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF4
          <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK            
          <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
          <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK, InvU2All
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
            
          <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
                            
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF5All(p_1, t)
                               /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF5
          <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF5All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F5")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF5All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF7All(p_1, t)
                               /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF7
          <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF7All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F7")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF7All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.op[p_1] = "F")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. (t.arg[p_1] \in NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, EdgeOK, InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>2. ASSUME NEW p \in PROCESSES,
                   F2(p)
            PROVE  Inv'
        <3> USE <2>2 DEF F2
        <3>1. TypeOK'
            BY <1>1
        <3>2. InvDecide'
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
        <3>12. InvU2'
        <3>13. InvU3'
        <3>14. InvU4'
        <3>15. InvU5'
        <3>16. InvU6'
        <3>17. InvU7'
        <3>18. InvU8'
        <3>19. InvUR'
        <3>20. EdgesMonotone'
        <3>21. SigmaRespectsShared'
        <3>22. SharedRespectsSigma'
        <3>23. Linearizable'
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>3. ASSUME NEW p \in PROCESSES,
                   F3(p)
            PROVE  Inv'
        <3> USE <2>3 DEF F3
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF2All(p_1, t)
                               /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2
          <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF2All(p_1, t))'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All
          <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU7All
          <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU8All
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> QED
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF5All(p_1, t)
                               /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF5
          <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF5All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F5")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF5All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4>6. QED
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>4. ASSUME NEW p \in PROCESSES,
                   F4(p)
            PROVE  Inv'
        <3> USE <2>4 DEF F4
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF2All(p_1, t)
                               /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2
          <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF2All(p_1, t))'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All
          <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU7All
          <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU8All
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF4All(p_1, t)
                               /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF4
          <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK            
          <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
          <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK, InvU2All
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
            
          <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
                            
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> QED
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All, Valid_v_U, Valid_c
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF7All(p_1, t)
                               /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF7
          <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF7All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F7")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF7All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.op[p_1] = "F")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. (t.arg[p_1] \in NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, EdgeOK, InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
            
      <2>5. ASSUME NEW p \in PROCESSES,
                   F5(p)
            PROVE  Inv'
        <3> USE <2>5 DEF F5
        <3>1. TypeOK'
            BY <1>1
        <3>2. InvDecide'
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
        <3>12. InvU2'
        <3>13. InvU3'
        <3>14. InvU4'
        <3>15. InvU5'
        <3>16. InvU6'
        <3>17. InvU7'
        <3>18. InvU8'
        <3>19. InvUR'
        <3>20. EdgesMonotone'
        <3>21. SigmaRespectsShared'
        <3>22. SharedRespectsSigma'
        <3>23. Linearizable'
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>6. ASSUME NEW p \in PROCESSES,
                   F6(p)
            PROVE  Inv'
        <3> USE <2>6 DEF F6
        <3>1. TypeOK'
            BY <1>1
        <3>2. InvDecide'
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
        <3>12. InvU2'
        <3>13. InvU3'
        <3>14. InvU4'
        <3>15. InvU5'
        <3>16. InvU6'
        <3>17. InvU7'
        <3>18. InvU8'
        <3>19. InvUR'
        <3>20. EdgesMonotone'
        <3>21. SigmaRespectsShared'
        <3>22. SharedRespectsSigma'
        <3>23. Linearizable'
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>7. ASSUME NEW p \in PROCESSES,
                   F7(p)
            PROVE  Inv'
        <3> USE <2>7 DEF F7
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4>6. QED
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF4All(p_1, t)
                               /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF4
          <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK            
          <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
          <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK, InvU2All
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
            
          <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
                            
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF5All(p_1, t)
                               /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF5
          <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF5All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F5")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF5All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF7All(p_1, t)
                               /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF7
          <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF7All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F7")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF7All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.op[p_1] = "F")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. (t.arg[p_1] \in NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, EdgeOK, InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>8. ASSUME NEW p \in PROCESSES,
                   FR(p)
            PROVE  Inv'
      <2>9. ASSUME NEW p \in PROCESSES,
                   U1(p)
            PROVE  Inv'
        <3> USE <2>9 DEF U1 
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5>1. CASE pc[p_1] = "U1"
              <6> InvU1
                BY DEF Inv
              <6> SUFFICES ASSUME (pc[p_1] = "F1U1")'
                           PROVE  (  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "U"
                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                OBVIOUS
              <6> USE <5>1
              <6>1. (/\ t.ret[p_1] = BOT
                     /\ t.op[p_1] = "U")'
                BY DEF InvU1
              <6>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvU1, TypeOK, Valid_c, Valid_u_U
              <6>3. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvU1, TypeOK, Valid_c, Valid_u_U
              <6>4. QED
                BY <6>1, <6>2, <6>3
            <5>2. CASE pc[p_1] = "F1U1"
              <6> SUFFICES ASSUME (pc[p_1] = "F1U1")'
                           PROVE  (  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "U"
                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                OBVIOUS
              <6> QED
                BY <5>2 DEF InvF1
            <5> QED
                BY <5>1, <5>2 DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF2All(p_1, t)
                               /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2
          <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF2All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F2")'
                         PROVE  (/\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF2All(p_1, t))'
              OBVIOUS           
              <5>1. CASE pc[p_1] = "F1"
                  <6> InvF1
                      BY DEF Inv
                  <6> QED
                    BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
              <5>2. CASE pc[p_1] = "F2"  
                <6> QED
                  BY <5>2 DEF InvF2, EdgeOK, InvF2All
              <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F2U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. CASE pc[p_1] = "F1U1"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U1"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U2"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U2"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U7"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU7All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U7"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU7All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U8"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU8All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U8"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU8All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF4All(p_1, t)
                               /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF4
          <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK            
          <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
          <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK, InvU2All
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
            
          <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
                            
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF5All(p_1, t)
                               /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF5
          <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF5All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F5")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF5All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF7All(p_1, t)
                               /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF7
          <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF7All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F7")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF7All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.op[p_1] = "F")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. (t.arg[p_1] \in NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, EdgeOK, InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>10. ASSUME NEW p \in PROCESSES,
                    U2(p)
             PROVE  Inv'
        <3> USE <2>10 DEF U2
        <3>1. TypeOK'
            BY <1>1
        <3> USE <3>1
        <3>2. InvDecide'
          <4> InvDecide
            BY DEF Inv
          <4> QED
            BY DEF InvDecide, TypeOK, Valid_pc, PCSet
        <3>3. InvF1'
          <4> InvF1
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                               /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet)'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "U2"
                <6> SUFFICES ASSUME (pc[p_1] = "F1U2")'
                             PROVE  (  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                    OBVIOUS
                <6> InvU2
                    BY DEF Inv
                <6> QED
                    BY <5>1 DEF InvU2, InvF1, InvU2All, EdgeOK
            <5>2. CASE pc[p_1] = "F1U2"
                <6> SUFFICES ASSUME (pc[p_1] = "F1U2")'
                             PROVE  (  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                    OBVIOUS
                <6> QED
                    BY <5>2 DEF InvF1, InvU2All, EdgeOK
            <5> QED
              BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
            
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>4. InvF2'
          <4> InvF2
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF2All(p_1, t)
                               /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF2
          <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF2All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F2")'
                         PROVE  (/\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF2All(p_1, t))'
              OBVIOUS           
              <5>1. CASE pc[p_1] = "F1"
                  <6> InvF1
                      BY DEF Inv
                  <6> QED
                    BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
              <5>2. CASE pc[p_1] = "F2"  
                <6> QED
                  BY <5>2 DEF InvF2, EdgeOK, InvF2All
              <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F2U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. CASE pc[p_1] = "F1U1"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U1"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U2"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU2All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U2"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU2All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U7"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU7All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U7"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU7All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF2All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5>1. CASE pc[p_1] = "F1U8"
              <6> InvF1
                  BY DEF Inv
              <6> QED
                BY <5>1 DEF InvF1, TypeOK, Valid_c, Valid_u_F, EdgeOK, InvF2All, InvU8All, Valid_pc, PCSet
            <5>2. CASE pc[p_1] = "F2U8"  
              <6> QED
                BY <5>2 DEF InvF2, InvF2All, InvU8All, EdgeOK
            <5> QED
                BY <5>1, <5>2 DEF TypeOK, Valid_pc, PCSet
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>5. InvF3'
          <4> InvF3
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF3All(p_1, t)
                               /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF3All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3
          <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF3All(p_1, t))'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
          <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ InvF3All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF3All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>6. InvF4'
          <4> InvF4
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF4All(p_1, t)
                               /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF4All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF4
          <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK            
          <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
          <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, InvU2All
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK, InvU2All
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, InvF4All
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
            
          <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF4All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF4All(p_1, t)'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, InvF4All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF4, TypeOK, Valid_pc, PCSet, EdgeOK
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
                            
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>7. InvF5'
          <4> InvF5
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF5All(p_1, t)
                               /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF5All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF5
          <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF5All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F5")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF5All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF5All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF5All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF5All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
               BY DEF InvF5, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>8. InvF6'
          <4> InvF6
              BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF6All(p_1, t)
                               /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                           /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF6All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6
          <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF6All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F6")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF6All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.op[p_1] = "F")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. (t.arg[p_1] \in NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
               
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF6All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
               BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF6All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
              <6>4. EdgeOK(c[p_1], u_F[p_1])'
                <7>1. EdgeOK(c[p_1], u_F[p_1])
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. c'[p_1] = c[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                <7>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. u_F'[p_1] = u_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
                <7>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                    BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
                <7>2. b_F'[p_1] = b_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
                <7>3. a_F'[p_1] = a_F[p_1]
                    BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
                <7> QED
                    BY <7>1, <7>2, <7>3 DEF EdgeOK
              <6>7. QED
                BY <6>1, <6>2, <6>3, <6>4, <6>5, <6>6 DEF InvF6All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF6, TypeOK, Valid_pc, PCSet 
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>9. InvF7'
          <4> InvF7
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ InvF7All(p_1, t)
                               /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ InvF7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF7
          <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF7All(p_1, t))'
            <5> SUFFICES ASSUME (pc[p_1] = "F7")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                 /\ t.arg[p_1] \in NodeSet
                                 /\ InvF7All(p_1, t))'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.op[p_1] = "F")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. (t.arg[p_1] \in NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>5. QED
              BY <5>1, <5>2, <5>3, <5>4
          <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>3. InvU2All(p_1, t)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              <6>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All
              <6>3. EdgeOK(c[p_1], u_F[p_1])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
              <6>5. QED
                BY <6>1, <6>2, <6>3, <6>4 DEF InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
                BY DEF InvF7, TypeOK, Valid_pc, PCSet 
            <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, EdgeOK, InvF7All
            <5>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF7All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            <5> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                         PROVE  (  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              OBVIOUS
            <5>1. (/\ t.ret[p_1] = BOT
                   /\ t.op[p_1] = "U")'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>3. InvU8All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
            <5>4. InvF7All(p_1, t)'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet, InvF7All, EdgeOK
            <5>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
              BY DEF InvF7, TypeOK, Valid_pc, PCSet
            <5>6. QED
              BY <5>1, <5>2, <5>3, <5>4, <5>5
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>10. InvFR'
          <4> InvFR
            BY DEF Inv
          <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                              NEW t \in M'
                       PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                         /\ t.op[p_1] = "F"
                                                       /\ t.arg[p_1] \in NodeSet
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]]
                               /\ pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU2All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]]
                               /\ pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU7All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]]
                               /\ pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                       /\ InvU8All(p_1, t)
                                                       /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR
          <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet
          <4>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU2All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
          <4>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU7All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
          <4>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                        /\ t.op[p_1] = "U"
                                      /\ t.arg[p_1] \in NodeSet \X NodeSet
                                      /\ InvU8All(p_1, t)
                                      /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
        <3>11. InvU1'
            BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
        <3>12. InvU2'
            <4> InvU2
                BY DEF Inv
            <4> QED
                BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
        <3>13. InvU3'
             BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
        <3>15. InvU5'
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
        <3>16. InvU6'
          BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
        <3>17. InvU7'
          BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
        <3>18. InvU8'
          BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
        <3>19. InvUR'
          BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
        <3>20. EdgesMonotone'
          <4> EdgesMonotone
            BY DEF Inv
          <4> QED
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
          <4> SigmaRespectsShared
            BY DEF Inv
          <4> QED
          BY DEF SigmaRespectsShared, EdgeOK
        <3>22. SharedRespectsSigma'
          <4> SharedRespectsSigma
            BY DEF Inv
          <4> QED
            BY DEF SharedRespectsSigma, EdgeOK
        <3>23. Linearizable'
          <4> Linearizable
            BY DEF Inv
          <4> QED
            BY DEF Linearizable
        <3>24. QED
          BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>11. ASSUME NEW p \in PROCESSES,
                    U3(p)
             PROVE  Inv'
            <3>24. QED
\*                BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv

      <2>12. ASSUME NEW p \in PROCESSES,
                    U4(p)
             PROVE  Inv'
        <3> USE <2>12 DEF U4 
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
            BY DEF TypeOK, Valid_pc, PCSet, InvDecide 
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
            BY DEF TypeOK, Valid_pc, PCSet, InvU1            
        <3>12. InvU2'
            BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK
        <3>13. InvU3'
            BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK
        <3>15. InvU5' \* TODO: THIS IS A BIT NONTRIVIAL.
        <3>16. InvU6'
            BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK
        <3>17. InvU7'
            BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK
        <3>18. InvU8'
            BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK
        <3>19. InvUR'
            BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK
        <3>20. EdgesMonotone'
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
            BY DEF SigmaRespectsShared
        <3>22. SharedRespectsSigma'
            BY DEF SharedRespectsSigma
        <3>23.  Linearizable'
            BY DEF Linearizable
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>13. ASSUME NEW p \in PROCESSES,
                    U5(p)
             PROVE  Inv'
        <3> USE <2>13 DEF U5
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
            BY DEF TypeOK, Valid_pc, PCSet, InvDecide 
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
            BY DEF TypeOK, Valid_pc, PCSet, InvU1            
        <3>12. InvU2'
            BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK
        <3>13. InvU3'
            BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK
        <3>15. InvU5' 
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK
        <3>16. InvU6'\* TODO: THIS IS A BIT NONTRIVIAL.
        <3>17. InvU7'
            BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK
        <3>18. InvU8'
            BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK
        <3>19. InvUR'
            BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK
        <3>20. EdgesMonotone'
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
            BY DEF SigmaRespectsShared
        <3>22. SharedRespectsSigma'
            BY DEF SharedRespectsSigma
        <3>23.  Linearizable'
            BY DEF Linearizable
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>14. ASSUME NEW p \in PROCESSES,
                    U6(p)
             PROVE  Inv'
        <3> USE <2>14 DEF U6
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
        <3>12. InvU2'
        <3>13. InvU3'
        <3>14. InvU4'
        <3>15. InvU5' 
        <3>16. InvU6'
        <3>17. InvU7' \* Nontrivial
        <3>18. InvU8'
        <3>19. InvUR'
        <3>20. EdgesMonotone'
        <3>21. SigmaRespectsShared'
        <3>22. SharedRespectsSigma'
        <3>23.  Linearizable'
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>15. ASSUME NEW p \in PROCESSES,
                    U7(p)
             PROVE  Inv'
        <3> USE <2>15 DEF U7
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
            BY DEF TypeOK, Valid_pc, PCSet, InvDecide 
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
            BY DEF TypeOK, Valid_pc, PCSet, InvU1            
        <3>12. InvU2'
            BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK
        <3>13. InvU3'
            BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK
        <3>15. InvU5' 
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK
        <3>16. InvU6'
            BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK
        <3>17. InvU7'
            BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK
        <3>18. InvU8'
            BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK
        <3>19. InvUR'
            BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK
        <3>20. EdgesMonotone'
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
            BY DEF SigmaRespectsShared
        <3>22. SharedRespectsSigma'
            BY DEF SharedRespectsSigma
        <3>23.  Linearizable'
            BY DEF Linearizable
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>16. ASSUME NEW p \in PROCESSES,
                    U8(p)
             PROVE  Inv'
        <3> USE <2>16 DEF U8
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
            BY DEF TypeOK, Valid_pc, PCSet, InvDecide 
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
            BY DEF TypeOK, Valid_pc, PCSet, InvU1            
        <3>12. InvU2'
            BY DEF TypeOK, Valid_pc, PCSet, InvU2, EdgeOK
        <3>13. InvU3'
            BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK
        <3>14. InvU4'
            BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK
        <3>15. InvU5' 
            BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK
        <3>16. InvU6'
            BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK
        <3>17. InvU7'
            BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK
        <3>18. InvU8'
            BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK
        <3>19. InvUR'
            BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK
        <3>20. EdgesMonotone'
            BY DEF EdgesMonotone, EdgeOK
        <3>21. SigmaRespectsShared'
            BY DEF SigmaRespectsShared
        <3>22. SharedRespectsSigma'
            BY DEF SharedRespectsSigma
        <3>23.  Linearizable'
            BY DEF Linearizable
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>17. ASSUME NEW p \in PROCESSES,
                    UR(p)
             PROVE  Inv'
        <3> USE <2>17 DEF UR
        <3>1. TypeOK'
            BY NextTypeOK
        <3>2. InvDecide'
        <3>3. InvF1'
        <3>4. InvF2'
        <3>5. InvF3'
        <3>6. InvF4'
        <3>7. InvF5'
        <3>8. InvF6'
        <3>9. InvF7'
        <3>10. InvFR'
        <3>11. InvU1'
        <3>12. InvU2'
        <3>13. InvU3'
        <3>14. InvU4'
        <3>15. InvU5' 
        <3>16. InvU6'
        <3>17. InvU7'
        <3>18. InvU8'
        <3>19. InvUR'
        <3>20. EdgesMonotone'
        <3>21. SigmaRespectsShared'
        <3>22. SharedRespectsSigma'
        <3>23.  Linearizable'
        <3>24. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>22, <3>23, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
      <2>18. ASSUME NEW p \in PROCESSES,
                    Decide(p)
             PROVE  Inv'
        <3> USE <2>18 DEF Decide
        <3>24. QED
          BY TRUE
      <2>19. CASE UNCHANGED varlist
      <2>20. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF Next, Step, Inv
    <1> QED
        BY <1>2
                                                            

=============================================================================
\* Modification History
\* Last modified Wed Apr 02 14:30:42 EDT 2025 by karunram
\* Created Wed Sep 25 22:47:00 EDT 2024 by kaunram