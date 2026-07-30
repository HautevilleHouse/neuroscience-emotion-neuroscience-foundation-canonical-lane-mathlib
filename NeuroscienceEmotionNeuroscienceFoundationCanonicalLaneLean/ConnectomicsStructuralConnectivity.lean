import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean

structure ConnectomicsStructuralConnectivityPackage where
  wholeBrainConnectome : Prop
  tractographyReconstruction : Prop
  connectivityMatrix : Prop
  networkTopologyMetrics : Prop
  interhemisphericConnections : Prop

structure ConnectomicsStructuralConnectivityEvidence (C : ConnectomicsStructuralConnectivityPackage) where
  wholeBrainConnectomeClosed : C.wholeBrainConnectome
  tractographyReconstructionClosed : C.tractographyReconstruction
  connectivityMatrixClosed : C.connectivityMatrix
  networkTopologyMetricsClosed : C.networkTopologyMetrics
  interhemisphericConnectionsClosed : C.interhemisphericConnections

def ConnectomicsStructuralConnectivityClosed (C : ConnectomicsStructuralConnectivityPackage) : Prop :=
  C.wholeBrainConnectome ∧ C.tractographyReconstruction ∧
  C.connectivityMatrix ∧ C.networkTopologyMetrics ∧
  C.interhemisphericConnections

theorem connectomics_structural_connectivity_closed_from_evidence
    (C : ConnectomicsStructuralConnectivityPackage)
    (E : ConnectomicsStructuralConnectivityEvidence C) :
    ConnectomicsStructuralConnectivityClosed C := by
  exact And.intro E.wholeBrainConnectomeClosed
    (And.intro E.tractographyReconstructionClosed
      (And.intro E.connectivityMatrixClosed
        (And.intro E.networkTopologyMetricsClosed E.interhemisphericConnectionsClosed)))

end NeuroscienceEmotionNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse