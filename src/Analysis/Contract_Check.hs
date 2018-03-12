module Analysis.Contract_Check where
import Solidiscan.AST

{- 
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
       
-}
