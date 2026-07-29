import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse