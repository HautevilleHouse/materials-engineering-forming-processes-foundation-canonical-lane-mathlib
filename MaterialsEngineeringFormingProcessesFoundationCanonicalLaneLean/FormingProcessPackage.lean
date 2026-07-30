import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure FormingProcessPackage where
  rollingProcess : Type u
  forgingProcess : Type v
  extrusionProcess : Type w
  flowStress : Prop
  temperatureEffect : Prop
  strainRateSensitivity : Prop

structure FormingProcessEvidence (F : FormingProcessPackage) where
  rollingProcessClosed : F.rollingProcess
  forgingProcessClosed : F.forgingProcess
  extrusionProcessClosed : F.extrusionProcess
  flowStressClosed : F.flowStress
  temperatureEffectClosed : F.temperatureEffect
  strainRateSensitivityClosed : F.strainRateSensitivity

def FormingProcessClosed (F : FormingProcessPackage) : Prop :=
  F.rollingProcess ∧ F.forgingProcess ∧ F.extrusionProcess ∧
  F.flowStress ∧ F.temperatureEffect ∧ F.strainRateSensitivity

theorem forming_process_closed_from_evidence (F : FormingProcessPackage) (E : FormingProcessEvidence F) : FormingProcessClosed F := by
  exact And.intro E.rollingProcessClosed
    (And.intro E.forgingProcessClosed
      (And.intro E.extrusionProcessClosed
        (And.intro E.flowStressClosed
          (And.intro E.temperatureEffectClosed E.strainRateSensitivityClosed))))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse