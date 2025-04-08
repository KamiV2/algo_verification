------------------------------- MODULE F1Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM F1Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F1(p)) => Inv'
    <1> SUFFICES ASSUME Inv, [Next]_varlist, NEW p \in PROCESSES, F1(p)
                PROVE Inv'
        OBVIOUS
    <1> QED
=============================================================================
\* Modification History
\* Last modified Thu Apr 03 23:12:23 EDT 2025 by karunram
\* Created Thu Apr 03 22:57:43 EDT 2025 by karunram
