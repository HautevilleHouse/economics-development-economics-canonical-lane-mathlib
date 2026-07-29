import EconomicsDevelopmentEconomicsCanonicalLaneLean.GrowthModel

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure AssetPricingPackage (A : AdmissibleClass) where
  stochasticDiscountFactor : Type u
  assetPayoff : Type v → ℝ
  pricingEquation : (asset : Type v) → ℝ = (expected value of payoff under SDF)
  noArbitrage : Prop
  noArbitrageClosed : noArbitrage
  riskFreeRate : ℝ
  riskFreeRateClosed : riskFreeRate = 0.05

structure AssetPricingEvidence {A : AdmissibleClass} (P : AssetPricingPackage A) where
  noArbitrageClosed : P.noArbitrageClosed
  riskFreeRateClosed : P.riskFreeRateClosed

def AssetPricingClosed {A : AdmissibleClass} (P : AssetPricingPackage A) : Prop :=
  P.noArbitrage ∧ P.riskFreeRate = 0.05

theorem asset_pricing_closed_from_evidence {A : AdmissibleClass} (P : AssetPricingPackage A)
    (E : AssetPricingEvidence P) : AssetPricingClosed P := by
  exact And.intro E.noArbitrageClosed E.riskFreeRateClosed

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse