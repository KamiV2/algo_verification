---------------------------- MODULE jtunionfind ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas

THEOREM F6Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F6(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, F6(p)
          PROVE Inv'
    OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF F6
  <1>2. InvDecide'
    BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
  <1>3. InvF1'
    BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>4. InvF2'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF2All(p_1, t))'
      BY DEF InvF2
    <2>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF2All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F2")'
                   PROVE  (    /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "F"
                           /\ t.arg[p_1] \in NodeSet
                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                           /\ InvF2All(p_1, t))'
        OBVIOUS
      <3>1. CASE pc[p_1] = "F2"
        BY <3>1, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
      <3>2. CASE pc[p_1] = "F6"
        BY <3>2, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_u_F, InvF6, InvF6All
      <3> QED
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_pc, PCSet
    <2>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF2All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F2U1")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF2All(p_1, t))'
        OBVIOUS
      <3>1. CASE pc[p_1] = "F2U1"
        BY <3>1, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
      <3>2. CASE pc[p_1] = "F6U1"
        BY <3>2, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_u_F, InvF6, InvF6All
      <3> QED
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_pc, PCSet      
    <2>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF2All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F2U2")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU2All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF2All(p_1, t))'
        OBVIOUS
      <3>1. CASE pc[p_1] = "F2U2"
        BY <3>1, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
      <3>2. CASE pc[p_1] = "F6U2"
        BY <3>2, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_u_F, InvF6, InvF6All, InvU2All
      <3> QED
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_pc, PCSet      
    <2>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF2All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F2U7")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU7All(p_1, t)
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF2All(p_1, t))'
        OBVIOUS
      <3>1. CASE pc[p_1] = "F2U7"
        BY <3>1, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
      <3>2. CASE pc[p_1] = "F6U7"
        BY <3>2, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_u_F, InvF6, InvF6All, InvU7All
      <3> QED
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_pc, PCSet      
    <2>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF2All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F2U8")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU8All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF2All(p_1, t))'
        OBVIOUS
      <3>1. CASE pc[p_1] = "F2U8"
        BY <3>1, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
      <3>2. CASE pc[p_1] = "F6U8"
        BY <3>2, NeverReroot DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_u_F, InvF6, InvF6All, InvU8All
      <3> QED
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_pc, PCSet      
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>5. InvF3'
    BY NeverReroot DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
  <1>6. InvF4'
    BY NeverReroot DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
  <1>7. InvF5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                                   /\ t.op[p_1] = "F"
                                                   /\ t.arg[p_1] \in NodeSet
                                                   /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                   /\ InvF5All(p_1, t)
                                                   /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                                   /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent
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
    <2>1. (pc[p_1] = "F5"  =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                               /\ t.op[p_1] = "F"
                               /\ t.arg[p_1] \in NodeSet
                               /\ SameRoot(t, c[p_1], t.arg[p_1])
                               /\ InvF5All(p_1, t)
                               /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                               /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent)'
      <3> SUFFICES ASSUME (pc[p_1] = "F5")'
                   PROVE  (/\ t.ret[p_1] \in {BOT} \cup NodeSet
                           /\ t.op[p_1] = "F"
                           /\ t.arg[p_1] \in NodeSet
                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                           /\ InvF5All(p_1, t)
                           /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                           /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent)'
        OBVIOUS
      <3> (b_F[p_1].bit = 0 => /\ SameRoot(t, a_F[p_1].parent, b_F[p_1].parent)
                                   /\ F[a_F[p_1].parent].bit = 0)'
          BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet, Valid_b_F
      <3>8. QED
          BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet, Valid_b_F
    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet              
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet              
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet              
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet              
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
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet 
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F, Valid_a_F, FieldSet
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>9. InvF7'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                 /\ InvF7All(p_1, t)
                         /\  pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF7All(p_1, t)
                         /\  pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF7All(p_1, t)
                         /\  pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF7All(p_1, t)
                         /\  pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF7All(p_1, t))'
      BY DEF InvF7
    <2>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All, Valid_u_F
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5    
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
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet'
                 PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                         /\ F[i].bit = 1     => t.sigma[i] = i)'
      BY DEF SigmaRespectsShared
    <2>1. CASE F[u_F[p]]
            = [parent |-> a_F[p].parent, rank |-> a_F[p].rank, bit |-> 0]
        <3>1. CASE i # u_F[p]
            BY <2>1, <3>1 DEF SigmaRespectsShared, Inv, Valid_F, FieldSet, TypeOK
        <3>2. CASE i = u_F[p]
            <4> USE <2>1, <3>2
            <4> F[u_F[p]].parent' = b_F[p].parent
                BY DEF Inv, TypeOK, Valid_F, FieldSet, Valid_u_F, Valid_b_F
            <4> SameRoot(t, u_F[p], b_F[p].parent)'
                BY DEF InvF6, InvF6All, Inv, TypeOK, SameRoot
            <4> QED
                BY DEF SigmaRespectsShared, Inv, Valid_F, FieldSet, TypeOK, InvF6, InvF6All, SameRoot                
        <3> QED
            BY <3>1, <3>2
    <2>2. CASE F[u_F[p]]
            # [parent |-> a_F[p].parent, rank |-> a_F[p].rank, bit |-> 0]
        BY <2>2 DEF SigmaRespectsShared, Inv
    <2> QED
        BY <2>1, <2>2
  <1>21. Linearizable'
    BY DEF Inv, Linearizable
  <1>22. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv

=============================================================================
\* Modification History
\* Last modified Fri May 02 02:32:50 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
