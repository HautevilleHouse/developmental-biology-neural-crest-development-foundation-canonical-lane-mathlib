import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure EpithelialMesenchymalTransition where
  cellPolarityLoss : Prop
  adhesionMoleculeSwitch : Prop
  cytoskeletalRearrangement : Prop
  extracellularMatrixRemodeling : Prop
  migrationCompetence : Prop
  emtTranscriptionFactors : Prop
  reversibility : Prop

structure EpithelialMesenchymalTransitionEvidence (E : EpithelialMesenchymalTransition) where
  cellPolarityLossClosed : E.cellPolarityLoss
  adhesionMoleculeSwitchClosed : E.adhesionMoleculeSwitch
  cytoskeletalRearrangementClosed : E.cytoskeletalRearrangement
  extracellularMatrixRemodelingClosed : E.extracellularMatrixRemodeling
  migrationCompetenceClosed : E.migrationCompetence
  emtTranscriptionFactorsClosed : E.emtTranscriptionFactors
  reversibilityClosed : E.reversibility

def EpithelialMesenchymalTransitionClosed (E : EpithelialMesenchymalTransition) : Prop :=
  E.cellPolarityLoss ∧ E.adhesionMoleculeSwitch ∧ E.cytoskeletalRearrangement ∧ E.extracellularMatrixRemodeling ∧ E.migrationCompetence ∧ E.emtTranscriptionFactors ∧ E.reversibility

theorem epithelial_mesenchymal_transition_closed_from_evidence
    (E : EpithelialMesenchymalTransition) (Ev : EpithelialMesenchymalTransitionEvidence E) :
    EpithelialMesenchymalTransitionClosed E := by
  exact And.intro Ev.cellPolarityLossClosed
    (And.intro Ev.adhesionMoleculeSwitchClosed
      (And.intro Ev.cytoskeletalRearrangementClosed
        (And.intro Ev.extracellularMatrixRemodelingClosed
          (And.intro Ev.migrationCompetenceClosed
            (And.intro Ev.emtTranscriptionFactorsClosed
              Ev.reversibilityClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
