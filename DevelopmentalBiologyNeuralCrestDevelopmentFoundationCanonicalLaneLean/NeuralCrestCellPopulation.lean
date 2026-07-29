import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure NeuralCrestCellPopulation where
  origin : Type u
  migrationPath : Type v
  multipotency : Prop
  delaminationTiming : Prop
  migrationFrontProgression : Prop
  differentiationCommitment : Prop
  populationDensity : Prop

source

structure NeuralCrestCellPopulationEvidence (N : NeuralCrestCellPopulation) where
  originClosed : N.origin
  migrationPathClosed : N.migrationPath
  multipotencyClosed : N.multipotency
  delaminationTimingClosed : N.delaminationTiming
  migrationFrontProgressionClosed : N.migrationFrontProgression
  differentiationCommitmentClosed : N.differentiationCommitment
  populationDensityClosed : N.populationDensity

def NeuralCrestCellPopulationClosed (N : NeuralCrestCellPopulation) : Prop :=
  N.origin ∧ N.migrationPath ∧ N.multipotency ∧ N.delaminationTiming ∧ N.migrationFrontProgression ∧ N.differentiationCommitment ∧ N.populationDensity

theorem neural_crest_cell_population_closed_from_evidence
    (N : NeuralCrestCellPopulation) (E : NeuralCrestCellPopulationEvidence N) :
    NeuralCrestCellPopulationClosed N := by
  exact And.intro E.originClosed
    (And.intro E.migrationPathClosed
      (And.intro E.multipotencyClosed
        (And.intro E.delaminationTimingClosed
          (And.intro E.migrationFrontProgressionClosed
            (And.intro E.differentiationCommitmentClosed
              E.populationDensityClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
