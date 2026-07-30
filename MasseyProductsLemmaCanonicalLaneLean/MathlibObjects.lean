import MasseyProductsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MasseyProductsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MasseySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MasseyAdmittedObject where
  space : MasseySpace
  cohomologyRings : Prop
  masseyProductDefined : Prop
  vanishingCondition : Prop
  conclusion : vanishingCondition

structure MasseyEndgameState where
  object : MasseyAdmittedObject

def MasseyWitnessClosed (O : MasseyAdmittedObject) : Prop :=
  O.vanishingCondition

end MasseyProductsLemmaCanonicalLaneLean
end HautevilleHouse