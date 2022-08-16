# https://leetcode.com/problems/contains-duplicate-ii/

lib ← •Import "lib.bqn"

# Given an integer 𝕨, and rank-1 array 𝕩, return bool if there are two distinct
# indices such that (i⊑𝕩) = j⊑𝕩 and 𝕨≥|i-j
ContainsDuplicate ← {⊑ 1 ∊ 𝕨 {k F i‿j:k≥|i-j}¨lib.HighRankIndices (lib.UpperTriangular ≠𝕩)∧=⌜˜𝕩}

•Show ! 1 ≡ 3 ContainsDuplicate ⟨1,2,3,1⟩
•Show ! 1 ≡ 1 ContainsDuplicate ⟨1,0,1,1⟩
•Show ! 0 ≡ 2 ContainsDuplicate ⟨1,2,3,1,2,3⟩
