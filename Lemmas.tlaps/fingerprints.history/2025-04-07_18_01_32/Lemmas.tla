------------------------------- MODULE Lemmas -------------------------------
EXTENDS Implementation, TypeSafety

LEMMA NeverReroot == \A i \in NodeSet: TypeOK /\ F[i].bit = 0 /\ [Next]_varlist => F[i].bit' = 0 
  <1> SUFFICES ASSUME NEW i \in NodeSet,
                      F[i].bit = 0,
                      [Next]_varlist,
                      TypeOK
               PROVE  F[i].bit' = 0
    OBVIOUS
  <1>1. ASSUME NEW p \in PROCESSES,
               F1(p)
        PROVE  F[i].bit' = 0
    BY <1>1 DEF F1
  <1>2. ASSUME NEW p \in PROCESSES,
               F2(p)
        PROVE  F[i].bit' = 0
    BY <1>2 DEF F2
  <1>3. ASSUME NEW p \in PROCESSES,
               F3(p)
        PROVE  F[i].bit' = 0
    BY <1>3 DEF F3
  <1>4. ASSUME NEW p \in PROCESSES,
               F4(p)
        PROVE  F[i].bit' = 0
    BY <1>4 DEF F4
  <1>5. ASSUME NEW p \in PROCESSES,
               F5(p)
        PROVE  F[i].bit' = 0
    BY <1>5 DEF F5
  <1>6. ASSUME NEW p \in PROCESSES,
               F6(p)
        PROVE  F[i].bit' = 0
    BY <1>6 DEF F6, TypeOK, Valid_F, FieldSet
  <1>7. ASSUME NEW p \in PROCESSES,
               F7(p)
        PROVE  F[i].bit' = 0
    BY <1>7 DEF F7
  <1>8. ASSUME NEW p \in PROCESSES,
               FR(p)
        PROVE  F[i].bit' = 0
    BY <1>8 DEF FR
  <1>9. ASSUME NEW p \in PROCESSES,
               U1(p)
        PROVE  F[i].bit' = 0
    BY <1>9 DEF U1
  <1>10. ASSUME NEW p \in PROCESSES,
                U2(p)
         PROVE  F[i].bit' = 0
            BY <1>10 DEF U2
  <1>11. ASSUME NEW p \in PROCESSES,
                U3(p)
         PROVE  F[i].bit' = 0
            BY <1>11 DEF U3
  <1>12. ASSUME NEW p \in PROCESSES,
                U4(p)
         PROVE  F[i].bit' = 0
    BY <1>12 DEF U4
  <1>13. ASSUME NEW p \in PROCESSES,
                U5(p)
         PROVE  F[i].bit' = 0
    BY <1>13 DEF U5
  <1>14. ASSUME NEW p \in PROCESSES,
                U6(p)
         PROVE  F[i].bit' = 0
    BY <1>14 DEF U6, TypeOK, Valid_F, FieldSet
  <1>15. ASSUME NEW p \in PROCESSES,
                U7(p)
         PROVE  F[i].bit' = 0
    BY <1>15 DEF U7
  <1>16. ASSUME NEW p \in PROCESSES,
                U8(p)
         PROVE  F[i].bit' = 0
    BY <1>16 DEF U8
  <1>17. ASSUME NEW p \in PROCESSES,
                UR(p)
         PROVE  F[i].bit' = 0
    BY <1>17 DEF UR
  <1>18. ASSUME NEW p \in PROCESSES,
                Decide(p)
         PROVE  F[i].bit' = 0
    BY <1>18 DEF Decide
  <1>19. CASE UNCHANGED varlist
    BY <1>19 DEF varlist
  <1>20. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Next, Step

=============================================================================
\* Modification History
\* Last modified Mon Apr 07 18:01:29 EDT 2025 by karunram
\* Created Mon Apr 07 18:00:51 EDT 2025 by karunram
