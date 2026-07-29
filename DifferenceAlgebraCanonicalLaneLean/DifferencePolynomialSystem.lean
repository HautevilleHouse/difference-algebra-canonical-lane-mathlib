import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferencePolynomialSystem where
  field : Type u
  indeterminates : Nat
  equations : List ((field → field) → field)
  differenceOperators : List (field → field)
  consistentSolution : Prop
  finiteNumberOfSolutions : Prop
  dimension : Nat

structure DifferencePolynomialSystemEvidence (S : DifferencePolynomialSystem) where
  consistentSolutionClosed : S.consistentSolution
  finiteNumberOfSolutionsClosed : S.finiteNumberOfSolutions

def DifferencePolynomialSystemClosed (S : DifferencePolynomialSystem) : Prop :=
  S.consistentSolution ∧ S.finiteNumberOfSolutions

theorem difference_polynomial_system_closed_from_evidence (S : DifferencePolynomialSystem) (ev : DifferencePolynomialSystemEvidence S) :
  DifferencePolynomialSystemClosed S := by
  exact And.intro ev.consistentSolutionClosed ev.finiteNumberOfSolutionsClosed

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse