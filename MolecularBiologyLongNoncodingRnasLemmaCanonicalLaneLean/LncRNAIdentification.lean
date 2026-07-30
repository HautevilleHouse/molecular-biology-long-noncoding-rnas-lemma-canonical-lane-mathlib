import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAIdentificationPackage where
  transcriptSequence : String
  codingPotential : Prop
  conservationScore : Float
  expressionTissueSpecificity : Prop
  evidenceLevel : Nat

structure LncRNAIdentificationEvidence (L : LncRNAIdentificationPackage) where
  codingPotentialClosed : L.codingPotential
  expressionTissueSpecificityClosed : L.expressionTissueSpecificity
  evidenceLevelClosed : L.evidenceLevel > 0

def LncRNAIdentificationClosed (L : LncRNAIdentificationPackage) : Prop :=
  L.codingPotential ∧ L.expressionTissueSpecificity ∧ L.evidenceLevel > 0

theorem lncrna_identification_closed_from_evidence (L : LncRNAIdentificationPackage)
    (E : LncRNAIdentificationEvidence L) : LncRNAIdentificationClosed L := by
  exact And.intro E.codingPotentialClosed
    (And.intro E.expressionTissueSpecificityClosed E.evidenceLevelClosed)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse