import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductChainComplex

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyProduct {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    (M : MasseyProductChainComplex C) (n : ℕ) (a b : ℕ) where
  cohomologyClasses : (a : ℕ) → (b : ℕ) → Type u
  tripleProduct : (i j k : ℕ) → ((C → C) → (C → C) → (C → C))
  vanishingCondition : Prop

structure MasseyProductEvidence {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} {n : ℕ} {a b : ℕ} (P : MasseyProduct M n a b) where
  cohomologyClassesDefined : P.cohomologyClasses a b ≠ ∅
  vanishingConditionClosed : P.vanishingCondition

def MasseyProductClosed {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} {n : ℕ} {a b : ℕ} (P : MasseyProduct M n a b) : Prop :=
  P.vanishingCondition

theorem massey_product_closed_from_evidence {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    {M : MasseyProductChainComplex C} {n : ℕ} {a b : ℕ} (P : MasseyProduct M n a b)
    (E : MasseyProductEvidence P) : MasseyProductClosed P :=
  E.vanishingConditionClosed

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
