import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure NeuralCrestEpidemiologicalState where
  susceptibleCount : Nat
  exposedCount : Nat
  infectedCount : Nat
  recoveredCount : Nat
  migrationRate : Float

structure EpidemiologyPackage (E : NeuralCrestEpidemiologicalState) where
  compartmentModel : Prop
  diseaseFreeEquilibrium : Prop
  basicReproductionNumber : Prop
  controlStrategies : Prop

structure EpidemiologyEvidence {E : NeuralCrestEpidemiologicalState} (P : EpidemiologyPackage E) where
  compartmentModelClosed : P.compartmentModel
  diseaseFreeEquilibriumClosed : P.diseaseFreeEquilibrium
  basicReproductionNumberClosed : P.basicReproductionNumber
  controlStrategiesClosed : P.controlStrategies

def EpidemiologyClosed {E : NeuralCrestEpidemiologicalState} (P : EpidemiologyPackage E) : Prop :=
  P.compartmentModel ∧ P.diseaseFreeEquilibrium ∧ P.basicReproductionNumber ∧ P.controlStrategies

theorem epidemiology_closed_from_evidence
    {E : NeuralCrestEpidemiologicalState} (P : EpidemiologyPackage E)
    (Ev : EpidemiologyEvidence P) : EpidemiologyClosed P := by
  exact And.intro Ev.compartmentModelClosed
    (And.intro Ev.diseaseFreeEquilibriumClosed
      (And.intro Ev.basicReproductionNumberClosed Ev.controlStrategiesClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse