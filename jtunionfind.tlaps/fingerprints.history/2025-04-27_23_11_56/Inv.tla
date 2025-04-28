-------------------------------- MODULE Inv --------------------------------
EXTENDS Implementation, TypeSafety

SameRoot(t, i, j) ==        t.sigma[i] = t.sigma[j] 

SigmaRespectsShared ==      \A t \in M: \A i \in NodeSet:   /\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                                            /\ F[i].bit = 1     => t.sigma[i] = i
                                                            
SharedRespectsSigma ==      \A t \in M: \A i \in NodeSet:   /\ t.sigma[i] = i   => F[i].bit = 1



InvF2All(p, t) ==   /\ SameRoot(t, c[p], u_F[p])

InvF3All(p, t) ==   /\ F[u_F[p]].bit = 0
                    /\ SameRoot(t, c[p], u_F[p])

InvF4All(p, t) ==   /\ F[u_F[p]].bit = 0
                    /\ a_F[p].bit = 0
                    /\ SameRoot(t, c[p], a_F[p].parent)
                    /\ SameRoot(t, c[p], u_F[p])

InvF5All(p, t) ==   /\ F[u_F[p]].bit = 0
                    /\ a_F[p].bit = 0
                    /\ SameRoot(t, c[p], a_F[p].parent)
                    /\ SameRoot(t, c[p], u_F[p])
                    /\ b_F[p].bit = 0 => /\ SameRoot(t, a_F[p].parent, b_F[p].parent)
                                         /\ F[a_F[p].parent].bit = 0
  
InvF6All(p, t) ==   /\ F[u_F[p]].bit = 0
                    /\ a_F[p].bit = 0
                    /\ F[a_F[p].parent].bit = 0
                    /\ b_F[p].bit = 0
                    /\ SameRoot(t, c[p], a_F[p].parent)
                    /\ SameRoot(t, c[p], u_F[p])
                    /\ SameRoot(t, a_F[p].parent, b_F[p].parent)

InvF7All(p, t) ==   /\ F[u_F[p]].bit = 0
                    /\ a_F[p].bit = 0
                    /\ SameRoot(t, c[p], a_F[p].parent)
                    /\ SameRoot(t, c[p], u_F[p])

InvU2All(p, t) ==   /\ SameRoot(t, t.arg[p][1], u_U[p])   
                    /\ SameRoot(t, t.arg[p][2], v_U[p])  


InvU5All(p, t) ==   /\ SameRoot(t, t.arg[p][1], u_U[p])   
                    /\ SameRoot(t, t.arg[p][2], v_U[p]) 
                    /\ u_U[p] # v_U[p]
                    /\ a_U[p].bit = 0 => SameRoot(t, a_U[p].parent, u_U[p])
                    /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])

InvU6All(p, t) ==   /\ SameRoot(t, t.arg[p][1], u_U[p])   
                    /\ SameRoot(t, t.arg[p][2], v_U[p]) 
                    /\ u_U[p] # v_U[p]   
                    /\ a_U[p].bit = 0 => SameRoot(t, a_U[p].parent, u_U[p])
                    /\ b_U[p].bit = 0 => SameRoot(t, b_U[p].parent, v_U[p])
                    /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])

InvU7All(p, t) ==   /\ SameRoot(t, t.arg[p][1], u_U[p])   
                    /\ SameRoot(t, t.arg[p][2], v_U[p]) 
                    /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])

InvU8All(p, t) ==   /\ SameRoot(t, t.arg[p][1], u_U[p])   
                    /\ SameRoot(t, t.arg[p][2], v_U[p]) 
                    /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])

InvDecide ==        \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "0"     =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = BOT
                                                                    /\ t.arg[p] = BOT
InvF1 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F1"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                            /\  pc[p] = "F1U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                            /\  pc[p] = "F1U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                            /\  pc[p] = "F1U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                            /\  pc[p] = "F1U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
InvF2 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F2"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF2All(p, t)
                                            

InvF3 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F3"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF3All(p, t)

InvF4 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F4"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF4All(p, t)
                                                                    

InvF5 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F5"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF5All(p, t)

InvF6 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F6"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF6All(p, t)


InvF7 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F7"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, c[p], t.arg[p])
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])
                                                                    /\ InvF7All(p, t)


InvFR ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "FR"    =>  /\ t.ret[p] = u_F[p]
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ SameRoot(t, t.arg[p], u_F[p])
                                                                    /\ SameRoot(t, c[p], u_F[p])
                                            /\  pc[p] = "FRU1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                                                    /\ SameRoot(t, c[p], u_F[p])
                                            /\  pc[p] = "FRU2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])

                                            /\  pc[p] = "FRU7"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ SameRoot(t, c[p], u_U[p])
                                            /\  pc[p] = "FRU8"  =>  /\ t.ret[p] \in {BOT, ACK}
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ SameRoot(t, c[p], v_U[p])

InvU1 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U1"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet


InvU2 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U2"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ InvU2All(p, t)

InvU3 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U3"    =>  /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ SameRoot(t, t.arg[p][1], u_U[p])
                                                                /\ SameRoot(t, t.arg[p][2], v_U[p])
                                                                /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])
InvU4 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U4"    =>  /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ SameRoot(t, t.arg[p][1], u_U[p])
                                                                /\ SameRoot(t, t.arg[p][2], v_U[p])
                                                                /\ t.ret[p] = ACK => SameRoot(t, u_U[p], v_U[p])  
                                                                /\ u_U[p] # v_U[p]

InvU5 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U5"    =>  /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ InvU5All(p, t)
InvU6 ==            \A p \in PROCESSES: \A t \in M:
                                           pc[p] = "U6"    =>   
                                                                /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ InvU6All(p, t)

InvU7 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U7"    =>  /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ InvU7All(p, t)

InvU8 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U8"    =>  /\ t.ret[p] \in {BOT, ACK}
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ InvU8All(p, t)

InvUR ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "UR"    =>  /\ t.ret[p] = ACK
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ SameRoot(t, t.arg[p][1], u_U[p])
                                                                /\ SameRoot(t, t.arg[p][2], v_U[p])
                                                                /\ SameRoot(t, u_U[p], v_U[p])

Linearizable ==     M # {}

Inv ==  /\ TypeOK
        /\ InvDecide
        /\ InvF1
        /\ InvF2
        /\ InvF3
        /\ InvF4
        /\ InvF5
        /\ InvF6
        /\ InvF7
        /\ InvFR
        /\ InvU1
        /\ InvU2
        /\ InvU3
        /\ InvU4
        /\ InvU5
        /\ InvU6
        /\ InvU7
        /\ InvU8
        /\ InvUR
        /\ SigmaRespectsShared
        /\ SharedRespectsSigma
        /\ Linearizable

=============================================================================
\* Modification History
\* Last modified Sat Apr 26 21:20:16 EDT 2025 by karunram
\* Created Thu Apr 03 22:44:42 EDT 2025 by karunram
