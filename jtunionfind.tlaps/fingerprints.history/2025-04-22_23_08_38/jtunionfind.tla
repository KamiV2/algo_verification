---------------------------- MODULE jtunionfind ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas

THEOREM URInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: UR(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, UR(p)
          PROVE Inv'
    OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF UR, Inv
  <1>2. InvDecide'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "0")'
                 PROVE  ( /\ t.ret[p_1] = BOT
                          /\ t.op[p_1] = BOT
                          /\ t.arg[p_1] = BOT)'
      BY DEF InvDecide
    <2>1. CASE pc[p_1] = "0"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = ACK
                     /\ told.op[p] = "U"
                     /\ told.arg[p] \in NodeSet \X NodeSet
                     /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                     /\ t.op = [told.op EXCEPT ![p] = BOT]
                     /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                     /\ t.sigma = told.sigma
            BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> QED
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
    <2>2. CASE pc[p_1] = "UR"
        <3> USE <2>2
        <3> PICK told \in M: /\ told.ret[p] = ACK
                     /\ told.op[p] = "U"
                     /\ told.arg[p] \in NodeSet \X NodeSet
                     /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                     /\ t.op = [told.op EXCEPT ![p] = BOT]
                     /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                     /\ t.sigma = told.sigma
            BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> p = p_1
            BY DEF TypeOK, Valid_pc, PCSet
        <3> QED
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY <2>1, <2>2 DEF TypeOK, Valid_pc, PCSet
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
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot    
  <1>4. InvF2' 
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F2"    =>/\ t.ret[p_1] = BOT
                                                 /\ t.op[p_1] = "F"
                                                 /\ t.arg[p_1] \in NodeSet
                                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U1"  =>/\ t.ret[p_1] = BOT
                                                 /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U2"  =>/\ t.ret[p_1] = BOT
                                                 /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU2All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U7"  =>/\ t.ret[p_1] \in {BOT, ACK}
                                                 /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU7All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                                 /\ InvF2All(p_1, t)
                         /\  pc[p_1] = "F2U8"  =>/\ t.ret[p_1] \in {BOT, ACK}
                                                 /\ t.op[p_1] = "U"
                                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                 /\ InvU8All(p_1, t)
                                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                                 /\ InvF2All(p_1, t))'
      BY DEF InvF2
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot    
  <1>5. InvF3'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                   /\ t.arg[p_1] \in NodeSet
                                                   /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                   /\ InvF3All(p_1, t)
                         /\  pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                                   /\ InvF3All(p_1, t)
                         /\  pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU2All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                                   /\ InvF3All(p_1, t)
                         /\  pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU7All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                                   /\ InvF3All(p_1, t)
                         /\  pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU8All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                                   /\ InvF3All(p_1, t))'
      BY DEF InvF3
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot        
  <1>6. InvF4'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\  pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "F"
                                                   /\ t.arg[p_1] \in NodeSet
                                                   /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                   /\ InvF4All(p_1, t)
                         /\  pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                                   /\ InvF4All(p_1, t)
                         /\  pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU2All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                                   /\ InvF4All(p_1, t)
                         /\  pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU7All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                                   /\ InvF4All(p_1, t)
                         /\  pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                                   /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                   /\ InvU8All(p_1, t)
                                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                                   /\ InvF4All(p_1, t))'
      BY DEF InvF4
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot        
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
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
      BY NeverReroot DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
      BY NeverReroot DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      BY NeverReroot DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                             /\ SameRoot(t, c[p_1], u_F[p_1]))'
      BY NeverReroot DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ SameRoot(t, c[p_1], u_F[p_1]))'
      BY NeverReroot DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
      BY NeverReroot DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1]))'
      BY NeverReroot DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
      BY NeverReroot DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>11. InvU1'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U1")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet)'
      BY DEF InvU1
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
        BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>12. InvU2'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U2")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU2All(p_1, t))'
      BY DEF InvU2
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
  <1>13. InvU3'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U3")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvU3
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, InvU7All, InvU8All, SameRoot
  <1>14. InvU4'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U4")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1])  
                         /\ u_U[p_1] # v_U[p_1])'
      BY DEF InvU4
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot
  <1>15. InvU5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U5")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU5All(p_1, t))'
      BY DEF InvU5
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, SameRoot, InvU5All
  <1>16. InvU6'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U6")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU6All(p_1, t))'
      BY DEF InvU6
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, SameRoot, InvU6All
  <1>17. InvU7'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U7")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU7All(p_1, t))'
      BY DEF InvU7
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, InvU7All
  <1>18. InvU8'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U8")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU8All(p_1, t))'
      BY DEF InvU8
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, SameRoot, InvU8All
  <1>19. InvUR'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "UR")'
                 PROVE  (/\ t.ret[p_1] = ACK
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvUR
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
    <2> QED
      BY NeverReroot DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot
  <1>20. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet'
                 PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                         /\ F[i].bit = 1     => t.sigma[i] = i)'
      BY DEF SigmaRespectsShared
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
                         /\ \A j \in NodeSet:
                            /\ F[j].bit = 0     => told.sigma[j] = told.sigma[F[j].parent]
                            /\ F[j].bit = 1     => told.sigma[j] = j
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SigmaRespectsShared
    <2> QED
        BY DEF Inv, TypeOK, Valid_F, FieldSet, Valid_M, Configs
  <1>21. SharedRespectsSigma'  
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet',
                        (t.sigma[i] = i)'
                 PROVE  (F[i].bit = 1)'
      BY DEF SharedRespectsSigma
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
                         /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                         /\ t.op = [told.op EXCEPT ![p] = BOT]
                         /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                         /\ t.sigma = told.sigma
                         /\ \A j \in NodeSet:
                            /\ told.sigma[j] = j => F[j].bit = 1
      BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SharedRespectsSigma
    <2>2. QED
        BY DEF Inv, TypeOK, Valid_F, FieldSet, Valid_M, Configs
  <1>22. Linearizable'
    <2> PICK told \in M: /\ told.ret[p] = ACK
                         /\ told.op[p] = "U"
                         /\ told.arg[p] \in NodeSet \X NodeSet
      BY DEF Inv, InvUR, Linearizable
    <2>1. told \in Configs
        BY DEF TypeOK, Valid_M
    <2> DEFINE t == [sigma |-> told.sigma,
                     ret |-> [told.ret EXCEPT ![p] = BOT],
                     op |-> [told.op EXCEPT ![p] = BOT],
                     arg |-> [told.arg EXCEPT ![p] = BOT]]
    <2> t \in M'
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
    <2> QED
      BY DEF Inv, Linearizable
  <1>23. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv


=============================================================================
\* Modification History
\* Last modified Tue Apr 22 23:08:30 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
