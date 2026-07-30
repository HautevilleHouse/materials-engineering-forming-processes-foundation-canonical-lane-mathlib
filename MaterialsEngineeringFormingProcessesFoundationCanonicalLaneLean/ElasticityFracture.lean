import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure ElasticityFracturePackage where
  stressStrainRelation : Prop
  youngModulus : Prop
  poissonRatio : Prop
  yieldCriterion : Prop
  fractureToughness : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  yieldCriterionClosed : E.yieldCriterion
  fractureToughnessClosed : E.fractureToughness

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressStrainRelation ∧ E.youngModulus ∧ E.poissonRatio ∧ E.yieldCriterion ∧ E.fractureToughness

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.youngModulusClosed
      (And.intro Ev.poissonRatioClosed
        (And.intro Ev.yieldCriterionClosed Ev.fractureToughnessClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse