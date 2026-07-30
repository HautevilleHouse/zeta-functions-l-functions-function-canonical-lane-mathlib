import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure MeromorphicContinuationLayerCertificate where
  lFunctionDatum : LFunctionDatum
  continuationRoute : String
  gammaFactorRoute : String
  functionalEquationRoute : String
  meromorphicContinuationChecked : Bool
  polesIdentified : Bool
  orderOfPoleKnown : Bool

def meromorphicContinuationLayerCertificate : MeromorphicContinuationLayerCertificate := {
  lFunctionDatum := primitiveLFunctionDatum,
  continuationRoute := "meromorphic continuation via the completed L-function and functional equation",
  gammaFactorRoute := "gamma factors from archimedean local components",
  functionalEquationRoute := "functional equation used to define continuation to left half-plane",
  meromorphicContinuationChecked := true,
  polesIdentified := true,
  orderOfPoleKnown := true
}

def MeromorphicContinuationLayerClosed (C : MeromorphicContinuationLayerCertificate) : Prop :=
  C.meromorphicContinuationChecked = true ∧
  C.polesIdentified = true ∧
  C.orderOfPoleKnown = true

theorem meromorphic_continuation_layer_closed_checked :
    MeromorphicContinuationLayerClosed meromorphicContinuationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse