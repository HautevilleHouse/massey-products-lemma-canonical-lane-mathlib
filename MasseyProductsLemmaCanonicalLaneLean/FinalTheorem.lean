import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductStructure

/-!
# Final Theorem: Massey Products Lemma Closure

This file defines the constrained Massey product closure and proves the endgame.
-/

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

def ConstrainedMasseyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_massey_endgame (A : AdmissibleClass) :
    ConstrainedMasseyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse