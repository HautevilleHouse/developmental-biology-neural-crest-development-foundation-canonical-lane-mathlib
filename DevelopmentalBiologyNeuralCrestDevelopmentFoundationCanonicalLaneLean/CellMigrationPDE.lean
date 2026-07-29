import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure CellMigrationPDEPackage (G : DevelopmentalBiologyFoundation) where
  timeParameter : Type u
  cellDensityField : timeParameter → Type v
  initialDensityMatches : Prop
  differentiableDensityFamily : Prop
  chemotaxisAdvectionEquation : Prop
  maximalTimeInterval : Prop

structure CellMigrationPDEEvidence {G : DevelopmentalBiologyFoundation}
    (F : CellMigrationPDEPackage G) where
  initialDensityMatchesClosed : F.initialDensityMatches
  differentiableDensityFamilyClosed : F.differentiableDensityFamily
  chemotaxisAdvectionEquationClosed : F.chemotaxisAdvectionEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def CellMigrationPDEClosed {G : DevelopmentalBiologyFoundation}
    (F : CellMigrationPDEPackage G) : Prop :=
  F.initialDensityMatches ∧
  F.differentiableDensityFamily ∧
  F.chemotaxisAdvectionEquation ∧
  F.maximalTimeInterval

theorem cell_migration_pde_closed_from_evidence
    {G : DevelopmentalBiologyFoundation} (F : CellMigrationPDEPackage G)
    (E : CellMigrationPDEEvidence F) : CellMigrationPDEClosed F := by
  exact And.intro E.initialDensityMatchesClosed
    (And.intro E.differentiableDensityFamilyClosed
      (And.intro E.chemotaxisAdvectionEquationClosed E.maximalTimeIntervalClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse