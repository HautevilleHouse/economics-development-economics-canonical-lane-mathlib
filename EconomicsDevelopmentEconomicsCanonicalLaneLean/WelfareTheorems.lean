import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure WelfareTheoremsPackage where
  competitiveEquilibrium : Prop
  paretoOptimum : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  marketFailures : Prop
  lumpSumTransfers : Prop

structure WelfareTheoremsEvidence (W : WelfareTheoremsPackage) where
  competitiveEquilibriumClosed : W.competitiveEquilibrium
  paretoOptimumClosed : W.paretoOptimum
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem
  marketFailuresClosed : W.marketFailures
  lumpSumTransfersClosed : W.lumpSumTransfers

def WelfareTheoremsClosed (W : WelfareTheoremsPackage) : Prop :=
  W.competitiveEquilibrium ∧ W.paretoOptimum ∧ W.firstWelfareTheorem ∧
  W.secondWelfareTheorem ∧ W.marketFailures ∧ W.lumpSumTransfers

theorem welfare_theorems_closed_from_evidence
    (W : WelfareTheoremsPackage) (Ev : WelfareTheoremsEvidence W) :
    WelfareTheoremsClosed W := by
  exact And.intro Ev.competitiveEquilibriumClosed
    (And.intro Ev.paretoOptimumClosed
      (And.intro Ev.firstWelfareTheoremClosed
        (And.intro Ev.secondWelfareTheoremClosed
          (And.intro Ev.marketFailuresClosed Ev.lumpSumTransfersClosed))))

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse