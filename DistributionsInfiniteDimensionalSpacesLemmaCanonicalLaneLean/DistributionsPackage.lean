import DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.TestFunctionSpace

/-!
# Distributions Package
-/

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure DistributionsPackage {T : TestFunctionSpacePackage} where
  spaceOfDistributions : Type u
  linearFunctionalProperty : Prop
  continuityProperty : Prop
  dualSpaceProperty : Prop

structure DistributionsEvidence {T : TestFunctionSpacePackage} (D : DistributionsPackage T) where
  linearFunctionalPropertyClosed : D.linearFunctionalProperty
  continuityPropertyClosed : D.continuityProperty
  dualSpacePropertyClosed : D.dualSpaceProperty

def DistributionsClosed {T : TestFunctionSpacePackage} (D : DistributionsPackage T) : Prop :=
  D.linearFunctionalProperty ∧ D.continuityProperty ∧ D.dualSpaceProperty

theorem distributions_closed_from_evidence {T : TestFunctionSpacePackage} (D : DistributionsPackage T) (E : DistributionsEvidence D) : DistributionsClosed D := by
  exact And.intro E.linearFunctionalPropertyClosed (And.intro E.continuityPropertyClosed E.dualSpacePropertyClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse