import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.admissible A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact AdmittedObject.admissible A.object

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse