import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MaterialsEngineeringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse