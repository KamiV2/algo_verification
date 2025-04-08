------------------------------- MODULE U4Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM U4Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: U4(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Thu Apr 03 23:35:53 EDT 2025 by karunram
\* Created Thu Apr 03 22:57:43 EDT 2025 by karunram
