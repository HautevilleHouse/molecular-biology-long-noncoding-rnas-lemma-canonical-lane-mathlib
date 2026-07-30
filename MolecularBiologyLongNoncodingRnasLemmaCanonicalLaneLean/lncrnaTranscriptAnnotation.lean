import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean

structure TranscriptAnnotationPackage where
  transcriptId : String
  genomicCoordinates : String
  strand : String
  exonicStructure : Prop
  annotationSource : String
  crossReference : String

structure TranscriptAnnotationEvidence (A : TranscriptAnnotationPackage) where
  exonicStructureClosed : A.exonicStructure
  annotationSourceValidated : Prop

def TranscriptAnnotationClosed (A : TranscriptAnnotationPackage) : Prop :=
  A.exonicStructure

theorem transcript_annotation_closed_from_evidence (A : TranscriptAnnotationPackage) (E : TranscriptAnnotationEvidence A) : TranscriptAnnotationClosed A :=
  E.exonicStructureClosed

end MolecularBiologyLongNoncodingRnasLemmaCanonicalLaneLean
end HautevilleHouse