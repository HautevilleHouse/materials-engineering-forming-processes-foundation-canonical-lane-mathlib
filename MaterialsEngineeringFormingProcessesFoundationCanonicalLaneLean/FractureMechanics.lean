import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Type v
  crackTipPlasticity : Prop
  criticalStressFactor : Prop
  fatigueCrackGrowth : Prop
  stressIntensityFactorDefined : Prop
  fractureToughnessDefined : Prop
  crackTipPlasticityClosed : Prop
  criticalStressFactorClosed : Prop
  fatigueCrackGrowthClosed : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorDefinedClosed : F.stressIntensityFactorDefined
  fractureToughnessDefinedClosed : F.fractureToughnessDefined
  crackTipPlasticityClosedClosed : F.crackTipPlasticityClosed
  criticalStressFactorClosedClosed : F.criticalStressFactorClosed
  fatigueCrackGrowthClosedClosed : F.fatigueCrackGrowthClosed

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactorDefined ∧ F.fractureToughnessDefined ∧
  F.crackTipPlasticityClosed ∧ F.criticalStressFactorClosed ∧
  F.fatigueCrackGrowthClosed

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorDefinedClosed
    (And.intro E.fractureToughnessDefinedClosed
      (And.intro E.crackTipPlasticityClosedClosed
        (And.intro E.criticalStressFactorClosedClosed E.fatigueCrackGrowthClosedClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
