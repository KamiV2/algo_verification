------------------------------- MODULE F6Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM F6Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: F6(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:05:00 EDT 2025 by karunram
\* Created Fri May 02 14:46:14 EDT 2025 by karunram
