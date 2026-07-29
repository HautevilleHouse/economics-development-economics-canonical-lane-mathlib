import EconomicsDevelopmentCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EconSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconAdmittedObject where
  space : EconSpace
  preferencesNonempty : Prop
  convexityAssumption : Prop
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure EconEndgameState where
  object : EconAdmittedObject

def EconWitnessClosed (O : EconAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse