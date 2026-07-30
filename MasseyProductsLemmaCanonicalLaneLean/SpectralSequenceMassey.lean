import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MasseyProductsLemmaCanonicalLaneLean.DifferentialGradedAlgebra

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure SpectralSequenceMassey (D : DifferentialGradedAlgebra ℤ) where
  filtration : ℕ → D.carrier → Prop
  page : ℕ → Type
  differentialPage : ℕ → (page 0 → page 1)
  convergence : Prop

def SpectralSequenceMasseyDefined (S : SpectralSequenceMassey D) : Prop :=
  S.convergence

theorem spectral_sequence_massey_converges (S : SpectralSequenceMassey D) (h : S.convergence) : SpectralSequenceMasseyDefined S := h

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse