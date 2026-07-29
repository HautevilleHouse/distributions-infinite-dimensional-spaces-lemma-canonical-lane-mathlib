import DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DistributionsInfiniteDimensionalSpacesLemmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DistributionsInfiniteDimensionalSpacesLemmaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse