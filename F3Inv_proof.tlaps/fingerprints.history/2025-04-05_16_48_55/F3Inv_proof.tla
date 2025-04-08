---------------------------- MODULE F3Inv_proof ----------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM F3Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F3(p)) => Inv'
    <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, F3(p)
                PROVE Inv'
        OBVIOUS
    <1> USE DEF F3
    <1>1. TypeOK'
        BY NextTypeOK DEF Inv
    <1> USE <1>1
    <1>2. InvDecide'
      <2> InvDecide
        BY DEF Inv
      <2> QED
        BY DEF InvDecide, TypeOK, Valid_pc, PCSet
    <1>3. InvF1'
      <2> InvF1
        BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet)'
        BY DEF InvF1, TypeOK, Valid_pc, PCSet
      <2>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF1, TypeOK, Valid_pc, PCSet
      <2>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
      <2>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
      <2>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF1, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>4. InvF2'
      <2> InvF2
        BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ InvF2All(p_1, t))'
        BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
      <2>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet
      <2>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All
      <2>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU7All
      <2>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF2All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF2, EdgeOK, InvF2All, TypeOK, Valid_pc, PCSet, InvU8All
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>5. InvF3'
      <2> InvF3
        BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ InvF3All(p_1, t))'
        BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
      <2>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF3All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, EdgeOK
      <2>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF3All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU2All, EdgeOK
      <2>4. (pc[p_1] = "F3U7"  =>   /\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "U"
                                  /\ t.arg[p_1] \in NodeSet \X NodeSet
                                  /\ InvU7All(p_1, t)
                                  /\ InvF3All(p_1, t)
                                  /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU7All, EdgeOK
      <2>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF3All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvF3, TypeOK, Valid_pc, PCSet, InvF3All, InvU8All, EdgeOK
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>6. InvF4' 
          <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
          <2>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                     /\ t.op[p_1] = "F"
                                   /\ t.arg[p_1] \in NodeSet
                                   /\ InvF4All(p_1, t))'
            <3>1. CASE pc[p_1] = "F3"
                <4> USE <3>1
                <4> SUFFICES ASSUME pc'[p_1] = "F4"
                             PROVE (/\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "F"
                                    /\ t.arg[p_1] \in NodeSet
                                    /\ InvF4All(p_1, t))'
                    OBVIOUS
                <4> InvF3
                    BY DEF Inv
                <4>1. SigmaRespectsShared'
                    BY DEF SigmaRespectsShared, Inv
                <4> p = p_1
                    BY DEF TypeOK, PCSet, Valid_pc
                <4>2. InvF4All(p_1, t)'
                    <5> a_F[p_1]' = F[u_F[p_1]]'
                        BY DEF TypeOK, Valid_a_F, Valid_F, Valid_u_F, FieldSet
                    <5> (t.sigma)[a_F[p_1].parent'] = (t.sigma)[u_F[p_1]]
                        <6>1. CASE a_F[p_1].bit' = 1
                        <6>2. CASE a_F[p_1].bit' = 0
                            BY <4>1, <6>2 DEF InvF3, SigmaRespectsShared, InvF3All
                        <6> QED
                            BY <6>1, <6>2 DEF TypeOK, Valid_a_F, FieldSet
                    <5>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
                        BY DEF InvF3, TypeOK, InvF4All, EdgeOK, Valid_c, Valid_a_F, Valid_u_F, Valid_F, FieldSet
                    <5>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
                        BY DEF InvF3, TypeOK, Valid_a_F, Valid_u_F, InvF3All
                    <5>3. EdgeOK(c[p_1], u_F[p_1])'
                    <5>4. EdgeOK(u_F[p_1], a_F[p_1].parent)'
                    <5> QED
                      BY <5>1, <5>2, <5>3, <5>4 DEF InvF4All
                <4> QED
                    BY DEF InvF3, TypeOK, InvF4All, EdgeOK, Valid_c, Valid_a_F, Valid_u_F, Valid_F, FieldSet
            <3>2. CASE pc[p_1] = "F4"
                <4> SUFFICES ASSUME pc'[p_1] = "F4"
                                PROVE (/\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                       /\ t.arg[p_1] \in NodeSet
                                       /\ InvF4All(p_1, t))'
                    OBVIOUS
                <4> InvF4
                    BY DEF Inv
                <4> QED
                    BY <3>2 DEF InvF4, TypeOK, InvF4All, EdgeOK            
            <3> QED
                BY <3>1, <3>2 DEF TypeOK, Valid_pc, PCSet
          <2>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          <2>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          <2>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          <2>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ InvF4All(p_1, t)
                                     /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          <2> QED
            BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>7. InvF5'
      <2> InvF5
        BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ InvF5All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F5")'
                     PROVE  (    /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ InvF5All(p_1, t))'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT)'
          BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>2. (t.op[p_1] = "F")'
          BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>3. (t.arg[p_1] \in NodeSet)'
          BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>4. InvF5All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF5All
        <3>5. QED
          BY <3>1, <3>2, <3>3, <3>4
      <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvF5All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>3. InvF5All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF5All
        <3>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>5. QED
          BY <3>1, <3>2, <3>3, <3>4
      <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU2All(p_1, t)
                             /\ InvF5All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>3. InvU2All(p_1, t)'
          BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
        <3>4. InvF5All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF5All
        <3>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU7All(p_1, t)
                             /\ InvF5All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>3. InvU7All(p_1, t)'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK              
        <3>4. InvF5All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF5All
        <3>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF5All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU8All(p_1, t)
                             /\ InvF5All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>3. InvU8All(p_1, t)'
          BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
        <3>4. InvF5All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>2. (t.sigma[u_F[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF5, TypeOK, Valid_pc, PCSet, InvF5All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF5All
        <3>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
           BY DEF InvF5, TypeOK, Valid_pc, PCSet
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>8. InvF6'
      <2> InvF6
          BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ InvF6All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6")'
                     PROVE  (    /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ InvF6All(p_1, t))'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>2. (t.op[p_1] = "F")'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>3. (t.arg[p_1] \in NodeSet)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>4. InvF6All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF6All
        <3>5. QED
          BY <3>1, <3>2, <3>3, <3>4
      <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvF6All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>3. InvF6All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF6All
        <3>4. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>5. QED
          BY <3>1, <3>2, <3>3, <3>4
      <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU2All(p_1, t)
                             /\ InvF6All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>3. InvU2All(p_1, t)'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
        <3>4. InvF6All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF6All
        <3>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU7All(p_1, t)
                             /\ InvF6All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>3. InvU7All(p_1, t)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet, EdgeOK, InvU7All
        <3>4. InvF6All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF6All
           
        <3>5. (t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ InvF6All(p_1, t)
                                 /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ InvU8All(p_1, t)
                             /\ InvF6All(p_1, t)
                             /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
          OBVIOUS
        <3>1. (/\ t.ret[p_1] = BOT
               /\ t.op[p_1] = "U")'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet
        <3>3. InvU8All(p_1, t)'
           BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
        <3>4. InvF6All(p_1, t)'
          <4>1. (t.sigma[c[p_1]] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>2. (t.sigma[a_F[p_1].parent] = t.sigma[u_F[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>3. (t.sigma[b_F[p_1].parent] = t.sigma[a_F[p_1].parent])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
          <4>4. EdgeOK(c[p_1], u_F[p_1])'
            <5>1. EdgeOK(c[p_1], u_F[p_1])
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. c'[p_1] = c[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>5. EdgeOK(u_F[p_1], a_F[p_1].parent)'
            <5>1. EdgeOK(u_F[p_1], a_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. u_F'[p_1] = u_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>6. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)'
            <5>1. EdgeOK(a_F[p_1].parent, b_F[p_1].parent)
                BY DEF InvF6, TypeOK, Valid_pc, PCSet, InvF6All
            <5>2. b_F'[p_1] = b_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_b_F
            <5>3. a_F'[p_1] = a_F[p_1]
                BY DEF TypeOK, Valid_pc, PCSet, Valid_a_F
            <5> QED
                BY <5>1, <5>2, <5>3 DEF EdgeOK
          <4>7. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5, <4>6 DEF InvF6All
        <3>5. (t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
            BY DEF InvF6, TypeOK, Valid_pc, PCSet 
        <3>6. QED
          BY <3>1, <3>2, <3>3, <3>4, <3>5
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>9. InvF7'
      <2> InvF7
        BY DEF Inv
      <2>6. QED
    <1>10. InvFR'
      <2> InvFR
        BY DEF Inv
      <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
      <2>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                 /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ t.sigma[c[p_1]] = t.sigma[u_F[p_1]])'
        BY DEF InvFR, TypeOK, Valid_pc, PCSet
      <2>2. (pc[p_1] = "FRU1"  =>   /\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "U"
                                  /\ t.arg[p_1] \in NodeSet \X NodeSet
                                  /\ t.sigma[u_F[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvFR, TypeOK, Valid_pc, PCSet
      <2>3. (pc[p_1] = "FRU2"  =>   /\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "U"
                                  /\ t.arg[p_1] \in NodeSet \X NodeSet
                                  /\ InvU2All(p_1, t)
                                  /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU2All, EdgeOK
      <2>4. (pc[p_1] = "FRU7"  =>   /\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "U"
                                  /\ t.arg[p_1] \in NodeSet \X NodeSet
                                  /\ InvU7All(p_1, t)
                                  /\ t.sigma[c[p_1]] = t.sigma[u_U[p_1]])'
        BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU7All, EdgeOK
      <2>5. (pc[p_1] = "FRU8"  =>   /\ t.ret[p_1] = BOT
                                    /\ t.op[p_1] = "U"
                                  /\ t.arg[p_1] \in NodeSet \X NodeSet
                                  /\ InvU8All(p_1, t)
                                  /\ t.sigma[c[p_1]] = t.sigma[v_U[p_1]])'
        BY DEF InvFR, TypeOK, Valid_pc, PCSet, InvU8All, EdgeOK
      <2>6. QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
    <1>11. InvU1'
        BY DEF InvU1, TypeOK, Valid_pc, PCSet, Inv
    <1>12. InvU2'
        BY DEF InvU2, TypeOK, Valid_pc, PCSet, InvU2, EdgeOK, Inv
    <1>13. InvU3'
         BY DEF TypeOK, Valid_pc, PCSet, InvU3, EdgeOK, Inv
    <1>14. InvU4'
        BY DEF TypeOK, Valid_pc, PCSet, InvU4, EdgeOK, Inv
    <1>15. InvU5'
        BY DEF TypeOK, Valid_pc, PCSet, InvU5, EdgeOK, Inv
    <1>16. InvU6'
      BY DEF TypeOK, Valid_pc, PCSet, InvU6, EdgeOK, Inv
    <1>17. InvU7'
      BY DEF TypeOK, Valid_pc, PCSet, InvU7, EdgeOK, Inv
    <1>18. InvU8'
      BY DEF TypeOK, Valid_pc, PCSet, InvU8, EdgeOK, Inv
    <1>19. InvUR'
      BY DEF TypeOK, Valid_pc, PCSet, InvUR, EdgeOK, Inv
    <1>20. EdgesMonotone'
      <2> EdgesMonotone
        BY DEF Inv
      <2> QED
        BY DEF EdgesMonotone, EdgeOK
    <1>21. SigmaRespectsShared'
      <2> SigmaRespectsShared
        BY DEF Inv
      <2> QED
      BY DEF SigmaRespectsShared, EdgeOK
    <1>22. SharedRespectsSigma'
      <2> SharedRespectsSigma
        BY DEF Inv
      <2> QED
        BY DEF SharedRespectsSigma, EdgeOK
    <1>23. Linearizable'
      <2> Linearizable
        BY DEF Inv
      <2> QED
        BY DEF Linearizable
    <1>24. QED
      BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>23, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
=============================================================================
\* Modification History
\* Last modified Sat Apr 05 16:48:52 EDT 2025 by karunram
\* Created Thu Apr 03 23:39:46 EDT 2025 by karunram
