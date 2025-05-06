---------------------------- MODULE jtunionfind ----------------------------

\* Main module file. See Linearizability.tla for the proof of linearizability.

EXTENDS Implementation, TypeSafety, Inv, Lemmas, Integers

THEOREM U6Inv == Inv /\ (\E p \in PROCESSES: U6(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, NEW p \in PROCESSES, U6(p)
          PROVE Inv'
    OBVIOUS
  <1> TypeOK' /\ TypeOK
    BY NextTypeOK DEF Inv, Next, Step
  <1> pc[p] = "U6"
    BY DEF U6
  <1>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
            /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                        /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                        /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                                        THEN told.sigma[told.arg[p][2]] 
                                                                                        ELSE told.sigma[i]]
                                                        /\ t.op = told.op
                                                        /\ t.arg = told.arg
                                                    \/  /\ told.ret[p] = ACK
                                                        /\ t.ret = told.ret
                                                        /\ t.sigma = told.sigma
                                                        /\ t.op = told.op
                                                        /\ t.arg = told.arg}
            /\ pc' = [pc EXCEPT ![p] = "U7"]
            /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
            BY <1>1 DEF U6
        <2> QED
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "0"     =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = BOT
                                                       /\ t.arg[p_1] = BOT)'
              BY DEF InvDecide
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvDecide, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>3. InvF1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF1 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F1" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F1U1", "F1U2", "F1U7", "F1U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF1
            <4> QED
              <5>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "F"
                                           /\ t.arg[p_1] \in NodeSet
                                           /\ SameRoot(t, c[p_1], t.arg[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet
              <5>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_u_U
              <5>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU2All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU7All(p_1, t)
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU8All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <3>4. InvF2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F2" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F2U2", "F2U2", "F2U7", "F2U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF2
            <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>5. InvF3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>6. InvF4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>7. InvF5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F5" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F5U1", "F5U2", "F5U7", "F5U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF5
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU2All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU7All(p_1, t)
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU8All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5                                       
          <3>8. InvF6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F6" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F6U1", "F6U2", "F6U7", "F6U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF6
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
                BY NeverReroot DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>9. InvF7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F7" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F7U1", "F7U2", "F7U7", "F7U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF7
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvFR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "FR" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"FRU1", "FRU2", "FRU7", "FRU8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvFR
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU8All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>11. InvU1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (pc[p_1] = "U1"    =>  /\ t.ret[p_1] = BOT
                                                     /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvU1
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvU1, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>12. InvU2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U2")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t))'
              BY DEF InvU2
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1] = BOT)' /\ (t.op[p_1] = "U")'
                    BY DEF InvU2, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>13. InvU3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U3")'
                         PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvU3
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU3, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>14. InvU4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU4, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2    
          <3>15. InvU5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U5")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU5All(p_1, t))'
              BY DEF InvU5
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU5, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                  BY <5>1 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U                
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2  
          <3>16. InvU6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U6")'
                         PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU6All(p_1, t))'
              BY DEF InvU6
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_a_U
            <4> (b_U[p_1].bit = 0 => SameRoot(t, b_U[p_1].parent, v_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ InvU7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. CASE pc[p_1] = "U6"
                <5> USE <4>1
                <5> p = p_1
                    BY DEF Valid_pc, PCSet
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = ACK /\ (t.op[p_1] = "U")'
                    BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> (SameRoot(t, u_U[p], v_U[p]))'
                    BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, SameRoot
                <5> QED    
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                              THEN told.sigma[told.arg[p][2]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2        
            <4>2. CASE pc[p_1] = "U7"
                <5> USE <4>2
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU7, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> QED
                    BY DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U8")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t))'
              BY DEF InvU8
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU8 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU8, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>3. QED
                BY <5>1, <5>2                 
          <3>19. InvUR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "UR")'
                         PROVE  (/\ t.ret[p_1] = ACK
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvUR
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvUR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] = ACK)'
                BY DEF InvUR, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
                BY DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[j]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4>a. \A a, b \in NodeSet: SameRoot(told, a, b) => SameRoot(t, a, b)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. (F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent])'
              <5> SUFFICES ASSUME (F[i].bit = 0)'
                           PROVE  (t.sigma[i] = t.sigma[F[i].parent])'
                OBVIOUS
              <5>1. CASE F[i].bit = 1
                <6> i = u_U[p]
                    BY <1>1, <5>1 DEF Inv, TypeOK, Valid_F, FieldSet    
                <6> (F[i].parent = v_U[p])'
                    BY DEF Inv, TypeOK, Valid_v_U, Valid_F, FieldSet
                <6> QED
                    BY DEF Inv, TypeOK, Valid_v_U, SameRoot, InvU6, InvU6All
              <5>2. CASE F[i].bit = 0
                <6> SameRoot(told, i, F[i].parent)
                    BY <5>2 DEF Inv, SigmaRespectsShared, SameRoot
                <6> i # u_U[p]
                    BY <5>2, <1>1 DEF Inv, Valid_F, FieldSet, Valid_u_U
                <6> QED
                    BY <4>a, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet, SameRoot
              <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[i].bit = 1     => t.sigma[i] = i)'
              <5> SUFFICES ASSUME (F[i].bit = 1)'
                           PROVE  (t.sigma[i] = i)'
                OBVIOUS
              <5> F[i].bit = 1 /\ F[i]' = F[i]
                BY NeverReroot DEF Inv, TypeOK, Valid_F, FieldSet
              <5> told.sigma[u_U[p]] = u_U[p] /\ told.sigma[i] = i
                BY <1>1 DEF Inv, TypeOK, Valid_u_U, SigmaRespectsShared
              <5> i # u_U[p]
                BY DEF Inv, TypeOK, Valid_F, FieldSet
              <5> QED
                BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_M, Configs, StateSet, ArgSet, SameRoot
            <4>3. QED
              BY <4>1, <4>2
          <3>21. Linearizable'
            <4> PICK told \in M: told.ret[p] \in {BOT, ACK} /\ told.arg[p] \in NodeSet \X NodeSet
                BY DEF Inv, InvU6, Linearizable
            <4>a. told \in Configs
                BY DEF Inv, TypeOK, Valid_M
            <4> DEFINE t == [sigma |-> [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[j]],
                             ret |-> [told.ret EXCEPT ![p] = ACK],
                             op |-> told.op,
                             arg |-> told.arg]
            <4> t \in Configs
                BY <4>a DEF Inv, TypeOK, Valid_M, Configs, StateSet, ArgSet, OpSet, ReturnSet, t
            <4>b. told \in M' \/ t \in M'
                BY <4>a DEF t
            <4> QED
                BY <4>b DEF Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
  <1>2. CASE /\ a_U[p].rank > b_U[p].rank 
             /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2>a. ~(a_U[p].rank < b_U[p].rank)
            BY <1>2 DEF Inv, TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
            /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                        /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                        /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                                        THEN told.sigma[told.arg[p][1]] 
                                                                                        ELSE told.sigma[i]]
                                                        /\ t.op = told.op
                                                        /\ t.arg = told.arg
                                                    \/  /\ told.ret[p] = ACK
                                                        /\ t.ret = told.ret
                                                        /\ t.sigma = told.sigma
                                                        /\ t.op = told.op
                                                        /\ t.arg = told.arg}
            /\ pc' = [pc EXCEPT ![p] = "U7"]
            /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
            BY <1>2, <2>a DEF U6
        <2> QED
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "0"     =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = BOT
                                                       /\ t.arg[p_1] = BOT)'
              BY DEF InvDecide
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvDecide, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>3. InvF1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF1 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F1" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F1U1", "F1U2", "F1U7", "F1U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF1
            <4> QED
              <5>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "F"
                                           /\ t.arg[p_1] \in NodeSet
                                           /\ SameRoot(t, c[p_1], t.arg[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet
              <5>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_u_U
              <5>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU2All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU7All(p_1, t)
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU8All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <3>4. InvF2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F2" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F2U2", "F2U2", "F2U7", "F2U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF2
            <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>5. InvF3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>6. InvF4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>7. InvF5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                                           /\ t.op[p_1] = "F"
                                                           /\ t.arg[p_1] \in NodeSet
                                                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                           /\ InvF5All(p_1, t)
                                                           /\  b_F[p_1].bit = 0 => t.ret[p_1] = BOT
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F5" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F5U1", "F5U2", "F5U7", "F5U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF5
            <4>1. (pc[p_1] = "F5"    => /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                        /\ t.op[p_1] = "F"
                                        /\ t.arg[p_1] \in NodeSet
                                        /\ SameRoot(t, c[p_1], t.arg[p_1])
                                        /\ InvF5All(p_1, t)
                                        /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                        /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU2All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU7All(p_1, t)
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU8All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5                                       
          <3>8. InvF6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F6" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F6U1", "F6U2", "F6U7", "F6U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF6
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
                BY NeverReroot DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>9. InvF7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "F7"    =>/\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "F"
                                                         /\ t.arg[p_1] \in NodeSet
                                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                         /\ InvF7All(p_1, t)
                                 /\  pc[p_1] = "F7U1"  =>/\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                                         /\ InvF7All(p_1, t)
                                 /\  pc[p_1] = "F7U2"  =>/\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = "U"
                                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                         /\ InvU2All(p_1, t)
                                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                                         /\ InvF7All(p_1, t)
                                 /\  pc[p_1] = "F7U7"  =>/\ t.ret[p_1] \in {BOT, ACK}
                                                         /\ t.op[p_1] = "U"
                                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                         /\ InvU7All(p_1, t)
                                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                                         /\ InvF7All(p_1, t)
                                 /\  pc[p_1] = "F7U8"  =>/\ t.ret[p_1] \in {BOT, ACK}
                                                         /\ t.op[p_1] = "U"
                                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                                         /\ InvU8All(p_1, t)
                                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                                         /\ InvF7All(p_1, t))'
              BY DEF InvF7
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F7" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F7U1", "F7U2", "F7U7", "F7U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF7
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvFR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "FR" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"FRU1", "FRU2", "FRU7", "FRU8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvFR
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU8All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>11. InvU1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (pc[p_1] = "U1"    =>  /\ t.ret[p_1] = BOT
                                                     /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvU1
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvU1, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>12. InvU2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U2")'
                         PROVE  (    /\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t))'
              BY DEF InvU2
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1] = BOT)' /\ (t.op[p_1] = "U")'
                    BY DEF InvU2, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>13. InvU3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U3")'
                         PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvU3
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU3, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>14. InvU4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU4, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2    
          <3>15. InvU5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U5")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU5All(p_1, t))'
              BY DEF InvU5
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU5, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                  BY <5>1 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U                
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2  
          <3>16. InvU6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U6")'
                         PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU6All(p_1, t))'
              BY DEF InvU6
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_a_U
            <4> (b_U[p_1].bit = 0 => SameRoot(t, b_U[p_1].parent, v_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ InvU7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. CASE pc[p_1] = "U6"
                <5> USE <4>1
                <5> p = p_1
                    BY DEF Valid_pc, PCSet
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = ACK /\ (t.op[p_1] = "U")'
                    BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> (SameRoot(t, u_U[p], v_U[p]))'
                    BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, SameRoot
                <5> QED    
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                              THEN told.sigma[told.arg[p][1]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2        
            <4>2. CASE pc[p_1] = "U7"
                <5> USE <4>2
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU7, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> QED
                    BY DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U8")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t))'
              BY DEF InvU8
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU8 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU8, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>3. QED
                BY <5>1, <5>2                 
          <3>19. InvUR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "UR")'
                         PROVE  (/\ t.ret[p_1] = ACK
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvUR
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvUR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] = ACK)'
                BY DEF InvUR, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
                BY DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[j]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4>a. \A a, b \in NodeSet: SameRoot(told, a, b) => SameRoot(t, a, b)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. (F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent])'
              <5> SUFFICES ASSUME (F[i].bit = 0)'
                           PROVE  (t.sigma[i] = t.sigma[F[i].parent])'
                OBVIOUS
              <5>1. CASE F[i].bit = 1
                <6> i = v_U[p]
                    BY <1>2, <5>1 DEF Inv, TypeOK, Valid_F, FieldSet    
                <6> (F[i].parent = u_U[p])'
                    BY DEF Inv, TypeOK, Valid_u_U, Valid_F, FieldSet
                <6> QED
                    BY DEF Inv, TypeOK, Valid_u_U, SameRoot, InvU6, InvU6All
              <5>2. CASE F[i].bit = 0
                <6> SameRoot(told, i, F[i].parent)
                    BY <5>2 DEF Inv, SigmaRespectsShared, SameRoot
                <6> i # v_U[p]
                    BY <5>2, <1>2 DEF Inv, Valid_F, FieldSet, Valid_v_U
                <6> QED
                    BY <4>a, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet, SameRoot
              <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[i].bit = 1     => t.sigma[i] = i)'
              <5> SUFFICES ASSUME (F[i].bit = 1)'
                           PROVE  (t.sigma[i] = i)'
                OBVIOUS
              <5> F[i].bit = 1 /\ F[i]' = F[i]
                BY NeverReroot DEF Inv, TypeOK, Valid_F, FieldSet
              <5> told.sigma[v_U[p]] = v_U[p] /\ told.sigma[i] = i
                BY <1>2 DEF Inv, TypeOK, Valid_v_U, SigmaRespectsShared
              <5> i # v_U[p]
                BY DEF Inv, TypeOK, Valid_F, FieldSet
              <5> QED
                BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_M, Configs, StateSet, ArgSet, SameRoot
            <4>3. QED
              BY <4>1, <4>2
          <3>21. Linearizable'
            <4> PICK told \in M: told.ret[p] \in {BOT, ACK} /\ told.arg[p] \in NodeSet \X NodeSet
                BY DEF Inv, InvU6, Linearizable
            <4>a. told \in Configs
                BY DEF Inv, TypeOK, Valid_M
            <4> DEFINE t == [sigma |-> [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[j]],
                             ret |-> [told.ret EXCEPT ![p] = ACK],
                             op |-> told.op,
                             arg |-> told.arg]
            <4> t \in Configs
                BY <4>a DEF Inv, TypeOK, Valid_M, Configs, StateSet, ArgSet, OpSet, ReturnSet, t
            <4>b. told \in M' \/ t \in M'
                BY <4>a DEF t
            <4> QED
                BY <4>b DEF Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
  <1>3. CASE /\ a_U[p].rank = b_U[p].rank
             /\ u_U[p] < v_U[p] 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2>a. ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <1>3 DEF Inv, TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2>b. \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank+1, bit |-> 0]]
                  /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                              /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                              /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                                                  THEN told.sigma[told.arg[p][2]] 
                                                                                                  ELSE told.sigma[i]]
                                                              /\ t.op = told.op
                                                              /\ t.arg = told.arg
                                                          \/  /\ told.ret[p] = ACK
                                                              /\ t.ret = told.ret
                                                              /\ t.sigma = told.sigma
                                                              /\ t.op = told.op
                                                              /\ t.arg = told.arg}
                  /\ pc' = [pc EXCEPT ![p] = "U7"]
                  /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
              \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank+1, bit |-> 1]]
                  /\ M' = M
                  /\ pc' = [pc EXCEPT ![p] = "U7"]
                  /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
            BY <1>3, <2>a DEF U6
        <2>1. CASE /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank+1, bit |-> 0]]
                   /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                               /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                               /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                                                   THEN told.sigma[told.arg[p][2]] 
                                                                                                   ELSE told.sigma[i]]
                                                               /\ t.op = told.op
                                                               /\ t.arg = told.arg
                                                           \/  /\ told.ret[p] = ACK
                                                               /\ t.ret = told.ret
                                                               /\ t.sigma = told.sigma
                                                               /\ t.op = told.op
                                                               /\ t.arg = told.arg}
                   /\ pc' = [pc EXCEPT ![p] = "U7"]
                   /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
          <3> USE <2>1
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "0"     =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = BOT
                                                       /\ t.arg[p_1] = BOT)'
              BY DEF InvDecide
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvDecide, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>3. InvF1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF1 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F1" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F1U1", "F1U2", "F1U7", "F1U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF1
            <4> QED
              <5>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "F"
                                           /\ t.arg[p_1] \in NodeSet
                                           /\ SameRoot(t, c[p_1], t.arg[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet
              <5>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_u_U
              <5>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU2All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU7All(p_1, t)
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU8All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <3>4. InvF2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F2" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F2U2", "F2U2", "F2U7", "F2U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF2
            <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>5. InvF3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU2All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF3All(p_1, t))'
              <5> SUFFICES ASSUME (pc[p_1] = "F3U2")'
                           PROVE  (/\ t.ret[p_1] = BOT
                                   /\ t.op[p_1] = "U"
                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                   /\ InvU2All(p_1, t)
                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                   /\ InvF3All(p_1, t))'
                OBVIOUS
              <5>1. (t.ret[p_1] = BOT)'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>2. (t.op[p_1] = "U")'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>3. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>4. InvU2All(p_1, t)'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>5. SameRoot(t, c[p_1], v_U[p_1])'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>6. InvF3All(p_1, t)'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                  Valid_c, PCSet, Valid_u_U, Valid_v_U, Valid_u_F
              <5>7. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5, <5>6
                                                                
            <4>4. (pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>6. InvF4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>7. InvF5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F5" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F5U1", "F5U2", "F5U7", "F5U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF5
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU8All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5                                       
          <3>8. InvF6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
              BY Zenon DEF InvF6
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F6" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F6U1", "F6U2", "F6U7", "F6U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF6
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
                BY NeverReroot DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>9. InvF7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F7" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F7U1", "F7U2", "F7U7", "F7U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF7
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvFR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "FR" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"FRU1", "FRU2", "FRU7", "FRU8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvFR
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU8All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>11. InvU1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (pc[p_1] = "U1"    =>  /\ t.ret[p_1] = BOT
                                                     /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvU1
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvU1, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>12. InvU2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U2")'
                         PROVE  (/\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t))'
              BY DEF InvU2
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1] = BOT)' /\ (t.op[p_1] = "U")'
                    BY DEF InvU2, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>13. InvU3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U3")'
                         PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvU3
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU3, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>14. InvU4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU4, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2    
          <3>15. InvU5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U5")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU5All(p_1, t))'
              BY DEF InvU5
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU5, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                  BY <5>1 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U                
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2  
          <3>16. InvU6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U6")'
                         PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU6All(p_1, t))'
              BY DEF InvU6
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_a_U
            <4> (b_U[p_1].bit = 0 => SameRoot(t, b_U[p_1].parent, v_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ InvU7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. CASE pc[p_1] = "U6"
                <5> USE <4>1
                <5> p = p_1
                    BY DEF Valid_pc, PCSet
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = ACK /\ (t.op[p_1] = "U")'
                    BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> (SameRoot(t, u_U[p], v_U[p]))'
                    BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, SameRoot
                <5> QED    
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                              THEN told.sigma[told.arg[p][2]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2        
            <4>2. CASE pc[p_1] = "U7"
                <5> USE <4>2
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU7, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> QED
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                              THEN told.sigma[told.arg[p][2]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2
                    
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U8")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t))'
              BY DEF InvU8
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU8 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU8, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>3. QED
                BY <5>1, <5>2                 
          <3>19. InvUR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "UR")'
                         PROVE  (/\ t.ret[p_1] = ACK
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvUR
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvUR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] = ACK)'
                BY DEF InvUR, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][1]] 
                                                          THEN told.sigma[told.arg[p][2]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
              <5>3. QED
                BY <5>1, <5>2
                
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[j]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4>a. \A a, b \in NodeSet: SameRoot(told, a, b) => SameRoot(t, a, b)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. (F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent])'
              <5> SUFFICES ASSUME (F[i].bit = 0)'
                           PROVE  (t.sigma[i] = t.sigma[F[i].parent])'
                OBVIOUS
              <5>1. CASE F[i].bit = 1
                <6> i = u_U[p]
                    BY <1>3, <5>1 DEF Inv, TypeOK, Valid_F, FieldSet    
                <6> (F[i].parent = v_U[p])'
                    BY DEF Inv, TypeOK, Valid_v_U, Valid_F, FieldSet
                <6> QED
                    BY DEF Inv, TypeOK, Valid_v_U, SameRoot, InvU6, InvU6All
              <5>2. CASE F[i].bit = 0
                <6> SameRoot(told, i, F[i].parent)
                    BY <5>2 DEF Inv, SigmaRespectsShared, SameRoot
                <6> i # u_U[p]
                    BY <5>2, <1>3 DEF Inv, Valid_F, FieldSet, Valid_u_U
                <6> QED
                    BY <4>a, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet, SameRoot
              <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[i].bit = 1     => t.sigma[i] = i)'
              <5> SUFFICES ASSUME (F[i].bit = 1)'
                           PROVE  (t.sigma[i] = i)'
                OBVIOUS
              <5> F[i].bit = 1 /\ F[i]' = F[i]
                BY NeverReroot DEF Inv, TypeOK, Valid_F, FieldSet
              <5> told.sigma[u_U[p]] = u_U[p] /\ told.sigma[i] = i
                BY <1>3 DEF Inv, TypeOK, Valid_u_U, SigmaRespectsShared
              <5> i # u_U[p]
                BY DEF Inv, TypeOK, Valid_F, FieldSet
              <5> QED
                BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_M, Configs, StateSet, ArgSet, SameRoot, Valid_u_U
            <4>3. QED
              BY <4>1, <4>2
          <3>21. Linearizable'
            <4> PICK told \in M: told.ret[p] \in {BOT, ACK} /\ told.arg[p] \in NodeSet \X NodeSet
                BY DEF Inv, InvU6, Linearizable
            <4>a. told \in Configs
                BY DEF Inv, TypeOK, Valid_M
            <4> DEFINE t == [sigma |-> [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][1]] 
                                                                      THEN told.sigma[told.arg[p][2]] 
                                                                      ELSE told.sigma[j]],
                             ret |-> [told.ret EXCEPT ![p] = ACK],
                             op |-> told.op,
                             arg |-> told.arg]
            <4> t \in Configs
                BY <4>a DEF Inv, TypeOK, Valid_M, Configs, StateSet, ArgSet, OpSet, ReturnSet, t
            <4>b. told \in M' \/ t \in M'
                BY <4>a DEF t
            <4> QED
                BY <4>b DEF Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
        <2>2. CASE /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank+1, bit |-> 1]]
                   /\ M' = M
                   /\ pc' = [pc EXCEPT ![p] = "U7"]
                   /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
          <3> USE <2>2
          <3>f. \A i \in NodeSet: F[i].bit = 0 => (F[i].bit = 0)'
            BY <1>3 DEF Inv, TypeOK, Valid_F, FieldSet, Valid_u_U
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
          <3>3. InvF1'
            BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>4. InvF2'
            BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>5. InvF3'
            BY <3>f DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All, Valid_u_F
          <3>6. InvF4'
            BY <3>f DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>7. InvF5'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU7All
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
                
          <3>8. InvF6'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
              
          <3>9. InvF7'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
              
          <3>11. InvU1'
              BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>12. InvU2'
              BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU2All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>13. InvU3'
              BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>14. InvU4'
              BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>15. InvU5'
              BY DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU5All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>16. InvU6'
              BY DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU6All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4>1. CASE pc[p_1] = "U6"
              BY <4>1 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U, InvU6, InvU6All
            <4>2. CASE pc[p_1] = "U7"
              BY <4>2 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
              BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU8All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>19. InvUR'
              BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs,
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> t \in M
                OBVIOUS
            <4>1. CASE i # u_U[p]
                BY <4>1 DEF Inv, SigmaRespectsShared, Valid_F, FieldSet, Valid_M, Configs, StateSet
            <4> CASE i = u_U[p]
                BY <4>1, <1>3 DEF Inv, SigmaRespectsShared, Valid_F, FieldSet, Valid_M, Configs, StateSet, Valid_u_U
            <4> QED
              BY DEF Inv, SigmaRespectsShared
          <3>21. Linearizable'
              BY DEF Inv, Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
        <2>3. QED
          BY <2>1, <2>2, <2>b
  <1>4. CASE /\ a_U[p].rank = b_U[p].rank
             /\ u_U[p] > v_U[p] 
             /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2>a. ~(\/ a_U[p].rank < b_U[p].rank 
                \/ a_U[p].rank > b_U[p].rank 
                \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <1>4 DEF Inv, TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                            /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                            /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                                                THEN told.sigma[told.arg[p][1]] 
                                                                                                ELSE told.sigma[i]]
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg
                                                        \/  /\ told.ret[p] = ACK
                                                            /\ t.ret = told.ret
                                                            /\ t.sigma = told.sigma
                                                            /\ t.op = told.op
                                                            /\ t.arg = told.arg}
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
            \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 1]]
                /\ M' = M
                /\ pc' = [pc EXCEPT ![p] = "U7"]
                /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
                BY <1>4, <2>a DEF U6
        <2>1. CASE /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                   /\ M' = {t \in Configs: \E told \in M:  \/  /\ told.ret[p] = BOT
                                                               /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                                               /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                                                   THEN told.sigma[told.arg[p][1]] 
                                                                                                   ELSE told.sigma[i]]
                                                               /\ t.op = told.op
                                                               /\ t.arg = told.arg
                                                           \/  /\ told.ret[p] = ACK
                                                               /\ t.ret = told.ret
                                                               /\ t.sigma = told.sigma
                                                               /\ t.op = told.op
                                                               /\ t.arg = told.arg}
                   /\ pc' = [pc EXCEPT ![p] = "U7"]
                   /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
          <3> USE <2>1
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "0"     =>  /\ t.ret[p_1] = BOT
                                                         /\ t.op[p_1] = BOT
                                                       /\ t.arg[p_1] = BOT)'
              BY DEF InvDecide
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvDecide, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>3. InvF1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF1 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F1" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F1U1", "F1U2", "F1U7", "F1U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF1
            <4> QED
              <5>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "F"
                                           /\ t.arg[p_1] \in NodeSet
                                           /\ SameRoot(t, c[p_1], t.arg[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet
              <5>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_u_U
              <5>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU2All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU7All(p_1, t)
                                           /\ SameRoot(t, c[p_1], u_U[p_1]))'
                BY DEF InvF1, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                           /\ t.op[p_1] = "U"
                                           /\ t.arg[p_1] \in NodeSet \X NodeSet
                                           /\ InvU8All(p_1, t)
                                           /\ SameRoot(t, c[p_1], v_U[p_1]))'
                BY DEF InvF1, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U                                                    
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
          <3>4. InvF2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F2" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F2U2", "F2U2", "F2U7", "F2U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF2
            <4>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF2All(p_1, t))'
                BY DEF InvF2, InvF2All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>5. InvF3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F3"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>2. (pc[p_1] = "F3U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>3. (pc[p_1] = "F3U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU2All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>4. (pc[p_1] = "F3U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F                                                
            <4>5. (pc[p_1] = "F3U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF3All(p_1, t))'
                BY DEF InvF3, InvF3All, InvU8All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>6. InvF4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F
                BY DEF Inv, TypeOK
            <4>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF4All(p_1, t))'
                BY DEF InvF4, InvF4All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet                                                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>7.  InvF5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                                           /\ t.op[p_1] = "F"
                                                           /\ t.arg[p_1] \in NodeSet
                                                           /\ SameRoot(t, c[p_1], t.arg[p_1])
                                                           /\ InvF5All(p_1, t)
                                                           /\  b_F[p_1].bit = 0 => t.ret[p_1] = BOT
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F5" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F5U1", "F5U2", "F5U7", "F5U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF5
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              <5> SUFFICES ASSUME (pc[p_1] = "F5U7")'
                           PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                     /\ t.op[p_1] = "U"
                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                   /\ InvU7All(p_1, t)
                                   /\ SameRoot(t, c[p_1], u_U[p_1])
                                   /\ InvF5All(p_1, t))'
                OBVIOUS
              <5>1. (/\ t.ret[p_1] \in {BOT, ACK}
                     /\ t.op[p_1] = "U")'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
              <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
              <5>3. InvU7All(p_1, t)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
              <5>4. SameRoot(t, c[p_1], u_U[p_1])'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
              <5>5. InvF5All(p_1, t)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet, Valid_b_F
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
              
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              <5> SUFFICES ASSUME (pc[p_1] = "F5U8")'
                           PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                     /\ t.op[p_1] = "U"
                                   /\ t.arg[p_1] \in NodeSet \X NodeSet
                                   /\ InvU8All(p_1, t)
                                   /\ SameRoot(t, c[p_1], v_U[p_1])
                                   /\ InvF5All(p_1, t))'
                OBVIOUS
              <5>1. (/\ t.ret[p_1] \in {BOT, ACK}
                     /\ t.op[p_1] = "U")'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
              <5>2. (t.arg[p_1] \in NodeSet \X NodeSet)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
              <5>3. InvU8All(p_1, t)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
              <5>4. SameRoot(t, c[p_1], v_U[p_1])'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
              <5>5. InvF5All(p_1, t)'
                BY DEF InvF5, InvF5All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
              <5>6. QED
                BY <5>1, <5>2, <5>3, <5>4, <5>5
                
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5                                       
          <3>8. InvF6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F6" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F6U1", "F6U2", "F6U7", "F6U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF6
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
                BY NeverReroot DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                      Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU7All(p_1, t)
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU8All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF6All(p_1, t))'
              BY DEF InvF6, InvF6All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>9. InvF7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvF7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "F7" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"F7U1", "F7U2", "F7U7", "F7U8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvF7
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU2All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU7All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF InvF7, InvF7All, Configs, StateSet, OpSet, ArgSet, ReturnSet, InvU8All, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvFR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_u_F /\ Valid_F /\ Valid_a_F /\ Valid_b_F
                BY DEF Inv, TypeOK
            <4> (/\ pc[p_1] = "FR" => t.arg[p_1] \in NodeSet
                 /\ pc[p_1] \in {"FRU1", "FRU2", "FRU7", "FRU8"}
                         => t.arg[p_1] \in NodeSet \X NodeSet)'
                    BY DEF InvFR
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU2All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU7All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF InvFR, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_b_F, InvU8All,
                    Valid_c, PCSet, Valid_v_U, Valid_u_U, Valid_u_F, Valid_F, Valid_a_F, FieldSet
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>11. InvU1'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (pc[p_1] = "U1"    =>  /\ t.ret[p_1] = BOT
                                                     /\ t.op[p_1] = "U"
                                                   /\ t.arg[p_1] \in NodeSet \X NodeSet)'
              BY DEF InvU1
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> QED
                BY DEF Inv, InvU1, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_pc, PCSet
          <3>12. InvU2'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U2")'
                         PROVE  (/\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU2All(p_1, t))'
              BY DEF InvU2
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU2 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1] = BOT)' /\ (t.op[p_1] = "U")'
                    BY DEF InvU2, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU2, InvU2All, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>13. InvU3'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U3")'
                         PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvU3
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU3 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU3, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU3, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2
                
          <3>14. InvU4'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU4 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU4, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU4, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U
              <5>3. QED
                BY <5>1, <5>2    
          <3>15. InvU5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U5")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU5All(p_1, t))'
              BY DEF InvU5
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU5 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU5, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                  BY <5>1 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                      Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U                
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU5, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                    Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU5All, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2  
          <3>16. InvU6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U6")'
                         PROVE  (  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU6All(p_1, t))'
              BY DEF InvU6
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> (a_U[p_1].bit = 0 => SameRoot(t, a_U[p_1].parent, u_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_a_U
            <4> (b_U[p_1].bit = 0 => SameRoot(t, b_U[p_1].parent, v_U[p_1]))'
                BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, Valid_b_U, Valid_a_U
              <5>3. QED
                BY <5>1, <5>2
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU6 /\ InvU7 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc /\ Valid_a_U /\ Valid_b_U
                BY DEF Inv, TypeOK
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. CASE pc[p_1] = "U6"
                <5> USE <4>1
                <5> p = p_1
                    BY DEF Valid_pc, PCSet
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = ACK /\ (t.op[p_1] = "U")'
                    BY DEF InvU6, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> (SameRoot(t, u_U[p], v_U[p]))'
                    BY DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, SameRoot
                <5> QED    
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                              THEN told.sigma[told.arg[p][1]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU6, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_a_U, Valid_b_U,
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU6All, InvU7, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2        
            <4>2. CASE pc[p_1] = "U7"
                <5> USE <4>2
                <5> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                    BY DEF InvU7, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
                <5> QED
                  <6>1. CASE /\ told.ret[p] = BOT
                             /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                             /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                              THEN told.sigma[told.arg[p][1]] 
                                                              ELSE told.sigma[i]]
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>1 DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
                  <6>2. CASE /\ told.ret[p] = ACK
                             /\ t.ret = told.ret
                             /\ t.sigma = told.sigma
                             /\ t.op = told.op
                             /\ t.arg = told.arg
                    BY <6>2 DEF InvU7, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                            Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU7All
                  <6>3. QED
                    BY <6>1, <6>2
                    
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U8")'
                         PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU8All(p_1, t))'
              BY DEF InvU8
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvU8 /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] \in {BOT, ACK})'
                BY DEF InvU8, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvU8, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet, InvU8All
              <5>3. QED
                BY <5>1, <5>2                 
          <3>19. InvUR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "UR")'
                         PROVE  (/\ t.ret[p_1] = ACK
                                 /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                                 /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                                 /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
              BY DEF InvUR
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[i]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4> InvUR /\ Valid_c /\ Valid_u_U /\ Valid_v_U /\ Valid_M /\ Valid_pc
                BY DEF Inv, TypeOK
            <4> (t.arg[p_1] \in NodeSet \X NodeSet)' /\ (t.ret[p_1])' = told.ret[p_1] /\ (t.op[p_1] = "U")' /\ (t.ret[p_1] = ACK)'
                BY DEF InvUR, Valid_pc, PCSet, Valid_M, Configs, ReturnSet
            <4> QED
              <5>1. CASE /\ told.ret[p] = BOT
                         /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                         /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[told.arg[p][2]] 
                                                          THEN told.sigma[told.arg[p][1]] 
                                                          ELSE told.sigma[i]]
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>1 DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
              <5>2. CASE /\ told.ret[p] = ACK
                         /\ t.ret = told.ret
                         /\ t.sigma = told.sigma
                         /\ t.op = told.op
                         /\ t.arg = told.arg
                BY <5>2 DEF InvUR, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, 
                        Valid_pc, PCSet, Valid_u_U, Valid_v_U, FieldSet
              <5>3. QED
                BY <5>1, <5>2
                
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> PICK told \in M: \/  /\ told.ret[p] = BOT
                                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                     /\ t.sigma = [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[j]]
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                                 \/  /\ told.ret[p] = ACK
                                     /\ t.ret = told.ret
                                     /\ t.sigma = told.sigma
                                     /\ t.op = told.op
                                     /\ t.arg = told.arg
                BY DEF Inv, InvU6, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet
            <4>a. \A a, b \in NodeSet: SameRoot(told, a, b) => SameRoot(t, a, b)
                BY Isa DEF Inv, TypeOK, Valid_M, Configs, StateSet, OpSet, ArgSet, ReturnSet, SameRoot
            <4>1. (F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent])'
              <5> SUFFICES ASSUME (F[i].bit = 0)'
                           PROVE  (t.sigma[i] = t.sigma[F[i].parent])'
                OBVIOUS
              <5>1. CASE F[i].bit = 1
                <6> i = v_U[p]
                    BY <1>3, <5>1 DEF Inv, TypeOK, Valid_F, FieldSet    
                <6> (F[i].parent = u_U[p])'
                    BY DEF Inv, TypeOK, Valid_v_U, Valid_F, FieldSet
                <6> QED
                    BY DEF Inv, TypeOK, Valid_v_U, Valid_u_U, SameRoot, InvU6, InvU6All
              <5>2. CASE F[i].bit = 0
                <6> SameRoot(told, i, F[i].parent)
                    BY <5>2 DEF Inv, SigmaRespectsShared, SameRoot
                <6> i # v_U[p]
                    BY <5>2, <1>4 DEF Inv, Valid_F, FieldSet, Valid_v_U
                <6> QED
                    BY <4>a, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet, SameRoot
              <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[i].bit = 1     => t.sigma[i] = i)'
              <5> SUFFICES ASSUME (F[i].bit = 1)'
                           PROVE  (t.sigma[i] = i)'
                OBVIOUS
              <5> F[i].bit = 1 /\ F[i]' = F[i]
                BY NeverReroot DEF Inv, TypeOK, Valid_F, FieldSet
              <5> told.sigma[v_U[p]] = v_U[p] /\ told.sigma[i] = i
                BY <1>4 DEF Inv, TypeOK, Valid_v_U, SigmaRespectsShared
              <5> i # v_U[p]
                BY DEF Inv, TypeOK, Valid_F, FieldSet
              <5> QED
                BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_M, Configs, StateSet, ArgSet, SameRoot, Valid_v_U
            <4>3. QED
              BY <4>1, <4>2
          <3>21. Linearizable'
            <4> PICK told \in M: told.ret[p] \in {BOT, ACK} /\ told.arg[p] \in NodeSet \X NodeSet
                BY DEF Inv, InvU6, Linearizable
            <4>a. told \in Configs
                BY DEF Inv, TypeOK, Valid_M
            <4> DEFINE t == [sigma |-> [j \in NodeSet |-> IF told.sigma[j] = told.sigma[told.arg[p][2]] 
                                                                      THEN told.sigma[told.arg[p][1]] 
                                                                      ELSE told.sigma[j]],
                             ret |-> [told.ret EXCEPT ![p] = ACK],
                             op |-> told.op,
                             arg |-> told.arg]
            <4> t \in Configs
                BY <4>a DEF Inv, TypeOK, Valid_M, Configs, StateSet, ArgSet, OpSet, ReturnSet, t
            <4>b. told \in M' \/ t \in M'
                BY <4>a DEF t
            <4> QED
                BY <4>b DEF Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
        <2>2. CASE /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 1]]
                   /\ M' = M
                   /\ pc' = [pc EXCEPT ![p] = "U7"]
                   /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
          <3> USE <2>2
          <3>f. \A i \in NodeSet: F[i].bit = 0 => (F[i].bit = 0)'
            BY <1>4 DEF Inv, TypeOK, Valid_F, FieldSet, Valid_u_U
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
          <3>3. InvF1'
            BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>4. InvF2'
            BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>5. InvF3'
            BY <3>f DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All, Valid_u_F
          <3>6. InvF4'
            BY <3>f DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>7. InvF5'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M'
                         PROVE  (/\  pc[p_1] = "F5"    =>    /\ t.ret[p_1] \in {BOT} \cup NodeSet
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
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU2All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU7All(p_1, t)
                                         /\ SameRoot(t, c[p_1], u_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU7All
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                                         /\ InvU8All(p_1, t)
                                         /\ SameRoot(t, c[p_1], v_U[p_1])
                                         /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
                
          <3>8. InvF6'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
              
          <3>9. InvF7'
            <4> USE <3>f
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "FR"    =>  /\ t.ret[p_1] = u_F[p_1]
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, t.arg[p_1], u_F[p_1])
                                     /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ SameRoot(t, c[p_1], u_F[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1]))'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
              
          <3>11. InvU1'
              BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>12. InvU2'
              BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU2All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>13. InvU3'
              BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>14. InvU4'
              BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>15. InvU5'
              BY DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU5All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>16. InvU6'
              BY DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU6All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4>1. CASE pc[p_1] = "U6"
              BY <4>1 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U, InvU6, InvU6All
            <4>2. CASE pc[p_1] = "U7"
              BY <4>2 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
              BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU8All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>19. InvUR'
              BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs,
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>20. SigmaRespectsShared'
            <4> SUFFICES ASSUME NEW t \in M',
                                NEW i \in NodeSet'
                         PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                 /\ F[i].bit = 1     => t.sigma[i] = i)'
              BY DEF SigmaRespectsShared
            <4> t \in M
                OBVIOUS
            <4>1. CASE i # v_U[p]
                BY <4>1 DEF Inv, SigmaRespectsShared, Valid_F, FieldSet, Valid_M, Configs, StateSet
            <4> CASE i = v_U[p]
                BY <1>4 DEF Inv, SigmaRespectsShared, Valid_F, FieldSet, Valid_M, Configs, StateSet, Valid_v_U
            <4> QED
              BY DEF Inv, SigmaRespectsShared
          <3>21. Linearizable'
              BY DEF Inv, Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
        <2>3. QED
          BY <2>1, <2>2
  <1>5. CASE    ~(\/ /\ a_U[p].rank < b_U[p].rank 
                     /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                  \/ /\ a_U[p].rank > b_U[p].rank 
                     /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                  \/ /\ a_U[p].rank = b_U[p].rank
                     /\ u_U[p] < v_U[p] 
                     /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                  \/ /\ a_U[p].rank = b_U[p].rank
                     /\ u_U[p] > v_U[p] 
                     /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <2> /\ pc' = [pc EXCEPT ![p] = "U7"]
            /\ F' = F
            /\ M' = M
            /\ UNCHANGED <<u_F, a_F, b_F, u_U, v_U, a_U, b_U, c, d>>
                BY <1>5 DEF U6, Inv, TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> QED
          <3>1. TypeOK'
            OBVIOUS
          <3>2. InvDecide'
            BY DEF Inv, InvDecide, TypeOK, Valid_pc, PCSet
          <3>3. InvF1'
            BY DEF Inv, InvF1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>4. InvF2'
            BY DEF Inv, InvF2, InvF2All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>5. InvF3'
            BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>6. InvF4'
            BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>7. InvF5'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F5"    =>  /\ t.ret[p_1] \in {BOT} \cup NodeSet
                                         /\ t.op[p_1] = "F"
                                         /\ t.arg[p_1] \in NodeSet
                                         /\ SameRoot(t, c[p_1], t.arg[p_1])
                                         /\ InvF5All(p_1, t)
                                         /\ b_F[p_1].bit = 0 => t.ret[p_1] = BOT
                                         /\ b_F[p_1].bit = 1 => t.ret[p_1] = a_F[p_1].parent )'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF5All(p_1, t))'
              BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>8. InvF6'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F6"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF6All(p_1, t))'
              BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>9. InvF7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
            <4>1. (pc[p_1] = "F7"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU2All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU7All(p_1, t)
                                       /\ SameRoot(t, c[p_1], u_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                         /\ t.op[p_1] = "U"
                                       /\ t.arg[p_1] \in NodeSet \X NodeSet
                                       /\ InvU8All(p_1, t)
                                       /\ SameRoot(t, c[p_1], v_U[p_1])
                                       /\ InvF7All(p_1, t))'
              BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
            <4>6. QED
              BY <4>1, <4>2, <4>3, <4>4, <4>5
          <3>10. InvFR'
              BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, Valid_a_F, Valid_b_F, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U, InvU2All, InvU7All, InvU8All
          <3>11. InvU1'
              BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>12. InvU2'
              BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU2All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>13. InvU3'
              BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>14. InvU4'
              BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>15. InvU5'
              BY DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU5All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>16. InvU6'
              BY DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU6All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>17. InvU7'
            <4> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                                NEW t \in M',
                                (pc[p_1] = "U7")'
                         PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                                   /\ t.op[p_1] = "U"
                                 /\ t.arg[p_1] \in NodeSet \X NodeSet
                                 /\ InvU7All(p_1, t))'
              BY DEF InvU7
            <4>1. CASE pc[p_1] = "U6"
              BY <4>1 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U, InvU6, InvU6All
            <4>2. CASE pc[p_1] = "U7"
              BY <4>2 DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, 
                    Configs, InvU7All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                    Valid_u_U, Valid_v_U
            <4> QED
                BY <4>1, <4>2 DEF Inv, TypeOK, Valid_pc, PCSet
          <3>18. InvU8'
              BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs, 
                  InvU8All, Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, 
                  Valid_u_U, Valid_v_U
          <3>19. InvUR'
              BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, SameRoot, Valid_c, Valid_M, Configs,
                  Valid_F, FieldSet, StateSet, ArgSet, ReturnSet, OpSet, Valid_u_U, Valid_v_U
          <3>20. SigmaRespectsShared'
              BY DEF Inv, SigmaRespectsShared
          <3>21. Linearizable'
              BY DEF Inv, Linearizable
          <3>22. QED
            BY <3>1, <3>10, <3>11, <3>12, <3>13, <3>14, <3>15, <3>16, <3>17, <3>18, <3>19, <3>2, <3>20, <3>21, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9 DEF Inv
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

=============================================================================
\* Modification History
\* Last modified Sun May 04 19:35:06 EDT 2025 by karunram
\* Created Thu May 01 02:16:41 EDT 2025 by karunram

=============================================================================
\* Modification History
\* Last modified Fri May 02 16:20:50 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
