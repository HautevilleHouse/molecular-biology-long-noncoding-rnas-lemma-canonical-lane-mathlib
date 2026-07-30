import LncRNAMechanisticGate

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

def ConstrainedMolecularClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_molecular_endgame (A : AdmissibleClass) :
    ConstrainedMolecularClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse