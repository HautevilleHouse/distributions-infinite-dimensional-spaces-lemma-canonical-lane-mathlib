import HautevilleHouse.DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.DistributionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure DistributionalDerivative (T : TestFunctionSpace) (D : DistributionSpace T) where
  derivativeMap : D.dualSpaceType → D.dualSpaceType
  linearity : Prop
  productRule : Prop
  linearityTerm : linearity
  productRuleTerm : productRule

structure DistributionalDerivativeEvidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (DD : DistributionalDerivative T D) where
  linearityClosed : DD.linearity
  productRuleClosed : DD.productRule

def DistributionalDerivativeClosed (T : TestFunctionSpace) (D : DistributionSpace T)
    (DD : DistributionalDerivative T D) : Prop :=
  DD.linearity ∧ DD.productRule

theorem distributional_derivative_closed_from_evidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (DD : DistributionalDerivative T D) (E : DistributionalDerivativeEvidence T D DD) :
    DistributionalDerivativeClosed T D DD := by
  exact And.intro E.linearityClosed E.productRuleClosed

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse