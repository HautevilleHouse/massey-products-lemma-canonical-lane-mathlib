import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.CohomologyAlgebra

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MinimalModel (C : CohomologyAlgebra) where
  algebra : Type u
  quasiIsomorphism : Prop
  formalityCondition : Prop

structure MinimalModelPackage (C : CohomologyAlgebra) (M : MinimalModel C) where
  quasiIsomorphismRefinesMassey : Prop
  formalityEnsuresTrivialMassey : Prop

def minimal_model_closed {C : CohomologyAlgebra} {M : MinimalModel C} (P : MinimalModelPackage C M) : Prop :=
  P.quasiIsomorphismRefinesMassey ∧ P.formalityEnsuresTrivialMassey

theorem minimal_model_carries_remainder {C : CohomologyAlgebra} {M : MinimalModel C} (P : MinimalModelPackage C M) (h : ¬ P.formalityEnsuresTrivialMassey) : carriedRemainder (cohomologyAlgebraAdmissibleClass C) := by
  exact h

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
