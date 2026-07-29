import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceRing (R : Type) [Ring R] where
  sigma : R → R
  sigmaAdditive : ∀ x y : R, sigma (x + y) = sigma x + sigma y
  sigmaMultiplicative : ∀ x y : R, sigma (x * y) = sigma x * sigma y
  sigmaOne : sigma 1 = 1

structure DifferenceRingExtension (R S : Type) [Ring R] [Ring S] (f : R → S) where
  sigmaR : R → R
  sigmaS : S → S
  respectsSigma : ∀ x : R, f (sigmaR x) = sigmaS (f x)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse