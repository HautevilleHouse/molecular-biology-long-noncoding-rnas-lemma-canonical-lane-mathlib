import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAExpressionPackage where
  cellType : String
  expressionLevels : String
  tissueSpecific : Prop
  diseaseAssociation : Prop

structure LncRNAExpressionEvidence (L : LncRNAExpressionPackage) where
  tissueSpecificClosed : L.tissueSpecific
  diseaseAssociationClosed : L.diseaseAssociation

def LncRNAExpressionClosed (L : LncRNAExpressionPackage) : Prop :=
  L.tissueSpecific ∧ L.diseaseAssociation

theorem lncrna_expression_closed_from_evidence
    (L : LncRNAExpressionPackage) (E : LncRNAExpressionEvidence L) :
    LncRNAExpressionClosed L := by
  exact And.intro E.tissueSpecificClosed E.diseaseAssociationClosed

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse