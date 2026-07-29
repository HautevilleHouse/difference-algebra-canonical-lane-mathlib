import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceRing

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceField (K : Type) [Field K] extends DifferenceRing K where
  sigmaInvertible : ∀ x : K, x ≠ 0 → sigma x ≠ 0
  sigmaInv : ∀ x : K, x ≠ 0 → sigma (x⁻¹) = (sigma x)⁻¹

structure DifferenceFieldExtension (K L : Type) [Field K] [Field L] (f : K → L) extends DifferenceRingExtension K L f where
  sigmaK : DifferenceField K
  sigmaL : DifferenceField L

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse