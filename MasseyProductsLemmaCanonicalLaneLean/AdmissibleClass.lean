import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyAdmittedObject where
  dga : DifferentialGradedAlgebra ℤ
  triple : MasseyTripleProduct dga
  uniqueness : MasseyProductUniqueness dga
  spectralSequence : SpectralSequenceMassey dga
  conclusion : Prop

structure AdmissibleClass where
  object : MasseyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse