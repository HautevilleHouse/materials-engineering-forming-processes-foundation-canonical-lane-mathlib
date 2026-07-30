import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure FormingProcessesPackage where
  processType : String
  deformationZone : Type u
  strainRate : Type v
  flowStress : Type w
  conservationLaws : Prop
  constitutiveModel : Prop
  frictionModel : Prop
  heatTransfer : Prop
  microstructuralEvolution : Prop
  defectPrediction : Prop

structure FormingProcessesEvidence (F : FormingProcessesPackage) where
  conservationLawsClosed : F.conservationLaws
  constitutiveModelClosed : F.constitutiveModel
  frictionModelClosed : F.frictionModel
  heatTransferClosed : F.heatTransfer

def FormingProcessesClosed (F : FormingProcessesPackage) : Prop :=
  F.conservationLaws ∧ F.constitutiveModel ∧ F.frictionModel ∧ F.heatTransfer

theorem forming_processes_closed_from_evidence (F : FormingProcessesPackage) (E : FormingProcessesEvidence F) :
    FormingProcessesClosed F := by
  exact And.intro E.conservationLawsClosed
    (And.intro E.constitutiveModelClosed
      (And.intro E.frictionModelClosed E.heatTransferClosed))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
