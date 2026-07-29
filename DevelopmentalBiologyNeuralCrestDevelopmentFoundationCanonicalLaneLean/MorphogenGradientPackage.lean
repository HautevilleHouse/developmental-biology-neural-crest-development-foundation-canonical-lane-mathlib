import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  source : Type v
  gradientProfile : Prop
  signalTransduction : Prop
  cellularResponse : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientProfileClosed : M.gradientProfile
  signalTransductionClosed : M.signalTransduction
  cellularResponseClosed : M.cellularResponse

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientProfile ∧ M.signalTransduction ∧ M.cellularResponse

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.gradientProfileClosed
    (And.intro E.signalTransductionClosed E.cellularResponseClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse