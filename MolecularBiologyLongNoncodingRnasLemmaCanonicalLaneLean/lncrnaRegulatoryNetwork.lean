import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure RegulatoryNetworkPackage where
  nodeList : Type
  edgeList : Type
  interactionTypes : List String
  networkTopology : Prop
  regulatoryEffect : Prop
  perturbationResponse : Prop

structure RegulatoryNetworkEvidence (R : RegulatoryNetworkPackage) where
  networkTopologyClosed : R.networkTopology
  regulatoryEffectClosed : R.regulatoryEffect
  perturbationResponseClosed : R.perturbationResponse

def RegulatoryNetworkClosed (R : RegulatoryNetworkPackage) : Prop :=
  R.networkTopology ∧ R.regulatoryEffect ∧ R.perturbationResponse

theorem regulatory_network_closed_from_evidence (R : RegulatoryNetworkPackage) (E : RegulatoryNetworkEvidence R) : RegulatoryNetworkClosed R :=
  And.intro E.networkTopologyClosed (And.intro E.regulatoryEffectClosed E.perturbationResponseClosed)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse