------------------------------- MODULE InvF1 -------------------------------

EXTENDS Implementation, Inv

THEOREM NextInvF1 == Inv /\ [Next]_varlist => InvF1'
    <1> USE AckBotDef
    <1> SUFFICES ASSUME Inv, [Next]_varlist
                    PROVE InvF1'
    <1> QED
=============================================================================
\* Modification History
\* Last modified Thu Apr 03 22:55:34 EDT 2025 by karunram
\* Created Thu Apr 03 22:52:38 EDT 2025 by karunram
