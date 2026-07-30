import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure ExpressionQuantificationPackage where
  sampleSource : String
  quantificationMethod : String
  expressionLevels : Type
  normalizationUsed : Prop
  batchEffectCorrected : Prop
  differentialExpression : Prop

structure ExpressionQuantificationEvidence (E : ExpressionQuantificationPackage) where
  normalizationUsedClosed : E.normalizationUsed
  batchEffectCorrectedClosed : E.batchEffectCorrected
  differentialExpressionClosed : E.differentialExpression

def ExpressionQuantificationClosed (E : ExpressionQuantificationPackage) : Prop :=
  E.normalizationUsed ∧ E.batchEffectCorrected ∧ E.differentialExpression

theorem expression_quantification_closed_from_evidence (E : ExpressionQuantificationPackage) (Ev : ExpressionQuantificationEvidence E) : ExpressionQuantificationClosed E :=
  And.intro Ev.normalizationUsedClosed (And.intro Ev.batchEffectCorrectedClosed Ev.differentialExpressionClosed)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse