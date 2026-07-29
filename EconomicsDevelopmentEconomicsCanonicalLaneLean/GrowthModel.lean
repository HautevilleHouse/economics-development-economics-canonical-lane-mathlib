import EconomicsDevelopmentEconomicsCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure GrowthModelPackage (A : AdmissibleClass) where
  productionFunction : ℝ → ℝ → ℝ  -- capital, labor -> output
  capitalAccumulation : ℝ → ℝ → ℝ  -- capital, investment -> future capital
  householdOptimization : Prop
  steadyState : ℝ
  steadyStateClosed : steadyState = 0  -- simplified
  perCapitaGrowth : Prop
  perCapitaGrowthClosed : perCapitaGrowth

structure GrowthModelEvidence {A : AdmissibleClass} (G : GrowthModelPackage A) where
  householdOptimizationClosed : G.householdOptimization
  perCapitaGrowthClosed : G.perCapitaGrowthClosed

def GrowthModelClosed {A : AdmissibleClass} (G : GrowthModelPackage A) : Prop :=
  G.householdOptimization ∧ G.perCapitaGrowth

theorem growth_model_closed_from_evidence {A : AdmissibleClass} (G : GrowthModelPackage A)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.householdOptimizationClosed E.perCapitaGrowthClosed

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse