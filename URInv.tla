------------------------------- MODULE URInv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM URInv == Inv /\ [Next]_varlist /\ (\E p \in PROCESSES: UR(p)) => Inv'   

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:08:22 EDT 2025 by karunram
\* Created Fri May 02 14:53:26 EDT 2025 by karunram
