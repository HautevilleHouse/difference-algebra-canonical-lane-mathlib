import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceGaloisCorrespondence

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

def ConstrainedDifferenceAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_algebra_endgame (A : AdmissibleClass) : ConstrainedDifferenceAlgebraClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse