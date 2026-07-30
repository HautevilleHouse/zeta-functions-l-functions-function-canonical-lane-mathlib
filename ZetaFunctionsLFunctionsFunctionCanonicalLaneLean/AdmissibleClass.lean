import canonicalLaneMathlib.AdmissibleClass
import ZetaFunctionsLFunctionsFunctionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse