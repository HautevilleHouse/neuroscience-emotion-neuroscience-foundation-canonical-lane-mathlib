import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure EmotionRegulationPackage where
  amygdala : Type u
  prefrontalCortex : Type v
  limbicCircuitry : Prop
  emotionAppraisal : Prop
  regulationStrategy : Prop

structure EmotionRegulationEvidence (E : EmotionRegulationPackage) where
  amygdalaClosed : E.amygdala
  prefrontalCortexClosed : E.prefrontalCortex
  limbicCircuitryClosed : E.limbicCircuitry
  emotionAppraisalClosed : E.emotionAppraisal
  regulationStrategyClosed : E.regulationStrategy

def EmotionRegulationClosed (E : EmotionRegulationPackage) : Prop :=
  E.amygdala ∧ E.prefrontalCortex ∧ E.limbicCircuitry ∧ E.emotionAppraisal ∧ E.regulationStrategy

theorem emotion_regulation_closed_from_evidence (E : EmotionRegulationPackage) (Ev : EmotionRegulationEvidence E) : EmotionRegulationClosed E := by
  exact And.intro Ev.amygdalaClosed (And.intro Ev.prefrontalCortexClosed (And.intro Ev.limbicCircuitryClosed (And.intro Ev.emotionAppraisalClosed Ev.regulationStrategyClosed)))

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
