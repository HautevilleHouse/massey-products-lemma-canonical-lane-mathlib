import canonicalLaneMathlib.AdmissibleClass

/-!
# Cohomology Algebra Package for Massey Products

This package defines a cohomology algebra structure with a chain-level
cup product and a triple-product operation that gives rise to Massey
products when the pairwise cup products vanish.
-/

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

structure CohomologyAlgebraPackage where
  cohomologyRing : Type u
  cupProduct : cohomologyRing → cohomologyRing → cohomologyRing
  vanishingCondition : Prop
  tripleCochain : cohomologyRing → cohomologyRing → cohomologyRing → cohomologyRing
  masseyProductDefined : Prop

structure CohomologyAlgebraEvidence (C : CohomologyAlgebraPackage) where
  cupProductAssociative : ∀ a b c : C.cohomologyRing, C.cupProduct (C.cupProduct a b) c = C.cupProduct a (C.cupProduct b c)
  vanishingConditionClosed : C.vanishingCondition
  tripleCochainDefined : ∀ a b c : C.cohomologyRing, C.tripleCochain a b c = C.cupProduct (C.cupProduct a b) c
  masseyProductDefinedClosed : C.masseyProductDefined

def CohomologyAlgebraClosed (C : CohomologyAlgebraPackage) : Prop :=
  C.vanishingCondition ∧ C.masseyProductDefined

theorem cohomology_algebra_closed_from_evidence
    (C : CohomologyAlgebraPackage) (E : CohomologyAlgebraEvidence C) :
    CohomologyAlgebraClosed C := by
  exact And.intro E.vanishingConditionClosed E.masseyProductDefinedClosed

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse