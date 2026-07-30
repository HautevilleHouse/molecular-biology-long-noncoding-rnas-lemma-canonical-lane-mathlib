import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAConservationAndDiseaseAssociationPackage where
  sequenceConservationScore : Float
  diseaseAssociationEvidence : Prop
  expressionDysregulationInDisease : Prop
  gwasCatalogEntry : Bool
  omimAssociation : Bool

structure LncRNAConservationAndDiseaseAssociationEvidence
    (C : LncRNAConservationAndDiseaseAssociationPackage) where
  sequenceConservationSufficient : C.sequenceConservationScore > 0.8
  diseaseAssociationEvidenceClosed : C.diseaseAssociationEvidence
  expressionDysregulationInDiseaseClosed : C.expressionDysregulationInDisease

def LncRNAConservationAndDiseaseAssociationClosed
    (C : LncRNAConservationAndDiseaseAssociationPackage) : Prop :=
  C.sequenceConservationScore > 0.8 ∧ C.diseaseAssociationEvidence ∧
  C.expressionDysregulationInDisease

theorem lncrna_conservation_and_disease_association_closed_from_evidence
    (C : LncRNAConservationAndDiseaseAssociationPackage)
    (E : LncRNAConservationAndDiseaseAssociationEvidence C) :
    LncRNAConservationAndDiseaseAssociationClosed C := by
  exact And.intro E.sequenceConservationSufficient
    (And.intro E.diseaseAssociationEvidenceClosed E.expressionDysregulationInDiseaseClosed)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse