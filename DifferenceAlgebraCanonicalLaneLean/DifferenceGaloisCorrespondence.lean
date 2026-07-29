import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceGaloisGroup
import HautevilleHouse.DifferenceAlgebraCanonicalLaneLean.DifferenceField

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

theorem difference_galois_correspondence (K L : Type) [Field K] [Field L] (sigmaK : K → K) (sigmaL : L → L) (f : K → L) (ext : DifferenceFieldExtension K L f) : Prop :=
  let G := DifferenceGaloisGroup L sigmaL
  let E := ext.sigmaL.fixedField
  G.galoisCorrespondence

theorem difference_galois_theorem (L : Type) [Field L] (sigma : L → L) (E : Subfield L) : Prop :=
  let G := DifferenceGaloisGroup L sigma
  have hfixed : E = G.fixedField := by
    -- from the structure definition
    exact G.fixedFieldDefined.symm
  G.galoisCorrespondence

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse