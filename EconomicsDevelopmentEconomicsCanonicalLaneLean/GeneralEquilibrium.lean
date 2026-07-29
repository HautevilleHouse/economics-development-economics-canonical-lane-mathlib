import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomics

structure ArrowDebreuEconomy where
  commoditySpace : Type u
  priceSpace : Type v
  consumerSet : Type w
  producerSet : Type z
  preferences : consumerSet -> commoditySpace -> Prop
  endowments : consumerSet -> commoditySpace
  productionSets : producerSet -> Set commoditySpace
  equilibriumPrice : priceSpace
  allocation : consumerSet -> commoditySpace
  marketClearing : Prop
  utilityMaximization : Prop
  profitMaximization : Prop
  equilibriumPriceTerm : equilibriumPrice
  marketClearingTerm : marketClearing
  utilityMaximizationTerm : utilityMaximization
  profitMaximizationTerm : profitMaximization

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  marketClearingClosed : E.marketClearing
  utilityMaximizationClosed : E.utilityMaximization
  profitMaximizationClosed : E.profitMaximization

def ArrowDebreuClosed (E : ArrowDebreuEconomy) : Prop :=
  E.marketClearing ∧ E.utilityMaximization ∧ E.profitMaximization

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEconomy)
    (Ev : ArrowDebreuEvidence E) : ArrowDebreuClosed E := by
  exact And.intro Ev.marketClearingClosed
    (And.intro Ev.utilityMaximizationClosed Ev.profitMaximizationClosed)

end EconomicsDevelopmentEconomics
end HautevilleHouse