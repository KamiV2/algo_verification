---------------------------- MODULE jtunionfind ----------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM DecideInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: Decide(p)) => Inv'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, Decide(p)
                PROVE Inv'
        OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF Decide
  <1>2. InvDecide'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "0")'
                   PROVE  (    /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = BOT
                           /\ t.arg[p_1] = BOT)'
      BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
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
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. p_1 # p /\ pc[p_1] = "0"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] = BOT 
          /\ told.op[p_1] = BOT 
          /\ told.arg[p_1] = BOT
        BY <2>1 DEF Inv, InvDecide
    <2> t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, InvDecide, TypeOK, Valid_pc, Valid_M, PCSet, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, InvDecide, TypeOK, Valid_pc, Valid_M, PCSet, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, InvDecide, TypeOK, Valid_pc, Valid_M, PCSet, Configs, ReturnSet
    <2> QED
        BY <2>2
  <1>3. InvF1'
      BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>4. InvF2'
      BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>5. InvF3'
      BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>6. InvF4'
      BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>7. InvF5'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>8. InvF6'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>9. InvF7'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>10. InvFR'
      BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>11. InvU1'
    BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, SameRoot
  <1>12. InvU2'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U2")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU2All(p_1, t))'
      BY DEF InvU2
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
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. p_1 # p /\ pc[p_1] = "U2"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] = BOT 
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ InvU2All(p_1, told)
        BY <2>1 DEF Inv, InvU2
    <2> t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> InvU2All(p_1, t)'
        BY <2>1, <2>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvU2All, SameRoot
    <2> QED
      BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, SameRoot
  <1>13. InvU3'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U3")'
                 PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvU3
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
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2>1. p_1 # p /\ pc[p_1] = "U3"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ SameRoot(told, told.arg[p_1][1], u_U[p_1])
          /\ SameRoot(told, told.arg[p_1][2], v_U[p_1])
          /\ told.ret[p_1] = ACK => SameRoot(told, u_U[p_1], v_U[p_1])
        BY <2>1 DEF Inv, InvU3
    <2>3. t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> SameRoot(t, t.arg[p_1][1], u_U'[p_1])
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot
    <2> SameRoot(t, t.arg[p_1][2], v_U'[p_1])
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot
    <2> QED
      BY <2>3 DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, SameRoot
\*    BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot
  <1>14. InvU4'
    BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot
  <1>15. InvU5'
    BY DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, InvU5All, SameRoot
  <1>16. InvU6'
    BY DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, InvU6All, SameRoot
  <1>17. InvU7'
    BY DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, InvU7All, SameRoot
  <1>18. InvU8'
    BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU8All, SameRoot
  <1>19. InvUR'
    BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot
  <1>20. SigmaRespectsShared'
    BY DEF Inv, SigmaRespectsShared
  <1>21. SharedRespectsSigma'
    BY DEF Inv, SharedRespectsSigma
  <1>22. Linearizable'
    BY DEF Inv, Linearizable
  <1>23. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
=============================================================================
\* Modification History
\* Last modified Thu Apr 17 18:06:30 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
