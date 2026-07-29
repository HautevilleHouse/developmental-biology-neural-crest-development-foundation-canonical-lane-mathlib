import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean

structure GeneRegulatoryNetwork where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  sox10Module : Prop
  snailSlugModule : Prop
  foxd3Module : Prop
  twistModule : Prop
  networkStability : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetwork) where
  transcriptionFactorsClosed : G.transcriptionFactors
  targetGenesClosed : G.targetGenes
  regulatoryInteractionsClosed : G.regulatoryInteractions
  sox10ModuleClosed : G.sox10Module
  snailSlugModuleClosed : G.snailSlugModule
  foxd3ModuleClosed : G.foxd3Module
  twistModuleClosed : G.twistModule
  networkStabilityClosed : G.networkStability

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetwork) : Prop :=
  G.transcriptionFactors ∧ G.targetGenes ∧ G.regulatoryInteractions ∧ G.sox10Module ∧ G.snailSlugModule ∧ G.foxd3Module ∧ G.twistModule ∧ G.networkStability

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetwork) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.transcriptionFactorsClosed
    (And.intro E.targetGenesClosed
      (And.intro E.regulatoryInteractionsClosed
        (And.intro E.sox10ModuleClosed
          (And.intro E.snailSlugModuleClosed
            (And.intro E.foxd3ModuleClosed
              (And.intro E.twistModuleClosed
                E.networkStabilityClosed))))))

end DevelopmentalBiologyNeuralCrestDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
