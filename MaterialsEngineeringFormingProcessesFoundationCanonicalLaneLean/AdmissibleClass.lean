import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse