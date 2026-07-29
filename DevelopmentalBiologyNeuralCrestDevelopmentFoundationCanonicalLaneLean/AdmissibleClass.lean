import DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure NeuralCrestCell where
  carrier : Type
  morphology : Prop
  migrationCompetence : Prop

structure AdmittedObject where
  cell : NeuralCrestCell
  specificationComplete : Prop
  migrationExecuted : Prop
  conclusion : specificationComplete ∧ migrationExecuted

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralCrestWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
