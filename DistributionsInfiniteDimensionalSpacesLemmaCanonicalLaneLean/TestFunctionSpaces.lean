import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure TestFunctionSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  compactSupport : Set carrier
  denseEmbedding : Prop

structure TestFunctionSpaceEvidence (T : TestFunctionSpace) where
  smoothStructureClosed : T.smoothStructure
  compactSupportClosed : T.compactSupport ≠ Set.univ
  denseEmbeddingClosed : T.denseEmbedding

def TestFunctionSpaceClosed (T : TestFunctionSpace) : Prop :=
  T.smoothStructure ∧ T.compactSupport ≠ Set.univ ∧ T.denseEmbedding

theorem test_function_space_closed_from_evidence (T : TestFunctionSpace)
    (E : TestFunctionSpaceEvidence T) : TestFunctionSpaceClosed T := by
  exact And.intro E.smoothStructureClosed (And.intro E.compactSupportClosed E.denseEmbeddingClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse