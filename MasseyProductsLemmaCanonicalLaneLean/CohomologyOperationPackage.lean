import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure CohomologyOperationPackage where
  steenrodSquares : Prop
  powerOperations : Prop
  ademRelations : Prop
  cartanFormula : Prop
  masseyCompatibility : Prop

structure CohomologyOperationEvidence (C : CohomologyOperationPackage) where
  steenrodSquaresClosed : C.steenrodSquares
  powerOperationsClosed : C.powerOperations
  ademRelationsClosed : C.ademRelations
  cartanFormulaClosed : C.cartanFormula
  masseyCompatibilityClosed : C.masseyCompatibility

def CohomologyOperationClosed (C : CohomologyOperationPackage) : Prop :=
  C.steenrodSquares ∧ C.powerOperations ∧ C.ademRelations ∧ C.cartanFormula ∧ C.masseyCompatibility

theorem cohomology_operation_closed_from_evidence (C : CohomologyOperationPackage) (E : CohomologyOperationEvidence C) :
    CohomologyOperationClosed C := by
  exact And.intro E.steenrodSquaresClosed (And.intro E.powerOperationsClosed (And.intro E.ademRelationsClosed (And.intro E.cartanFormulaClosed E.masseyCompatibilityClosed)))

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse
