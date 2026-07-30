import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure LncRnaAdmittedObject where
  gene : Type
  lncRnaTranscript : String
  functionalEvidence : Prop
  conclusion : LncRnaWitnessClosed this

def LncRnaWitnessClosed (O : LncRnaAdmittedObject) : Prop :=
  O.functionalEvidence

def LncRnaTheoremStatement : Prop :=
  ∀ (O : LncRnaAdmittedObject), LncRnaWitnessClosed O

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse