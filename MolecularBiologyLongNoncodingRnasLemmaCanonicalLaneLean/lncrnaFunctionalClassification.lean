import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure FunctionalClassificationPackage where
  mechanism : String
  interactingPartner : Type
  cellularFunction : Prop
  diseaseAssociation : Prop
  expressionPattern : Prop

structure FunctionalClassificationEvidence (F : FunctionalClassificationPackage) where
  cellularFunctionClosed : F.cellularFunction
  expressionPatternClosed : F.expressionPattern

def FunctionalClassificationClosed (F : FunctionalClassificationPackage) : Prop :=
  F.cellularFunction ∧ F.expressionPattern

theorem functional_classification_closed_from_evidence (F : FunctionalClassificationPackage) (E : FunctionalClassificationEvidence F) : FunctionalClassificationClosed F :=
  And.intro E.cellularFunctionClosed E.expressionPatternClosed

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse