import ZetaFunctionsLFunctionsFunctionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ZetaFunctionsLFunctionsFunctionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelChecked,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end ZetaFunctionsLFunctionsFunctionCanonicalLaneLean
end HautevilleHouse