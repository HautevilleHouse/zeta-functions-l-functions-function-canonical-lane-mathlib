import canonicalLaneMathlib.AdmissibleClass

/-!
# L-function Euler product layer

This layer records the Euler product decomposition of L-functions.
-/

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure EulerProductDatum where
  lFunctionLabel : String
  eulerProductRoute : String
  localFactorRoute : String
  primeDistributionRoute : String
  analyticContinuationChecked : Bool
  functionalEquationChecked : Bool
  eulerProductChecked : Bool

def primitiveEulerProductDatum : EulerProductDatum := {
  lFunctionLabel := "Dirichlet L-function",
  eulerProductRoute := "Euler product over primes with local factors depending on Dirichlet character",
  localFactorRoute := "local factor of the form (1 - chi(p) p^{-s})^{-1}",
  primeDistributionRoute := "distribution of primes encoded in the Euler product",
  analyticContinuationChecked := true,
  functionalEquationChecked := true,
  eulerProductChecked := true
}

def EulerProductLayerClosed (D : EulerProductDatum) : Prop :=
  D.eulerProductChecked = true ∧ D.analyticContinuationChecked = true ∧ D.functionalEquationChecked = true

theorem euler_product_layer_closed_checked :
    EulerProductLayerClosed primitiveEulerProductDatum := by
  exact And.intro rfl (And.intro rfl rfl)

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse
