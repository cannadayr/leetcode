# https://leetcode.com/problems/critical-connections-in-a-network/

Ident←{=⌜˜↕𝕩}
TransitiveClosure←{𝕩𝕊⍟≢∨˝∘∧⎉1‿∞˜⊸∨𝕩}
DisjointAdjacency←{𝕨{∨⟜⍉1⌾(𝕩⊸⊑)𝕨‿𝕨⥊0}¨𝕩}
Adjacency←{(Ident 𝕨)∨∨´𝕨 DisjointAdjacency 𝕩}
TransitiveClosureDiff←{(<𝕨 Adjacency 𝕩) TransitiveClosure {(𝔽 𝕨)-𝔽 𝕨-𝕩}¨𝕨 DisjointAdjacency 𝕩}
CriticalConnections ← {(𝕨{(𝕨‿𝕨⥊0)≢𝕩}¨𝕨 TransitiveClosureDiff 𝕩)/𝕩} 

•Show ! ⟨⟨1,3⟩⟩ ≡ 4 CriticalConnections ⟨⟨0,1⟩,⟨1,2⟩,⟨2,0⟩,⟨1,3⟩⟩
•Show ! ⟨⟨0,1⟩⟩ ≡ 2 CriticalConnections ⟨⟨0,1⟩⟩
•Show ! ⟨⟨1,3⟩⟩ ≡ 6 CriticalConnections ⟨⟨0,1⟩,⟨1,2⟩,⟨2,0⟩,⟨1,3⟩,⟨3,4⟩,⟨4,5⟩,⟨5,3⟩⟩
