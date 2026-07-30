import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure HeatTreatmentPackage where
  timeTemperatureTransformation : Type u
  continuousCoolingTransformation : Type v
  phaseTransformationKinetics : Prop
  hardenability : Prop
  quenchMedium : Prop
  heatTreatmentCycle : Prop
  timeTemperatureTransformationDefined : Prop
  continuousCoolingTransformationDefined : Prop
  phaseTransformationKineticsClosed : Prop
  hardenabilityClosed : Prop
  quenchMediumClosed : Prop
  heatTreatmentCycleClosed : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  timeTemperatureTransformationDefinedClosed : H.timeTemperatureTransformationDefined
  continuousCoolingTransformationDefinedClosed : H.continuousCoolingTransformationDefined
  phaseTransformationKineticsClosedClosed : H.phaseTransformationKineticsClosed
  hardenabilityClosedClosed : H.hardenabilityClosed
  quenchMediumClosedClosed : H.quenchMediumClosed
  heatTreatmentCycleClosedClosed : H.heatTreatmentCycleClosed

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.timeTemperatureTransformationDefined ∧ H.continuousCoolingTransformationDefined ∧
  H.phaseTransformationKineticsClosed ∧ H.hardenabilityClosed ∧
  H.quenchMediumClosed ∧ H.heatTreatmentCycleClosed

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage)
    (E : HeatTreatmentEvidence H) : HeatTreatmentClosed H := by
  exact And.intro E.timeTemperatureTransformationDefinedClosed
    (And.intro E.continuousCoolingTransformationDefinedClosed
      (And.intro E.phaseTransformationKineticsClosedClosed
        (And.intro E.hardenabilityClosedClosed
          (And.intro E.quenchMediumClosedClosed E.heatTreatmentCycleClosedClosed))))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
