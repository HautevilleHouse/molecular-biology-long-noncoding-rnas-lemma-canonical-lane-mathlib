import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNARegulatoryMechanismPackage where
  transcriptionalRegulation : Prop
  postTranscriptionalRegulation : Prop
  epigeneticModulation : Prop
  scaffoldingFunction : Prop

structure LncRNARegulatoryMechanismEvidence (R : LncRNARegulatoryMechanismPackage) where
  transcriptionalRegulationClosed : R.transcriptionalRegulation
  postTranscriptionalRegulationClosed : R.postTranscriptionalRegulation
  epigeneticModulationClosed : R.epigeneticModulation
  scaffoldingFunctionClosed : R.scaffoldingFunction

def LncRNARegulatoryMechanismClosed (R : LncRNARegulatoryMechanismPackage) : Prop :=
  R.transcriptionalRegulation ∧ R.postTranscriptionalRegulation ∧
  R.epigeneticModulation ∧ R.scaffoldingFunction

theorem lncrna_regulatory_mechanism_closed_from_evidence
    (R : LncRNARegulatoryMechanismPackage)
    (E : LncRNARegulatoryMechanismEvidence R) :
    LncRNARegulatoryMechanismClosed R := by
  exact And.intro E.transcriptionalRegulationClosed
    (And.intro E.postTranscriptionalRegulationClosed
      (And.intro E.epigeneticModulationClosed E.scaffoldingFunctionClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse