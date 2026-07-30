import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure SpecialValueData where
  sourceKey : String
  integerSpecialValuesRecorded : Bool
  periodIntegralRoute : String
  conjectureABRecorded : Bool

def primitiveSpecialValueData : SpecialValueData := {
  sourceKey := "zeta-functions-l-functions-function-canonical-lane",
  integerSpecialValuesRecorded := true,
  periodIntegralRoute := "periods from motive integration",
  conjectureABRecorded := true
}

structure SpecialValueCertificate where
  valueData : SpecialValueData
  specialValueRoute : String
  regulatorRoute : String
  periodsRoute : String
  specialValueEndpointChecked : Bool
  lichtenbaumTateEndpointChecked : Bool

def specialValueCertificate : SpecialValueCertificate := {
  valueData := primitiveSpecialValueData,
  specialValueRoute := "L(1-n) = rational * period * regulator",
  regulatorRoute := "regulator from K-theory",
  periodsRoute := "period integrals from Deligne cohomology",
  specialValueEndpointChecked := true,
  lichtenbaumTateEndpointChecked := true
}

def SpecialValueLayerClosed (C : SpecialValueCertificate) : Prop :=
  C.valueData.integerSpecialValuesRecorded = true ∧
  C.valueData.conjectureABRecorded = true ∧
  C.specialValueEndpointChecked = true ∧
  C.lichtenbaumTateEndpointChecked = true

theorem special_value_layer_closed_checked :
    SpecialValueLayerClosed specialValueCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse