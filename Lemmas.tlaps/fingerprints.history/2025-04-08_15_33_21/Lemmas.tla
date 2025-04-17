------------------------------- MODULE Lemmas -------------------------------
EXTENDS Implementation, TypeSafety, Inv

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

LEMMA EdgeOKPersists == \A i \in NodeSet: \A j \in NodeSet:
                         TypeOK /\ EdgeOK(i, j) /\ [Next]_varlist => EdgeOK(i, j)' 
  <1> SUFFICES ASSUME NEW i \in NodeSet,
                      NEW j \in NodeSet,
                      TypeOK,
                      EdgeOK(i, j),
                      [Next]_varlist
               PROVE  EdgeOK(i, j)'
    OBVIOUS
  <1>1. ASSUME NEW p \in PROCESSES,
               F1(p)
        PROVE  EdgeOK(i, j)'
    BY <1>1 DEF F1, EdgeOK
  <1>2. ASSUME NEW p \in PROCESSES,
               F2(p)
        PROVE  EdgeOK(i, j)'
    BY <1>2 DEF F2, EdgeOK
  <1>3. ASSUME NEW p \in PROCESSES,
               F3(p)
        PROVE  EdgeOK(i, j)'
    BY <1>3 DEF F3, EdgeOK
  <1>4. ASSUME NEW p \in PROCESSES,
               F4(p)
        PROVE  EdgeOK(i, j)'
    BY <1>4 DEF F4, EdgeOK
  <1>5. ASSUME NEW p \in PROCESSES,
               F5(p)
        PROVE  EdgeOK(i, j)'
    BY <1>5 DEF F5, EdgeOK
  <1>6. ASSUME NEW p \in PROCESSES,
               F6(p)
        PROVE  EdgeOK(i, j)'
    <2>1. CASE i = j
      BY <2>1, <1>6 DEF F6, EdgeOK
    <2>2. CASE F[i].bit = 1
      BY <2>2, <1>6 DEF F6, EdgeOK
    <2>3. CASE /\ F[i].bit = 0
               /\  \/  F[j].rank > F[i].rank
                   \/ (F[j].rank = F[i].rank /\ j >= i)
      BY <2>3, <1>6 DEF F6, EdgeOK, TypeOK, Valid_F, Valid_a_F, FieldSet, Valid_b_F
    <2>4. QED
      BY <2>1, <2>2, <2>3 DEF EdgeOK
    
  <1>7. ASSUME NEW p \in PROCESSES,
               F7(p)
        PROVE  EdgeOK(i, j)'
    BY <1>7 DEF F7, EdgeOK
  <1>8. ASSUME NEW p \in PROCESSES,
               FR(p)
        PROVE  EdgeOK(i, j)'
    BY <1>8 DEF FR, EdgeOK
  <1>9. ASSUME NEW p \in PROCESSES,
               U1(p)
        PROVE  EdgeOK(i, j)'
    BY <1>9 DEF U1, EdgeOK
  <1>10. ASSUME NEW p \in PROCESSES,
                U2(p)
         PROVE  EdgeOK(i, j)'
    BY <1>10 DEF U2, EdgeOK
  <1>11. ASSUME NEW p \in PROCESSES,
                U3(p)
         PROVE  EdgeOK(i, j)'
    BY <1>11 DEF U3, EdgeOK
  <1>12. ASSUME NEW p \in PROCESSES,
                U4(p)
         PROVE  EdgeOK(i, j)'
    BY <1>12 DEF U4, EdgeOK
  <1>13. ASSUME NEW p \in PROCESSES,
                U5(p)
         PROVE  EdgeOK(i, j)'
    BY <1>13 DEF U5, EdgeOK
  <1>14. ASSUME NEW p \in PROCESSES,
                U6(p)
         PROVE  EdgeOK(i, j)'
    BY <1>14 DEF U6, EdgeOK
  <1>15. ASSUME NEW p \in PROCESSES,
                U7(p)
         PROVE  EdgeOK(i, j)'
    BY <1>15 DEF U7, EdgeOK
  <1>16. ASSUME NEW p \in PROCESSES,
                U8(p)
         PROVE  EdgeOK(i, j)'
    BY <1>16 DEF U8, EdgeOK
  <1>17. ASSUME NEW p \in PROCESSES,
                UR(p)
         PROVE  EdgeOK(i, j)'
    BY <1>17 DEF UR, EdgeOK
  <1>18. ASSUME NEW p \in PROCESSES,
                Decide(p)
         PROVE  EdgeOK(i, j)'
    BY <1>18 DEF Decide, EdgeOK
  <1>19. CASE UNCHANGED varlist
    BY <1>19 DEF varlist, EdgeOK
  <1>20. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Next, Step


=============================================================================
\* Modification History
\* Last modified Tue Apr 08 15:33:17 EDT 2025 by karunram
\* Created Mon Apr 07 18:00:51 EDT 2025 by karunram
