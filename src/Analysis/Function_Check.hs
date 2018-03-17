module Analysis.Function_Check where
import Solidiscan.AST
import Data.Generics (Data, Typeable, mkQ, mkT, everything, everywhere)
import Data.Set

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
{- 
CODE GRAVEYARD RIP
----------------- 
contractCheck :: [SourceUnit] -> String
contractCheck (x:xs)
    | x:xs == [] = "No Contract Detected"
    | x == y = "Contract Detected"
      where y = (ContractDef, ContractDef (Contract (Identifier "") [] []))

contractCheck :: [SourceUnit] -> [Char]
contractCheck (x:xs)
    | contractTest(x) == True = "Contract Detected"
    | contractTest(x) == False = "No contract detected"
  
contractTest :: SourceUnit -> Bool
contractTest (SourceUnit _, ContractDef r) = test (r)

test :: ContractDefinition -> Bool
test x | x == Contract = True
       | x /= Contract = False

sourceUnitFunc :: [SourceUnit] -> Set FunctionDef
sourceUnitFunc x = getFunctions x

sourceUnitStrip :: [SourceUnit] -> ContractConts
sourceUnitStrip [(SourceUnit (PragmaDirective _ r _))] = error "Error"
sourceUnitStrip [(ContractDef (Contract (Identifier _) _ r ))] = functionParse r

functionParse :: [ContractConts] -> ContractConts
functionParse (x:xs) = x
      
-}