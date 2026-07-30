import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure HebbianPlasticityModel where
  presynapticActivity : Type
  postsynapticActivity : Type
  synapticChange : Type
  learningRate : Type
  hebbianRule : Prop
  covarianceIntegration : Prop
  weightStabilization : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityModel) where
  hebbianRuleClosed : H.hebbianRule
  covarianceIntegrationClosed : H.covarianceIntegration
  weightStabilizationClosed : H.weightStabilization

def HebbianPlasticityClosed (H : HebbianPlasticityModel) : Prop :=
  H.hebbianRule ∧ H.covarianceIntegration ∧ H.weightStabilization

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityModel) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed (And.intro E.covarianceIntegrationClosed E.weightStabilizationClosed)

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
