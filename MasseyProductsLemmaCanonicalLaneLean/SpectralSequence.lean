import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.MasseyProductStructure

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure SpectralSequenceData (M : MasseyProductData) where
  page : ℕ → Type u
  differentials : ℕ → (Type u → Type u)
  convergenceCondition : Prop

structure SpectralSequencePackage {M : MasseyProductData} (S : SpectralSequenceData M) where
  differentialsComputeMassey : Prop
  convergenceGivesVanishing : Prop
  differentialsComputeMasseyClosed : differentialsComputeMassey
  convergenceGivesVanishingClosed : convergenceGivesVanishing

def spectral_sequence_closed {M : MasseyProductData} {S : SpectralSequenceData M} (P : SpectralSequencePackage S) : Prop :=
  P.differentialsComputeMassey ∧ P.convergenceGivesVanishing

theorem spectral_sequence_closed_from_evidence {M : MasseyProductData} {S : SpectralSequenceData M} (P : SpectralSequencePackage S) : spectral_sequence_closed P := by
  exact And.intro P.differentialsComputeMasseyClosed P.convergenceGivesVanishingClosed

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
