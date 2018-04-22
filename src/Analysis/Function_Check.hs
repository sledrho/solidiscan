{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Function_Check where
import Solidiscan.AST
-- import Data.Generics (Data, Typeable, mkQ, mkT, everything, everythingBut, everywhere)
import Data.Set as Set
import Debug.Trace

type Definition = String
type Location = Int
data RuleError = RuleError Definition Location
                 deriving(Show, Eq)

{- -- getCont uses recursion to pattern match the different data constructors within the program source
-- If a contract definition is found it is passed to getContractConts
getCont :: [ProgSource] -> [ContractDefinition]
getCont [] = []
getCont (x:xs) = case x of
    (SourceUnit y) -> getCont xs
    (ContractDef y) -> y : (getCont xs)
    (ImportUnit y) -> getCont xs

-- getContractConts searches for the contents block within a contract and then
-- calls stateVarCheck
--getContractConts :: [ContractDefinition] -> [ContractConts]
getContractConts [] = []
getContractConts (x:xs) = case x of 
    (Contract _ _ x) -> x -- : getContractConts xs

-- stateVarCheck checks the contents of ContractConts for state variable declarations and returns 
-- them within a list, it acts recursively to handle multiple declarations
stateVarCheck :: [ContractConts] -> [StateVarDeclaration]
stateVarCheck [] = []
stateVarCheck (x:xs) = case x of
    (StateVarDec a) -> a : stateVarCheck xs
    (_) -> stateVarCheck xs

mapGet :: [StateVarDeclaration] -> StateVarDeclaration
mapGet [] = undefined
-- mapGet [[]] = []
-- mapGet [[x]] = [[x]]
--mapGet (x:xs) = x : mapGet xs
mapGet (x:xs) = case x of 
    (StateVariableDeclaration _ _ _ _) -> x -- : mapGet xs

-- mapIdentGetter pulls the identifier of the state variable declaration
mapIdentGetter :: StateVarDeclaration -> Identifier
mapIdentGetter inp = case inp of
    (StateVariableDeclaration (Mapping _ _) _ a _) -> a

-- contractgetter combines getContractConts and getCont using function composition
contractGetter =  getContractConts . getCont

-- Reentrancy rule will use some basic getter functions to build an image of the contract
-- It will first check if the contract contains a state variable declaration of type mapping
-- this will then grab the identifier of the stateVar
--
-- The next check is to check if there is an if statement within the contracts functions
{- reentrancyRule :: String -> IO ()
reentrancyRule inp = do
    let x = mapGet . stateVarCheck . contractGetter $ runTest(inp)
    if mapCheck(x)
        then do
            print("Mapping found")
            let mappingIdent = mapIdentGetter(x)
            let ifContents = testIf $ runTest(inp)
            print(mappingIdent)
            if (funcExist ifContents)
                then do
                    print("If statment found")
                    let x = stateVarName $ ifContents
                    print(x)
                    -- stateVarCheck x mappingIdent

                else print("No if statement detected.")
        else print("No mapping found")
    {- if mapCheck(x) 
        then do
            let y = ifCheck $ ifGetter $ runTest(inp)
            print(y)
        else print("No Mapping Found") -} -}


-- ifGetterContents pulls the contract contents, which is then passed into funcCheck
-- to check for the functions
ifGetterContents :: [ContractDefinition] -> [ContractConts]
ifGetterContents [] = []
-- ifGetterContents [(Contract _ _ [])] = []
ifGetterContents (x:xs) = case x of
    (Contract _ _ x) -> x -- : ifGetterContents xs

-- FuncCheck is a helper function to obtain the function declarations
-- within a contracts contents
funcCheck :: [ContractConts] -> [ContractConts]
funcCheck [] = []
funcCheck (x:xs) = case x of
    (StateVarDec _ ) -> (funcCheck xs)
    (FunctionDefinition _) -> x : (funcCheck xs)
    undefined -> funcCheck xs

funcDefCont :: [ContractConts] -> [[Expression]]
funcDefCont [] = []
funcDefCont (x:xs) = case x of
    (FunctionDefinition a) -> funcConts [a] : (funcDefCont xs)
    _ -> funcDefCont xs

-- funcConts is a getter for the contents of a function, 
funcConts :: [FunctionDef] -> [Expression]
funcConts []  = []
funcConts (x:xs) = case x of
    (FunctionDef _ _ _ _ a) -> a

-- BlockFunc takes a list of expression lists, and returns the contents of the first Block of statements
blockFunc :: [[Expression]] -> [Expression]
blockFunc (x:xs)
    | [BlockStatements a] <- x = a
    | _ <- x = blockFunc xs
blockFunc [] = []

-- ifCheck pulls out the ifstatement from a list of expressions
ifCheck :: [Expression] -> [Expression]
ifCheck [] = []
ifCheck (x:xs)
    | (IfStatement _ _ _) <- x = x : ifCheck xs
    | undefined <- x = ifCheck xs

ifCont = ifGetterContents . getCont
testIf = ifCheck . blockFunc . funcDefCont . funcCheck . ifCont

-- TODO: sort this so that the statevar name can be detected within an if statement
stateVarName  :: [Expression] -> Expression
stateVarName x = case x of
    [(IfStatement a _ _ )] -> a

-- knownVarCheck :: Expression -> Bool
knownVarCheck x s
    | x == s = True
    | otherwise = False
-- Boolean Checks

-- FuncExist is used as a simple boolean check
funcExist :: [Expression] -> Bool
funcExist inp
    | [(IfStatement _ _ _)]<- inp = True
    | otherwise = False

-- MapCheck checks if a state var dec is there
mapCheck :: StateVarDeclaration -> Bool
mapCheck (x) 
    | (StateVariableDeclaration (Mapping _ _ ) _ _ _ ) <- x = True
    | (StateVariableDeclaration _ _ _ _) <- x = False
    

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
        code -} -}