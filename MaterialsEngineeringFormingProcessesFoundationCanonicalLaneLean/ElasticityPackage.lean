import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  youngsModulus : Prop
  poissonRatio : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  hookesLawClosed : E.hookesLaw
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.hookesLaw ∧
  E.youngsModulus ∧ E.poissonRatio ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorClosed
    (And.intro Ev.strainTensorClosed
      (And.intro Ev.hookesLawClosed
        (And.intro Ev.youngsModulusClosed
          (And.intro Ev.poissonRatioClosed Ev.yieldCriterionClosed))))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse