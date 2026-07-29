import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceKernel where
  ringA : Type u
  ringB : Type v
  differenceOperatorA : ringA → ringA
  differenceOperatorB : ringB → ringB
  mapping : ringA → ringB
  commutes : ∀ (x : ringA), differenceOperatorB (mapping x) = mapping (differenceOperatorA x)
  kernel : Set ringA
  kernelClosedUnderDifference : ∀ (x : ringA), x ∈ kernel → differenceOperatorA x ∈ kernel
  quotientField : Prop

structure DifferenceKernelEvidence (K : DifferenceKernel) where
  commutesClosed : K.commutes = K.commutes
  kernelClosedUnderDifferenceClosed : K.kernelClosedUnderDifference = K.kernelClosedUnderDifference
  quotientFieldClosed : K.quotientField

def DifferenceKernelClosed (K : DifferenceKernel) : Prop :=
  K.commutes ∧ K.kernelClosedUnderDifference ∧ K.quotientField

theorem difference_kernel_closed_from_evidence (K : DifferenceKernel) (ev : DifferenceKernelEvidence K) :
  DifferenceKernelClosed K := by
  exact And.intro ev.commutesClosed (And.intro ev.kernelClosedUnderDifferenceClosed ev.quotientFieldClosed)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse