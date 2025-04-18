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
      <3> PICK told \in M:   (/\ told.ret[p] = BOT
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
      <3>1. p_1 # p /\ pc[p_1] = "F2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "F" 
            /\ told.arg[p_1] \in NodeSet
            /\ InvF2All(p_1, told)
          BY <3>1 DEF Inv, InvF2
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF2All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, InvF2All, SameRoot
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
      <3> PICK told \in M:   (/\ told.ret[p] = BOT
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
      <3>1. p_1 # p /\ pc[p_1] = "F2U1"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF2All(p_1, told)
          BY <3>1 DEF Inv, InvF2
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF2All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, InvF2All, SameRoot
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
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF2All(p_1, t)
                           /\ InvU2All(p_1, t))'
        OBVIOUS
      <3> PICK told \in M:   (/\ told.ret[p] = BOT
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
      <3>1. p_1 # p /\ pc[p_1] = "F2U2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF2All(p_1, told)
            /\ InvU2All(p_1, told)
          BY <3>1 DEF Inv, InvF2
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF2All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_F, Valid_c
      <3> InvU2All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_U, Valid_v_U, InvU2All
      <3> QED
        BY <3>3 DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, InvF2All, SameRoot, InvU2All
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
        BY DEF Inv
      <3> PICK told \in M:   (/\ told.ret[p] = BOT
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
      <3>1. p_1 # p /\ pc[p_1] = "F2U7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK} 
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF2All(p_1, told)
            /\ InvU7All(p_1, told)
          BY <3>1 DEF Inv, InvF2
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF2All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_F, Valid_c
      <3> InvU7All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_U, Valid_v_U, InvU7All
      <3> QED
        BY <3>3 DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, InvF2All, SameRoot, InvU7All
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
      <3> PICK told \in M:   (/\ told.ret[p] = BOT
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
      <3>1. p_1 # p /\ pc[p_1] = "F2U8"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF2All(p_1, told)
            /\ InvU8All(p_1, told)
          BY <3>1 DEF Inv, InvF2
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF2All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_F, Valid_c
      <3> InvU8All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF2All, SameRoot, Valid_u_U, Valid_v_U, InvU8All
      <3> QED
        BY <3>3 DEF Inv, InvF2, TypeOK, Valid_pc, PCSet, InvF2All, SameRoot, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
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
    <2>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF3All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F3")'
                   PROVE  (    /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "F"
                           /\ t.arg[p_1] \in NodeSet
                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                           /\ InvF3All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F3"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "F" 
            /\ told.arg[p_1] \in NodeSet
            /\ SameRoot(told, c[p_1], told.arg[p_1])
            /\ InvF3All(p_1, told)
          BY <3>1 DEF Inv, InvF3
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF3All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF3, TypeOK, Valid_pc, PCSet, InvF3All, SameRoot
    <2>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF3All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F3U1")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF3All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F3U1"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF3All(p_1, told)
          BY <3>1 DEF Inv, InvF3
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF3All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF3, TypeOK, Valid_pc, PCSet, InvF3All, SameRoot
    <2>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF3All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F3U2")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU2All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF3All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F3U2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT 
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF3All(p_1, told)
            /\ InvU2All(p_1, told)
          BY <3>1 DEF Inv, InvF3
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF3All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_F, Valid_c
      <3> InvU2All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_U, Valid_v_U, InvU2All
      <3> QED
        BY <3>3 DEF Inv, InvF3, TypeOK, Valid_pc, PCSet, InvF3All, SameRoot, InvU2All
    <2>4. (pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF3All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F3U7")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU7All(p_1, t)
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF3All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F3U7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF3All(p_1, told)
            /\ InvU7All(p_1, told)
          BY <3>1 DEF Inv, InvF3
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF3All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_F, Valid_c
      <3> InvU7All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_U, Valid_v_U, InvU7All
      <3> QED
        BY <3>3 DEF Inv, InvF3, TypeOK, Valid_pc, PCSet, InvF3All, SameRoot, InvU7All
    <2>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF3All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F3U8")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU8All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF3All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F3U8"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF3All(p_1, told)
            /\ InvU8All(p_1, told)
          BY <3>1 DEF Inv, InvF3
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF3All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_F, Valid_c
      <3> InvU8All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF3All, SameRoot, Valid_u_U, Valid_v_U, InvU8All
      <3> QED
        BY <3>3 DEF Inv, InvF3, TypeOK, Valid_pc, PCSet, InvF3All, SameRoot, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
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
    <2>1. (pc[p_1] = "F4"    =>  /\ t.arg[p_1] \in NodeSet 
                                 /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                 /\ InvF4All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F4")'
                   PROVE  (/\ t.arg[p_1] \in NodeSet 
                           /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "F"
                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                           /\ InvF4All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F4"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "F" 
            /\ told.arg[p_1] \in NodeSet
            /\ SameRoot(told, c[p_1], told.arg[p_1])
            /\ InvF4All(p_1, told)
          BY <3>1 DEF Inv, InvF4
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF4All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF4All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF4, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot
    <2>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF4All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F4U1")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF4All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F4U1"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF4All(p_1, told)
          BY <3>1 DEF Inv, InvF4
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF4All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF4All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF4, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot
    <2>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF4All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F4U2")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF4All(p_1, t)
                           /\ InvU2All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F4U2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF4All(p_1, told)
            /\ InvU2All(p_1, told)
          BY <3>1 DEF Inv, InvF4
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF4All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF4All, SameRoot, Valid_u_F, Valid_c
      <3> InvU2All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU2All
      <3> QED
        BY <3>3 DEF Inv, InvF4, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot, InvU2All
    <2>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF4All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F4U7")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU7All(p_1, t)
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF4All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F4U7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF4All(p_1, told)
            /\ InvU7All(p_1, told)
          BY <3>1 DEF Inv, InvF4
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF4All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF4All, SameRoot, Valid_u_F, Valid_c
      <3> InvU7All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU7All
      <3> QED
        BY <3>3 DEF Inv, InvF4, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot, InvU7All
    <2>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF4All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F4U8")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU8All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF4All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F4U8"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF4All(p_1, told)
            /\ InvU8All(p_1, told)
          BY <3>1 DEF Inv, InvF4
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF4All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF4All, SameRoot, Valid_u_F, Valid_c
      <3> InvU8All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU8All
      <3> QED
        BY <3>3 DEF Inv, InvF4, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot, InvU8All
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>7. InvF5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M'
                 PROVE  (/\ pc[p_1] = "F5"    =>  /\ t.ret[p_1] = BOT
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

    <2> PICK told \in M: ( /\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT
                            /\ t.sigma = told.sigma
                            /\ t.ret = told.ret
                            /\ \/ /\ t.op = [told.op EXCEPT ![p] = "F"]
                                  /\ \E i \in NodeSet: t.arg = [told.arg EXCEPT ![p] = i]
                               \/ /\ t.op = [told.op EXCEPT ![p] = "U"]
                                  /\ \E i \in NodeSet: \E j \in NodeSet: t.arg = [told.arg EXCEPT ![p] = <<i, j>>])
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet

    <2>1. (pc[p_1] = "F5"    =>  /\ t.arg[p_1] \in NodeSet
                                 /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                 /\ InvF5All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F5")'
                   PROVE  (  /\ t.arg[p_1] \in NodeSet
                             /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "F"
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF5All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F5"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "F"
            /\ told.arg[p_1] \in NodeSet
            /\ SameRoot(told, c[p_1], told.arg[p_1])
            /\ InvF5All(p_1, told)
          BY <3>1 DEF Inv, InvF5
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF5All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF5All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, FieldSet
      <3> QED
        BY <3>3 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvF5All, SameRoot

    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                 /\ InvF5All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F5U1")'
                   PROVE  ( /\ t.ret[p_1] = BOT
                            /\ t.op[p_1] = "U"
                            /\ t.arg[p_1] \in NodeSet \X NodeSet
                            /\ SameRoot(t, c[p_1], u_U[p_1])
                            /\ InvF5All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F5U1"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U"
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF5All(p_1, told)
          BY <3>1 DEF Inv, InvF5
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF5All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF5All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, FieldSet
      <3> QED
        BY <3>3 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvF5All, SameRoot
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t)
                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                 /\ InvF5All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F5U2")'
                   PROVE  ( /\ t.ret[p_1] = BOT
                            /\ t.op[p_1] = "U"
                            /\ t.arg[p_1] \in NodeSet \X NodeSet
                            /\ InvU2All(p_1, t)
                            /\ SameRoot(t, c[p_1], v_U[p_1])
                            /\ InvF5All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F5U2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U"
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ InvU2All(p_1, told)
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF5All(p_1, told)
          BY <3>1 DEF Inv, InvF5
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF5All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF5All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, FieldSet
      <3> QED
        BY <3>3 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvF5All, SameRoot, InvU2All
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t)
                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                 /\ InvF5All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                   PROVE  ( /\ t.ret[p_1] \in {BOT, ACK}
                            /\ t.op[p_1] = "U"
                            /\ t.arg[p_1] \in NodeSet \X NodeSet
                            /\ InvU7All(p_1, t)
                            /\ SameRoot(t, c[p_1], u_U[p_1])
                            /\ InvF5All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F5U7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U"
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ InvU7All(p_1, told)
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF5All(p_1, told)
          BY <3>1 DEF Inv, InvF5
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> SameRoot(t, c[p_1], u_U[p_1])'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, Valid_c
      <3> InvU7All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU7All
      <3> InvF5All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF5All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, FieldSet
      <3> QED
        BY <3>3 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t)
                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                 /\ InvF5All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                   PROVE  ( /\ t.ret[p_1] \in {BOT, ACK}
                            /\ t.op[p_1] = "U"
                            /\ t.arg[p_1] \in NodeSet \X NodeSet
                            /\ InvU8All(p_1, t)
                            /\ SameRoot(t, c[p_1], v_U[p_1])
                            /\ InvF5All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F5U8"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U"
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ InvU8All(p_1, told)
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF5All(p_1, told)
          BY <3>1 DEF Inv, InvF5
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> SameRoot(t, c[p_1], v_U[p_1])'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, Valid_c
      <3> InvU8All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU8All
      <3> InvF5All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF5All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, FieldSet
      <3> QED
        BY <3>3 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet
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
      <2>1. (pc[p_1] = "F6"    =>  /\ t.arg[p_1] \in NodeSet 
                                   /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "F"
                                   /\ SameRoot(t, c[p_1], t.arg[p_1])
                                   /\ InvF6All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6")'
                     PROVE  (/\ t.arg[p_1] \in NodeSet 
                             /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "F"
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF6All(p_1, t))'
          OBVIOUS
        <3>1. p_1 # p /\ pc[p_1] = "F6"
            BY DEF TypeOK, Valid_pc, PCSet
        <3>2. /\ told.ret[p_1] = BOT
              /\ told.op[p_1] = "F" 
              /\ told.arg[p_1] \in NodeSet
              /\ SameRoot(told, c[p_1], told.arg[p_1])
              /\ InvF6All(p_1, told)
            BY <3>1 DEF Inv, InvF6
        <3>3. t.arg[p_1] = told.arg[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
        <3> t.op[p_1] = told.op[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
        <3> t.ret[p_1] = told.ret[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
        <3> InvF6All(p_1, t)'
          BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF6All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, Valid_b_F, FieldSet
        <3> QED
          BY <3>3 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvF6All, SameRoot
      <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                 /\ InvF6All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U1")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ SameRoot(t, c[p_1], u_U[p_1])
                             /\ InvF6All(p_1, t))'
          OBVIOUS
        <3>1. p_1 # p /\ pc[p_1] = "F6U1"
            BY DEF TypeOK, Valid_pc, PCSet
        <3>2. /\ told.ret[p_1] = BOT
              /\ told.op[p_1] = "U" 
              /\ told.arg[p_1] \in NodeSet \X NodeSet
              /\ SameRoot(told, c[p_1], u_U[p_1])
              /\ InvF6All(p_1, told)
            BY <3>1 DEF Inv, InvF6
        <3>3. t.arg[p_1] = told.arg[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
        <3> t.op[p_1] = told.op[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
        <3> t.ret[p_1] = told.ret[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
        <3> InvF6All(p_1, t)'
            BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF6All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, Valid_b_F, FieldSet
        <3> QED
          BY <3>3 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvF6All, SameRoot, Valid_u_U, Valid_c
      <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                 /\ InvF6All(p_1, t)
                                 /\ InvU2All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U2")'
                     PROVE  (  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ SameRoot(t, c[p_1], v_U[p_1])
                             /\ InvF6All(p_1, t)
                             /\ InvU2All(p_1, t))'
          OBVIOUS
        <3>1. p_1 # p /\ pc[p_1] = "F6U2"
            BY DEF TypeOK, Valid_pc, PCSet
        <3>2. /\ told.ret[p_1] = BOT
              /\ told.op[p_1] = "U" 
              /\ told.arg[p_1] \in NodeSet \X NodeSet
              /\ SameRoot(told, c[p_1], v_U[p_1])
              /\ InvF6All(p_1, told)
              /\ InvU2All(p_1, told)
            BY <3>1 DEF Inv, InvF6
        <3>3. t.arg[p_1] = told.arg[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
        <3> t.op[p_1] = told.op[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
        <3> t.ret[p_1] = told.ret[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
        <3> InvF6All(p_1, t)'
            BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF6All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, Valid_b_F, FieldSet
        <3> QED
          BY <3>3 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvF6All, SameRoot, Valid_u_U, Valid_c, InvU2All
      <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, c[p_1], u_U[p_1])
                                 /\ InvF6All(p_1, t)
                                 /\ InvU7All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U7")'
                     PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ SameRoot(t, c[p_1], u_U[p_1])
                             /\ InvF6All(p_1, t)
                             /\ InvU7All(p_1, t))'
            OBVIOUS
        <3>1. p_1 # p /\ pc[p_1] = "F6U7"
            BY DEF TypeOK, Valid_pc, PCSet
        <3>2. /\ TRUE
              /\ told.ret[p_1] \in {BOT, ACK}
              /\ told.op[p_1] = "U" 
              /\ told.arg[p_1] \in NodeSet \X NodeSet
              /\ SameRoot(told, c[p_1], u_U[p_1])
              /\ InvF6All(p_1, told)
              /\ InvU7All(p_1, told)
            BY <3>1 DEF Inv, InvF6
        <3>3. t.arg[p_1] = told.arg[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
        <3> t.op[p_1] = told.op[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
        <3> t.ret[p_1] = told.ret[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
        <3> InvF6All(p_1, t)'
            BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF6All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, Valid_b_F, FieldSet
        <3> QED
          BY <3>3 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvF6All, SameRoot, Valid_v_U, Valid_c, InvU7All
      <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, c[p_1], v_U[p_1])
                                 /\ InvF6All(p_1, t)
                                 /\ InvU8All(p_1, t))'
        <3> SUFFICES ASSUME (pc[p_1] = "F6U8")'
                     PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                               /\ t.op[p_1] = "U"
                             /\ t.arg[p_1] \in NodeSet \X NodeSet
                             /\ SameRoot(t, c[p_1], v_U[p_1])
                             /\ InvF6All(p_1, t)
                             /\ InvU8All(p_1, t))'
            OBVIOUS
        <3>1. p_1 # p /\ pc[p_1] = "F6U8"
            BY DEF TypeOK, Valid_pc, PCSet
        <3>2. /\ TRUE
              /\ told.ret[p_1] \in {BOT, ACK}
              /\ told.op[p_1] = "U" 
              /\ told.arg[p_1] \in NodeSet \X NodeSet
              /\ SameRoot(told, c[p_1], v_U[p_1])
              /\ InvF6All(p_1, told)
              /\ InvU8All(p_1, told)
            BY <3>1 DEF Inv, InvF6
        <3>3. t.arg[p_1] = told.arg[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
        <3> t.op[p_1] = told.op[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
        <3> t.ret[p_1] = told.ret[p_1]
            BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
        <3> InvF6All(p_1, t)'
            BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF6All, SameRoot, Valid_u_F, Valid_c, Valid_a_F, Valid_b_F, FieldSet
        <3> QED
          BY <3>3 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvF6All, SameRoot, Valid_v_U, Valid_c, InvU8All
    <2> QED
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
    <2>1. (pc[p_1] = "F7"    =>  /\ t.arg[p_1] \in NodeSet 
                                 /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "F"
                                 /\ SameRoot(t, c[p_1], t.arg[p_1])
                                 /\ InvF7All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F7")'
                   PROVE  (/\ t.arg[p_1] \in NodeSet 
                           /\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "F"
                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                           /\ InvF7All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "F" 
            /\ told.arg[p_1] \in NodeSet
            /\ SameRoot(told, c[p_1], told.arg[p_1])
            /\ InvF7All(p_1, told)
          BY <3>1 DEF Inv, InvF7
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF7All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF7All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvF7All, SameRoot
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F7U1")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF7All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F7U1"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF7All(p_1, told)
          BY <3>1 DEF Inv, InvF7
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF7All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF7All, SameRoot, Valid_u_F, Valid_c
      <3> QED
        BY <3>3 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvF7All, SameRoot, Valid_c, Valid_u_U
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F7U2")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF7All(p_1, t)
                           /\ InvU2All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F7U2"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF7All(p_1, told)
            /\ InvU2All(p_1, told)
          BY <3>1 DEF Inv, InvF7
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF7All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF7All, SameRoot, Valid_u_F, Valid_c
      <3> InvU2All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU2All
      <3> QED
        BY <3>3 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvF7All, SameRoot, InvU2All, Valid_u_U, Valid_c
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F7U7")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU7All(p_1, t)
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ InvF7All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F7U7"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ InvF7All(p_1, told)
            /\ InvU7All(p_1, told)
          BY <3>1 DEF Inv, InvF7
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF7All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF7All, SameRoot, Valid_u_F, Valid_c
      <3> InvU7All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU7All
      <3> QED
        BY <3>3 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvF4All, SameRoot, InvU7All, Valid_u_U, Valid_c
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
      <3> SUFFICES ASSUME (pc[p_1] = "F7U8")'
                   PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU8All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1])
                           /\ InvF7All(p_1, t))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "F7U8"
          BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] \in {BOT, ACK}
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvF7All(p_1, told)
            /\ InvU8All(p_1, told)
          BY <3>1 DEF Inv, InvF7
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> InvF7All(p_1, t)'
        BY <3>1, <3>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvF7All, SameRoot, Valid_u_F, Valid_c
      <3> InvU8All(p_1, t)'
        BY <3>1, <3>2, <3>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot, Valid_u_U, Valid_v_U, InvU8All
      <3> QED
        BY <3>3 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvF7All, SameRoot, InvU8All, Valid_u_U, Valid_c
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
    <2>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                             /\ SameRoot(t, c[p_1], u_F[p_1]))'
      <3> SUFFICES ASSUME (pc[p_1] = "FR")'
                   PROVE  (    /\ t.ret[p_1] = u_F[p_1]
                             /\ t.op[p_1] = "F"
                           /\ t.arg[p_1] \in NodeSet
                           /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                           /\ SameRoot(t, c[p_1], u_F[p_1]))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "FR"
        BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = u_F[p_1]
            /\ told.op[p_1] = "F" 
            /\ told.arg[p_1] \in NodeSet
            /\ SameRoot(told, told.arg[p_1], u_F[p_1])
            /\ SameRoot(told, c[p_1], u_F[p_1])
        BY <3>1 DEF Inv, InvFR
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> QED
        BY <3>2, <3>3 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_u_F
    <2>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ SameRoot(t, c[p_1], u_F[p_1]))'
      <3> SUFFICES ASSUME (pc[p_1] = "FRU1")'
                   PROVE  (/\ t.ret[p_1] = BOT
                           /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ SameRoot(t, c[p_1], u_U[p_1])
                           /\ SameRoot(t, c[p_1], u_F[p_1]))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "FRU1"
        BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], u_U[p_1])
            /\ SameRoot(told, c[p_1], u_F[p_1])
        BY <3>1 DEF Inv, InvFR
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> QED
        BY <3>2, <3>3 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_u_F
    <2>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
      <3> SUFFICES ASSUME (pc[p_1] = "FRU2")'
                   PROVE  (  /\ t.ret[p_1] = BOT
                             /\ t.op[p_1] = "U"
                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                           /\ InvU2All(p_1, t)
                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
        OBVIOUS
      <3>1. p_1 # p /\ pc[p_1] = "FRU2"
        BY DEF TypeOK, Valid_pc, PCSet
      <3>2. /\ told.ret[p_1] = BOT
            /\ told.op[p_1] = "U" 
            /\ told.arg[p_1] \in NodeSet \X NodeSet
            /\ SameRoot(told, c[p_1], v_U[p_1])
            /\ InvU2All(p_1, told)
        BY <3>1 DEF Inv, InvFR
      <3>3. t.arg[p_1] = told.arg[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
      <3> t.op[p_1] = told.op[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
      <3> t.ret[p_1] = told.ret[p_1]
          BY <3>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
      <3> QED
        BY <3>2, <3>3 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_u_F
    <2>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1]))'
    <2>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
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
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
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
    <2> t.ret[p_1] = ACK => SameRoot(t, u_U'[p_1], v_U'[p_1])
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot
    <2> QED
      BY <2>3 DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot
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
    <2>1. p_1 # p /\ pc[p_1] = "U4"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ SameRoot(told, told.arg[p_1][1], u_U[p_1])
          /\ SameRoot(told, told.arg[p_1][2], v_U[p_1])
          /\ told.ret[p_1] = ACK => SameRoot(told, u_U[p_1], v_U[p_1])
          /\ u_U[p_1] # v_U[p_1]
        BY <2>1 DEF Inv, InvU4
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
    <2> t.ret[p_1] = ACK => SameRoot(t, u_U'[p_1], v_U'[p_1])
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, SameRoot
    <2> (u_U[p_1] # v_U[p_1])'
        BY <2>1, <2>2 DEF TypeOK, Valid_u_U, Valid_v_U
    <2> QED
      BY <2>3 DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot
  <1>15. InvU5'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U5")'
                 PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU5All(p_1, t))'
      BY DEF InvU5
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
    <2>1. p_1 # p /\ pc[p_1] = "U5"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ InvU5All(p_1, told)
        BY <2>1 DEF Inv, InvU5
    <2>3. t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> InvU5All(p_1, t)'
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvU5All, SameRoot
    <2> QED
        BY <2>3 DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, InvU5All, SameRoot
  <1>16. InvU6'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U6")'
                 PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU6All(p_1, t))'
      BY DEF InvU6
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
    <2>1. p_1 # p /\ pc[p_1] = "U6"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ InvU6All(p_1, told)
        BY <2>1 DEF Inv, InvU6
    <2>3. t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> InvU6All(p_1, t)'
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvU6All, SameRoot
    <2> QED
        BY <2>3 DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, InvU6All, SameRoot
  <1>17. InvU7'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U7")'
                 PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU7All(p_1, t))'
      BY DEF InvU7
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
    <2>1. p_1 # p /\ pc[p_1] = "U7"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ InvU7All(p_1, told)
        BY <2>1 DEF Inv, InvU7
    <2>3. t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> InvU7All(p_1, t)'
        BY <2>1, <2>2, <2>3 DEF Inv, TypeOK, Valid_M, Configs, StateSet, InvU7All, SameRoot
    <2> QED
        BY <2>3 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, InvU7All, SameRoot
  <1>18. InvU8'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U8")'
                 PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU8All(p_1, t))'
      BY DEF InvU8
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
    <2>1. p_1 # p /\ pc[p_1] = "U8"
        BY DEF TypeOK, Valid_pc, PCSet
    <2>2. /\ told.ret[p_1] \in {BOT, ACK}
          /\ told.op[p_1] = "U" 
          /\ told.arg[p_1] \in NodeSet \X NodeSet
          /\ InvU8All(p_1, told)
        BY <2>1 DEF Inv, InvU8
    <2>3. t.arg[p_1] = told.arg[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ArgSet
    <2> t.op[p_1] = told.op[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, OpSet
    <2> t.ret[p_1] = told.ret[p_1]
        BY <2>1 DEF Inv, TypeOK, Valid_M, Configs, ReturnSet
    <2> InvU8All(p_1, t)'
        BY <2>1, <2>2, <2>3 DEF Inv, InvU8, TypeOK, Valid_M, Configs, StateSet, InvU8All, SameRoot
    <2> QED
        BY <2>3 DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU8All, SameRoot  
  <1>19. InvUR'
    BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot
  <1>20. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW r \in NodeSet'
                 PROVE  (/\ F[r].bit = 0     => t.sigma[r] = t.sigma[F[r].parent]
                         /\ F[r].bit = 1     => t.sigma[r] = r)'
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
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2> QED
      BY DEF Inv, SigmaRespectsShared, SameRoot
  <1>21. SharedRespectsSigma'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW r \in NodeSet'
                 PROVE  (/\ t.sigma[r] = r   => F[r].bit = 1)'
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
        BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet
    <2> QED
      BY DEF Inv, SharedRespectsSigma, SameRoot
  <1>22. Linearizable'
    <2> PICK told \in M:   (/\ told.ret[p] = BOT
                            /\ told.op[p] = BOT
                            /\ told.arg[p] = BOT)
        BY DEF Inv, InvDecide, Linearizable
    <2>1. told \in Configs
        BY DEF Inv, TypeOK, Valid_M
    <2> DEFINE tF(r) == [sigma |-> told.sigma, 
                         ret |-> told.ret, 
                         op |-> [told.op EXCEPT ![p] = "F"], 
                         arg |-> [told.arg EXCEPT ![p] = r]]
    <2> DEFINE tU(r, s) == [sigma |-> told.sigma, 
                            ret |-> told.ret, 
                            op |-> [told.op EXCEPT ![p] = "U"], 
                            arg |-> [told.arg EXCEPT ![p] = <<r, s>>]]
    <2>  \/ \E r \in NodeSet: tF(r) \in M' 
         \/ \E r \in NodeSet: \E s \in NodeSet: tU(r, s) \in M'
        BY <2>1 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tF, tU, Valid_M
    <2> QED
        BY DEF Linearizable
  <1>23. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
=============================================================================
\* Modification History
\* Last modified Fri Apr 18 18:07:22 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
