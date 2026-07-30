import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

def ConstrainedFormingProcessesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_forming_processes_endgame (A : AdmissibleClass) :
    ConstrainedFormingProcessesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse
