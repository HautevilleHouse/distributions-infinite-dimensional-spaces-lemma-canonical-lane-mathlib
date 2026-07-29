import canonicalLaneMathlib.AdmissibleClass
import DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.TestFunctionSpaces

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure NuclearFrechetSpace (T : TestFunctionSpace) where
  seminorms : Set (T.carrier → ℝ)
  nuclearityCondition : Prop
  frechetProperty : Prop
  montelProperty : Prop

structure NuclearFrechetSpaceEvidence {T : TestFunctionSpace} (N : NuclearFrechetSpace T) where
  nuclearityConditionClosed : N.nuclearityCondition
  frechetPropertyClosed : N.frechetProperty
  montelPropertyClosed : N.montelProperty

def NuclearFrechetSpaceClosed {T : TestFunctionSpace} (N : NuclearFrechetSpace T) : Prop :=
  N.nuclearityCondition ∧ N.frechetProperty ∧ N.montelProperty

theorem nuclear_frechet_space_closed_from_evidence {T : TestFunctionSpace}
    (N : NuclearFrechetSpace T) (E : NuclearFrechetSpaceEvidence N) : NuclearFrechetSpaceClosed N := by
  exact And.intro E.nuclearityConditionClosed (And.intro E.frechetPropertyClosed E.montelPropertyClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse