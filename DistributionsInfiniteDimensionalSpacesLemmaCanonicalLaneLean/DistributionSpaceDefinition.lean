import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure TopologicalVectorSpace (V : Type u) where
  topology : TopologicalSpace V
  addition : V → V → V
  scalarMultiplication : ℝ → V → V
  vectorSpace : AddCommGroup V
  topologicalVectorSpace : TopologicalVectorSpace V

distributionSpace V : Type u := Subtype (λ (f : V → ℝ) => continuous f ∧ linear f)

structure DistributionSpacePackage (V : TopologicalVectorSpace) where
  space : Type u
  topology : TopologicalSpace space
  continuousLinearFunctionals : Prop
  dualSpace : Set space

def distributionSpaceClosed (D : DistributionSpacePackage) : Prop := D.continuousLinearFunctionals

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse