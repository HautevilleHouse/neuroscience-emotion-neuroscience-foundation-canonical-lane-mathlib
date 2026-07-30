import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membraneVoltage : Type u → ℝ
  ionChannelStates : Type u → ℝ × ℝ × ℝ
  capacitance : ℝ
  conductances : ℝ × ℝ × ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  differentialEquations : Prop
  actionPotentialExistence : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  differentialEquationsClosed : H.differentialEquations
  actionPotentialExistenceClosed : H.actionPotentialExistence

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.differentialEquations ∧ H.actionPotentialExistence

theorem hodgkin_huxley_equations_closed_from_evidence
    (H : HodgkinHuxleyEquationsPackage) (E : HodgkinHuxleyEquationsEvidence H) :
    HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.differentialEquationsClosed E.actionPotentialExistenceClosed

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
