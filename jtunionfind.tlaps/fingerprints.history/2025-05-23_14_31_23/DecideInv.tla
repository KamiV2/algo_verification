----------------------------- MODULE DecideInv -----------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM DecideInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: Decide(p)) => Inv'

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:04:55 EDT 2025 by karunram
\* Created Fri May 02 14:46:51 EDT 2025 by karunram
