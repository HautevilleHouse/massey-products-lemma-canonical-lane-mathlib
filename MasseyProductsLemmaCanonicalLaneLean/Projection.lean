import MasseyProductsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def masseyProjection : Projection MasseyEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem massey_projection_idempotent (x : MasseyEndgameState) :
    masseyProjection.toFun (masseyProjection.toFun x) = masseyProjection.toFun x := by
  exact masseyProjection.idempotent x

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse