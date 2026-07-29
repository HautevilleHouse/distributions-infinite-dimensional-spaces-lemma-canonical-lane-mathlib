import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure KernelTheoremPackage where
  distributionSpace : DistributionSpacePackage
  kernelExistence : Prop
  continuityOfKernel : Prop
  kernelRepresentation : Prop

structure KernelTheoremEvidence (K : KernelTheoremPackage) where
  kernelExistenceClosed : K.kernelExistence
  continuityOfKernelClosed : K.continuityOfKernel
  kernelRepresentationClosed : K.kernelRepresentation

def KernelTheoremClosed (K : KernelTheoremPackage) : Prop :=
  K.kernelExistence ∧ K.continuityOfKernel ∧ K.kernelRepresentation

theorem kernel_theorem_closed_from_evidence
    (K : KernelTheoremPackage) (E : KernelTheoremEvidence K) :
    KernelTheoremClosed K := by
  exact And.intro E.kernelExistenceClosed
    (And.intro E.continuityOfKernelClosed E.kernelRepresentationClosed)

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse