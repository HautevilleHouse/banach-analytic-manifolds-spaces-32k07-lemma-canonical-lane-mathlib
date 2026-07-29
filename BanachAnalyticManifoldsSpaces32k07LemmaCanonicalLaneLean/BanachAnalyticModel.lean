import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Banach
import Mathlib.Analysis.Analytic.Basic

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean

structure BanachAnalyticChart (E : Type) [NormedAddCommGroup E] [BanachSpace ℂ E] where
  domain : Set E
  target : Set ℂ
  homeo : domain ≃ₜ target
  analytic : AnalyticOn ℂ (fun x : E => homeo x) domain

structure BanachAnalyticManifold where
  model : Type
  [normedAddCommGroup : NormedAddCommGroup model]
  [banachSpace : BanachSpace ℂ model]
  charts : Set (BanachAnalyticChart model)
  compatible : ∀ (c1 c2 : BanachAnalyticChart model),
    c1 ∈ charts → c2 ∈ charts →
    (AnalyticOn ℂ (fun x : model => (c2.homeo ∘ c1.homeo.symm) x) (c1.target ∩ c2.target))

def theoremBanachModel : Type := ℂ

instance : NormedAddCommGroup theoremBanachModel := inferInstance
instance : BanachSpace ℂ theoremBanachModel := inferInstance

def theoremManifold : BanachAnalyticManifold where
  model := theoremBanachModel
  normedAddCommGroup := inferInstance
  banachSpace := inferInstance
  charts := ∅
  compatible := by
    intro c1 c2 h1 h2
    exfalso; exact Set.not_mem_empty _ h1

end BanachAnalyticManifoldsSpaces32k07LemmaCanonicalLaneLean
end HautevilleHouse
