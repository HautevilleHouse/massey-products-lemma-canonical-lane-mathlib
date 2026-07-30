import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductVanishingTheorem

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyAdmittedObject where
  vanishingClosed : Prop
  vanishingClosedTerm : vanishingClosed

structure MasseyEndgameState where
  object : MasseyAdmittedObject

def MasseyWitnessClosed (O : MasseyAdmittedObject) : Prop :=
  O.vanishingClosed

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
