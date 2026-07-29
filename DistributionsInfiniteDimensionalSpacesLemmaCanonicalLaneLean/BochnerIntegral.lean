import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure BochnerIntegralPackage (V : TopologicalVectorSpace) where
  measureSpace : Type u
  measure : σ-algebra
  integrableFunctions : Set (V → ℝ)
  integralOperator : (V → ℝ) → V

structure BochnerIntegralEvidence (B : BochnerIntegralPackage) where
  integrableFunctionsClosed : B.integrableFunctions
  integralOperatorLinear : Prop
  dominatedConvergence : Prop

def BochnerIntegralClosed (B : BochnerIntegralPackage) : Prop := B.integrableFunctions ∧ B.integralOperatorLinear ∧ B.dominatedConvergence

theorem bochner_integral_closed_from_evidence (B : BochnerIntegralPackage) (E : BochnerIntegralEvidence B) : BochnerIntegralClosed B := by
  exact And.intro E.integrableFunctionsClosed (And.intro E.integralOperatorLinear E.dominatedConvergence)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse