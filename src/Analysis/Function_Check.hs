{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Function_Check where
import Solidiscan.AST
import Data.Generics (Data, Typeable, mkQ, mkT, everything, everythingBut, everywhere)
import Data.Set as Set
import Test


-- getCont uses recursion to pattern match the different data constructors within the program source
-- If a contract definition is found it is passed to getContractConts
getCont :: [ProgSource] -> [[StateVarDeclaration]]
getCont [] = []
getCont (x:xs) = case x of
    (SourceUnit y) -> getCont xs
    (ContractDef y) -> getContractConts y : (getCont xs)
    (ImportUnit y) -> getCont xs

-- getContractConts searches for the contents block within a contract and then
-- calls stateVarCheck
getContractConts :: ContractDefinition -> [StateVarDeclaration]
getContractConts (Contract _ _ []) = []
getContractConts (Contract _ _ x) = stateVarCheck x

-- stateVarCheck checks the contents of ContractConts for state variable declarations and returns 
-- them within a list, it acts recursively to handle multiple declarations
stateVarCheck :: [ContractConts] -> [StateVarDeclaration]
stateVarCheck [] = []
stateVarCheck (x:xs) = case x of
    (StateVarDec a) -> a : stateVarCheck xs
    (_) -> undefined

mapGet :: [[StateVarDeclaration]] -> [TypeName]
mapGet [] = []
mapGet [[]] = []
mapGet (x:xs) = case x of 
    [(StateVariableDeclaration a _ _ _)] -> a : mapGet xs

ifCheck :: [FunctionDef] -> [[Expression]]
ifCheck [] = []
ifCheck (x:xs) = case x of
    (FunctionDef _ _ _ _ a) -> a : ifCheck xs


-- OlD Functions Need Removed
-- Get functions is a 'Scrap Your Boilerplate' implementation
-- It traverses the data type and returns all instance of 'FunctionDef'
getFunctions :: Data d => d -> Set FunctionDef
getFunctions code = 
    everything
        union
        (mkQ empty (\func@(FunctionDef _ _ _ _ _ ) -> singleton func))
        code

-- GetContracts does a similar job to getFunctions
-- returning all instances of a ContractDefinition
getContracts :: Data d => d -> Set ContractDefinition
getContracts code = 
    everything
        union
        (mkQ empty (\func@(Contract _ _ _ ) -> singleton func))
        code

findMsgSend :: Data d => d -> Set StateVarDeclaration
findMsgSend code = 
    everything
        union
        (mkQ empty (\msg@(StateVariableDeclaration _ _ _ ([MemberAccess _ _ _])) -> singleton msg))
        code