------------------------------- MODULE FRInv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM FRInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: FR(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:05:06 EDT 2025 by karunram
\* Created Fri May 02 14:46:39 EDT 2025 by karunram
