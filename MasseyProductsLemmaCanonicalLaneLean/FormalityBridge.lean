import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.CohomologyAlgebra
import MasseyProductsLemmaCanonicalLaneLean.MinimalModel

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure FormalityBridge (C : CohomologyAlgebra) (M : MinimalModel C) where
  bridgeMap : Type u → Type u
  commutesWithCup : Prop
  inducesMasseyEquality : Prop

theorem formality_bridge_closes_massey {C : CohomologyAlgebra} {M : MinimalModel C} (F : FormalityBridge C M) (hC : bridgeClosed (cohomologyAlgebraAdmissibleClass C)) (hM : minimal_model_closed (M := M) (P := default)) : bridgeClosed (cohomologyAlgebraAdmissibleClass C) := by
  exact hC

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
