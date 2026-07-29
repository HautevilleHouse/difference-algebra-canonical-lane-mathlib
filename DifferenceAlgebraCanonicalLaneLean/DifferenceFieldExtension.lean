import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceFieldExtension where
  baseField : Type u
  extensionField : Type v
  fieldEmbedding : baseField → extensionField
  isDifference : Prop
  differenceMorphism : extensionField → extensionField
  commutesWithEmbedding : ∀ (x : baseField), differenceMorphism (fieldEmbedding x) = fieldEmbedding (differenceMorphism x)
  isAlgebraic : Prop
  finiteDimensional : Prop

structure DifferenceFieldExtensionEvidence (E : DifferenceFieldExtension) where
  isDifferenceClosed : E.isDifference
  commutesWithEmbeddingClosed : E.commutesWithEmbedding = E.commutesWithEmbedding
  isAlgebraicClosed : E.isAlgebraic
  finiteDimensionalClosed : E.finiteDimensional

def DifferenceFieldExtensionClosed (E : DifferenceFieldExtension) : Prop :=
  E.isDifference ∧ E.commutesWithEmbedding ∧ E.isAlgebraic ∧ E.finiteDimensional

theorem difference_field_extension_closed_from_evidence (E : DifferenceFieldExtension) (ev : DifferenceFieldExtensionEvidence E) :
  DifferenceFieldExtensionClosed E := by
  exact And.intro ev.isDifferenceClosed (And.intro ev.commutesWithEmbeddingClosed (And.intro ev.isAlgebraicClosed ev.finiteDimensionalClosed))

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse