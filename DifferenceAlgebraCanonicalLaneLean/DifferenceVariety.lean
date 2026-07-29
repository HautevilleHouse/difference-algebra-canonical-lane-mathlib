import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferencePolynomial
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceIdeal

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceVariety (K : Type) [Field K] (sigma : K → K) where
  definingPolynomials : Set (DifferencePolynomial K sigma)
  zeroSet : Set K
  zeroSetDefined : zeroSet = {x : K | ∀ P : DifferencePolynomial K sigma, P ∈ definingPolynomials → P.eval x = 0}
  isAlgebraicSet : Prop

structure DifferenceMorphism (K L : Type) [Field K] [Field L] (sigmaK : K → K) (sigmaL : L → L) where
  map : K → L
  respectsSigma : ∀ x : K, map (sigmaK x) = sigmaL (map x)
  isPolynomial : Prop

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse