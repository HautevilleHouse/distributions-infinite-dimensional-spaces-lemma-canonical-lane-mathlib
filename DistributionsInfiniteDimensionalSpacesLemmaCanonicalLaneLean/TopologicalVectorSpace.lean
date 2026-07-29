import Mathlib.Topology.Basic

/-!
# Topological Vector Space Package
-/

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure TopologicalVectorSpacePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  vectorSpaceStructure : AddCommGroup underlyingSpace × SMul ℝ underlyingSpace
  vectorSpaceTopologyCompatible : Prop
  locallyConvex : Prop
  metrizable : Prop

structure TopologicalVectorSpaceEvidence (T : TopologicalVectorSpacePackage) where
  vectorSpaceTopologyCompatibleClosed : T.vectorSpaceTopologyCompatible
  locallyConvexClosed : T.locallyConvex
  metrizableClosed : T.metrizable

def TopologicalVectorSpaceClosed (T : TopologicalVectorSpacePackage) : Prop :=
  T.vectorSpaceTopologyCompatible ∧ T.locallyConvex ∧ T.metrizable

theorem topological_vector_space_closed_from_evidence (T : TopologicalVectorSpacePackage) (E : TopologicalVectorSpaceEvidence T) : TopologicalVectorSpaceClosed T := by
  exact And.intro E.vectorSpaceTopologyCompatibleClosed (And.intro E.locallyConvexClosed E.metrizableClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse