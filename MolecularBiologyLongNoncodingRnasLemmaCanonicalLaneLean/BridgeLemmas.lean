import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LncRnaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse