# https://leetcode.com/problems/monotonic-array/

# Given a rank-1 array 𝕩, return monotonicity boolean.
# This works by taking a 2-window over the array,
# reducing with comparison for the major cells,
# and reducing over the entire result
_IsMonotonicDir ← {∧´𝔽´˘2↕𝕩}
IsMonotonic ← {( ≤ _IsMonotonicDir 𝕩) ∨ ≥ _IsMonotonicDir 𝕩}

•Show ! 1 ≡ IsMonotonic ⟨1,2,2,3⟩
•Show ! 1 ≡ IsMonotonic ⟨6,5,4,4⟩
•Show ! 0 ≡ IsMonotonic ⟨1,3,2⟩
