import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MasseyProductsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse