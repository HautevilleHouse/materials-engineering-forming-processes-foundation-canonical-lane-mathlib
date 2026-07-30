import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModulus : Type w
  hookesLaw : Prop
  stressStrainClosed : Prop
  elasticModulusDefined : Prop
  hookesLawClosed : Prop
  strainCompatibility : Prop
  equilibriumEquations : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainClosedClosed : E.stressStrainClosed
  elasticModulusDefinedClosed : E.elasticModulusDefined
  hookesLawClosedClosed : E.hookesLawClosed
  strainCompatibilityClosed : E.strainCompatibility
  equilibriumEquationsClosed : E.equilibriumEquations

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainClosed ∧ E.elasticModulusDefined ∧ E.hookesLawClosed ∧
  E.strainCompatibility ∧ E.equilibriumEquations

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainClosedClosed
    (And.intro Ev.elasticModulusDefinedClosed
      (And.intro Ev.hookesLawClosedClosed
        (And.intro Ev.strainCompatibilityClosed Ev.equilibriumEquationsClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
