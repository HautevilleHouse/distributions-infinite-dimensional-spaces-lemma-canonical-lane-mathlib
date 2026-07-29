import canonicalLaneMathlib.AdmissibleClass
import DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean.KernelTheorem

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean

structure SchwartzKernelTheoremPackage {T : TestFunctionSpace} {D : DistributionSpace T} {N : NuclearFrechetSpace T}
    (K : KernelTheoremPackage D N) where
  temperedDistributions : Prop
  schwartzKernel : Prop
  isomorphism : Prop
  kernelMapBounded : Prop

structure SchwartzKernelTheoremEvidence {T : TestFunctionSpace} {D : DistributionSpace T} {N : NuclearFrechetSpace T}
    {K : KernelTheoremPackage D N} (S : SchwartzKernelTheoremPackage K) where
  temperedDistributionsClosed : S.temperedDistributions
  schwartzKernelClosed : S.schwartzKernel
  isomorphismClosed : S.isomorphism
  kernelMapBoundedClosed : S.kernelMapBounded

def SchwartzKernelTheoremClosed {T : TestFunctionSpace} {D : DistributionSpace T} {N : NuclearFrechetSpace T}
    {K : KernelTheoremPackage D N} (S : SchwartzKernelTheoremPackage K) : Prop :=
  S.temperedDistributions ∧ S.schwartzKernel ∧ S.isomorphism ∧ S.kernelMapBounded

theorem schwartz_kernel_theorem_closed_from_evidence {T : TestFunctionSpace} {D : DistributionSpace T} {N : NuclearFrechetSpace T}
    {K : KernelTheoremPackage D N} (S : SchwartzKernelTheoremPackage K) (E : SchwartzKernelTheoremEvidence S) :
    SchwartzKernelTheoremClosed S := by
  exact And.intro E.temperedDistributionsClosed (And.intro E.schwartzKernelClosed (And.intro E.isomorphismClosed E.kernelMapBoundedClosed))

end DistributionsInfiniteDimensionalSpacesLemmaCanonicalLaneLean
end HautevilleHouse