#n←4⋄conns←⟨⟨0,1⟩,⟨1,2⟩,⟨2,0⟩,⟨1,3⟩⟩
n←6⋄conns←⟨⟨0,1⟩,⟨1,2⟩,⟨2,0⟩,⟨1,3⟩,⟨3,4⟩,⟨4,5⟩,⟨5,3⟩⟩
Ident←{=⌜˜↕𝕩}
TransitiveClosure←{𝕩𝕊⍟≢∨˝∘∧⎉1‿∞˜⊸∨𝕩}
DisjointAdjacency←{𝕨{∨⟜⍉1⌾(𝕩⊸⊑)𝕨‿𝕨⥊0}¨𝕩}
Adjacency←{(Ident 𝕨)∨∨´𝕨 DisjointAdjacency 𝕩}
TransitiveClosureDiff←{(<𝕨 Adjacency 𝕩) TransitiveClosure {(𝔽 𝕨)-𝔽 𝕨-𝕩}¨𝕨 DisjointAdjacency 𝕩}
CriticalConnections ← {(𝕨{(𝕨‿𝕨⥊0)≢𝕩}¨𝕨 TransitiveClosureDiff 𝕩)/𝕩} 
•Show n CriticalConnections conns
