import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure EconomicsAdmittedObject where
  economy : Type
  budgetSet : economy → economy → Prop
  utilityFunction : economy → ℝ
  equilibriumAllocation : economy → Prop

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.equilibriumAllocation A.object.economy ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse