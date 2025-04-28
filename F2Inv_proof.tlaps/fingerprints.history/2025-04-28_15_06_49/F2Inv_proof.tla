---------------------------- MODULE F2Inv_proof ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas

THEOREM F2Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F2(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, F2(p)
          PROVE Inv'
    OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF F2, Inv
  <1>2. InvDecide'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "0")'
                 PROVE  (/\ t.ret[p_1] = BOT
                         /\ t.op[p_1] = BOT
                         /\ t.arg[p_1] = BOT)'
      BY DEF InvDecide
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2    
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE F[u_F[p]].bit = 1 /\ pc[p] # "F2"
        BY <2>2 DEF Inv, InvF2, InvF2All, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>3. CASE F[u_F[p]].bit = 0
        BY <2>3 DEF Inv, InvF2, InvF2All, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2, <2>3 DEF TypeOK, Valid_F, FieldSet, Valid_u_F
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2    
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M  
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4>1. CASE pc[p_1] = "F2"
                BY <4>1 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet, SigmaRespectsShared
            <4>2. CASE pc[p_1] = "FR"
                BY <4>1 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2      
    <2>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ SameRoot(t, c[p_1], u_F[p_1]))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F2U1"
                BY <4>1 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F2U2"
                BY <4>1 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
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
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M          
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F2U7"
                BY <4>1 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU7"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, Valid_u_U, Valid_v_U
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
    <2>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
        <3>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = BOT 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                                 /\ t.op = told.op
                                 /\ t.arg = told.arg
                BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M          
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
            <4> USE <3>2
            <4>1. CASE pc[p_1] = "F2U8"
                BY <4>1 DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, ArgSet, ReturnSet
            <4>2. CASE pc[p_1] = "FRU8"
                BY <4>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_F, Valid_c, Valid_M, Configs, Valid_u_U, Valid_v_U
            <4> QED         
                BY <4>1, <4>2 DEF Inv, InvF2, InvF2All, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot                
        <3> QED
            BY <3>1, <3>2      
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>12. InvU2'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U2")'
                 PROVE  (    /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU2All(p_1, t))'
      BY DEF InvU2
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>15. InvU5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U5")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU5All(p_1, t))'
      BY DEF InvU5
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU5, InvU5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU5, InvU5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>16. InvU6'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U6")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU6All(p_1, t))'
      BY DEF InvU6
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU6, InvU6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>17. InvU7'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U7")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU7All(p_1, t))'
      BY DEF InvU7
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>18. InvU8'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U8")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU8All(p_1, t))'
      BY DEF InvU8
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M                        
        <3> QED
            BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
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
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2 
  <1>20. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet'
                 PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                         /\ F[i].bit = 1     => t.sigma[i] = i)'
      BY DEF SigmaRespectsShared
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = BOT 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
            BY Isa DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M            
        <3> QED
            BY DEF Inv, SigmaRespectsShared, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, SigmaRespectsShared, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2> QED
        BY <2>1, <2>2 
  <1>21. Linearizable'
    <2>1. CASE F[u_F[p]].bit = 1 /\ pc[p] = "F2"
        <3> USE <2>1
        <3> PICK told \in M: told.ret[p] = BOT /\ told.arg[p] \in NodeSet
            BY DEF Inv, InvF2, Linearizable
        <3>1. told  \in Configs   
            BY DEF TypeOK, Valid_M  
        <3> DEFINE t == [sigma |-> told.sigma,
                         ret |-> [told.ret EXCEPT ![p] = told.sigma[told.arg[p]]],
                         op |-> told.op,
                         arg |-> told.arg]
        <3> \E r \in M:   /\ r.ret[p] = BOT
                          /\ t.sigma = r.sigma
                          /\ t.ret = [r.ret EXCEPT ![p] = r.sigma[r.arg[p]]]
                          /\ t.op = r.op
                          /\ t.arg = r.arg
            BY <3>1 DEF t
        <3> t \in Configs
            BY <3>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
        <3> t \in M'
            BY <3>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
        <3> QED
            BY DEF Inv, Linearizable
    <2>2. CASE ~(F[u_F[p]].bit = 1 /\ pc[p] = "F2")
        BY <2>2 DEF Inv, Linearizable
    <2> QED
        BY <2>1, <2>2
  <1>22. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv


=============================================================================
\* Modification History
\* Last modified Mon Apr 28 15:06:43 EDT 2025 by karunram
\* Created Wed Apr 23 01:41:32 EDT 2025 by karunram
