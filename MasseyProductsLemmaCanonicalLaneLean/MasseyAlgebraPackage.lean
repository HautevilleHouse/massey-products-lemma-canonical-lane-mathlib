import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyAlgebraPackage where
  cohomologyRing : Type u
  productStructure : Type v
  masseyTripleProduct : Prop
  definingSystem : Prop
  indeterminacy : Prop

structure MasseyAlgebraEvidence (M : MasseyAlgebraPackage) where
  productStructureClosed : M.productStructure
  masseyTripleProductClosed : M.masseyTripleProduct
  definingSystemClosed : M.definingSystem
  indeterminacyClosed : M.indeterminacy

def MasseyAlgebraClosed (M : MasseyAlgebraPackage) : Prop :=
  M.productStructure ∧ M.masseyTripleProduct ∧ M.definingSystem ∧ M.indeterminacy

theorem massey_algebra_closed_from_evidence (M : MasseyAlgebraPackage) (E : MasseyAlgebraEvidence M) :
    MasseyAlgebraClosed M := by
  exact And.intro E.productStructureClosed (And.intro E.masseyTripleProductClosed (And.intro E.definingSystemClosed E.indeterminacyClosed))

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
