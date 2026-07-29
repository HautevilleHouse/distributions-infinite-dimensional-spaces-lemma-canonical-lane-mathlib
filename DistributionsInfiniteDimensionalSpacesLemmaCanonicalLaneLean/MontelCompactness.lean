import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure MontelSpace (V : TopologicalVectorSpace) where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  boundedSetsPrecompact : Prop
  closedUnitBallCompact : Prop

structure MontelCompactnessEvidence (M : MontelSpace) where
  boundedSetsPrecompactClosed : M.boundedSetsPrecompact
  closedUnitBallCompactClosed : M.closedUnitBallCompact

def MontelCompactnessClosed (M : MontelSpace) : Prop := M.boundedSetsPrecompact ∧ M.closedUnitBallCompact

theorem montel_compactness_closed_from_evidence (M : MontelSpace) (E : MontelCompactnessEvidence M) : MontelCompactnessClosed M := by
  exact And.intro E.boundedSetsPrecompactClosed E.closedUnitBallCompactClosed

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse