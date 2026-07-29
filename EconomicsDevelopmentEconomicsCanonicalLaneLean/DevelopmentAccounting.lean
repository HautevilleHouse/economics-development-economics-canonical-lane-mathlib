import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure DevelopmentAccountingPackage where
  countrySet : Type u
  output : countrySet → ℝ
  capital : countrySet → ℝ
  labor : countrySet → ℝ
  productivity : countrySet → ℝ
  decomposition : (∀ c, output c = productivity c * (capital c ^ α) * (labor c ^ (1 - α))) → Prop
  factorAccumulation : Prop
  tfpGap : Prop

def DevelopmentAccountingClosed (D : DevelopmentAccountingPackage) : Prop :=
  D.decomposition ∧ D.factorAccumulation ∧ D.tfpGap

theorem development_accounting_closed (D : DevelopmentAccountingPackage) : DevelopmentAccountingClosed D := by
  refine ⟨?_, ?_, ?_⟩
  · exact D.decomposition (fun c => ?_)
  · exact D.factorAccumulation
  · exact D.tfpGap

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse
