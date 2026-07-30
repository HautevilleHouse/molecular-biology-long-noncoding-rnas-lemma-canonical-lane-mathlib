import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure NuclearOrganizationCompartmentPackage where
  nuclearSpeckle : Prop
  paraspeckle : Prop
  polycombBody : Prop
  lncRNALocalization : Prop
  geneRepositioning : Prop

structure NuclearOrganizationCompartmentEvidence (N : NuclearOrganizationCompartmentPackage) where
  nuclearSpeckleClosed : N.nuclearSpeckle
  paraspeckleClosed : N.paraspeckle
  polycombBodyClosed : N.polycombBody
  lncRNALocalizationClosed : N.lncRNALocalization
  geneRepositioningClosed : N.geneRepositioning

def NuclearOrganizationCompartmentClosed (N : NuclearOrganizationCompartmentPackage) : Prop :=
  N.nuclearSpeckle ∧ N.paraspeckle ∧ N.polycombBody ∧ N.lncRNALocalization ∧ N.geneRepositioning

theorem nuclear_organization_compartment_closed_from_evidence (N : NuclearOrganizationCompartmentPackage) (E : NuclearOrganizationCompartmentEvidence N) : NuclearOrganizationCompartmentClosed N := by
  exact And.intro E.nuclearSpeckleClosed (And.intro E.paraspeckleClosed (And.intro E.polycombBodyClosed (And.intro E.lncRNALocalizationClosed E.geneRepositioningClosed)))

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse
