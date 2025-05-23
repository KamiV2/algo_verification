------------------------------- MODULE U6Inv -------------------------------

EXTENDS Implementation, TypeSafety, Inv

THEOREM U6Inv == Inv /\ (\E p \in PROCESSES: U6(p)) => Inv'   

=============================================================================
\* Modification History
\* Last modified Fri May 02 15:05:12 EDT 2025 by karunram
\* Created Fri May 02 14:53:10 EDT 2025 by karunram
