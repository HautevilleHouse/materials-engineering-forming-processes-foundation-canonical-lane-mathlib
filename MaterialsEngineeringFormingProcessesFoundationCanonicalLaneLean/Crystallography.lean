import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type
  unitCell : Prop
  millerIndices : Prop
  symmetryGroup : Prop
  xrdPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellClosed : C.unitCell
  millerIndicesClosed : C.millerIndices
  symmetryGroupClosed : C.symmetryGroup
  xrdPatternClosed : C.xrdPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCell ∧ C.millerIndices ∧ C.symmetryGroup ∧ C.xrdPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.unitCellClosed
      (And.intro E.millerIndicesClosed
        (And.intro E.symmetryGroupClosed E.xrdPatternClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse