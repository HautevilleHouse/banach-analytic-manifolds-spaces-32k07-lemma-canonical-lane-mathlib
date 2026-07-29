import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean.BanachAnalyticManifoldLemmaCertificate

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachAnalyticManifoldLemmaClosed banachAnalyticManifoldLemmaCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact banach_analytic_manifold_lemma_closed_checked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean
end HautevilleHouse