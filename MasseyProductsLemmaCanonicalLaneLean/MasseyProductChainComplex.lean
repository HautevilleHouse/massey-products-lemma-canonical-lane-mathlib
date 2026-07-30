import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyProductChainComplex (C : Type) [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C] where
  differential : ℕ → (C → C)
  differentialZero : ∀ n x, differential (n+1) (differential n x) = 0
  homology : ℕ → Type u

structure MasseyProductChainComplexEvidence {C : Type} [CategoryTheory.Category.{u} C] [CategoryTheory.Abelian C]
    (M : MasseyProductChainComplex C) where
  complexWellDefined : Prop
  differentialSquaredZero : ∀ n, ∀ x : C, M.differential (n+1) (M.differential n x) = 0
  homologyDefined : Prop

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
