import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNADiseaseAssociationPackage where
  cancerAssociation : Prop
  neurologicalDisorderAssociation : Prop
  cardiovascularDiseaseAssociation : Prop
  biomarkerPotential : Prop

structure LncRNADiseaseAssociationEvidence (D : LncRNADiseaseAssociationPackage) where
  cancerAssociationClosed : D.cancerAssociation
  neurologicalDisorderAssociationClosed : D.neurologicalDisorderAssociation
  cardiovascularDiseaseAssociationClosed : D.cardiovascularDiseaseAssociation
  biomarkerPotentialClosed : D.biomarkerPotential

def LncRNADiseaseAssociationClosed (D : LncRNADiseaseAssociationPackage) : Prop :=
  D.cancerAssociation ∧ D.neurologicalDisorderAssociation ∧
  D.cardiovascularDiseaseAssociation ∧ D.biomarkerPotential

theorem lncrna_disease_association_closed_from_evidence
    (D : LncRNADiseaseAssociationPackage)
    (E : LncRNADiseaseAssociationEvidence D) :
    LncRNADiseaseAssociationClosed D := by
  exact And.intro E.cancerAssociationClosed
    (And.intro E.neurologicalDisorderAssociationClosed
      (And.intro E.cardiovascularDiseaseAssociationClosed E.biomarkerPotentialClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse