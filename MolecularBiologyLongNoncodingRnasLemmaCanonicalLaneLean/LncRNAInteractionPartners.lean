import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAInteractionPartnersPackage where
  rnaBindingProteins : List String
  chromatinModificationComplexes : List String
  micrornaSponges : List String
  interactionEvidence : Prop
  validatedByExperiment : Prop

structure LncRNAInteractionPartnersEvidence (I : LncRNAInteractionPartnersPackage) where
  interactionEvidenceClosed : I.interactionEvidence
  validatedByExperimentClosed : I.validatedByExperiment

def LncRNAInteractionPartnersClosed (I : LncRNAInteractionPartnersPackage) : Prop :=
  I.interactionEvidence ∧ I.validatedByExperiment

theorem lncrna_interaction_partners_closed_from_evidence
    (I : LncRNAInteractionPartnersPackage) (E : LncRNAInteractionPartnersEvidence I) :
    LncRNAInteractionPartnersClosed I := by
  exact And.intro E.interactionEvidenceClosed E.validatedByExperimentClosed

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse