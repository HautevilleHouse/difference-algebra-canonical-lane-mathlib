import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse