import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean.DevelopmentFoundationPackage

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DevelopmentFoundationClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNeuralCrestDevelopmentFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_crest_development_foundation_endgame (A : AdmissibleClass) : ConstrainedNeuralCrestDevelopmentFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse