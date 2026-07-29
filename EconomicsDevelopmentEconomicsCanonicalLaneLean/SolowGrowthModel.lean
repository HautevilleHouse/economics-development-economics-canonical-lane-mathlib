import EconomicsDevelopmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure SolowGrowthModelPackage where
  capitalStock : Type
  laborForce : Type
  productionFunction : capitalStock → laborForce → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateCondition : Prop
  convergenceProof : steadyStateCondition

structure SolowGrowthModelEvidence (S : SolowGrowthModelPackage) where
  steadyStateConditionClosed : S.steadyStateCondition

def SolowGrowthModelClosed (S : SolowGrowthModelPackage) : Prop :=
  S.steadyStateCondition

theorem solow_growth_model_closed_from_evidence
    (S : SolowGrowthModelPackage) (Ev : SolowGrowthModelEvidence S) :
    SolowGrowthModelClosed S := by
  exact Ev.steadyStateConditionClosed

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse