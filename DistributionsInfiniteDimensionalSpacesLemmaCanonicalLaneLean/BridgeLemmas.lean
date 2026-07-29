import DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionsInfiniteDimensionalSpacesLemmaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse