import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRNASpace where
  carrier : Type
  transcriptome : TopologicalSpace carrier

structure LncRNAAdmittedObject where
  lncRNASpace : LncRNASpace
  codingPotential : Prop
  regulatoryPathway : Prop
  mechanismElucidated : Prop
  conclusion : mechanismElucidated

structure LncRNAMolecularEndgameState where
  object : LncRNAAdmittedObject

def LncRNALocusClosed (O : LncRNAAdmittedObject) : Prop :=
  O.mechanismElucidated

structure AdmissibleClass where
  object : LncRNAAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LncRNALocusClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse