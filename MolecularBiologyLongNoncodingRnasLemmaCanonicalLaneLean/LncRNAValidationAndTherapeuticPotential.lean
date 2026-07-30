import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNAValidationAndTherapeuticPotentialPackage where
  knockoutPhenotype : Prop
  overexpressionPhenotype : Prop
  therapeuticTargetEvidence : Prop
  clinicalTrialPhase : Nat
  safetyAndEfficacyProfile : Prop

structure LncRNAValidationAndTherapeuticPotentialEvidence
    (V : LncRNAValidationAndTherapeuticPotentialPackage) where
  knockoutPhenotypeClosed : V.knockoutPhenotype
  overexpressionPhenotypeClosed : V.overexpressionPhenotype
  therapeuticTargetEvidenceClosed : V.therapeuticTargetEvidence
  safetyAndEfficacyProfileClosed : V.safetyAndEfficacyProfile

def LncRNAValidationAndTherapeuticPotentialClosed
    (V : LncRNAValidationAndTherapeuticPotentialPackage) : Prop :=
  V.knockoutPhenotype ∧ V.overexpressionPhenotype ∧
  V.therapeuticTargetEvidence ∧ V.safetyAndEfficacyProfile

theorem lncrna_validation_and_therapeutic_potential_closed_from_evidence
    (V : LncRNAValidationAndTherapeuticPotentialPackage)
    (E : LncRNAValidationAndTherapeuticPotentialEvidence V) :
    LncRNAValidationAndTherapeuticPotentialClosed V := by
  exact And.intro E.knockoutPhenotypeClosed
    (And.intro E.overexpressionPhenotypeClosed
      (And.intro E.therapeuticTargetEvidenceClosed E.safetyAndEfficacyProfileClosed))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse