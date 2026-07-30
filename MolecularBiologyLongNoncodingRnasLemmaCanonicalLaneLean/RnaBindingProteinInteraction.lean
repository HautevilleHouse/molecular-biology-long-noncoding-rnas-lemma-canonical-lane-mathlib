import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure RnaBindingProteinInteractionPackage where
  rnaBindingProtein : Type u
  lncRNA : Type v
  bindingAffinity : Prop
  complexFormation : Prop
  functionalConsequence : Prop

structure RnaBindingProteinInteractionEvidence (I : RnaBindingProteinInteractionPackage) where
  bindingAffinityClosed : I.bindingAffinity
  complexFormationClosed : I.complexFormation
  functionalConsequenceClosed : I.functionalConsequence

def RnaBindingProteinInteractionClosed (I : RnaBindingProteinInteractionPackage) : Prop :=
  I.bindingAffinity ∧ I.complexFormation ∧ I.functionalConsequence

theorem rna_binding_protein_interaction_closed_from_evidence (I : RnaBindingProteinInteractionPackage) (E : RnaBindingProteinInteractionEvidence I) : RnaBindingProteinInteractionClosed I := by
  exact And.intro E.bindingAffinityClosed (And.intro E.complexFormationClosed E.functionalConsequenceClosed)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
