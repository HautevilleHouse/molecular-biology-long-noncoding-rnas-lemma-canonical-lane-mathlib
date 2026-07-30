import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure EpigeneticSilencingPathwayPackage where
  histoneMethylation : Prop
  dnaMethylation : Prop
  heterochromatinFormation : Prop
  transcriptionalRepression : Prop
  lncRNARecruitment : Prop

structure EpigeneticSilencingPathwayEvidence (P : EpigeneticSilencingPathwayPackage) where
  histoneMethylationClosed : P.histoneMethylation
  dnaMethylationClosed : P.dnaMethylation
  heterochromatinFormationClosed : P.heterochromatinFormation
  transcriptionalRepressionClosed : P.transcriptionalRepression
  lncRNARecruitmentClosed : P.lncRNARecruitment

def EpigeneticSilencingPathwayClosed (P : EpigeneticSilencingPathwayPackage) : Prop :=
  P.histoneMethylation ∧ P.dnaMethylation ∧ P.heterochromatinFormation ∧ P.transcriptionalRepression ∧ P.lncRNARecruitment

theorem epigenetic_silencing_pathway_closed_from_evidence (P : EpigeneticSilencingPathwayPackage) (E : EpigeneticSilencingPathwayEvidence P) : EpigeneticSilencingPathwayClosed P := by
  exact And.intro E.histoneMethylationClosed (And.intro E.dnaMethylationClosed (And.intro E.heterochromatinFormationClosed (And.intro E.transcriptionalRepressionClosed E.lncRNARecruitmentClosed)))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
