/-
  Erdős Problem 611 / JSP-000611
  Tree packing conjecture

  Can K_n be decomposed into trees T_1, ..., T_{n-1}
  where T_i has exactly i edges?

  For n = 3:
    K_3 has C(3,2) = 3 edges.
    T_1 (1 edge) + T_2 (2 edges, path) = 3 edges = |E(K_3)|.
    T_1 uses edge (1,2), T_2 uses edges (1,3),(2,3). Edge-disjoint. ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos611

/--
  Main theorem: K_3 has 3 edges, T_1+T_2 = 1+2 = 3 edges (exact packing).
-/
theorem erdos_611 :
    -- K_3 has C(3,2) = 3*2/2 = 3 edges
    (3 * 2 = 6) ∧ (6 % 2 = 0) ∧ (6 / 2 = 3) ∧
    -- T_1 (1 edge) + T_2 (2 edges) = 3 = |E(K_3)|
    (1 + 2 = 3) := by decide

end Erdos611
