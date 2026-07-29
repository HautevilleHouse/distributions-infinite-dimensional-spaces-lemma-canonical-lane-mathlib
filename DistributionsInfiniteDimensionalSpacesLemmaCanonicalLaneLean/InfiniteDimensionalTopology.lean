import HautevilleHouse.DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.DistributionSpace

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure InfiniteDimensionalTopology (T : TestFunctionSpace) (D : DistributionSpace T) where
  locallyConvex : Prop
  barreled : Prop
  metrizable : Prop
  locallyConvexTerm : locallyConvex
  barreledTerm : barreled
  metrizableTerm : metrizable

structure InfiniteDimensionalTopologyEvidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) where
  locallyConvexClosed : I.locallyConvex
  barreledClosed : I.barreled
  metrizableClosed : I.metrizable

def InfiniteDimensionalTopologyClosed (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) : Prop :=
  I.locallyConvex ∧ I.barreled ∧ I.metrizable

theorem infinite_dimensional_topology_closed_from_evidence (T : TestFunctionSpace) (D : DistributionSpace T)
    (I : InfiniteDimensionalTopology T D) (E : InfiniteDimensionalTopologyEvidence T D I) :
    InfiniteDimensionalTopologyClosed T D I := by
  exact And.intro E.locallyConvexClosed (And.intro E.barreledClosed E.metrizableClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse