{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Function_Check where
import Solidiscan.AST
-- import Data.Generics (Data, Typeable, mkQ, mkT, everything, everythingBut, everywhere)
import Data.Set as Set
import Test


-- getCont uses recursion to pattern match the different data constructors within the program source
-- If a contract definition is found it is passed to getContractConts
getCont :: [ProgSource] -> [ContractDefinition]
getCont [] = []
getCont (x:xs) = case x of
    (SourceUnit y) -> getCont xs
    (ContractDef y) -> y : (getCont xs)
    (ImportUnit y) -> getCont xs

-- getContractConts searches for the contents block within a contract and then
-- calls stateVarCheck
getContractConts :: [ContractDefinition] -> [[ContractConts]]
getContractConts [] = []
getContractConts (x:xs) = case x of 
    (Contract _ _ x) -> x : getContractConts xs

-- stateVarCheck checks the contents of ContractConts for state variable declarations and returns 
-- them within a list, it acts recursively to handle multiple declarations
stateVarCheck :: [[ContractConts]] -> [StateVarDeclaration]
stateVarCheck [] = []
stateVarCheck (x:xs) = case x of
    [(StateVarDec a)] -> a : stateVarCheck xs
    (_) -> stateVarCheck xs



mapGet :: [[StateVarDeclaration]] -> [[StateVarDeclaration]]
mapGet [] = []
mapGet [[]] = []
-- mapGet [[x]] = [[x]]
--mapGet (x:xs) = x : mapGet xs
mapGet (x:xs) = case x of 
    [(StateVariableDeclaration _ _ _ _)] -> x : mapGet xs

mapCheck :: [[StateVarDeclaration]] -> Bool
mapCheck [] = False
mapCheck [[]] = False
mapCheck (x:xs) 
    | [(StateVariableDeclaration (Mapping _ _ ) _ _ _ )] <- x = True
    | [(StateVariableDeclaration _ _ _ _)] <- x = False

bundleContGet =  getContractConts . getCont

-- getIf pulls the contract data from the program source
-- passing it into getContsContsIf
ifGetter :: [ProgSource] -> [ContractDefinition] --[[[Expression]]]
ifGetter [] = []
ifGetter (x:xs) = case x of
    (SourceUnit y) -> ifGetter xs
    (ContractDef y) -> y : (ifGetter xs)
    (ImportUnit y) -> ifGetter xs

-- ifGetterContents pulls the contract contents, which is then passed into funcCheck
-- to check for the functions
--ifGetterContents :: ContractDefinition -> [[Expression]]
--ifGetterContents :: [ProgSource] -> [ContractDefinition]
ifGetterContents [(Contract _ _ [])] = []
ifGetterContents [(Contract _ _ x)] = x  

-- FuncCheck is a helper function to obtain the function declarations
-- within a contracts contents, it will then call funcConts
-- funcCheck :: [ContractConts] -> [[Expression]]
funcCheck [] = []
funcCheck (x:xs) = case x of
    (StateVarDec _ ) -> [] : (funcCheck xs)
    (FunctionDefinition a) -> funcConts [a] : (funcCheck xs)

-- funcConts is a getter for the contents of a function, 
-- funcConts :: [FunctionDef] -> [Expression]
funcConts []  = []
funcConts (x:xs) = case x of
    (FunctionDef _ _ _ _ a) -> a

-- blockFunc :: [[[Expression]]] -> [[[[Expression]]]]
blockFunc (x:xs)
    | [BlockStatements [IfStatement _ _ _ ]] <- x = [x] : blockFunc xs
    | [BlockStatements [IfStatement _ _ _, IfStatement _ _ _]] <- x = [x] : blockFunc xs
    | _ <- x = blockFunc xs
blockFunc [] = []

--blockConts :: [[Expression]] -> [[Expression]]
blockConts (x:xs)
    | [BlockStatements _ ] <- x = x : blockConts xs
    | [BlockStatements []] <- x = []
    | [] <- x = [] : blockConts xs
-- blockConts (_:_:_) = []
-- blockConts [(BoolExpression _:_)] = []


ifCheck (x:xs) = case x of
    (IfStatement _ _ _) -> x : ifCheck xs


ifCont = funcCheck . ifGetterContents . ifGetter
testFunc = blockFunc . ifCont


-- ifCheck :: [[[Expression]]] -> [[Expression]]
{- ifCheck (x) 
    | [[[IfStatement _ _ _]]] <- x = [x]
    | [] <- x = [x]
 -}
-- ifCheck y = [x | x <- y, [IfStatement _ _ _]]
{- ifCheck ((x:y):xs)
    | [] <- x = ifCheck [y]   
    | [IfStatement _ _ _] <- x = [[x]] : ifCheck xs
    | [[IfStatement _ _ _]] <- y = [y] : ifCheck xs
 -}
{- ifCheck (x)
    | [[[IfStatement _ _ _]]] <- x = x
    | [[_]] <- x = [] 
ifCheck (x:xs)
    | [[IfStatement _ _ _]] <- x = x : ifCheck xs
    | [[_]] <- x = [] : ifCheck xs
    | [[]] <- x = x : ifCheck xs -}



{- reentrancyRule :: String -> IO ()
reentrancyRule inp = do
    let x = mapGet $ getCont $ runTest(inp)
    if mapCheck(x) 
        then do
            let y = ifCheck $ ifGetter $ runTest(inp)
            print(y)
        else print("No Mapping Found") -}

{- 
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
        code -}