----------------------------- MODULE TypeSafety -----------------------------

EXTENDS Implementation, TLAPS

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
    
LEMMA NextTypeOK == TypeOK /\ [Next]_varlist => TypeOK'
  
THEOREM TypeSafety == Spec => []TypeOK
=============================================================================
\* Modification History
\* Last modified Thu Apr 03 21:52:24 EDT 2025 by karunram
\* Created Thu Apr 03 12:30:32 EDT 2025 by karunram
