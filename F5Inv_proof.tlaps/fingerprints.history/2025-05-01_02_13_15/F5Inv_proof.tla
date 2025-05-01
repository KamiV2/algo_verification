---------------------------- MODULE F5Inv_proof ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas


THEOREM F5Inv == Inv /\  [Next]_varlist /\ (\E p \in PROCESSES: F5(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, F5(p)
          PROVE Inv'
    OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF F5
  <1>2. InvDecide'
    BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
  <1>3. InvF1'
      BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>4. InvF2'
      BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>5. InvF3'
      BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>6. InvF4'
      BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
  <1>7. InvF5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT, ACK}
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
    <2>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT, ACK}
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
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE b_F[p].bit = 1 /\ pc[p] # "F5"
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE b_F[p].bit = 0
            <4> USE <3>3
            <4> t \in M'
                OBVIOUS
            <4>1. CASE pc[p_1] = "F5"
                BY NeverReroot, <4>1, <3>3 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvF6All                
            <4>2. CASE pc[p_1] = "F6"
                BY <4>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
        <3> QED
            BY <3>1, <3>2, <3>3 DEF TypeOK, Valid_F, FieldSet, Valid_a_F, Valid_b_F
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE b_F[p].bit = 1 /\ pc[p] # "F5"
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE b_F[p].bit = 0
            <4> USE <3>3
            <4> t \in M'
                OBVIOUS
            <4>1. CASE pc[p_1] = "F5U1"
                BY NeverReroot, <4>1, <3>3 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvF6All                
            <4>2. CASE pc[p_1] = "F6U1"
                BY <4>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
        <3> QED
            BY <3>1, <3>2, <3>3 DEF TypeOK, Valid_F, FieldSet, Valid_a_F, Valid_b_F
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE b_F[p].bit = 1 /\ pc[p] # "F5"
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE b_F[p].bit = 0
            <4> USE <3>3
            <4> t \in M'
                OBVIOUS
            <4>1. CASE pc[p_1] = "F5U2"
                BY NeverReroot, <4>1, <3>3 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvF6All, InvU2All                
            <4>2. CASE pc[p_1] = "F6U2"
                BY <4>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
        <3> QED
            BY <3>1, <3>2, <3>3 DEF TypeOK, Valid_F, FieldSet, Valid_a_F, Valid_b_F
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE b_F[p].bit = 1 /\ pc[p] # "F5"
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE b_F[p].bit = 0
            <4> USE <3>3
            <4> t \in M'
                OBVIOUS
            <4>1. CASE pc[p_1] = "F5U7"
                BY NeverReroot, <4>1, <3>3 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvF6All, InvU7All                
            <4>2. CASE pc[p_1] = "F6U7"
                BY <4>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
        <3> QED
            BY <3>1, <3>2, <3>3 DEF TypeOK, Valid_F, FieldSet, Valid_a_F, Valid_b_F
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE b_F[p].bit = 1 /\ pc[p] # "F5"
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE b_F[p].bit = 0
            <4> USE <3>3
            <4> t \in M'
                OBVIOUS
            <4>1. CASE pc[p_1] = "F5U8"
                BY NeverReroot, <4>1, <3>3 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, InvF6All, InvU8All                
            <4>2. CASE pc[p_1] = "F6U8"
                BY <4>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
        <3> QED
            BY <3>1, <3>2, <3>3 DEF TypeOK, Valid_F, FieldSet, Valid_a_F, Valid_b_F
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
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, InvU2All, InvU7All, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>10. InvFR'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                                   /\ t.op[p_1] = "F"
                                                   /\ t.arg[p_1] \in NodeSet
                                                   /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                                   /\ SameRoot(t, c[p_1], u_F[p_1])
                         /\  pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                                   /\ SameRoot(t, c[p_1], u_F[p_1])
                         /\  pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU2All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                         /\  pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU7All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                         /\  pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU8All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1]))'
      BY DEF InvFR
    <2>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                             /\ SameRoot(t, c[p_1], u_F[p_1]))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4>1. CASE pc[p_1] = "F5"
                BY <4>1 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet, SigmaRespectsShared                
            <4>2. CASE pc[p_1] = "FR"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet                
        <3>2. CASE ~(b_F[p].bit = 1 /\ pc[p] = "F5")
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ SameRoot(t, c[p_1], u_F[p_1]))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(b_F[p].bit = 1 /\ pc[p] = "F5")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F5U1"
                BY <4>1 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU1"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
    <2>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(b_F[p].bit = 1 /\ pc[p] = "F5")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F5U2"
                BY <4>1 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU2"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
    <2>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1]))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
                BY <3>1 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(b_F[p].bit = 1 /\ pc[p] = "F5")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F5U7"
                BY <4>1 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU7"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
    <2>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
        <3>1. CASE b_F[p].bit = 1 /\ pc[p] = "F5"
            BY <3>1 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(b_F[p].bit = 1 /\ pc[p] = "F5")
            <4>1. CASE pc[p_1] = "F5U8"
                BY <4>1, <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU8"
                BY <4>2, <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF5, InvF5All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
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
  <1>21. Linearizable'
    BY DEF Inv, Linearizable
  <1>23. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv

=============================================================================
\* Modification History
\* Last modified Thu May 01 02:13:12 EDT 2025 by karunram
\* Created Thu Apr 17 10:38:14 EDT 2025 by karunram