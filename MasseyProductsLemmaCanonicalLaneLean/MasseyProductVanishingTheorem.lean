import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductDefinition

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyProductVanishingStatement {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    (M : MasseyProductChainComplex C) where
  n : ℕ
  condition : Prop
  impliesVanishing : MasseyProduct M n 0 0 → Prop

structure MasseyProductVanishingEvidence {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} (V : MasseyProductVanishingStatement M) where
  conditionClosed : V.condition
  implicationClosed : ∀ (P : MasseyProduct M V.n 0 0), V.impliesVanishing P

def MasseyProductVanishingClosed {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} (V : MasseyProductVanishingStatement M) : Prop :=
  V.condition ∧ (∀ (P : MasseyProduct M V.n 0 0), V.impliesVanishing P)

theorem massey_product_vanishing_closed_from_evidence {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} (V : MasseyProductVanishingStatement M)
    (E : MasseyProductVanishingEvidence V) : MasseyProductVanishingClosed V :=
  And.intro E.conditionClosed E.implicationClosed

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
