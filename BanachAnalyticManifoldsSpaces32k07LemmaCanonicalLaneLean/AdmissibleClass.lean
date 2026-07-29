import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedBanachAnalyticObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean
end HautevilleHouse