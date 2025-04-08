------------------------------- MODULE InvF1 -------------------------------

EXTENDS Implementation, Inv, TypeSafety

THEOREM NextInvF1 == Inv /\ [Next]_varlist => InvF1'
    <1> USE AckBotDef
    <1> SUFFICES ASSUME Inv, [Next]_varlist
                    PROVE InvF1'
        OBVIOUS
    <1>1. TypeOK'
        BY NextTypeOK
    <1> QED
=============================================================================
\* Modification History
\* Last modified Thu Apr 03 22:56:06 EDT 2025 by karunram
\* Created Thu Apr 03 22:52:38 EDT 2025 by karunram
