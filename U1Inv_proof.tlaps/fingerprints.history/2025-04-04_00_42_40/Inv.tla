-------------------------------- MODULE Inv --------------------------------
EXTENDS Implementation, TypeSafety

EdgeOK(i, j) ==     \/ i = j
                    \/ F[i].bit = 1
                    \/  /\ F[i].bit = 0
                        /\  \/  F[j].rank > F[i].rank
                            \/ (F[j].rank = F[i].rank /\ j >= i)

EdgesMonotone ==            \A i \in NodeSet: EdgeOK(i, F[i].parent)

SigmaRespectsShared ==      \A t \in M: \A i \in NodeSet:   /\ F[i].bit = 0     => t.sigma[i] = t.sigma[F[i].parent]
                                                            /\ F[i].bit = 1     => t.sigma[i] = i
                                                            
SharedRespectsSigma ==      \A t \in M: \A i \in NodeSet:   /\ t.sigma[i] = i   => F[i].bit = 1

InvF1All(p, t) ==   TRUE
InvF2All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF3All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
InvF4All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
InvF5All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                    /\ t.sigma[u_F[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[b_F[p].parent] = t.sigma[a_F[p].parent]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
                    /\ EdgeOK(a_F[p].parent, b_F[p].parent)   
InvF6All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ t.sigma[b_F[p].parent] = t.sigma[a_F[p].parent]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)
                    /\ EdgeOK(a_F[p].parent, b_F[p].parent)
InvF7All(p, t) ==   /\ t.sigma[c[p]] = t.sigma[a_F[p].parent]
                    /\ t.sigma[a_F[p].parent] = t.sigma[u_F[p]]
                    /\ EdgeOK(c[p], u_F[p])
                    /\ EdgeOK(u_F[p], a_F[p].parent)

InvU2All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])

InvU5All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], a_U[p].parent)
InvU6All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
                    /\ u_U[p] # v_U[p]
                    /\ EdgeOK(u_U[p], a_U[p].parent)
                    /\ EdgeOK(v_U[p], b_U[p].parent)
InvU7All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])
InvU8All(p, t) ==   /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                    /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                    /\ EdgeOK(t.arg[p][1], u_U[p])
                    /\ EdgeOK(t.arg[p][2], v_U[p])

InvDecide ==        \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "0"     =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = BOT
                                                                    /\ t.arg[p] = BOT
InvF1 ==            \A p \in PROCESSES: \A t \in M: 
                                            /\  pc[p] = "F1"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                            /\  pc[p] = "F1U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F1U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F1U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]


InvF2 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F2"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF2All(p, t)
                                            /\  pc[p] = "F2U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F2U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F2U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            

InvF3 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F3"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF3All(p, t)
                                            /\  pc[p] = "F3U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                        /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "F3U7"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F3U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF3All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF4 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F4"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF4All(p, t)
                                            /\  pc[p] = "F4U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F4U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F4U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF4All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF5 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F5"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF5All(p, t)
                                            /\  pc[p] = "F5U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F5U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F5U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF5All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF6 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F6"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF6All(p, t)
                                            /\  pc[p] = "F6U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                        /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F6U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F6U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF6All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvF7 ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "F7"    =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ InvF7All(p, t)
                                            /\  pc[p] = "F7U1"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U2"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\  pc[p] = "F7U7"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\  pc[p] = "F7U8"  =>  /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ InvF7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvFR ==            \A p \in PROCESSES: \A t \in M:
                                            /\  pc[p] = "FR"    =>  /\ t.ret[p] = u_F[p]
                                                                    /\ t.op[p] = "F"
                                                                    /\ t.arg[p] \in NodeSet
                                                                    /\ t.sigma[c[p]] = t.sigma[u_F[p]]
                                            /\ pc[p] = "FRU1"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ t.sigma[u_F[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU2"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU2All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]
                                            /\ pc[p] = "FRU7"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU7All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[u_U[p]]
                                            /\ pc[p] = "FRU8"  =>   /\ t.ret[p] = BOT
                                                                    /\ t.op[p] = "U"
                                                                    /\ t.arg[p] \in NodeSet \X NodeSet
                                                                    /\ InvU8All(p, t)
                                                                    /\ t.sigma[c[p]] = t.sigma[v_U[p]]

InvU1 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U1"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet


InvU2 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U2"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])

InvU3 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U3"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
InvU4 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U4"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]

InvU5 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U5"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]
                                                                /\ EdgeOK(u_U[p], a_U[p].parent)
InvU6 ==            \A p \in PROCESSES: \A t \in M:
                                           pc[p] = "U6"    =>   /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])
                                                                /\ u_U[p] # v_U[p]
                                                                /\ EdgeOK(u_U[p], a_U[p].parent)
                                                                /\ EdgeOK(v_U[p], b_U[p].parent)

InvU7 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U7"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])

InvU8 ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "U8"    =>  /\ t.ret[p] = BOT
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ EdgeOK(t.arg[p][1], u_U[p])
                                                                /\ EdgeOK(t.arg[p][2], v_U[p])

InvUR ==            \A p \in PROCESSES: \A t \in M:
                                            pc[p] = "UR"    =>  /\ t.ret[p] = ACK
                                                                /\ t.op[p] = "U"
                                                                /\ t.arg[p] \in NodeSet \X NodeSet
                                                                /\ t.sigma[t.arg[p][1]] = t.sigma[u_U[p]]
                                                                /\ t.sigma[t.arg[p][2]] = t.sigma[v_U[p]]
                                                                /\ t.sigma[u_U[p]] = t.sigma[v_U[p]]

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
        /\ EdgesMonotone
        /\ SigmaRespectsShared
        /\ SharedRespectsSigma
        /\ Linearizable

=============================================================================
\* Modification History
\* Last modified Thu Apr 03 22:49:32 EDT 2025 by karunram
\* Created Thu Apr 03 22:44:42 EDT 2025 by karunram
