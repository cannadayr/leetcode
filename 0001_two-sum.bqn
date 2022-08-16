# https://leetcode.com/problems/two-sum/

# Given a rank-1 array of integers 𝕩 and target 𝕨, returns a rank-2 boolean array corresponding to the indices of the integers in 𝕨 that add to target 𝕨
AddsToTarget ← {𝕨=+⌜˜𝕩}

# Given integer 𝕩, returns an upper triangular rank-2 boolean array of shape 𝕩‿𝕩
UpperTriangular ← {<⌜˜∘↕𝕩}

# Given rank-2 boolean array 𝕩, return the multidimensional indices of the 1's
HighRankIndices ← {/○⥊⟜(↕≢)𝕩}

# Given an array of integers 𝕩 and an integer target 𝕨, return indices of the two numbes such that they add to target 𝕨
TwoSum ← {HighRankIndices (UpperTriangular ≠𝕩) ∧ 𝕨 AddsToTarget 𝕩}

•Show ! ⟨⟨0,1⟩⟩ ≡ 9 TwoSum ⟨2,7,11,15⟩
•Show ! ⟨⟨1,2⟩⟩ ≡ 6 TwoSum ⟨3,2,4⟩
•Show ! ⟨⟨0,1⟩⟩ ≡ 6 TwoSum ⟨3,3⟩
