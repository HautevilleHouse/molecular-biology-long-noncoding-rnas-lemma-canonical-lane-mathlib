import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAFunctionalMechanismsPackage where
  transcriptionalRegulation : Prop
  postTranscriptionalRegulation : Prop
  epigeneticModulation : Prop
  scaffoldForComplexes : Prop
  signalTransduction : Prop

structure LncRNAFunctionalMechanismsEvidence (F : LncRNAFunctionalMechanismsPackage) where
  transcriptionalRegulationClosed : F.transcriptionalRegulation
  postTranscriptionalRegulationClosed : F.postTranscriptionalRegulation
  epigeneticModulationClosed : F.epigeneticModulation
  scaffoldForComplexesClosed : F.scaffoldForComplexes
  signalTransductionClosed : F.signalTransduction

def LncRNAFunctionalMechanismsClosed (F : LncRNAFunctionalMechanismsPackage) : Prop :=
  F.transcriptionalRegulation ∧ F.postTranscriptionalRegulation ∧
  F.epigeneticModulation ∧ F.scaffoldForComplexes ∧ F.signalTransduction

theorem lncrna_functional_mechanisms_closed_from_evidence
    (F : LncRNAFunctionalMechanismsPackage) (E : LncRNAFunctionalMechanismsEvidence F) :
    LncRNAFunctionalMechanismsClosed F := by
  exact And.intro E.transcriptionalRegulationClosed
    (And.intro E.postTranscriptionalRegulationClosed
      (And.intro E.epigeneticModulationClosed
        (And.intro E.scaffoldForComplexesClosed E.signalTransductionClosed)))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse