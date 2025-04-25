---------------------------- MODULE jtunionfind ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas, Integers

THEOREM U6InvDecide == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvDecide'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvDecide'
    OBVIOUS
  <1> USE TypeOK' DEF InvDecide, TypeOK, U6
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                    NEW t \in M',
                    (pc[p_1] = "0")'
             PROVE  (/\ t.ret[p_1] = BOT
                     /\ t.op[p_1] = BOT
                     /\ t.arg[p_1] = BOT)'
    OBVIOUS
  <1>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> USE <1>1
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank)
            BY <1>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>2
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <1>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>3
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <1>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> USE <1>4
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <2> QED
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvF1 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvF1'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvF1'
    OBVIOUS
  <1> USE TypeOK' DEF InvF1, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
    OBVIOUS
  <1>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> USE <1>1
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank)
            BY <1>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>2
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <1>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>3
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <1>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> USE <1>4
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, InvU7All
          <3>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, InvU8All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <2> M' = M
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, NodeSet
        <2> QED
          <3>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvF2 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvF2'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvF2'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
  <1> USE TypeOK' DEF InvF2, InvF2All, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U, Valid_u_F
  <1>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> USE <1>1
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
            
    <1>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank)
            BY <1>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>2
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <1>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>3
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <1>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> USE <1>4
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
          <3>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
          <3>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU2All
          <3>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7All
          <3>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7All
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <2> M' = M
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, NodeSet
        <2> QED
          <3>1. (pc[p_1] = "F2"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1])
                                     /\ InvF2All(p_1, t))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1])
                                     /\ InvF2All(p_1, t))'
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
          <3>6. QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU7 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU7'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU7'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U7")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU7All(p_1, t))'
      BY DEF InvU7
  <1> USE TypeOK' DEF InvU7, InvU7All, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, InvF6All
  <1>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> USE <1>1
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
          <3>1. CASE /\ told.ret[p] = BOT
                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                     THEN told.sigma[v_U[p]] 
                                                     ELSE told.sigma[i]]
                     /\ t.op = told.op
                     /\ t.arg = told.arg
            BY <3>1 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, InvF7, InvF7All
          <3>2. CASE /\ told.ret[p] = ACK
                     /\ t.ret = told.ret
                     /\ t.sigma = told.sigma
                     /\ t.op = told.op
                     /\ t.arg = told.arg
            BY <3>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, InvF7, InvF7All
          <3>3. QED
            BY <3>1, <3>2
            
    <1>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank)
            BY <1>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>2
        <2> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <2> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <1>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <2> USE <1>3
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <2> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <1>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <2> USE <1>4
        <2> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
    <1>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <2> QED
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: U6(p)) => Inv'   
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p)
          PROVE Inv'
    OBVIOUS
  <1>1. TypeOK'
    BY NextTypeOK DEF Inv
  <1> USE <1>1 DEF U6, Inv
  <1>2. InvDecide'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "0")'
                 PROVE  (/\ t.ret[p_1] = BOT
                         /\ t.op[p_1] = BOT
                         /\ t.arg[p_1] = BOT)'
      BY DEF InvDecide
    <2> USE DEF InvDecide
    <2>1. CASE /\ a_U[p].rank < b_U[p].rank 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> USE <2>1
        <3> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6
    <2>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank)
            BY <2>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>2
        <3> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6
    <2>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <2>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>3
        <3> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6
    <2>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <2>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> USE <2>4
        <3> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6
    <2>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <3> M' = M
            BY <2>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> QED
            BY <2>5 DEF Inv, TypeOK
    <2> QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
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
    <2> USE DEF InvF1, Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
    <2>1. CASE /\ a_U[p].rank < b_U[p].rank 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> USE <2>1
        <3> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                THEN told.sigma[v_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> QED
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
    <2>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank)
            BY <2>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>2
        <3> PICK told \in M: \/ /\ told.ret[p] = BOT
                                /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                THEN told.sigma[u_U[p]] 
                                                                ELSE told.sigma[i]]
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                             \/ /\ told.ret[p] = ACK
                                /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> QED
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
    <2>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <2>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>3
        <3> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> QED
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
    <2>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <2>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> USE <2>4
        <3> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                \/  /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> QED
          <4>1. (pc[p_1] = "F1"    =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "F"
                                     /\ t.arg[p_1] \in NodeSet
                                     /\ SameRoot(t, c[p_1], t.arg[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>2. (pc[p_1] = "F1U1"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>3. (pc[p_1] = "F1U2"  =>  /\ t.ret[p_1] = BOT
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU2All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>4. (pc[p_1] = "F1U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU7All(p_1, t)
                                     /\ SameRoot(t, c[p_1], u_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>5. (pc[p_1] = "F1U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                       /\ t.op[p_1] = "U"
                                     /\ t.arg[p_1] \in NodeSet \X NodeSet
                                     /\ InvU8All(p_1, t)
                                     /\ SameRoot(t, c[p_1], v_U[p_1]))'
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
          <4>6. QED
            BY <4>1, <4>2, <4>3, <4>4, <4>5
    <2>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank > b_U[p].rank 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] < v_U[p] 
                    /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                 \/ /\ a_U[p].rank = b_U[p].rank
                    /\ u_U[p] > v_U[p] 
                    /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
        <3> M' = M
            BY <2>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> QED
            BY <2>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot, Valid_c, Valid_u_U, Valid_v_U
    <2> QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
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
    <2> USE DEF InvF2, InvF2All, Valid_c, Valid_u_U, Valid_v_U, Valid_u_F
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
      <3> QED
    <2>2. (pc[p_1] = "F2U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF2All(p_1, t))'
        <3>1. CASE /\ a_U[p].rank < b_U[p].rank 
                   /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
            <4> USE <3>1
            <4> PICK told \in M: \/ /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                    THEN told.sigma[v_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                 \/ /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
            <4> QED
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot
        <3>2. CASE /\ a_U[p].rank > b_U[p].rank 
                   /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
            <4> ~(a_U[p].rank < b_U[p].rank)
                BY <3>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
            <4> USE <3>2
            <4> PICK told \in M: \/ /\ told.ret[p] = BOT
                                    /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                    /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                    THEN told.sigma[u_U[p]] 
                                                                    ELSE told.sigma[i]]
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                                 \/ /\ told.ret[p] = ACK
                                    /\ t.ret = told.ret
                                    /\ t.sigma = told.sigma
                                    /\ t.op = told.op
                                    /\ t.arg = told.arg
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
            <4> QED
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot
        <3>3. CASE /\ a_U[p].rank = b_U[p].rank
                   /\ u_U[p] < v_U[p] 
                   /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
            <4> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
                BY <3>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
            <4> USE <3>3
            <4> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                        /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                        /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                                        THEN told.sigma[v_U[p]] 
                                                                        ELSE told.sigma[i]]
                                        /\ t.op = told.op
                                        /\ t.arg = told.arg
                                    \/  /\ told.ret[p] = ACK
                                        /\ t.ret = told.ret
                                        /\ t.sigma = told.sigma
                                        /\ t.op = told.op
                                        /\ t.arg = told.arg
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> \A i, j \in NodeSet: SameRoot(told, i, j) => SameRoot(t, i, j)
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
            <4> QED
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvF6All, InvU2All, InvU7All, InvU8All, SameRoot
        <3>4. CASE /\ a_U[p].rank = b_U[p].rank
                   /\ u_U[p] > v_U[p] 
                   /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
            <4> ~(\/ a_U[p].rank < b_U[p].rank 
                  \/ a_U[p].rank > b_U[p].rank 
                  \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
                BY <3>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
            <4> USE <3>4
            <4> PICK told \in M:    \/  /\ told.ret[p] = BOT
                                        /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                                        /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                                        THEN told.sigma[u_U[p]] 
                                                                        ELSE told.sigma[i]]
                                        /\ t.op = told.op
                                        /\ t.arg = told.arg
                                    \/  /\ told.ret[p] = ACK
                                        /\ t.ret = told.ret
                                        /\ t.sigma = told.sigma
                                        /\ t.op = told.op
                                        /\ t.arg = told.arg
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
            <4> QED
                BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6
        <3>5. CASE ~(\/ /\ a_U[p].rank < b_U[p].rank 
                        /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                     \/ /\ a_U[p].rank > b_U[p].rank 
                        /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]  
                     \/ /\ a_U[p].rank = b_U[p].rank
                        /\ u_U[p] < v_U[p] 
                        /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1] 
                     \/ /\ a_U[p].rank = b_U[p].rank
                        /\ u_U[p] > v_U[p] 
                        /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1])
            <4> M' = M
                BY <3>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
            <4> QED
                BY <3>5 DEF Inv, TypeOK
        <3> QED
            BY <3>1, <3>2, <3>3, <3>4, <3>5
    <2>3. (pc[p_1] = "F2U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF2All(p_1, t))'
    <2>4. (pc[p_1] = "F2U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF2All(p_1, t))'
    <2>5. (pc[p_1] = "F2U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF2All(p_1, t))'
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvF3, InvF3All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2  
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
    <2>1. (pc[p_1] = "F4"    =>  /\ t.ret[p_1] = BOT
                               /\ t.op[p_1] = "F"
                             /\ t.arg[p_1] \in NodeSet
                             /\ SameRoot(t, c[p_1], t.arg[p_1])
                             /\ InvF4All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY NeverReroot, <3>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>2. (pc[p_1] = "F4U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF4All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY NeverReroot, <3>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>3. (pc[p_1] = "F4U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF4All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY NeverReroot, <3>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>4. (pc[p_1] = "F4U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF4All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY NeverReroot, <3>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>5. (pc[p_1] = "F4U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF4All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY NeverReroot, <3>2 DEF Inv, InvF4, InvF4All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>6. QED
      BY <2>1, <2>2, <2>3, <2>4, <2>5
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
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>2. (pc[p_1] = "F5U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>3. (pc[p_1] = "F5U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>4. (pc[p_1] = "F5U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>5. (pc[p_1] = "F5U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF5All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF5, InvF5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>2. (pc[p_1] = "F6U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>3. (pc[p_1] = "F6U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>4. (pc[p_1] = "F6U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>5. (pc[p_1] = "F6U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF6All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF6, InvF6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>2. (pc[p_1] = "F7U1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>3. (pc[p_1] = "F7U2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>4. (pc[p_1] = "F7U7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>5. (pc[p_1] = "F7U8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1])
                               /\ InvF7All(p_1, t))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvF7, InvF7All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvF7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>2. (pc[p_1] = "FRU1"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ SameRoot(t, c[p_1], u_U[p_1])
                               /\ SameRoot(t, c[p_1], u_F[p_1]))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>3. (pc[p_1] = "FRU2"  =>  /\ t.ret[p_1] = BOT
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU2All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>4. (pc[p_1] = "FRU7"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU7All(p_1, t)
                               /\ SameRoot(t, c[p_1], u_U[p_1]))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
        <3> QED
            BY <3>1, <3>2  
    <2>5. (pc[p_1] = "FRU8"  =>  /\ t.ret[p_1] \in {BOT, ACK}
                                 /\ t.op[p_1] = "U"
                               /\ t.arg[p_1] \in NodeSet \X NodeSet
                               /\ InvU8All(p_1, t)
                               /\ SameRoot(t, c[p_1], v_U[p_1]))'
        <3>1. CASE pc[p] = "FR"
            <4> USE <3>1
            <4> PICK told \in M: /\ told.ret[p] = u_F[p] 
                                 /\ t.sigma = told.sigma
                                 /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                                 /\ t.op = [told.op EXCEPT ![p] = BOT]
                                 /\ t.arg = [told.arg EXCEPT ![p] = BOT]
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
            <4> QED
                BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
        <3>2. CASE pc[p] # "FR"
            BY <3>2 DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU1, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU2, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvU3, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2
  <1>14. InvU4'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U4")'
                 PROVE  (    /\ t.ret[p_1] \in {BOT, ACK}
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ (t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))  
                         /\ u_U[p_1] # v_U[p_1])'
      BY DEF InvU4
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU4, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU5, InvU5All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvU5, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU6, InvU6All, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvU6, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU7, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
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
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvU8, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2
  <1>19. InvUR'
    <2> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "UR")'
                 PROVE  (    /\ t.ret[p_1] = ACK
                           /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvUR
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot, Configs, Valid_M, ReturnSet, OpSet, ArgSet            
    <2>2. CASE pc[p] # "FR"
        BY <2>2 DEF Inv, InvUR, TypeOK, Valid_pc, PCSet, InvU2All, InvU7All, InvU8All, SameRoot
    <2> QED
        BY <2>1, <2>2
  <1>20. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet'
                 PROVE  (/\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                         /\ F[i].bit = 1     => t.sigma[i] = i)'
      BY DEF SigmaRespectsShared
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, SigmaRespectsShared, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2>2. CASE pc[p] # "FR"
            BY <2>2 DEF Inv, SigmaRespectsShared, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2> QED
        BY <2>1, <2>2
  <1>21. SharedRespectsSigma'  
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW i \in NodeSet',
                        (t.sigma[i] = i)'
                 PROVE  (F[i].bit = 1)'
      BY DEF SharedRespectsSigma
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
                             /\ t.sigma = told.sigma
                             /\ t.ret = [told.ret EXCEPT ![p] = BOT]
                             /\ t.op = [told.op EXCEPT ![p] = BOT]
                             /\ t.arg = [told.arg EXCEPT ![p] = BOT]
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot
        <3> QED
            BY DEF Inv, SharedRespectsSigma, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2>2. CASE pc[p] # "FR"
            BY <2>2 DEF Inv, SharedRespectsSigma, TypeOK, Valid_F, Valid_M, Configs, StateSet
    <2> QED
        BY <2>1, <2>2
  <1>22. Linearizable'
    <2>1. CASE pc[p] = "FR"
        <3> USE <2>1
        <3> PICK told \in M: /\ told.ret[p] = u_F[p] 
            BY DEF Inv, InvFR, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, SameRoot, Linearizable
        <3>1. told \in Configs
            BY DEF Inv, TypeOK, Valid_M
        <3> DEFINE t == [sigma |-> told.sigma,
                         ret |-> [told.ret EXCEPT ![p] = BOT],
                         op |-> [told.op EXCEPT ![p] = BOT],
                         arg |-> [told.arg EXCEPT ![p] = BOT]]
        <3> t \in M'
            BY <3>1 DEF Inv, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, t, Valid_M
        <3> QED
            BY DEF Inv, Linearizable
    <2>2. CASE pc[p] # "FR"
            BY <2>2 DEF Inv, Linearizable
    <2> QED
        BY <2>1, <2>2
  <1>23. QED
      BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
    
=============================================================================
\* Modification History
\* Last modified Fri Apr 25 02:40:39 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
