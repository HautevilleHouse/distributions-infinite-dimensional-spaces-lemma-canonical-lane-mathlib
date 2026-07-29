import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.TestFunctionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure DistributionSpace (T : TestFunctionSpace) where
  dualSpace: Type u
  continuousLinearFunctionals: dualSpace → (T.domain → ℝ) → ℝ
  weakStarTopology: TopologicalSpace dualSpace
  continuityProperty: Prop
  embeddingProperty: Prop
  continuityPropertyClosed: continuityProperty
  embeddingPropertyClosed: embeddingProperty

structure DistributionSpaceEvidence {T : TestFunctionSpace} (D : DistributionSpace T) where
  continuityPropertyClosed: D.continuityProperty
  embeddingPropertyClosed: D.embeddingProperty

def DistributionSpaceClosed {T : TestFunctionSpace} (D : DistributionSpace T) : Prop :=
  D.continuityProperty ∧ D.embeddingProperty

theorem distribution_space_closed_from_evidence {T : TestFunctionSpace} (D : DistributionSpace T) (E : DistributionSpaceEvidence D) : DistributionSpaceClosed D := by
  exact And.intro E.continuityPropertyClosed E.embeddingPropertyClosed

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse