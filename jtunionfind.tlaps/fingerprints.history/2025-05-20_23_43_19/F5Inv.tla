------------------------------- MODULE F5Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM F5Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F5(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:04:43 EDT 2025 by karunram
\* Created Fri May 02 14:45:37 EDT 2025 by karunram
