import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff
import Mathlib.Analysis.FunctionalSpace.Basic

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure TestFunctionSpace where
  domain: Type u
  domainTopology: TopologicalSpace domain
  smoothness: ℕ → Prop
  compactSupport: (domain → ℝ) → Prop
  vectorSpaceStructure: Prop
  topologyStructure: Prop
  smoothnessClosed: smoothness = λ _ => True
  compactSupportClosed: compactSupport = λ _ => True
  vectorSpaceStructureClosed: vectorSpaceStructure
  topologyStructureClosed: topologyStructure

structure TestFunctionSpaceEvidence (T : TestFunctionSpace) where
  vectorSpaceStructureClosed: T.vectorSpaceStructure
  topologyStructureClosed: T.topologyStructure

def TestFunctionSpaceClosed (T : TestFunctionSpace) : Prop :=
  T.vectorSpaceStructure ∧ T.topologyStructure

theorem test_function_space_closed_from_evidence (T : TestFunctionSpace) (E : TestFunctionSpaceEvidence T) : TestFunctionSpaceClosed T := by
  exact And.intro E.vectorSpaceStructureClosed E.topologyStructureClosed

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse