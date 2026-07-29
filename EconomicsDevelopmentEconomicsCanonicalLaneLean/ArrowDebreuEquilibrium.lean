import EconomicsDevelopmentEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage (A : AdmissibleClass) where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  endowments : A.object.economy → commoditySpace
  preferences : A.object.economy → (commoditySpace → ℝ)
  utilityMaximization : ∀ (agent : A.object.economy), A.object.budgetSet agent (commoditySpace) → 
    preferences agent (commoditySpace) = A.object.utilityFunction agent
  marketClearing : (∀ x : commoditySpace, (sum over agents: initialEndowments) = (sum over agents: equilibriumAllocation))
  equilibriumExists : Prop
  equilibriumExistsClosed : equilibriumExists

structure ArrowDebreuEquilibriumEvidence {A : AdmissibleClass} (P : ArrowDebreuEquilibriumPackage A) where
  utilityMaximizationClosed : P.utilityMaximization
  marketClearingClosed : P.marketClearing
  equilibriumExistsClosed : P.equilibriumExistsClosed

def ArrowDebreuEquilibriumClosed {A : AdmissibleClass} (P : ArrowDebreuEquilibriumPackage A) : Prop :=
  P.utilityMaximization ∧ P.marketClearing ∧ P.equilibriumExists

theorem arrow_debreu_equilibrium_closed_from_evidence {A : AdmissibleClass} (P : ArrowDebreuEquilibriumPackage A)
    (E : ArrowDebreuEquilibriumEvidence P) : ArrowDebreuEquilibriumClosed P := by
  exact And.intro E.utilityMaximizationClosed (And.intro E.marketClearingClosed E.equilibriumExistsClosed)

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse