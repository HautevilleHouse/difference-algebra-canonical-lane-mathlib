import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceRing

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferencePolynomial (R : Type) [CommRing R] (sigma : R → R) where
  n : ℕ
  coeffs : ℕ → R
  degreeBound : ℕ
  eval (x : R) : R
  evalDefined : ∀ x : R, eval x = ∑ i in Finset.range (degreeBound + 1), coeffs i * (sigma^[i]) x

structure DifferencePolynomialRing (R : Type) [CommRing R] (sigma : R → R) where
  carrier : Set (DifferencePolynomial R sigma)
  addition : DifferencePolynomial R sigma → DifferencePolynomial R sigma → DifferencePolynomial R sigma
  multiplication : DifferencePolynomial R sigma → DifferencePolynomial R sigma → DifferencePolynomial R sigma
  zero : DifferencePolynomial R sigma
  one : DifferencePolynomial R sigma

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse