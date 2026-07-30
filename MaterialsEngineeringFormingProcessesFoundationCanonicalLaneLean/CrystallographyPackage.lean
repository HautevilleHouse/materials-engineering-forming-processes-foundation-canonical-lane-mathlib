import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCellGeometry : Type v
  symmetryGroup : Type w
  xrayDiffractionPattern : Prop
  crystallographicTexture : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellGeometryClosed : C.unitCellGeometry
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern
  crystallographicTextureClosed : C.crystallographicTexture

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellGeometry ∧ C.symmetryGroup ∧
  C.xrayDiffractionPattern ∧ C.crystallographicTexture

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.unitCellGeometryClosed
      (And.intro E.symmetryGroupClosed
        (And.intro E.xrayDiffractionPatternClosed E.crystallographicTextureClosed)))

end MaterialsEngineeringFormingProcessesFoundationCanonicalLaneLean
end HautevilleHouse