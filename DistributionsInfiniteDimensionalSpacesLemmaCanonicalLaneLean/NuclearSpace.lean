import HautevilleHouse.DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.InfiniteDimensionalTopology

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure NuclearSpace (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) where
  nuclearityCondition : Prop
  approximationProperty : Prop
  grothendieckTheorem : Prop
  nuclearityConditionTerm : nuclearityCondition
  approximationPropertyTerm : approximationProperty
  grothendieckTheoremTerm : grothendieckTheorem

structure NuclearSpaceEvidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) (N : NuclearSpace T D I) where
  nuclearityConditionClosed : N.nuclearityCondition
  approximationPropertyClosed : N.approximationProperty
  grothendieckTheoremClosed : N.grothendieckTheorem

def NuclearSpaceClosed (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) (N : NuclearSpace T D I) : Prop :=
  N.nuclearityCondition ∧ N.approximationProperty ∧ N.grothendieckTheorem

theorem nuclear_space_closed_from_evidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) (N : NuclearSpace T D I)
    (E : NuclearSpaceEvidence T D I N) : NuclearSpaceClosed T D I N := by
  exact And.intro E.nuclearityConditionClosed (And.intro E.approximationPropertyClosed E.grothendieckTheoremClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse