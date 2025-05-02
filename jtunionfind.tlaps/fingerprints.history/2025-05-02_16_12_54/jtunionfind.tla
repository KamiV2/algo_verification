---------------------------- MODULE jtunionfind ----------------------------

EXTENDS Implementation, TypeSafety, Inv, Lemmas, DecideInv, 
    F1Inv, F2Inv, F3Inv, F4Inv, F5Inv, F6Inv, F7Inv, FRInv, 
    U1Inv, U2Inv, U3Inv, U4Inv, U5Inv, U6Inv, U7Inv, U8Inv, URInv

THEOREM InitInv == Init => Inv
  <1> SUFFICES ASSUME Init
               PROVE  Inv
    OBVIOUS
  <1> USE DEF Init, InvDecide, InvF1, InvF2, InvF3, InvF4, InvF5, InvF6, InvF7, InvFR, InvU1, InvU2, InvU3, InvU4, InvU5, InvU6, InvU7, InvU8, InvUR, SigmaRespectsShared, Linearizable, InitTypeOK
  <1> USE DEF InitState, InitRet, InitOp, InitArg, InitF
  <1>1. TypeOK
    BY InitTypeOK
  <1>2. InvDecide
    OBVIOUS
  <1>3. InvF1
    OBVIOUS
  <1>4. InvF2
    OBVIOUS
  <1>5. InvF3
    OBVIOUS
  <1>6. InvF4
    OBVIOUS
  <1>7. InvF5
    OBVIOUS
  <1>8. InvF6
     OBVIOUS
  <1>9. InvF7
    OBVIOUS
  <1>10. InvFR
    OBVIOUS
  <1>11. InvU1
    OBVIOUS
  <1>12. InvU2
     OBVIOUS
  <1>13. InvU3
    OBVIOUS
  <1>14. InvU4
    OBVIOUS
  <1>15. InvU5
    OBVIOUS
  <1>16. InvU6
    OBVIOUS
  <1>17. InvU7
    OBVIOUS
  <1>18. InvU8
    OBVIOUS
  <1>19. InvUR
    OBVIOUS
  <1>20. SigmaRespectsShared
    OBVIOUS
  <1>21. Linearizable
    OBVIOUS
  <1>22. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>20, <1>21, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Inv

THEOREM NextInv == (Inv /\ [Next]_varlist) => Inv'
  <1> SUFFICES ASSUME Inv,
                      [Next]_varlist
               PROVE  Inv'
    OBVIOUS
  <1>1. ASSUME NEW p \in PROCESSES,
               F1(p)
        PROVE  Inv'
        BY <1>1, F1Inv
  <1>2. ASSUME NEW p \in PROCESSES,
               F2(p)
        PROVE  Inv'
        BY <1>2, F2Inv
  <1>3. ASSUME NEW p \in PROCESSES,
               F3(p)
        PROVE  Inv'
        BY <1>3, F3Inv
  <1>4. ASSUME NEW p \in PROCESSES,
               F4(p)
        PROVE  Inv'
        BY <1>4, F4Inv
  <1>5. ASSUME NEW p \in PROCESSES,
               F5(p)
        PROVE  Inv'
        BY <1>5, F5Inv
  <1>6. ASSUME NEW p \in PROCESSES,
               F6(p)
        PROVE  Inv'
        BY <1>6, F6Inv
  <1>7. ASSUME NEW p \in PROCESSES,
               F7(p)
        PROVE  Inv'
        BY <1>7, F7Inv
  <1>8. ASSUME NEW p \in PROCESSES,
               FR(p)
        PROVE  Inv'
        BY <1>8, FRInv
  <1>9. ASSUME NEW p \in PROCESSES,
               U1(p)
        PROVE  Inv'
        BY <1>9, U1Inv
  <1>10. ASSUME NEW p \in PROCESSES,
                U2(p)
         PROVE  Inv'
        BY <1>10, U2Inv
  <1>11. ASSUME NEW p \in PROCESSES,
                U3(p)
         PROVE  Inv'
        BY <1>11, U3Inv
  <1>12. ASSUME NEW p \in PROCESSES,
                U4(p)
         PROVE  Inv'
        BY <1>12, U4Inv
  <1>13. ASSUME NEW p \in PROCESSES,
                U5(p)
         PROVE  Inv'
        BY <1>13, U5Inv
  <1>14. ASSUME NEW p \in PROCESSES,
                U6(p)
         PROVE  Inv'
        BY <1>14, U6Inv
  <1>15. ASSUME NEW p \in PROCESSES,
                U7(p)
         PROVE  Inv'
        BY <1>15, U7Inv
  <1>16. ASSUME NEW p \in PROCESSES,
                U8(p)
         PROVE  Inv'
        BY <1>16, U8Inv
  <1>17. ASSUME NEW p \in PROCESSES,
                UR(p)
         PROVE  Inv'
        BY <1>17, URInv
  <1>18. ASSUME NEW p \in PROCESSES,
                Decide(p)
         PROVE  Inv'
        BY <1>18, DecideInv
  <1>19. CASE UNCHANGED varlist
    <2> USE <1>19 DEF Inv, varlist
    <2>1. TypeOK'
        BY NextTypeOK
    <2>2. InvDecide'
        BY DEF InvDecide
    <2>3. InvF1'
        BY DEF InvF1, InvU2All, InvU7All, InvU8All
    <2>4. InvF2'
        BY DEF InvF2, InvF2All, InvU2All, InvU7All, InvU8All
    <2>5. InvF3'
        BY DEF InvF3, InvF3All, InvU2All, InvU7All, InvU8All
    <2>6. InvF4'
        BY DEF InvF4, InvF4All, InvU2All, InvU7All, InvU8All
    <2>7. InvF5'
        BY DEF InvF5, InvF5All, InvU2All, InvU7All, InvU8All
    <2>8. InvF6'
        BY DEF InvF6, InvF6All, InvU2All, InvU7All, InvU8All
    <2>9. InvF7'
        BY DEF InvF7, InvF7All, InvU2All, InvU7All, InvU8All
    <2>10. InvFR'
        BY DEF InvFR, InvU2All, InvU7All, InvU8All
    <2>11. InvU1'
        BY DEF InvU1
    <2>12. InvU2'
        BY DEF InvU2, InvU2All
    <2>13. InvU3'
        BY DEF InvU3
    <2>14. InvU4'
        BY DEF InvU4
    <2>15. InvU5'
        BY DEF InvU5, InvU5All
    <2>16. InvU6'
        BY DEF InvU6, InvU6All
    <2>17. InvU7'
        BY DEF InvU7, InvU7All
    <2>18. InvU8'
        BY DEF InvU8, InvU8All
    <2>19. InvUR'
        BY DEF InvUR
    <2>20. SigmaRespectsShared'
        BY DEF SigmaRespectsShared
    <2>21. Linearizable'
        BY DEF Linearizable
    <2>22. QED
      BY <2>1, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>2, <2>20, <2>21, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9 DEF Inv
  <1>20. QED
    BY <1>1, <1>10, <1>11, <1>12, <1>13, <1>14, <1>15, <1>16, <1>17, <1>18, <1>19, <1>2, <1>3, <1>4, <1>5, <1>6, <1>7, <1>8, <1>9 DEF Next, Step

THEOREM InvariantHolds == Spec => []Inv
    BY PTL, InitInv, NextInv DEF Spec

THEOREM InitLinearizable == Init => Linearizable
    BY InitInv DEF Inv
THEOREM Linearizability == Spec => []Linearizable
    BY InvariantHolds DEF Inv

=============================================================================
\* Modification History
\* Last modified Fri May 02 16:12:51 EDT 2025 by karunram
\* Created Fri Apr 04 00:28:14 EDT 2025 by karunram
