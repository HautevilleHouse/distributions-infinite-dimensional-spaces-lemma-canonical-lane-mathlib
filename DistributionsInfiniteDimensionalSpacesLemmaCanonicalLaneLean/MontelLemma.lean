import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.DistributionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure MontelLemmaPackage {T : TestFunctionSpace} (D : DistributionSpace T) where
  boundedSetDefinitions: Prop
  relativelyCompactCondition: Prop
  equicontinuityCondition: Prop
  boundedSetDefinitionsClosed: boundedSetDefinitions
  relativelyCompactConditionClosed: relativelyCompactCondition
  equicontinuityConditionClosed: equicontinuityCondition

structure MontelLemmaEvidence {T : TestFunctionSpace} {D : DistributionSpace T} (M : MontelLemmaPackage D) where
  boundedSetDefinitionsClosed: M.boundedSetDefinitions
  relativelyCompactConditionClosed: M.relativelyCompactCondition
  equicontinuityConditionClosed: M.equicontinuityCondition

def MontelLemmaClosed {T : TestFunctionSpace} {D : DistributionSpace T} (M : MontelLemmaPackage D) : Prop :=
  M.boundedSetDefinitions ∧ M.relativelyCompactCondition ∧ M.equicontinuityCondition

theorem montel_lemma_closed_from_evidence {T : TestFunctionSpace} {D : DistributionSpace T} (M : MontelLemmaPackage D) (E : MontelLemmaEvidence M) : MontelLemmaClosed M := by
  exact And.intro E.boundedSetDefinitionsClosed (And.intro E.relativelyCompactConditionClosed E.equicontinuityConditionClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse