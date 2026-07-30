import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  invariantPoints : Prop
  tieLines : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  invariantPointsClosed : P.invariantPoints
  tieLinesClosed : P.tieLines

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.invariantPoints ∧ P.tieLines

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed
    (And.intro E.pressureRangeClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.invariantPointsClosed E.tieLinesClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse