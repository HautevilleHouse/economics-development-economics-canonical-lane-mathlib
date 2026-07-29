import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentEconomicsCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.monotonicity ∧ U.convexity

theorem utility_theory_closed_from_evidence
    (U : UtilityTheoryPackage) (Ev : UtilityTheoryEvidence U) :
    UtilityTheoryClosed U := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.transitivityClosed
      (And.intro Ev.continuityClosed
        (And.intro Ev.monotonicityClosed Ev.convexityClosed)))

end EconomicsDevelopmentEconomicsCanonicalLaneLean
end HautevilleHouse