module Analysis.Visibility_Check where
import Solidiscan.AST
import Analysis.Function_Check
import Analysis.Info_Data
import Helper_Functions
import Data.Maybe

-- Visibility check is to check for the functions visibility within a contract
-- Functions should be defined either private or public but not left blank.

-- funCVisCheck takes a list of contract defintions and returns a list of Maybe Info/Ident tuples
funcVisCheck :: [[ContractConts]] -> [Maybe (Info, Identifier)]
funcVisCheck contractConts = do
    result <- map functionParamCheck $ concatMap functionParamGet $ map functionGetter(contractConts)
    return result

-- FunctionParamGet takes a list of function definitions and returns the function modifiers of the function,
-- along with the functions name
functionParamGet :: [FunctionDef] -> [([FuncMods],Identifier)]
functionParamGet [] = []
functionParamGet (x:xs) = case x of
    (FunctionDef a _ r _ _) -> (r,a) : functionParamGet xs
    (FallBackFunc r _ _ ) -> (r, (Identifier "Fallback Function")) : functionParamGet xs

-- FunctionParamCheck takes a tuple containing the function modifiers with the identifier of the function
-- the modifiers are from
-- it then returns a Maybe tuple containing an Info data type and the name of the function that the modifiers are from
functionParamCheck :: ([FuncMods], c) -> Maybe (Info, c)
functionParamCheck ([],r) = Just ((Info "Function Visibility" "No visibility specified"), r)
functionParamCheck ((x:xs), r) = case x of
    (FuncVars (PublicKeyword "public")) -> Nothing
    (FuncVars (PrivateKeyword "private")) -> Nothing
    (StateMutability _) -> Just ((Info "Function Visibility" "No visibility specified"), r)
    _ -> Just ((Info "Function Visibility" "No visibility specified"), r)
