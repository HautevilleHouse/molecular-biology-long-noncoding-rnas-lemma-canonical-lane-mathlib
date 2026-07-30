import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNABiomarkerPotentialPackage where
  diagnosticAccuracy : Prop
  prognosticValue : Prop
  therapeuticTarget : Prop
  liquidBiopsyFeasibility : Prop

structure LncRNABiomarkerPotentialEvidence (B : LncRNABiomarkerPotentialPackage) where
  diagnosticAccuracyClosed : B.diagnosticAccuracy
  prognosticValueClosed : B.prognosticValue
  therapeuticTargetClosed : B.therapeuticTarget
  liquidBiopsyFeasibilityClosed : B.liquidBiopsyFeasibility

def LncRNABiomarkerPotentialClosed (B : LncRNABiomarkerPotentialPackage) : Prop :=
  B.diagnosticAccuracy ∧ B.prognosticValue ∧
  B.therapeuticTarget ∧ B.liquidBiopsyFeasibility

theorem lncrna_biomarker_potential_closed_from_evidence
    (B : LncRNABiomarkerPotentialPackage)
    (E : LncRNABiomarkerPotentialEvidence B) :
    LncRNABiomarkerPotentialClosed B := by
  exact And.intro E.diagnosticAccuracyClosed
    (And.intro E.prognosticValueClosed
      (And.intro E.therapeuticTargetClosed E.liquidBiopsyFeasibilityClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse