---------------------------- MODULE U7Inv_proof ----------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM U7Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: U7(p)) => Inv'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U7(p)
                PROVE Inv'
        OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF U7
  <1>2. InvDecide'
    BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
  <1>3. InvF1'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                         /\  pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                         /\  pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                         /\  pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                         /\  pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1]))'
      BY DEF InvF1
    <2>1. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1]))'
        <3>1. CASE pc[p_1] = "F1U7"
            BY <3>1 DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, Valid_c, Valid_u_U, SameRoot, InvU7All
        <3>2. CASE pc[p_1] = "U7"
            BY <3>2 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, Valid_c, Valid_u_U, SameRoot, InvU7All
        <3> QED
            BY <3>1, <3>2 DEF TypeOK, Valid_pc, PCSet
    <2> QED
      BY <2>1 DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>4. InvF2'
      BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>5. InvF3'
      BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>6. InvF4'
      BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>7. InvF5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                 /\ InvF5All(p_1, t)
                         /\  pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF5All(p_1, t)
                         /\  pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF5All(p_1, t)
                         /\  pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF5All(p_1, t)
                         /\  pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF5All(p_1, t))'
      BY DEF InvF5
    <2>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF5All(p_1, t))'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
      
  <1>8. InvF6'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                 /\ InvF6All(p_1, t)
                         /\  pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF6All(p_1, t)
                         /\  pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF6All(p_1, t)
                         /\  pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF6All(p_1, t)
                         /\  pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF6All(p_1, t))'
      BY DEF InvF6
    <2>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF6All(p_1, t))'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>9. InvF7'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>10. InvFR'
      BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>11. InvU1'
    BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, SameRoot
  <1>12. InvU2'
    BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, SameRoot
  <1>13. InvU3'
    BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot
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
\* Last modified Thu Apr 17 09:23:59 EDT 2025 by karunram
\* Created Fri Apr 04 11:16:49 EDT 2025 by karunram
