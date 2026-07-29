import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferencePrimeIdeal where
  ring : Type u
  differenceOperator : ring → ring
  primeIdeal : Set ring
  isPrime : Ideal.IsPrime primeIdeal
  closedUnderDifference : ∀ (x : ring), x ∈ primeIdeal → differenceOperator x ∈ primeIdeal
  quotientDifferenceRing : Prop

structure DifferencePrimeIdealEvidence (P : DifferencePrimeIdeal) where
  isPrimeClosed : P.isPrime
  closedUnderDifferenceClosed : P.closedUnderDifference = P.closedUnderDifference
  quotientDifferenceRingClosed : P.quotientDifferenceRing

def DifferencePrimeIdealClosed (P : DifferencePrimeIdeal) : Prop :=
  P.isPrime ∧ P.closedUnderDifference ∧ P.quotientDifferenceRing

theorem difference_prime_ideal_closed_from_evidence (P : DifferencePrimeIdeal) (ev : DifferencePrimeIdealEvidence P) :
  DifferencePrimeIdealClosed P := by
  exact And.intro ev.isPrimeClosed (And.intro ev.closedUnderDifferenceClosed ev.quotientDifferenceRingClosed)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse