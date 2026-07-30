import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

def ConstrainedLncRNAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lncRNA_endgame (A : AdmissibleClass) :
    ConstrainedLncRNAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse