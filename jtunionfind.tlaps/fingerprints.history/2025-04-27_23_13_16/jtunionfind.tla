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

THEOREM U6InvU1 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU1'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU1'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U1")'
                 PROVE  (/\ t.ret[p_1] = BOT
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet)'
      BY DEF InvU1
  <1> USE TypeOK' DEF InvU1, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, Valid_a_U, Valid_b_U
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU2 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU2'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU2'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U2")'
                 PROVE  (/\ t.ret[p_1] = BOT
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU2All(p_1, t))'
      BY DEF InvU2
  <1> USE TypeOK' DEF InvU2, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, Valid_a_U, Valid_b_U
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU3 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU3'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU3'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U3")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ t.ret[p_1] = ACK => SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvU3
  <1> USE TypeOK' DEF InvU3, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, Valid_a_U, Valid_b_U
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU4 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU4'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU4'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
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
  <1> USE TypeOK' DEF InvU4, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, Valid_a_U, Valid_b_U
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU5 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU5'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU5'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U5")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU5All(p_1, t))'
      BY DEF InvU5
  <1> USE TypeOK' DEF InvU5, InvU5All, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F, Valid_a_U, Valid_b_U
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU6 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU6'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU6'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U6")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU6All(p_1, t))'
      BY DEF InvU6
  <1> USE TypeOK' DEF InvU6, InvU6All, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
        <2>1. CASE pc[p_1] = "U6"
            BY <2>1 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
        <2>2. CASE pc[p_1] = "U7"
            BY <2>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7, InvU7All
        <2> QED
            BY <2>1, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet    
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
        <2>1. CASE pc[p_1] = "U6"
            BY <2>1 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
        <2>2. CASE pc[p_1] = "U7"
            BY <2>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7, InvU7All
        <2> QED
            BY <2>1, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet    
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
        <2>1. CASE pc[p_1] = "U6"
            BY <2>1 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
        <2>2. CASE pc[p_1] = "U7"
          <3>1. CASE /\ told.ret[p] = BOT
                     /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                     /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                     THEN told.sigma[v_U[p]] 
                                                     ELSE told.sigma[i]]
                     /\ t.op = told.op
                     /\ t.arg = told.arg
            BY <3>1, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7, InvU7All
          <3>2. CASE /\ told.ret[p] = ACK
                     /\ t.ret = told.ret
                     /\ t.sigma = told.sigma
                     /\ t.op = told.op
                     /\ t.arg = told.arg
            BY <3>2, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7, InvU7All
          <3>3. QED
            BY <3>1, <3>2
        <2> QED
            BY <2>1, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet    
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
        <2>1. CASE pc[p_1] = "U6"
            BY <2>1 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All
        <2>2. CASE pc[p_1] = "U7"
            BY <2>2 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU7, InvU7All
        <2> QED
            BY <2>1, <2>2 DEF Inv, TypeOK, Valid_pc, PCSet    
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet, InvU6, InvU6All, InvU7, InvU7All
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvU8 == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvU8'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvU8'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "U8")'
                 PROVE  (/\ t.ret[p_1] \in {BOT, ACK}
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ InvU8All(p_1, t))'
      BY DEF InvU8
  <1> USE TypeOK' DEF InvU8, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
    <1> QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5

THEOREM U6InvUR == (Inv /\ [Next]_varlist /\ \E p \in PROCESSES: U6(p)) /\ TypeOK' => InvUR'
  <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, U6(p), TypeOK'
          PROVE InvUR'
    OBVIOUS
  <1> SUFFICES ASSUME NEW p_1 \in PROCESSES',
                        NEW t \in M',
                        (pc[p_1] = "UR")'
                 PROVE  (/\ t.ret[p_1] = ACK
                         /\ t.op[p_1] = "U"
                         /\ t.arg[p_1] \in NodeSet \X NodeSet
                         /\ SameRoot(t, t.arg[p_1][1], u_U[p_1])
                         /\ SameRoot(t, t.arg[p_1][2], v_U[p_1])
                         /\ SameRoot(t, u_U[p_1], v_U[p_1]))'
      BY DEF InvUR
  <1> USE TypeOK' DEF InvUR, TypeOK, U6, InvU2All, InvU7All, InvU8All, SameRoot, Valid_u_U, Valid_v_U, Valid_u_F
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <2> QED
            BY DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
            BY <1>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, InvU6, InvU6All, Valid_a_U, Valid_b_U, FieldSet
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
  <1>3. InvF1'
  <1>4. InvF2'
  <1>5. InvF3'
  <1>6. InvF4'
  <1>7. InvF5'
  <1>8. InvF6'
  <1>9. InvF7' 
  <1>10. InvFR'
  <1>11. InvU1'
    BY U6InvU1, Zenon
  <1>12. InvU2'
    BY U6InvU2, Zenon
  <1>13. InvU3'
    BY U6InvU3, Zenon
  <1>14. InvU4'
    BY U6InvU4, Zenon
  <1>15. InvU5'
    BY U6InvU5, Zenon
  <1>16. InvU6'
    BY U6InvU6, Zenon
  <1>17. InvU7'
    BY U6InvU7, Zenon
  <1>18. InvU8'
    BY U6InvU8, Zenon
  <1>19. InvUR'
    BY U6InvUR, Zenon
  <1>20. SigmaRespectsShared'
    <2> SUFFICES ASSUME NEW t \in M',
                        NEW j \in NodeSet'
                 PROVE  (/\ F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent]
                         /\ F[j].bit = 1     => t.sigma[j] = j)'
      BY DEF SigmaRespectsShared
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
            OBVIOUS
        <3>1. CASE told.ret[p] = BOT
            <4> USE <3>1
            <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                <5>1. CASE F[j].bit = 0
                    BY <5>1, <3>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                <5>2. CASE F[j].bit = 1
                    BY <5>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, Valid_v_U, Valid_u_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
                <5> QED
                    BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
                BY DEF Inv, SigmaRespectsShared, Valid_u_U, Valid_F, FieldSet, TypeOK
            <4> QED
                BY <4>1, <4>2
        <3>2. CASE told.ret[p] = ACK /\ t.sigma = told.sigma
          <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
            <5>1. CASE F[j].bit = 0
                BY <5>1, <3>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
            <5>2. CASE F[j].bit = 1
                BY <5>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, Valid_v_U, Valid_u_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
            <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
          <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
            BY <3>2, NeverReroot DEF Inv, TypeOK, Valid_M, Configs, StateSet, SigmaRespectsShared, Valid_F, FieldSet
          <4>3. QED
            BY <4>1, <4>2
        <3> QED
            BY <3>1, <3>2
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
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
        <3>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
            BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
        <3> F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
            OBVIOUS
        <3>1. CASE told.ret[p] = BOT
            <4> USE <3>1
            <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                <5>1. CASE F[j].bit = 0
                    BY <5>1, <3>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                <5>2. CASE F[j].bit = 1
                    BY <5>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, Valid_u_U, Valid_v_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
                <5> QED
                    BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
            <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
                BY DEF Inv, SigmaRespectsShared, Valid_v_U, Valid_F, FieldSet, TypeOK
            <4> QED
                BY <4>1, <4>2
        <3>2. CASE told.ret[p] = ACK /\ t.sigma = told.sigma
          <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
            <5>1. CASE F[j].bit = 0
                BY <5>1, <3>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
            <5>2. CASE F[j].bit = 1
                BY <5>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, Valid_u_U, Valid_v_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
            <5> QED
                BY <5>1, <5>2 DEF Inv, TypeOK, Valid_F, FieldSet
          <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
            BY <3>2, NeverReroot DEF Inv, TypeOK, Valid_M, Configs, StateSet, SigmaRespectsShared, Valid_F, FieldSet
          <4>3. QED
            BY <4>1, <4>2
        <3> QED
            BY <3>1, <3>2
    <2>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <2>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>3
        <3> \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                /\ M' = {v \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                            /\ v.ret = [rold.ret EXCEPT ![p] = ACK]
                                                            /\ v.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[u_U[p]] 
                                                                                                THEN rold.sigma[v_U[p]] 
                                                                                                ELSE rold.sigma[i]]
                                                            /\ v.op = rold.op
                                                            /\ v.arg = rold.arg
                                                        \/  /\ rold.ret[p] = ACK
                                                            /\ v.ret = rold.ret
                                                            /\ v.sigma = rold.sigma
                                                            /\ v.op = rold.op
                                                            /\ v.arg = rold.arg}
            \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 1]]
                /\ M' = M
            BY <2>3
        <3> USE <2>3
        <3>1. CASE /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                   /\ M' = {v \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                               /\ v.ret = [rold.ret EXCEPT ![p] = ACK]
                                                               /\ v.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[u_U[p]] 
                                                                                                   THEN rold.sigma[v_U[p]] 
                                                                                                   ELSE rold.sigma[i]]
                                                               /\ v.op = rold.op
                                                               /\ v.arg = rold.arg
                                                           \/  /\ rold.ret[p] = ACK
                                                               /\ v.ret = rold.ret
                                                               /\ v.sigma = rold.sigma
                                                               /\ v.op = rold.op
                                                               /\ v.arg = rold.arg}
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
            <4>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
            <4> USE <3>1
            <4>1. CASE told.ret[p] = BOT
                <5> USE <4>1
                <5>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                  <6> SUFFICES ASSUME (F[j].bit = 0)'
                               PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
                    OBVIOUS
                  <6>1. CASE F[j].bit = 0
                        BY <6>1, <4>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                  <6>2. CASE F[j].bit = 1
                        <7> j = u_U[p]
                            BY <6>2 DEF Inv, TypeOK, Valid_F, Valid_u_U, FieldSet
                        <7> (t.ret[p] = ACK)' /\ pc[p]' = "U7"
                            BY <6>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, ReturnSet, Valid_pc, PCSet
                        <7> ( t.ret[p] = ACK)' => (SameRoot(t, u_U[p], v_U[p]))'
                            BY <1>17 DEF Inv, InvU7, InvU7All
                        <7> SameRoot(t, u_U[p], v_U[p])'
                            BY <6>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, SameRoot, Valid_pc, PCSet
                        <7> QED
                            BY <6>2, <1>17 DEF Inv, TypeOK, Valid_v_U, Valid_u_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
                  <6> QED
                        BY <6>1, <6>2 DEF Inv, TypeOK, Valid_F, FieldSet
                <5>2. (F[j].bit = 1     => t.sigma[j] = j)'
                  <6> SUFFICES ASSUME (F[j].bit = 1)'
                               PROVE  (t.sigma[j] = j)'
                    OBVIOUS
                  <6> F[j].bit = 1
                    BY DEF Inv, TypeOK, Valid_F, FieldSet
                  <6> told.sigma[j] # told.sigma[u_U[p]]
                    BY <4>1 DEF Inv, SigmaRespectsShared, Valid_u_U, Valid_F, FieldSet, TypeOK
                  <6> QED
                    BY DEF Inv, SigmaRespectsShared, Valid_u_U
                <5> QED
                    BY <5>1, <5>2
            <4>2. CASE told.ret[p] = ACK /\ t.sigma = told.sigma
                <5> USE <4>2
                <5>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                  <6> SUFFICES ASSUME (F[j].bit = 0)'
                               PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
                    OBVIOUS
                  <6>1. CASE F[j].bit = 0
                        BY <6>1, <4>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                  <6>2. CASE F[j].bit = 1
                        <7> j = u_U[p]
                            BY <6>2 DEF Inv, TypeOK, Valid_F, Valid_u_U, FieldSet
                        <7> (t.ret[p] = ACK)' /\ pc[p]' = "U7"
                            BY <6>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, ReturnSet, Valid_pc, PCSet
                        <7> SameRoot(t, u_U[p], v_U[p])'
                            BY <6>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, SameRoot, Valid_pc, PCSet
                        <7> QED
                            BY <6>2, <1>17 DEF Inv, TypeOK, Valid_v_U, Valid_u_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
                  <6> QED
                        BY <6>1, <6>2 DEF Inv, TypeOK, Valid_F, FieldSet
                <5>2. (F[j].bit = 1     => t.sigma[j] = j)'
                  <6> SUFFICES ASSUME (F[j].bit = 1)'
                               PROVE  (t.sigma[j] = j)'
                    OBVIOUS
                  <6> F[j].bit = 1
                    BY DEF Inv, TypeOK, Valid_F, FieldSet
                  <6> told.sigma[j] # told.sigma[u_U[p]]
                    BY <4>2 DEF Inv, SigmaRespectsShared, Valid_u_U, Valid_F, FieldSet, TypeOK
                  <6> QED
                    BY DEF Inv, SigmaRespectsShared, Valid_u_U
                <5> QED
                    BY <5>1, <5>2
            <4> QED
                BY <4>1, <4>2
        <3>2. CASE /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 1]]
                   /\ M' = M
          <4> USE <3>2
          <4> PICK told \in M:  /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
          <4>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
          <4> USE <3>2
          <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
            <5> SUFFICES ASSUME (F[j].bit = 0)'
                         PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
              OBVIOUS
            <5> F[j].bit = 0
                BY DEF Inv, TypeOK, Valid_F, FieldSet
            <5> QED
                BY <4>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
          <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
            BY <3>2, NeverReroot DEF Inv, TypeOK, Valid_M, Configs, StateSet, SigmaRespectsShared, Valid_F, FieldSet
          <4>3. QED
            BY <4>1, <4>2
        <3>3. QED
          BY <3>1, <3>2
    <2>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> pc'[p] = "U7"
            BY DEF Inv, TypeOK, Valid_pc, PCSet
        <3> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <2>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> USE <2>4
        <3> \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                /\ M' = {v \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                            /\ v.ret = [rold.ret EXCEPT ![p] = ACK]
                                                            /\ v.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[v_U[p]] 
                                                                                                THEN rold.sigma[u_U[p]] 
                                                                                                ELSE rold.sigma[i]]
                                                            /\ v.op = rold.op
                                                            /\ v.arg = rold.arg
                                                        \/  /\ rold.ret[p] = ACK
                                                            /\ v.ret = rold.ret
                                                            /\ v.sigma = rold.sigma
                                                            /\ v.op = rold.op
                                                            /\ v.arg = rold.arg}
            \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 1]]
                /\ M' = M
            BY <2>4
        <3>1. CASE /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                   /\ M' = {v \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                               /\ v.ret = [rold.ret EXCEPT ![p] = ACK]
                                                               /\ v.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[v_U[p]] 
                                                                                                   THEN rold.sigma[u_U[p]] 
                                                                                                   ELSE rold.sigma[i]]
                                                               /\ v.op = rold.op
                                                               /\ v.arg = rold.arg
                                                           \/  /\ rold.ret[p] = ACK
                                                               /\ v.ret = rold.ret
                                                               /\ v.sigma = rold.sigma
                                                               /\ v.op = rold.op
                                                               /\ v.arg = rold.arg}
            <4> USE <3>1
            <4>v. (F[v_U[p]].parent = u_U[p])'
                BY DEF Inv, TypeOK, Valid_F, FieldSet, Valid_u_U, Valid_v_U
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
            <4>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
            <4> USE <3>1
            <4>1. CASE  /\ t.ret = [told.ret EXCEPT ![p] = ACK]
                        /\ t.sigma = [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                        THEN told.sigma[u_U[p]] 
                                                        ELSE told.sigma[i]]
                        /\ t.op = told.op
                        /\ t.arg = told.arg
                        /\ told.ret[p] = BOT
                <5> HIDE DEF U6
                <5> USE <4>1
                <5>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                  <6> SUFFICES ASSUME (F[j].bit = 0)'
                               PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
                    OBVIOUS
                  <6>1. CASE F[j].bit = 0
                        BY <6>1, <4>a DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                  <6>2. CASE F[j].bit = 1
                        <7> j = v_U[p]
                            BY <6>2 DEF Inv, TypeOK, Valid_F, Valid_v_U, FieldSet
                        <7> (t.ret[p] = ACK)' /\ pc[p]' = "U7"
                            BY <6>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, ReturnSet, Valid_pc, PCSet
                        <7> ( t.ret[p] = ACK)' => (SameRoot(t, u_U[p], v_U[p]))'
                            BY <1>17 DEF Inv, InvU7, InvU7All
                        <7> SameRoot(t, u_U[p], v_U[p])'
                            BY <6>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, SameRoot, Valid_pc, PCSet
                        <7> QED
                            BY <6>2, <1>17 DEF Inv, TypeOK, Valid_u_U, Valid_v_U, SameRoot, Valid_pc, PCSet, Valid_M, Configs, StateSet, Valid_F, FieldSet
                  <6> QED
                        BY <6>1, <6>2 DEF Inv, TypeOK, Valid_F, FieldSet
                <5>2. (F[j].bit = 1     => t.sigma[j] = j)'
                  <6> SUFFICES ASSUME (F[j].bit = 1)'
                               PROVE  (t.sigma[j] = j)'
                    OBVIOUS
                  <6> F[j].bit = 1
                    BY DEF Inv, TypeOK, Valid_F, FieldSet
                  <6> told.sigma[j] # told.sigma[v_U[p]]
                    BY <4>1 DEF Inv, SigmaRespectsShared, Valid_v_U, Valid_F, FieldSet, TypeOK
                  <6> QED
                    BY DEF Inv, SigmaRespectsShared, Valid_v_U
                <5> QED
                    BY <5>1, <5>2
            <4>2. CASE told.ret[p] = ACK /\ t.sigma = told.sigma
                <5> HIDE DEF U6
                <5> USE <4>2
                <5>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
                  <6> SUFFICES ASSUME (F[j].bit = 0)'
                               PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
                    OBVIOUS
                  <6>1. CASE F[j].bit = 0
                        BY <6>1, <4>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
                  <6>2. CASE F[j].bit = 1
                        <7> (j = v_U[p])'
                            BY <6>2 DEF Inv, TypeOK, Valid_F, Valid_v_U, FieldSet, U6
                        <7> (t.ret[p] = ACK)' /\ pc[p]' = "U7"
                            BY <6>2 DEF Inv, TypeOK, Valid_M, Configs, StateSet, ReturnSet, Valid_pc, PCSet
                        <7>1. SameRoot(t, u_U[p], v_U[p])'
                            BY <6>2, <1>17 DEF Inv, InvU7, InvU7All, TypeOK, SameRoot, Valid_pc, PCSet
                        <7>2. (t.sigma[j] = t.sigma[u_U[p]])'
                            BY <7>1 DEF SameRoot
                        <7> QED
                            BY <4>v DEF Inv, TypeOK, Valid_u_U, Valid_v_U, SameRoot, Valid_M, Configs, StateSet, Valid_F, FieldSet
                  <6> QED
                        BY <6>1, <6>2 DEF Inv, TypeOK, Valid_F, FieldSet
                <5>2. (F[j].bit = 1     => t.sigma[j] = j)'
                  <6> SUFFICES ASSUME (F[j].bit = 1)'
                               PROVE  (t.sigma[j] = j)'
                    OBVIOUS
                  <6> F[j].bit = 1
                    BY DEF Inv, TypeOK, Valid_F, FieldSet
                  <6> told.sigma[j] # told.sigma[v_U[p]]
                    BY <4>2 DEF Inv, SigmaRespectsShared, Valid_v_U, Valid_F, FieldSet, TypeOK
                  <6> QED
                    BY DEF Inv, SigmaRespectsShared, Valid_v_U
                <5> QED
                    BY <5>1, <5>2
            <4> QED
                BY <4>1, <4>2
        <3>2. CASE /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 1]]
                   /\ M' = M
          <4> USE <3>2
          <4> PICK told \in M:  /\ t.ret = told.ret
                                /\ t.sigma = told.sigma
                                /\ t.op = told.op
                                /\ t.arg = told.arg
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M
          <4>a. \A i, k \in NodeSet: SameRoot(told, i, k) => SameRoot(t, i, k)
                BY Isa DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, SameRoot
          <4> USE <3>2
          <4>1. (F[j].bit = 0     => t.sigma[j] = t.sigma[F[j].parent])'
            <5> SUFFICES ASSUME (F[j].bit = 0)'
                         PROVE  (t.sigma[j] = t.sigma[F[j].parent])'
              OBVIOUS
            <5> F[j].bit = 0
                BY DEF Inv, TypeOK, Valid_F, FieldSet
            <5> QED
                BY <4>a, NeverReroot DEF Inv, SigmaRespectsShared, Valid_F, TypeOK, SameRoot, FieldSet
          <4>2. (F[j].bit = 1     => t.sigma[j] = j)'
            BY <3>2, NeverReroot DEF Inv, TypeOK, Valid_M, Configs, StateSet, SigmaRespectsShared, Valid_F, FieldSet
          <4>3. QED
            BY <4>1, <4>2
        <3>3. QED
          BY <3>1, <3>2
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
        <3> M' = M /\ F' = F
            BY <2>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, NodeSet
        <3> QED
            BY DEF Inv, SigmaRespectsShared
    <2> QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>21. SharedRespectsSigma'  
  <1>22. Linearizable'
     <2> PICK told \in M: /\ SameRoot(told, told.arg[p][1], u_U[p])   
                          /\ SameRoot(told, told.arg[p][2], v_U[p]) 
                          /\ u_U[p] # v_U[p]   
                          /\ a_U[p].bit = 0 => SameRoot(told, a_U[p].parent, u_U[p])
                          /\ b_U[p].bit = 0 => SameRoot(told, b_U[p].parent, v_U[p])
                          /\ told.ret[p] = ACK => SameRoot(told, u_U[p], v_U[p])
                          /\ told.ret[p] \in {BOT, ACK}
                          /\ told.op[p] = "U"
                          /\ told.arg[p] \in NodeSet \X NodeSet
        BY DEF Inv, InvU6, InvU6All, Linearizable
    <2>a. told \in Configs
        BY DEF Inv, TypeOK, Valid_M
    <2>1. CASE /\ a_U[p].rank < b_U[p].rank 
             /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> USE <2>1
        <3> DEFINE tA == [sigma |-> [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                         THEN told.sigma[v_U[p]] 
                                                         ELSE told.sigma[i]],
                          ret |-> [told.ret EXCEPT ![p] = ACK],
                          op |-> told.op,
                          arg |-> told.arg]
        <3> M' = {t \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                     /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                     /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[u_U[p]] 
                                                                                    THEN rold.sigma[v_U[p]] 
                                                                                    ELSE rold.sigma[i]]
                                                     /\ t.op = rold.op
                                                     /\ t.arg = rold.arg
                                                 \/  /\ rold.ret[p] = ACK
                                                     /\ t.ret = rold.ret
                                                     /\ t.sigma = rold.sigma
                                                     /\ t.op = rold.op
                                                     /\ t.arg = rold.arg}
            BY <2>1
        <3>1. CASE told.ret[p] = BOT
            <4> tA \in M'
                BY <2>a, <3>1 DEF tA, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Valid_u_U, Valid_v_U
            <4> QED
                BY DEF Linearizable
        <3>2. CASE told.ret[p] = ACK
            <4> told \in M'
                BY <3>2 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M
            <4> QED
                BY DEF Linearizable                            
        <3> QED
            BY <3>1, <3>2
    <2>2. CASE /\ a_U[p].rank > b_U[p].rank 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank)
            BY <2>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> USE <2>2
        <3> DEFINE tA == [sigma |-> [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                         THEN told.sigma[u_U[p]] 
                                                         ELSE told.sigma[i]],
                          ret |-> [told.ret EXCEPT ![p] = ACK],
                          op |-> told.op,
                          arg |-> told.arg]
        <3> M' = {t \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                     /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                     /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[v_U[p]] 
                                                                                    THEN rold.sigma[u_U[p]] 
                                                                                    ELSE rold.sigma[i]]
                                                     /\ t.op = rold.op
                                                     /\ t.arg = rold.arg
                                                 \/  /\ rold.ret[p] = ACK
                                                     /\ t.ret = rold.ret
                                                     /\ t.sigma = rold.sigma
                                                     /\ t.op = rold.op
                                                     /\ t.arg = rold.arg}
            BY <2>2
        <3>1. CASE told.ret[p] = BOT
            <4> tA \in M'
                BY <2>a, <3>1 DEF tA, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Valid_u_U, Valid_v_U
            <4> QED
                BY DEF Linearizable
        <3>2. CASE told.ret[p] = ACK
            <4> told \in M'
                BY <3>2 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M
            <4> QED
                BY DEF Linearizable                            
        <3> QED
            BY <3>1, <3>2
    <2>3. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] < v_U[p] 
               /\ F[u_U[p]] = [parent |-> a_U[p].parent, rank |-> a_U[p].rank, bit |-> 1]
        <3> ~(a_U[p].rank < b_U[p].rank \/ a_U[p].rank > b_U[p].rank)
            BY <2>3 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 0]]
                /\ M' = {t \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                            /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                            /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[u_U[p]] 
                                                                                                THEN rold.sigma[v_U[p]] 
                                                                                                ELSE rold.sigma[i]]
                                                            /\ t.op = rold.op
                                                            /\ t.arg = rold.arg
                                                        \/  /\ rold.ret[p] = ACK
                                                            /\ t.ret = rold.ret
                                                            /\ t.sigma = rold.sigma
                                                            /\ t.op = rold.op
                                                            /\ t.arg = rold.arg}
            \/  /\ F' = [F EXCEPT ![u_U[p]] = [parent |-> v_U[p], rank |-> a_U[p].rank, bit |-> 1]]
                /\ M' = M
            BY <2>3
        <3> USE <2>3
        <3>1. CASE  M' = {t \in Configs: \E rold \in M:    \/  /\ rold.ret[p] = BOT
                                                               /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                               /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[u_U[p]] 
                                                                                                 THEN rold.sigma[v_U[p]] 
                                                                                                 ELSE rold.sigma[i]]
                                                               /\ t.op = rold.op
                                                               /\ t.arg = rold.arg
                                                           \/  /\ rold.ret[p] = ACK
                                                               /\ t.ret = rold.ret
                                                               /\ t.sigma = rold.sigma
                                                               /\ t.op = rold.op
                                                               /\ t.arg = rold.arg}
          <4> DEFINE tA == [sigma |-> [i \in NodeSet |-> IF told.sigma[i] = told.sigma[u_U[p]] 
                                                         THEN told.sigma[v_U[p]] 
                                                         ELSE told.sigma[i]],
                          ret |-> [told.ret EXCEPT ![p] = ACK],
                          op |-> told.op,
                          arg |-> told.arg] 
          <4>1. CASE told.ret[p] = BOT
            <5> tA \in M'
                BY <2>a, <3>1, <4>1 DEF tA, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Valid_u_U, Valid_v_U
            <5> QED
              BY DEF Linearizable
          <4>2. CASE told.ret[p] = ACK
              BY <3>1, <4>2 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Linearizable
          <4> QED
            BY <4>1, <4>2
        <3>2. CASE M' = M
            BY <3>2 DEF Linearizable, Inv
        <3>3. QED
          BY <3>1, <3>2
    <2>4. CASE /\ a_U[p].rank = b_U[p].rank
               /\ u_U[p] > v_U[p] 
               /\ F[v_U[p]] = [parent |-> b_U[p].parent, rank |-> b_U[p].rank, bit |-> 1]
        <3> ~(\/ a_U[p].rank < b_U[p].rank 
              \/ a_U[p].rank > b_U[p].rank 
              \/ (a_U[p].rank = b_U[p].rank /\ u_U[p] < v_U[p]))
            BY <2>4 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet, Valid_u_U, Valid_v_U, NodeSet
        <3> USE <2>4
        <3> ~(a_U[p].rank < b_U[p].rank)
            BY <2>2 DEF TypeOK, Valid_a_U, Valid_b_U, FieldSet
        <3> \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 0]]
                /\ M' = {t \in Configs: \E rold \in M:  \/  /\ rold.ret[p] = BOT
                                                            /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                            /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[v_U[p]] 
                                                                                                THEN rold.sigma[u_U[p]] 
                                                                                                ELSE rold.sigma[i]]
                                                            /\ t.op = rold.op
                                                            /\ t.arg = rold.arg
                                                        \/  /\ rold.ret[p] = ACK
                                                            /\ t.ret = rold.ret
                                                            /\ t.sigma = rold.sigma
                                                            /\ t.op = rold.op
                                                            /\ t.arg = rold.arg}
            \/  /\ F' = [F EXCEPT ![v_U[p]] = [parent |-> u_U[p], rank |-> b_U[p].rank, bit |-> 1]]
                /\ M' = M
            BY <2>4
        <3>1. CASE  M' = {t \in Configs: \E rold \in M:    \/  /\ rold.ret[p] = BOT
                                                               /\ t.ret = [rold.ret EXCEPT ![p] = ACK]
                                                               /\ t.sigma = [i \in NodeSet |-> IF rold.sigma[i] = rold.sigma[v_U[p]] 
                                                                                                 THEN rold.sigma[u_U[p]] 
                                                                                                 ELSE rold.sigma[i]]
                                                               /\ t.op = rold.op
                                                               /\ t.arg = rold.arg
                                                           \/  /\ rold.ret[p] = ACK
                                                               /\ t.ret = rold.ret
                                                               /\ t.sigma = rold.sigma
                                                               /\ t.op = rold.op
                                                               /\ t.arg = rold.arg}
          <4> DEFINE tA == [sigma |-> [i \in NodeSet |-> IF told.sigma[i] = told.sigma[v_U[p]] 
                                                         THEN told.sigma[u_U[p]] 
                                                         ELSE told.sigma[i]],
                          ret |-> [told.ret EXCEPT ![p] = ACK],
                          op |-> told.op,
                          arg |-> told.arg] 
          <4>1. CASE told.ret[p] = BOT
            <5> tA \in M'
                BY <2>a, <3>1, <4>1 DEF tA, Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Valid_u_U, Valid_v_U
            <5> QED
              BY DEF Linearizable
          <4>2. CASE told.ret[p] = ACK
              BY <3>1, <4>2 DEF Configs, StateSet, OpSet, ArgSet, ReturnSet, TypeOK, tA, Valid_M, Linearizable
          <4> QED
            BY <4>1, <4>2
        <3>2. CASE M' = M
            BY <3>2 DEF Linearizable, Inv
        <3>3. QED
          BY <3>1, <3>2
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
            BY <2>5 DEF Inv, TypeOK, Valid_pc, PCSet, Configs, StateSet, OpSet, ArgSet, ReturnSet, Valid_M, Valid_a_U, Valid_b_U, FieldSet, NodeSet
        <3> QED
            BY DEF Inv, Linearizable
    <2> QED
        BY <2>1, <2>2, <2>3, <2>4, <2>5
  <1>23. QED
      BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>22, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv
    
=============================================================================
\* Modification History
\* Last modified Sun Apr 27 23:13:14 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
