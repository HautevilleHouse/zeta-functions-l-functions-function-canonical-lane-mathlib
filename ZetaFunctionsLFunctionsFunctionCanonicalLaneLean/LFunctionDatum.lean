import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure LFunctionDatum where
  degree : Nat
  conductor : Nat
  gammaFactors : List String
  epsilonFactor : String
  functionalEquation : String
  eulerProductDefined : Bool
  meromorphicContinuationKnown : Bool
  functionalEquationKnown : Bool
  selfDual : Bool

default_instance : Inhabited LFunctionDatum := ⟨{
  degree := 0,
  conductor := 1,
  gammaFactors := [],
  epsilonFactor := "",
  functionalEquation := "",
  eulerProductDefined := false,
  meromorphicContinuationKnown := false,
  functionalEquationKnown := false,
  selfDual := false
}⟩

structure ZetaDatum where
  specialValuesComputed : Bool
  poleAtOneKnown : Bool
  analyticContinuationKnown : Bool
  functionalEquationKnown : Bool

def primitiveLFunctionDatum : LFunctionDatum := {
  degree := 2,
  conductor := 1,
  gammaFactors := ["Gamma(s/2)", "Gamma((s+1)/2)"],
  epsilonFactor := "1",
  functionalEquation := "Lambda(s) = Lambda(1-s)",
  eulerProductDefined := true,
  meromorphicContinuationKnown := true,
  functionalEquationKnown := true,
  selfDual := true
}

def primitiveZetaDatum : ZetaDatum := {
  specialValuesComputed := true,
  poleAtOneKnown := true,
  analyticContinuationKnown := true,
  functionalEquationKnown := true
}

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse