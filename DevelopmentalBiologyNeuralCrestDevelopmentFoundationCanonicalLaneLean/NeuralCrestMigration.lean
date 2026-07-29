import cananicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure MigrationPackage where
  epithelialToMesenchymalTransition : Prop
  extracellularMatrixRemodeling : Prop
  chemotacticGuidance : Prop
  contactInhibitionOfLocomotion : Prop
  collectiveCellMigration : Prop

structure MigrationEvidence (M : MigrationPackage) where
  epithelialToMesenchymalTransitionClosed : M.epithelialToMesenchymalTransition
  extracellularMatrixRemodelingClosed : M.extracellularMatrixRemodeling
  chemotacticGuidanceClosed : M.chemotacticGuidance
  contactInhibitionOfLocomotionClosed : M.contactInhibitionOfLocomotion
  collectiveCellMigrationClosed : M.collectiveCellMigration

def MigrationClosed (M : MigrationPackage) : Prop :=
  M.epithelialToMesenchymalTransition ∧ M.extracellularMatrixRemodeling ∧ M.chemotacticGuidance ∧ M.contactInhibitionOfLocomotion ∧ M.collectiveCellMigration

theorem migration_closed_from_evidence (M : MigrationPackage) (E : MigrationEvidence M) : MigrationClosed M := by
  exact And.intro E.epithelialToMesenchymalTransitionClosed (And.intro E.extracellularMatrixRemodelingClosed (And.intro E.chemotacticGuidanceClosed (And.intro E.contactInhibitionOfLocomotionClosed E.collectiveCellMigrationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse