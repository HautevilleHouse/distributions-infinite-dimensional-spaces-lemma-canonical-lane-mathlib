import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure DistributionFunctorPackage where
  sourceSpace : Type u
  targetSpace : Type v
  linearContinuity : Prop
  continuityCondition : Prop
  functorialMapping : Prop
  compositionCompatibility : Prop

structure DistributionFunctorEvidence (F : DistributionFunctorPackage) where
  linearContinuityClosed : F.linearContinuity
  continuityConditionClosed : F.continuityCondition
  functorialMappingClosed : F.functorialMapping
  compositionCompatibilityClosed : F.compositionCompatibility

def DistributionFunctorClosed (F : DistributionFunctorPackage) : Prop :=
  F.linearContinuity ∧ F.continuityCondition ∧ F.functorialMapping ∧ F.compositionCompatibility

theorem distribution_functor_closed_from_evidence
    (F : DistributionFunctorPackage) (E : DistributionFunctorEvidence F) :
    DistributionFunctorClosed F := by
  exact And.intro E.linearContinuityClosed
    (And.intro E.continuityConditionClosed
      (And.intro E.functorialMappingClosed E.compositionCompatibilityClosed))

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse