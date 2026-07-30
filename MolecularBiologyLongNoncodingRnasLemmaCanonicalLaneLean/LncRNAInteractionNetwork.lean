import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAInteractionNetworkPackage where
  rnaBindingProteins : Prop
  micrornaSponging : Prop
  chromatinInteractions : Prop
  signalPathwayModulation : Prop

structure LncRNAInteractionNetworkEvidence (I : LncRNAInteractionNetworkPackage) where
  rnaBindingProteinsClosed : I.rnaBindingProteins
  micrornaSpongingClosed : I.micrornaSponging
  chromatinInteractionsClosed : I.chromatinInteractions
  signalPathwayModulationClosed : I.signalPathwayModulation

def LncRNAInteractionNetworkClosed (I : LncRNAInteractionNetworkPackage) : Prop :=
  I.rnaBindingProteins ∧ I.micrornaSponging ∧
  I.chromatinInteractions ∧ I.signalPathwayModulation

theorem lncrna_interaction_network_closed_from_evidence
    (I : LncRNAInteractionNetworkPackage)
    (E : LncRNAInteractionNetworkEvidence I) :
    LncRNAInteractionNetworkClosed I := by
  exact And.intro E.rnaBindingProteinsClosed
    (And.intro E.micrornaSpongingClosed
      (And.intro E.chromatinInteractionsClosed E.signalPathwayModulationClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse