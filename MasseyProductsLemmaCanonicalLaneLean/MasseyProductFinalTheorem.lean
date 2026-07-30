import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductBridgeLemmas
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductGateLemmas
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductAdmittedObject

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

def ConstrainedMasseyProductClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_massey_product_endgame (A : AdmissibleClass) : ConstrainedMasseyProductClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
