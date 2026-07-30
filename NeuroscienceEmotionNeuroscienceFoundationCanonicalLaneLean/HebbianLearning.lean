import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticNeuron : Type
  postsynapticNeuron : Type
  synapticWeight : Type
  learningRate : ℝ
  correlationRule : (presynapticNeuron → postsynapticNeuron) → Prop
  weightUpdateEquation : Prop
  stabilityCondition : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  correlationRuleClosed : H.correlationRule
  weightUpdateEquationClosed : H.weightUpdateEquation
  stabilityConditionClosed : H.stabilityCondition

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.correlationRule ∧ H.weightUpdateEquation ∧ H.stabilityCondition

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.correlationRuleClosed
    (And.intro E.weightUpdateEquationClosed E.stabilityConditionClosed)

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse