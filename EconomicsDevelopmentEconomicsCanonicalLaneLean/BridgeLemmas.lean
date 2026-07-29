import canonicalLaneMathlib.AdmissibleClass
import EconomicsDevelopmentEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumAllocation A.object.economy

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h : A.object.equilibriumAllocation A.object.economy := A.object.equilibriumAllocation A.object.economy
  exact h

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse