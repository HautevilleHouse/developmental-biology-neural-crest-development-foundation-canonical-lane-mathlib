import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure CellMigrationGuidance where
  chemotaxis : Prop
  haptotaxis : Prop
  contactInhibition : Prop
  cellCellRepulsion : Prop
  guidanceCueIntegration : Prop
  pathPersistence : Prop
  collectiveMigration : Prop

structure CellMigrationGuidanceEvidence (C : CellMigrationGuidance) where
  chemotaxisClosed : C.chemotaxis
  haptotaxisClosed : C.haptotaxis
  contactInhibitionClosed : C.contactInhibition
  cellCellRepulsionClosed : C.cellCellRepulsion
  guidanceCueIntegrationClosed : C.guidanceCueIntegration
  pathPersistenceClosed : C.pathPersistence
  collectiveMigrationClosed : C.collectiveMigration

def CellMigrationGuidanceClosed (C : CellMigrationGuidance) : Prop :=
  C.chemotaxis ∧ C.haptotaxis ∧ C.contactInhibition ∧ C.cellCellRepulsion ∧ C.guidanceCueIntegration ∧ C.pathPersistence ∧ C.collectiveMigration

theorem cell_migration_guidance_closed_from_evidence
    (C : CellMigrationGuidance) (E : CellMigrationGuidanceEvidence C) :
    CellMigrationGuidanceClosed C := by
  exact And.intro E.chemotaxisClosed
    (And.intro E.haptotaxisClosed
      (And.intro E.contactInhibitionClosed
        (And.intro E.cellCellRepulsionClosed
          (And.intro E.guidanceCueIntegrationClosed
            (And.intro E.pathPersistenceClosed
              E.collectiveMigrationClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
