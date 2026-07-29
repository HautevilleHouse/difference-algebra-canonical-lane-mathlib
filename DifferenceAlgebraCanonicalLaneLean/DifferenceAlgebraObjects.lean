import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceRing where
  carrier : Type
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  sigma : carrier → carrier  -- endomorphism
  sigmaAdditive : ∀ x y, sigma (plus x y) = plus (sigma x) (sigma y)
  sigmaMultiplicative : ∀ x y, sigma (times x y) = times (sigma x) (sigma y)
  ringAxioms : sorry -- placeholder for ring axioms

structure DifferenceIdeal (R : DifferenceRing) where
  subset : Set R.carrier
  closedUnderSigma : ∀ x, x ∈ subset → R.sigma x ∈ subset
  idealAxioms : sorry

structure AdmittedObject (R : DifferenceRing) where
  ideal : DifferenceIdeal R
  conclusion : Prop

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse