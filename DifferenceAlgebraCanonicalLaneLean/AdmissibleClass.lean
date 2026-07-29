import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceAlgebraObjects

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse