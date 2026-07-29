import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean.BanachAnalyticManifoldLayer
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean

def lemmaAdmittedObject : BanachAnalyticManifoldObject := {
  sourceKey := "32K07 Lemma",
  theoremObject := "32K07 Lemma on Banach analytic manifolds",
  claimBoundary := "admissible boundary of the lemma",
  modelingSpace := "Banach space",
  atlas := "maximal analytic atlas",
  transitionMap := "analytic transition"
}

def lemmaAdmissibleClass : AdmissibleClass := {
  object := lemmaAdmittedObject,
  endpointSatisfied := BanachAnalyticManifoldLayerClosed banachAnalyticManifoldCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl banach_analytic_manifold_layer_closed_checked
}

def Constrained32k07LemmaClosure : Prop :=
  ConstrainedTheoremClosure lemmaAdmissibleClass

theorem constrained_32k07_lemma_endgame :
    Constrained32k07LemmaClosure := by
  exact constrained_theorem_closure lemmaAdmissibleClass

end BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean
end HautevilleHouse