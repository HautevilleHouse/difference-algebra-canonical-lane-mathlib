import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraCanonicalLaneLean

structure DifferenceGaloisGroup (K : Type) [Field K] (sigma : K → K) where
  carrier : Set (K → K)
  closedUnderComposition : Prop
  closedUnderInverse : Prop
  fixedField : Subfield K
  fixedFieldDefined : fixedField = {x : K | sigma x = x}
  galoisCorrespondence : Prop

end DifferenceAlgebraCanonicalLaneLean
end HautevilleHouse