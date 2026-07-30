import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  isotropicHookesLaw : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  constitutiveLawClosed : E.constitutiveLaw
  isotropicHookesLawClosed : E.isotropicHookesLaw

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.constitutiveLaw ∧ E.isotropicHookesLaw

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorClosed (And.intro Ev.strainTensorClosed (And.intro Ev.constitutiveLawClosed Ev.isotropicHookesLawClosed))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse