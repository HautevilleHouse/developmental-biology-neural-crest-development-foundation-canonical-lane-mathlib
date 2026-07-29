import cananicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure SignalingPackage where
  bmpSmadPathway : Prop
  wntBetaCateninPathway : Prop
  fgfMapkPathway : Prop
  notchHesPathway : Prop
  retinoicAcidReceptorSignaling : Prop
  crossTalkRegulation : Prop

structure SignalingEvidence (S : SignalingPackage) where
  bmpSmadPathwayClosed : S.bmpSmadPathway
  wntBetaCateninPathwayClosed : S.wntBetaCateninPathway
  fgfMapkPathwayClosed : S.fgfMapkPathway
  notchHesPathwayClosed : S.notchHesPathway
  retinoicAcidReceptorSignalingClosed : S.retinoicAcidReceptorSignaling
  crossTalkRegulationClosed : S.crossTalkRegulation

def SignalingClosed (S : SignalingPackage) : Prop :=
  S.bmpSmadPathway ∧ S.wntBetaCateninPathway ∧ S.fgfMapkPathway ∧ S.notchHesPathway ∧ S.retinoicAcidReceptorSignaling ∧ S.crossTalkRegulation

theorem signaling_closed_from_evidence (S : SignalingPackage) (E : SignalingEvidence S) : SignalingClosed S := by
  exact And.intro E.bmpSmadPathwayClosed (And.intro E.wntBetaCateninPathwayClosed (And.intro E.fgfMapkPathwayClosed (And.intro E.notchHesPathwayClosed (And.intro E.retinoicAcidReceptorSignalingClosed E.crossTalkRegulationClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse