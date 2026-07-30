import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure FormingProcessesPackage where
  metalFormingOperation : Type u
  plasticDeformation : Prop
  yieldCriterion : Prop
  formingLimitDiagram : Prop
  processParameters : Prop
  plasticDeformationClosed : Prop
  yieldCriterionDefined : Prop
  formingLimitDiagramClosed : Prop
  processParametersClosed : Prop

structure FormingProcessesEvidence (F : FormingProcessesPackage) where
  plasticDeformationClosedClosed : F.plasticDeformationClosed
  yieldCriterionDefinedClosed : F.yieldCriterionDefined
  formingLimitDiagramClosedClosed : F.formingLimitDiagramClosed
  processParametersClosedClosed : F.processParametersClosed

def FormingProcessesClosed (F : FormingProcessesPackage) : Prop :=
  F.plasticDeformationClosed ∧ F.yieldCriterionDefined ∧
  F.formingLimitDiagramClosed ∧ F.processParametersClosed

theorem forming_processes_closed_from_evidence (F : FormingProcessesPackage)
    (E : FormingProcessesEvidence F) : FormingProcessesClosed F := by
  exact And.intro E.plasticDeformationClosedClosed
    (And.intro E.yieldCriterionDefinedClosed
      (And.intro E.formingLimitDiagramClosedClosed E.processParametersClosedClosed))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
