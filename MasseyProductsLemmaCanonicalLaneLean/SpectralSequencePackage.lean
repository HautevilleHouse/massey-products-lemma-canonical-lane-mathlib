import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure SpectralSequencePackage where
  filtration : Type u
  pageStructure : Type v
  differentials : Prop
  convergence : Prop
  masseyLifting : Prop

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  differentialsClosed : S.differentials
  convergenceClosed : S.convergence
  masseyLiftingClosed : S.masseyLifting

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.differentials ∧ S.convergence ∧ S.masseyLifting

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage) (E : SpectralSequenceEvidence S) :
    SpectralSequenceClosed S := by
  exact And.intro E.differentialsClosed (And.intro E.convergenceClosed E.masseyLiftingClosed)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
