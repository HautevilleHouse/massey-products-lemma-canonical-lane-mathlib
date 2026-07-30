import canonicalLaneMathlib.AdmissibleClass
import MasseyProductsLemmaCanonicalLaneLean.CohomologyAlgebra

/-!
# Massey Product Structure Package

This package defines the higher-order Massey product operation and
the well-definedness conditions when all lower-order products vanish.
-/

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure MasseyProductStructurePackage {C : CohomologyAlgebraPackage}
    (A : AdmissibleClass) where
  cohomologyClasses : List C.cohomologyRing
  pairwiseCupVanishes : ∀ (i j : Nat) (h : i < j), C.cupProduct (cohomologyClasses.get! i) (cohomologyClasses.get! j) = 0
  tripleMasseyDefined : Prop
  higherMasseyDefined : Prop
  indeterminacy : Prop

structure MasseyProductStructureEvidence {C : CohomologyAlgebraPackage}
    {A : AdmissibleClass} (M : MasseyProductStructurePackage C A) where
  pairwiseCupVanishesClosed : M.pairwiseCupVanishes
  tripleMasseyDefinedClosed : M.tripleMasseyDefined
  higherMasseyDefinedClosed : M.higherMasseyDefined
  indeterminacyClosed : M.indeterminacy

def MasseyProductStructureClosed {C : CohomologyAlgebraPackage}
    {A : AdmissibleClass} (M : MasseyProductStructurePackage C A) : Prop :=
  M.tripleMasseyDefined ∧ M.higherMasseyDefined ∧ M.indeterminacy

theorem massey_product_structure_closed_from_evidence
    {C : CohomologyAlgebraPackage} {A : AdmissibleClass}
    (M : MasseyProductStructurePackage C A) (E : MasseyProductStructureEvidence M) :
    MasseyProductStructureClosed M := by
  exact And.intro E.tripleMasseyDefinedClosed
    (And.intro E.higherMasseyDefinedClosed E.indeterminacyClosed)

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse