------------------------------- MODULE U3Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM U3Inv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: U3(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:08:16 EDT 2025 by karunram
\* Created Fri May 02 14:49:09 EDT 2025 by karunram
