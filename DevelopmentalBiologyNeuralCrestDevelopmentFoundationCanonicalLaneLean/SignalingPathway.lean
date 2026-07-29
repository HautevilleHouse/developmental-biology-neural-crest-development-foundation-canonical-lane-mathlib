import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure SignalingPathway where
  wntSignaling : Prop
  bmpSignaling : Prop
  fgfSignaling : Prop
  notchSignaling : Prop
  retinoicAcid : Prop
  pathwayCrossTalk : Prop
  gradientInterpretation : Prop

structure SignalingPathwayEvidence (S : SignalingPathway) where
  wntSignalingClosed : S.wntSignaling
  bmpSignalingClosed : S.bmpSignaling
  fgfSignalingClosed : S.fgfSignaling
  notchSignalingClosed : S.notchSignaling
  retinoicAcidClosed : S.retinoicAcid
  pathwayCrossTalkClosed : S.pathwayCrossTalk
  gradientInterpretationClosed : S.gradientInterpretation

def SignalingPathwayClosed (S : SignalingPathway) : Prop :=
  S.wntSignaling ∧ S.bmpSignaling ∧ S.fgfSignaling ∧ S.notchSignaling ∧ S.retinoicAcid ∧ S.pathwayCrossTalk ∧ S.gradientInterpretation

theorem signaling_pathway_closed_from_evidence
    (S : SignalingPathway) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.wntSignalingClosed
    (And.intro E.bmpSignalingClosed
      (And.intro E.fgfSignalingClosed
        (And.intro E.notchSignalingClosed
          (And.intro E.retinoicAcidClosed
            (And.intro E.pathwayCrossTalkClosed
              E.gradientInterpretationClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
