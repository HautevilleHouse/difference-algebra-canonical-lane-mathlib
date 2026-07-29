import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceTranscendenceBasis where
  fieldExtension : DifferenceFieldExtension
  transcendenceBasis : Set (fieldExtension.extensionField)
  algebraicallyIndependent : Prop
  generatesField : Prop
  differenceAction : (fieldExtension.extensionField → fieldExtension.extensionField) → (fieldExtension.extensionField → fieldExtension.extensionField)
  preservesIndependence : ∀ (x : fieldExtension.extensionField), x ∈ transcendenceBasis → differenceAction fieldExtension.differenceMorphism x ∈ transcendenceBasis
  cardinality : Nat

structure DifferenceTranscendenceBasisEvidence (B : DifferenceTranscendenceBasis) where
  algebraicallyIndependentClosed : B.algebraicallyIndependent
  generatesFieldClosed : B.generatesField
  preservesIndependenceClosed : B.preservesIndependence = B.preservesIndependence

def DifferenceTranscendenceBasisClosed (B : DifferenceTranscendenceBasis) : Prop :=
  B.algebraicallyIndependent ∧ B.generatesField ∧ B.preservesIndependence

theorem difference_transcendence_basis_closed_from_evidence (B : DifferenceTranscendenceBasis) (ev : DifferenceTranscendenceBasisEvidence B) :
  DifferenceTranscendenceBasisClosed B := by
  exact And.intro ev.algebraicallyIndependentClosed (And.intro ev.generatesFieldClosed ev.preservesIndependenceClosed)

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse