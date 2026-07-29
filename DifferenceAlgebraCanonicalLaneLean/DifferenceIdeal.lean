import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceRing

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceIdeal (R : Type) [CommRing R] (sigma : R → R) where
  carrier : Set R
  isAddSubgroup : AddSubgroup R
  sigmaClosed : ∀ x : R, x ∈ carrier → sigma x ∈ carrier
  isMultiplicativeIdeal : ∀ x y : R, x ∈ carrier → x * y ∈ carrier

def differenceRadical (R : Type) [CommRing R] (sigma : R → R) (I : DifferenceIdeal R sigma) : Set R :=
  {x : R | ∃ n : ℕ, (sigma^[n]) x ∈ I.carrier}

structure DifferencePrimeIdeal (R : Type) [CommRing R] (sigma : R → R) extends DifferenceIdeal R sigma where
  isPrime : PrimeIdeal (carrier : Ideal R)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse