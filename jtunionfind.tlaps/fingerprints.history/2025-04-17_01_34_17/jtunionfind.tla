---------------------------- MODULE jtunionfind ----------------------------

EXTENDS FiniteSets, Integers, Implementation, Inv, TypeSafety, Lemmas


THEOREM Inv /\ [Next]_varlist => Inv
  <1> SUFFICES ASSUME Inv,
                      [Next]_varlist
               PROVE  Inv
    OBVIOUS
  <1>1. ASSUME NEW p \in PROCESSES,
               F1(p)
        PROVE  Inv
  <1>2. ASSUME NEW p \in PROCESSES,
               F2(p)
        PROVE  Inv
  <1>3. ASSUME NEW p \in PROCESSES,
               F3(p)
        PROVE  Inv
  <1>4. ASSUME NEW p \in PROCESSES,
               F4(p)
        PROVE  Inv
  <1>5. ASSUME NEW p \in PROCESSES,
               F5(p)
        PROVE  Inv
  <1>6. ASSUME NEW p \in PROCESSES,
               F6(p)
        PROVE  Inv
  <1>7. ASSUME NEW p \in PROCESSES,
               F7(p)
        PROVE  Inv
  <1>8. ASSUME NEW p \in PROCESSES,
               FR(p)
        PROVE  Inv
  <1>9. ASSUME NEW p \in PROCESSES,
               U1(p)
        PROVE  Inv
  <1>10. ASSUME NEW p \in PROCESSES,
                U2(p)
         PROVE  Inv
  <1>11. ASSUME NEW p \in PROCESSES,
                U3(p)
         PROVE  Inv
  <1>12. ASSUME NEW p \in PROCESSES,
                U4(p)
         PROVE  Inv
  <1>13. ASSUME NEW p \in PROCESSES,
                U5(p)
         PROVE  Inv
  <1>14. ASSUME NEW p \in PROCESSES,
                U6(p)
         PROVE  Inv
  <1>15. ASSUME NEW p \in PROCESSES,
                U7(p)
         PROVE  Inv
  <1>16. ASSUME NEW p \in PROCESSES,
                U8(p)
         PROVE  Inv
  <1>17. ASSUME NEW p \in PROCESSES,
                UR(p)
         PROVE  Inv
  <1>18. ASSUME NEW p \in PROCESSES,
                Decide(p)
         PROVE  Inv
  <1>19. CASE UNCHANGED varlist
  <1>20. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Next, Step
                                       
THEOREM DecideInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: Decide(p)) => Inv'
  <1> SUFFICES ASSUME Inv,
                      [Next]_varlist,
                      NEW p \in PROCESSES,
                      Decide(p)
               PROVE  Inv'
    OBVIOUS
  <1> USE DEF Decide
  <1>1. TypeOK'
    BY NextTypeOK
  <1> USE <1>1 DEF TypeOK
  <1> TypeOK
    BY DEF Inv
  <1>2. InvDecide'
    <2> InvDecide
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "0"     =>  /\ t.ret[p_1] = BOT
                                                 /\ t.op[p_1] = BOT
                                               /\ t.arg[p_1] = BOT)'
      BY DEF InvDecide
    <2> SUFFICES ASSUME (pc[p_1] = "0")'
               PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = BOT
                           /\ t.arg[p_1] = BOT)'
        OBVIOUS
    <2>1. pc[p_1] = "0" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2>2. PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>3. t.arg[p_1] = BOT
        BY <2>1, <2>2 DEF Configs, InvDecide, Valid_M, ArgSet
    <2>4. t.ret[p_1] = BOT
        BY <2>1, <2>2 DEF Configs, InvDecide, Valid_M, ReturnSet
    <2>5. t.op[p_1] = BOT
        BY <2>1, <2>2 DEF Configs, InvDecide, Valid_M, OpSet
    <2> QED
        BY <2>4, <2>5, <2>3
  <1>3. InvF1'
  <1>4. InvF2'
  <1>5. InvF3'
  <1>6. InvF4'
  <1>7. InvF5'
  <1>8. InvF6'
  <1>9. InvF7'
  <1>10. InvFR'
  <1>11. InvU1'
  <1>12. InvU2'
    <2> InvU2
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U2")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]]
                         /\ t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]]
                         /\ EdgeOK(t.arg[p_1][1], u_U[p_1]))'
      BY DEF InvU2
    <2>1. pc[p_1] = "U2" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2>2. PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>3. QED
      <3>1. (/\ t.ret[p_1] = BOT)'
        BY <2>1, <2>2 DEF Configs, InvU2, Valid_M, ReturnSet
      <3>2. (t.op[p_1] = "U")'
        BY <2>1, <2>2 DEF Configs, InvU2, Valid_M, OpSet
      <3>3. (t.arg[p_1] \in NodeSet \X NodeSet)'
        BY <2>1, <2>2 DEF Configs, InvU2, Valid_M, ArgSet
      <3>   (/\ told.sigma[told.arg[p_1][1]] = told.sigma[u_U[p_1]]
             /\ told.sigma[told.arg[p_1][2]] = told.sigma[v_U[p_1]]
             /\ EdgeOK(told.arg[p_1][1], u_U[p_1]))'
        BY <2>1, <2>2 DEF InvU2, EdgeOK
      <3>4. (t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]])'
        BY <2>1, <2>2, <3>3 DEF Configs, Valid_M, ArgSet, InvU2
      <3>5. (t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]])'
        BY <2>1, <2>2, <3>3 DEF Configs, Valid_M, ArgSet, InvU2
      <3>6. EdgeOK(t.arg[p_1][1], u_U[p_1])'
        BY <2>1, <2>2, <3>3 DEF Configs, Valid_M, ArgSet, InvU2, EdgeOK
      <3>9. QED
        BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6
  <1>13. InvU3'
    <2> InvU3
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U3")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]]
                         /\ t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]]
                         /\ EdgeOK(t.arg[p_1][1], u_U[p_1])
                         /\ EdgeOK(t.arg[p_1][2], v_U[p_1]))'
      BY DEF InvU3
    <2>1. pc[p_1] = "U3" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2>2. PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>3. (t.ret[p_1] = BOT)'
        BY <2>1, <2>2 DEF Configs, InvU3, Valid_M, ReturnSet
    <2>4. (t.op[p_1] = "U")'
        BY <2>1, <2>2 DEF Configs, InvU3, Valid_M, OpSet
    <2>5. (t.arg[p_1] \in NodeSet \X NodeSet)'
        BY <2>1, <2>2 DEF Configs, InvU3, Valid_M, ArgSet
    <2>   (/\ told.sigma[told.arg[p_1][1]] = told.sigma[u_U[p_1]]
           /\ told.sigma[told.arg[p_1][2]] = told.sigma[v_U[p_1]]
           /\ EdgeOK(told.arg[p_1][1], u_U[p_1])
           /\ EdgeOK(told.arg[p_1][2], v_U[p_1]))'
        BY <2>1, <2>2 DEF InvU3, EdgeOK
    <2>6. (t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]])'
        BY <2>1, <2>2, <2>5 DEF Configs, Valid_M, ArgSet, InvU3
    <2>7. (t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]])'
        BY <2>1, <2>2, <2>5 DEF Configs, Valid_M, ArgSet, InvU3
    <2>8. EdgeOK(t.arg[p_1][1], u_U[p_1])'
        BY <2>1, <2>2, <2>5 DEF Configs, Valid_M, ArgSet, InvU3, EdgeOK
    <2>9. EdgeOK(t.arg[p_1][2], v_U[p_1])'
        BY <2>1, <2>2, <2>5 DEF Configs, Valid_M, ArgSet, InvU3, EdgeOK
    <2> QED
      BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9

  <1>14. InvU4'
    <2> InvU4
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U4")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]]
                         /\ t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]]
                         /\ EdgeOK(t.arg[p_1][1], u_U[p_1])
                         /\ EdgeOK(t.arg[p_1][2], v_U[p_1])
                         /\ u_U[p_1] # v_U[p_1])'
      BY DEF InvU4
    <2> pc[p_1] = "U4" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. (t.ret[p_1] = BOT)'
        BY DEF Configs, InvU4, Valid_M, ReturnSet
    <2>2. (t.op[p_1] = "U")'
        BY DEF Configs, InvU4, Valid_M, OpSet
    <2>3. (t.arg[p_1] \in NodeSet \X NodeSet)'
        BY DEF Configs, InvU4, Valid_M, ArgSet
    <2>   (/\ told.sigma[told.arg[p_1][1]] = told.sigma[u_U[p_1]]
           /\ told.sigma[told.arg[p_1][2]] = told.sigma[v_U[p_1]]
           /\ EdgeOK(told.arg[p_1][1], u_U[p_1])
           /\ EdgeOK(told.arg[p_1][2], v_U[p_1])
           /\ u_U[p_1] # v_U[p_1])'
        BY <2>1, <2>2 DEF InvU4, EdgeOK
    <2>4. (t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU4
    <2>5. (t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU4
    <2>6. EdgeOK(t.arg[p_1][1], u_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU4, EdgeOK
    <2>7. EdgeOK(t.arg[p_1][2], v_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU4, EdgeOK
    <2>8. (u_U[p_1] # v_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU4
    <2>9. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8
  <1>15. InvU5'
    <2> InvU5
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U5")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]]
                         /\ t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]]
                         /\ EdgeOK(t.arg[p_1][1], u_U[p_1])
                         /\ EdgeOK(t.arg[p_1][2], v_U[p_1])
                         /\ u_U[p_1] # v_U[p_1]
                         /\ EdgeOK(u_U[p_1], a_U[p_1].parent))'
      BY DEF InvU5
    <2> pc[p_1] = "U5" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. (t.ret[p_1] = BOT)'
        BY DEF Configs, InvU5, Valid_M, ReturnSet
    <2>2. (t.op[p_1] = "U")'
        BY DEF Configs, InvU5, Valid_M, OpSet
    <2>3. (t.arg[p_1] \in NodeSet \X NodeSet)'
        BY DEF Configs, InvU5, Valid_M, ArgSet
    <2>   (/\ told.sigma[told.arg[p_1][1]] = told.sigma[u_U[p_1]]
           /\ told.sigma[told.arg[p_1][2]] = told.sigma[v_U[p_1]]
           /\ EdgeOK(told.arg[p_1][1], u_U[p_1])
           /\ EdgeOK(told.arg[p_1][2], v_U[p_1])
           /\ u_U[p_1] # v_U[p_1]
           /\ EdgeOK(u_U[p_1], a_U[p_1].parent))'
        BY <2>1, <2>2 DEF InvU5, EdgeOK
    <2>4. (t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU5
    <2>5. (t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU5
    <2>6. EdgeOK(t.arg[p_1][1], u_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU5
    <2>7. EdgeOK(t.arg[p_1][2], v_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU5
    <2>8. (u_U[p_1] # v_U[p_1])'
        BY <2>3
    <2>9. EdgeOK(u_U[p_1], a_U[p_1].parent)'
        BY <2>3 DEF InvU5
    <2>10. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9
  <1>16. InvU6'
    <2> InvU6
        BY DEF Inv
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U6")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]]
                         /\ t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]]
                         /\ EdgeOK(t.arg[p_1][1], u_U[p_1])
                         /\ EdgeOK(t.arg[p_1][2], v_U[p_1])
                         /\ u_U[p_1] # v_U[p_1]
                         /\ EdgeOK(u_U[p_1], a_U[p_1].parent)
                         /\ EdgeOK(v_U[p_1], b_U[p_1].parent))'
      BY DEF InvU6
    <2> pc[p_1] = "U6" /\ p_1 # p
        BY DEF Valid_pc, PCSet
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. (t.ret[p_1] = BOT)'
        BY DEF Configs, InvU6, Valid_M, ReturnSet
    <2>2. (t.op[p_1] = "U")'
        BY DEF Configs, InvU6, Valid_M, OpSet
    <2>3. (t.arg[p_1] \in NodeSet \X NodeSet)'
        BY DEF Configs, InvU6, Valid_M, ArgSet
    <2>   (/\ told.sigma[told.arg[p_1][1]] = told.sigma[u_U[p_1]]
           /\ told.sigma[told.arg[p_1][2]] = told.sigma[v_U[p_1]]
           /\ EdgeOK(told.arg[p_1][1], u_U[p_1])
           /\ EdgeOK(told.arg[p_1][2], v_U[p_1])
           /\ u_U[p_1] # v_U[p_1]
           /\ EdgeOK(u_U[p_1], a_U[p_1].parent)
           /\ EdgeOK(v_U[p_1], b_U[p_1].parent))'
        BY <2>1, <2>2 DEF InvU6, EdgeOK
    <2>4. (t.sigma[t.arg[p_1][1]] = t.sigma[u_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6
    <2>5. (t.sigma[t.arg[p_1][2]] = t.sigma[v_U[p_1]])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6
    <2>6. EdgeOK(t.arg[p_1][1], u_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6, EdgeOK
    <2>7. EdgeOK(t.arg[p_1][2], v_U[p_1])'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6, EdgeOK
    <2>8. (u_U[p_1] # v_U[p_1])'
        BY <2>3
    <2>9. EdgeOK(u_U[p_1], a_U[p_1].parent)'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6, EdgeOK
    <2>10. EdgeOK(v_U[p_1], b_U[p_1].parent)'
        BY <2>3 DEF Configs, Valid_M, ArgSet, InvU6, EdgeOK
    <2>11. QED
      BY <2>1, <2>10, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9
  <1>17. InvU7'
  <1>18. InvU8'
  <1>19. InvUR'
  <1>20. EdgesMonotone'
    BY DEF Inv, EdgesMonotone, EdgeOK
  <1>21. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M'
                 PROVE  (\A i \in NodeSet:   /\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                             /\ F[i].bit = 1     => t.sigma[i] = i)'
      BY DEF SigmaRespectsShared
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
     <2> QED
        BY DEF Inv, SigmaRespectsShared, EdgeOK
  <1>22. SharedRespectsSigma'
    <2> SUFFICES ASSUME NEW t \in M'
                 PROVE  (\A i \in NodeSet:   /\ t.sigma[i] = i   => F[i].bit = 1)'
      BY DEF SharedRespectsSigma
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i] 
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: 
                                        t.arg = [told.arg EXCEPT ![p] = <<i, j>>]) 
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet
     <2> QED
        BY DEF Inv, SharedRespectsSigma, EdgeOK
  <1>23. Linearizable'
    <2> PICK told \in M: (told.ret[p] = BOT /\ told.op[p] = BOT /\ told.arg[p] = BOT)
        BY DEF Inv, Linearizable, InvDecide
    <2> DEFINE ta(r) == [sigma |-> told.sigma, ret |-> told.ret, op |-> [told.op EXCEPT ![p] = "F"], arg |-> [told.arg EXCEPT ![p] = r]]
    <2> DEFINE tb(r, s) == [sigma |-> told.sigma, ret |-> told.ret, op |-> [told.op EXCEPT ![p] = "U"], arg |-> [told.arg EXCEPT ![p] = <<r, s>>]]
    <2>  \/ \E r \in NodeSet: ta(r) \in M' 
         \/ \E r \in NodeSet: \E s \in NodeSet: tb(r, s) \in M'
        BY DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, ta, tb, Valid_M
    <2> QED
        BY DEF Inv, Linearizable, InvDecide
  <1>24. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>23, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
=============================================================================
\* Modification History
\* Last modified Thu Apr 17 01:34:16 EDT 2025 by karunram
\* Created Wed Sep 25 22:47:00 EDT 2024 by kaunram