import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MasseyProductsLemmaCanonicalLaneLean.DifferentialGradedAlgebra

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyTripleProduct (D : DifferentialGradedAlgebra ℤ) where
  a : D.carrier
  b : D.carrier
  c : D.carrier
  degreeA : ℤ
  degreeB : ℤ
  degreeC : ℤ
  productABzero : D.product a b = 0
  productBCzero : D.product b c = 0
  representative : D.carrier
  coherenceCondition : D.differential representative = D.product a (someChoice b c) + D.product (someChoice a b) c

-- We need someChoice to represent the choice of lift
def someChoice (x y : D.carrier) : D.carrier := x -- placeholder

def MasseyTripleProductDefined (M : MasseyTripleProduct D) : Prop :=
  M.productABzero ∧ M.productBCzero ∧ (M.coherenceCondition)

theorem massey_defined_iff (M : MasseyTripleProduct D) : MasseyTripleProductDefined M ↔ M.productABzero ∧ M.productBCzero ∧ (M.coherenceCondition) :=
  by
    constructor
    · intro h; exact h
    · intro h; exact h

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse