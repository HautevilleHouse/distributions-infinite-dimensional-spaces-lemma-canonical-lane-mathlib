import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure MontelTheoremPackage where
  distributionSpace : DistributionSpacePackage
  boundedSetCompact : Prop
  equicontinuityCondition : Prop
  normalFamilyConclusion : Prop

structure MontelTheoremEvidence (M : MontelTheoremPackage) where
  boundedSetCompactClosed : M.boundedSetCompact
  equicontinuityConditionClosed : M.equicontinuityCondition
  normalFamilyConclusionClosed : M.normalFamilyConclusion

def MontelTheoremClosed (M : MontelTheoremPackage) : Prop :=
  M.boundedSetCompact ∧ M.equicontinuityCondition ∧ M.normalFamilyConclusion

theorem montel_theorem_closed_from_evidence
    (M : MontelTheoremPackage) (E : MontelTheoremEvidence M) :
    MontelTheoremClosed M := by
  exact And.intro E.boundedSetCompactClosed
    (And.intro E.equicontinuityConditionClosed E.normalFamilyConclusionClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse