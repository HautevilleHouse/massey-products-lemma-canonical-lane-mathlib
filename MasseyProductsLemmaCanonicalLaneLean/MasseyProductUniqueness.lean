import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MasseyProductsLemmaCanonicalLaneLean.DifferentialGradedAlgebra
import HautevilleHouse.MasseyProductsLemmaCanonicalLaneLean.MasseyTripleProduct

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyProductUniqueness (D : DifferentialGradedAlgebra ℤ) where
  triple : MasseyTripleProduct D
  ambiguityRepresentative : D.carrier
  independence : Bool

def MasseyProductUniquenessCondition (U : MasseyProductUniqueness D) : Prop :=
  U.independence

theorem uniqueness_condition_holds (U : MasseyProductUniqueness D) (h : U.independence) : MasseyProductUniquenessCondition U := h

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse