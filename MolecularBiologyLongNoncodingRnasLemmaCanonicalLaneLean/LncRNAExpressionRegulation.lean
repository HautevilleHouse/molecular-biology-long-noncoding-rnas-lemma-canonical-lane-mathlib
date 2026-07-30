import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAExpressionRegulationPackage where
  lncRNAType : Type u
  targetGene : Type v
  cisRegulation : Prop
  transRegulation : Prop
  expressionLevels : Prop
  regulatoryMechanismCharacterized : Prop

structure LncRNAExpressionRegulationEvidence (P : LncRNAExpressionRegulationPackage) where
  cisRegulationClosed : P.cisRegulation
  transRegulationClosed : P.transRegulation
  expressionLevelsClosed : P.expressionLevels
  regulatoryMechanismCharacterizedClosed : P.regulatoryMechanismCharacterized

def LncRNAExpressionRegulationClosed (P : LncRNAExpressionRegulationPackage) : Prop :=
  P.cisRegulation ∧ P.transRegulation ∧ P.expressionLevels ∧ P.regulatoryMechanismCharacterized

theorem lncRNA_expression_regulation_closed_from_evidence (P : LncRNAExpressionRegulationPackage) (E : LncRNAExpressionRegulationEvidence P) : LncRNAExpressionRegulationClosed P := by
  exact And.intro E.cisRegulationClosed (And.intro E.transRegulationClosed (And.intro E.expressionLevelsClosed E.regulatoryMechanismCharacterizedClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
