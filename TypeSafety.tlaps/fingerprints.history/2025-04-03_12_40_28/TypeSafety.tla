----------------------------- MODULE TypeSafety -----------------------------

EXTENDS Integers, TLAPS, Implementation

\* Type Statements
Valid_pc ==     pc \in [PROCESSES -> PCSet]
Valid_F ==      F \in [NodeSet -> FieldSet]
Valid_u_F ==    u_F \in [PROCESSES -> NodeSet]
Valid_a_F ==    a_F \in [PROCESSES -> FieldSet]
Valid_b_F ==    b_F \in [PROCESSES -> FieldSet]
Valid_u_U ==    u_U \in [PROCESSES -> NodeSet]
Valid_v_U ==    v_U \in [PROCESSES -> NodeSet]
Valid_a_U ==    a_U \in [PROCESSES -> FieldSet]
Valid_b_U ==    b_U \in [PROCESSES -> FieldSet]
Valid_c ==      c \in [PROCESSES -> NodeSet]
Valid_d ==      d \in [PROCESSES -> NodeSet]
Valid_M ==      M \in SUBSET Configs

TypeOK == /\ Valid_pc
          /\ Valid_F
          /\ Valid_u_F
          /\ Valid_a_F
          /\ Valid_b_F
          /\ Valid_u_U
          /\ Valid_v_U
          /\ Valid_a_U
          /\ Valid_b_U
          /\ Valid_c
          /\ Valid_d
          /\ Valid_M
          
LEMMA InitTypeOK == Init => TypeOK
    <1> USE DEF Init, TypeOK
    <1> SUFFICES ASSUME Init
        PROVE TypeOK
            OBVIOUS
    <1> TypeOK
      <2>1. Valid_pc
        BY DEF Init, Valid_pc, PCSet
      <2>2. Valid_F
        BY DEF Init, Valid_F, InitF, FieldSet
      <2>3. Valid_u_F
        BY DEF Init, Valid_u_F
      <2>4. Valid_a_F
        BY DEF Init, Valid_a_F
      <2>5. Valid_b_F
        BY DEF Init, Valid_b_F
      <2>6. Valid_u_U
        BY DEF Init, Valid_u_U
      <2>7. Valid_v_U
        BY DEF Init, Valid_v_U
      <2>8. Valid_a_U
        BY DEF Init, Valid_a_U
      <2>9. Valid_b_U
        BY DEF Init, Valid_b_U
      <2>10. Valid_c
        BY DEF Init, Valid_c
      <2>11. Valid_d
        BY DEF Init, Valid_d
      <2>12. Valid_M
        BY DEF Init, Valid_M, Configs, InitRet, InitOp, InitState, InitArg, StateSet, ReturnSet, OpSet, ArgSet
      <2>13. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
    <1> QED
        OBVIOUS
    
LEMMA NextTypeOK == TypeOK /\ [Next]_varlist => TypeOK'
    <1> USE DEF TypeOK, varlist, Step, NodeSet, PCSet, Valid_pc, Valid_F, Valid_u_F, Valid_a_F, Valid_b_F, Valid_u_U, Valid_v_U, Valid_a_U, Valid_b_U, Valid_c, Valid_d, Valid_M
    <1> SUFFICES ASSUME TypeOK,
                        [Next]_varlist
            PROVE  TypeOK'
        OBVIOUS
    <1>1. ASSUME NEW p \in PROCESSES, Decide(p)
            PROVE TypeOK'
        BY <1>1 DEF TypeOK, Decide
    <1>2. ASSUME NEW p \in PROCESSES, U1(p)
            PROVE TypeOK'
        BY <1>2 DEF TypeOK, U1
    <1>3. ASSUME NEW p \in PROCESSES, U2(p)
            PROVE TypeOK'
        BY <1>3 DEF TypeOK, U2
    <1>4. ASSUME NEW p \in PROCESSES, U3(p)
            PROVE TypeOK'
        BY <1>4 DEF TypeOK, U3
    <1>5. ASSUME NEW p \in PROCESSES, U4(p)
            PROVE TypeOK'
        BY <1>5 DEF TypeOK, U4
    <1>6. ASSUME NEW p \in PROCESSES, U5(p)
            PROVE TypeOK'
        BY <1>6 DEF TypeOK, U5
    <1>7. ASSUME NEW p \in PROCESSES, U6(p)
            PROVE TypeOK'
      <2>1. Valid_pc'
        BY <1>7 DEF TypeOK, U6
      <2>2. Valid_F'
        BY <1>7 DEF TypeOK, U6, FieldSet
      <2>3. Valid_u_F'
        BY <1>7 DEF TypeOK, U6, FieldSet
      <2>4. Valid_a_F'
        BY <1>7 DEF TypeOK, U6
      <2>5. Valid_b_F'
        BY <1>7 DEF TypeOK, U6
      <2>6. Valid_u_U'
        BY <1>7 DEF TypeOK, U6
      <2>7. Valid_v_U'
        BY <1>7 DEF TypeOK, U6
      <2>8. Valid_a_U'
        BY <1>7 DEF TypeOK, U6
      <2>9. Valid_b_U'
        BY <1>7 DEF TypeOK, U6
      <2>10. Valid_c'
        BY <1>7 DEF TypeOK, U6
      <2>11. Valid_d'
        BY <1>7 DEF TypeOK, U6
      <2>12. Valid_M'
        BY <1>7 DEF TypeOK, U6
      <2>13. QED
        BY <2>1, <2>10, <2>11, <2>12, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF TypeOK
    <1>8. ASSUME NEW p \in PROCESSES, U7(p)
            PROVE TypeOK'
        BY <1>8 DEF TypeOK, U7
    <1>9. ASSUME NEW p \in PROCESSES, U8(p)
            PROVE TypeOK'
        BY <1>9 DEF TypeOK, U8
    <1>10. ASSUME NEW p \in PROCESSES, UR(p)
            PROVE TypeOK'
        BY <1>10 DEF TypeOK, UR
    <1>11. ASSUME NEW p \in PROCESSES, F1(p)
            PROVE TypeOK'
        BY <1>11 DEF TypeOK, F1
    <1>12. ASSUME NEW p \in PROCESSES, F2(p)
            PROVE TypeOK'
        BY <1>12 DEF TypeOK, F2
    <1>13. ASSUME NEW p \in PROCESSES, F3(p)
            PROVE TypeOK'
        BY <1>13 DEF TypeOK, F3
    <1>14. ASSUME NEW p \in PROCESSES, F4(p)
            PROVE TypeOK'
        BY <1>14 DEF TypeOK, F4
    <1>15. ASSUME NEW p \in PROCESSES, F5(p)
            PROVE TypeOK'
        BY <1>15 DEF TypeOK, F5
    <1>16. ASSUME NEW p \in PROCESSES, F6(p)
            PROVE TypeOK'
      <2> Valid_F'
        <3>1. a_F[p] \in FieldSet
            BY DEF FieldSet
        <3>2. b_F[p] \in FieldSet
            BY DEF FieldSet
        <3>3 F'[u_F[p]] = F[u_F[p]] \/ F'[u_F[p]] = [parent |-> b_F[p].parent, rank |-> a_F[p].rank, bit |-> 0]
            BY <1>16 DEF F6
        <3>4. F'[u_F[p]] \in FieldSet
            BY <3>1, <3>2, <3>3 DEF TypeOK, F6, FieldSet
        <3>5. \A i \in NodeSet: i # u_F[p] => F'[i] \in FieldSet 
            BY <1>16 DEF TypeOK, F6
        <3>6. F' \in [NodeSet -> FieldSet]
            BY <1>16, <3>4, <3>5 DEF TypeOK, F6
        <3> QED
            BY <3>6
      <2> QED
        BY <1>16 DEF TypeOK, F6
        
    <1>17. ASSUME NEW p \in PROCESSES, F7(p)
            PROVE TypeOK'
        BY <1>17 DEF TypeOK, F7, FieldSet
    <1>18. ASSUME NEW p \in PROCESSES, FR(p)
            PROVE TypeOK'
        BY <1>18 DEF TypeOK, FR
    <1>19. CASE UNCHANGED varlist
        BY <1>19 DEF TypeOK
    <1>20. QED
        BY <1>1, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19 DEF TypeOK, Step, Next
  
THEOREM TypeSafety == Spec => []TypeOK
    <1> SUFFICES ASSUME Spec 
        PROVE []TypeOK
            OBVIOUS
    <1> QED
        BY PTL, InitTypeOK, NextTypeOK DEF Spec

=============================================================================
\* Modification History
\* Last modified Thu Apr 03 12:40:26 EDT 2025 by karunram
\* Created Thu Apr 03 12:30:32 EDT 2025 by karunram
