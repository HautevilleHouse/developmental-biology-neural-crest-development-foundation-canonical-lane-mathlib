import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure NeuralCrestStrategy where
  strategyName : String
  fitness : Float
  payoffMatrix : List (List Float)

structure EvolutionaryGamePackage (S : NeuralCrestStrategy) where
  replicatorDynamics : Prop
  evolutionaryStableStrategy : Prop
  invasionAnalysis : Prop
  populationGameEquilibrium : Prop

structure EvolutionaryGameEvidence {S : NeuralCrestStrategy} (G : EvolutionaryGamePackage S) where
  replicatorDynamicsClosed : G.replicatorDynamics
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  invasionAnalysisClosed : G.invasionAnalysis
  populationGameEquilibriumClosed : G.populationGameEquilibrium

def EvolutionaryGameClosed {S : NeuralCrestStrategy} (G : EvolutionaryGamePackage S) : Prop :=
  G.replicatorDynamics ∧ G.evolutionaryStableStrategy ∧ G.invasionAnalysis ∧ G.populationGameEquilibrium

theorem evolutionary_game_closed_from_evidence
    {S : NeuralCrestStrategy} (G : EvolutionaryGamePackage S)
    (E : EvolutionaryGameEvidence G) : EvolutionaryGameClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.evolutionaryStableStrategyClosed
      (And.intro E.invasionAnalysisClosed E.populationGameEquilibriumClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse