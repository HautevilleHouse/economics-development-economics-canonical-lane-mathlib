import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  laborGrowth : Prop
  savingsRate : Prop
  steadyState : Prop
  convergenceRate : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  capitalAccumulationClosed : G.capitalAccumulation
  laborGrowthClosed : G.laborGrowth
  savingsRateClosed : G.savingsRate
  steadyStateClosed : G.steadyState
  convergenceRateClosed : G.convergenceRate

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.capitalAccumulation ∧ G.laborGrowth ∧ G.savingsRate ∧ G.steadyState ∧ G.convergenceRate

theorem growth_model_closed_from_evidence
    (G : GrowthModelPackage) (Ev : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro Ev.capitalAccumulationClosed
    (And.intro Ev.laborGrowthClosed
      (And.intro Ev.savingsRateClosed
        (And.intro Ev.steadyStateClosed Ev.convergenceRateClosed)))

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse