import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Type u
  gibbsFreeEnergy : Type v
  leverRule : Prop
  eutecticPoint : Prop
  peritecticTransition : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule
  eutecticPointClosed : P.eutecticPoint
  peritecticTransitionClosed : P.peritecticTransition

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.leverRule ∧
  P.eutecticPoint ∧ P.peritecticTransition

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.leverRuleClosed
        (And.intro E.eutecticPointClosed E.peritecticTransitionClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse