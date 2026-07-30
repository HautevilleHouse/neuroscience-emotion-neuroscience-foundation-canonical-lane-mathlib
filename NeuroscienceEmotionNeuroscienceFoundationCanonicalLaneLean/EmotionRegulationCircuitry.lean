import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure EmotionRegulationCircuitryPackage where
  amygdalaPrefrontalPathways : Prop
  limbicSystemDynamics : Prop
  cognitiveReappraisalMechanism : Prop
  emotionalValenceEncoding : Prop
  autonomicNervousSystemCoupling : Prop

structure EmotionRegulationCircuitryEvidence (E : EmotionRegulationCircuitryPackage) where
  amygdalaPrefrontalPathwaysClosed : E.amygdalaPrefrontalPathways
  limbicSystemDynamicsClosed : E.limbicSystemDynamics
  cognitiveReappraisalMechanismClosed : E.cognitiveReappraisalMechanism
  emotionalValenceEncodingClosed : E.emotionalValenceEncoding
  autonomicNervousSystemCouplingClosed : E.autonomicNervousSystemCoupling

def EmotionRegulationCircuitryClosed (E : EmotionRegulationCircuitryPackage) : Prop :=
  E.amygdalaPrefrontalPathways ∧ E.limbicSystemDynamics ∧
  E.cognitiveReappraisalMechanism ∧ E.emotionalValenceEncoding ∧
  E.autonomicNervousSystemCoupling

theorem emotion_regulation_circuitry_closed_from_evidence
    (E : EmotionRegulationCircuitryPackage)
    (Ev : EmotionRegulationCircuitryEvidence E) :
    EmotionRegulationCircuitryClosed E := by
  exact And.intro Ev.amygdalaPrefrontalPathwaysClosed
    (And.intro Ev.limbicSystemDynamicsClosed
      (And.intro Ev.cognitiveReappraisalMechanismClosed
        (And.intro Ev.emotionalValenceEncodingClosed Ev.autonomicNervousSystemCouplingClosed)))

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse