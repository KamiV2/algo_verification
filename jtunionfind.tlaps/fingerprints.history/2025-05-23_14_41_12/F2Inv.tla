------------------------------- MODULE F2Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM F2Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F2(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:04:49 EDT 2025 by karunram
\* Created Fri May 02 14:45:21 EDT 2025 by karunram
