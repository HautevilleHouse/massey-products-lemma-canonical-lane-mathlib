import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure DifferentialGradedAlgebra (R : Type) [CommRing R] where
  carrier : Type
  differential : carrier → carrier
  product : carrier → carrier → carrier
  dSquared : ∀ x, differential (differential x) = 0
  leibniz : ∀ x y, differential (product x y) = product (differential x) y + (if x = 0 then 0 else product x (differential y))
  associativity : ∀ x y z, product (product x y) z = product x (product y z)
  homologicalGrading : ℤ → carrier → Prop

structure DGAEvidence (D : DifferentialGradedAlgebra ℤ) where
  dSquaredClosed : D.dSquared
  leibnizClosed : D.leibniz
  associativityClosed : D.associativity

def DGAClosed (D : DifferentialGradedAlgebra ℤ) : Prop :=
  D.dSquared ∧ D.leibniz ∧ D.associativity

theorem dga_closed_from_evidence (D : DifferentialGradedAlgebra ℤ) (E : DGAEvidence D) : DGAClosed D :=
  And.intro E.dSquaredClosed (And.intro E.leibnizClosed E.associativityClosed)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse