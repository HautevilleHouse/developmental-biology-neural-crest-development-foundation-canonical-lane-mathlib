import DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

def NeuralCrestWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralCrestWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
