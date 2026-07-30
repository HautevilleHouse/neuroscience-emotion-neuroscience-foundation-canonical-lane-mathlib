import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure NeurotransmitterModel where
  transmitterType : Type
  releaseDynamics : Type
  receptorBinding : Type
  reuptakeMechanism : Type
  concentrationEquation : Prop
  receptorKinetics : Prop
  reuptakeRate : Prop

structure NeurotransmitterEvidence (N : NeurotransmitterModel) where
  concentrationEquationClosed : N.concentrationEquation
  receptorKineticsClosed : N.receptorKinetics
  reuptakeRateClosed : N.reuptakeRate

def NeurotransmitterClosed (N : NeurotransmitterModel) : Prop :=
  N.concentrationEquation ∧ N.receptorKinetics ∧ N.reuptakeRate

theorem neurotransmitter_closed_from_evidence (N : NeurotransmitterModel) (E : NeurotransmitterEvidence N) : NeurotransmitterClosed N := by
  exact And.intro E.concentrationEquationClosed (And.intro E.receptorKineticsClosed E.reuptakeRateClosed)

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
