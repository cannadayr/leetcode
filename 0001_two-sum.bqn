# https://leetcode.com/problems/two-sum/

lib ← •Import "lib.bqn"

# Given a rank-1 array of integers 𝕩 and target 𝕨, returns a rank-2 boolean array corresponding to the indices of the integers in 𝕨 that add to target 𝕨
AddsToTarget ← {𝕨=+⌜˜𝕩}

# Given an array of integers 𝕩 and an integer target 𝕨, return indices of the two numbers such that they add to target 𝕨
TwoSum ← {lib.HighRankIndices (lib.UpperTriangular ≠𝕩) ∧ 𝕨 AddsToTarget 𝕩}

•Show ! ⟨⟨0,1⟩⟩ ≡ 9 TwoSum ⟨2,7,11,15⟩
•Show ! ⟨⟨1,2⟩⟩ ≡ 6 TwoSum ⟨3,2,4⟩
•Show ! ⟨⟨0,1⟩⟩ ≡ 6 TwoSum ⟨3,3⟩
