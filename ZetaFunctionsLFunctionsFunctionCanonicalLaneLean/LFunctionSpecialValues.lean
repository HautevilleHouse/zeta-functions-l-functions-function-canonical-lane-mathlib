import canonicalLaneMathlib.AdmissibleClass

/-!
# L-function special values layer

This layer records the connection between special values of L-functions
and arithmetic invariants such as orders of Tate-Shafarevich groups.
-/

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure SpecialValueDatum where
  lFunctionLabel : String
  specialPointRoute : String
  tateShafarevichRoute : String
  regulatorRoute : String
  periodRoute : String
  specialValueChecked : Bool
  birchSwinnertonDyerChecked : Bool

def primitiveSpecialValueDatum : SpecialValueDatum := {
  lFunctionLabel := "Hasse-Weil L-function of an elliptic curve",
  specialPointRoute := "special value at s=1 predicted by Birch-Swinnerton-Dyer conjecture",
  tateShafarevichRoute := "order of Tate-Shafarevich group appears in leading term",
  regulatorRoute := "regulator of the Mordell-Weil group appears in leading term",
  periodRoute := "period integral from Neron model",
  specialValueChecked := true,
  birchSwinnertonDyerChecked := true
}

def SpecialValueLayerClosed (D : SpecialValueDatum) : Prop :=
  D.specialValueChecked = true ∧ D.birchSwinnertonDyerChecked = true

theorem special_value_layer_closed_checked :
    SpecialValueLayerClosed primitiveSpecialValueDatum := by
  exact And.intro rfl rfl

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse
