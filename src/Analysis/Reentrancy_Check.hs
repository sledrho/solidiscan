module Analysis.Reentrancy_Check where
import Solidiscan.AST
import Analysis.Info_Data
import Helper_Functions
import Analysis.Throw_Check
-- reentCheck takes a contractDefinition and checks for potential re-entrancy
-- returning a tuple containing the Info and Identifier
reentCheck :: [ContractDefinition] -> IO ()--[Maybe (Info, Identifier)]
reentCheck inp = do
  -- first get all potential state-variable definitions from the input
  let stateVars = fmap stateVarMapCheck $ map stateVarCheckRe $ contractContentsGetter inp
  let functions = fmap functionGetter $ contractContentsGetter inp 
  let funcConts = map funcContInfo(functions)
  -- using infix form of fmap <$> translates to: fmap ifStateCheck funcConts
  -- let testCheck = ifStateCheck <$> funcConts
  print(stateVars)
  print("Function Contents:")
  print(funcConts)
  -- print(testCheck)

-- StateVarCheckRe takes a list of contract contents and returns a list of
-- all possible state variable declarations
stateVarCheckRe :: [ContractConts] -> [StateVarDeclaration]
stateVarCheckRe [] = []
stateVarCheckRe (x:xs) = case x of
  (StateVarDec x) -> x : stateVarCheckRe xs
  (FunctionDefinition _ ) -> stateVarCheckRe xs
  (UsingFor _ ) -> stateVarCheckRe xs
  (StructDef _) -> stateVarCheckRe xs
  (EventDef _ ) -> stateVarCheckRe xs
  (ModDef _ ) -> stateVarCheckRe xs
  (EnumDef _ ) -> stateVarCheckRe xs

-- stateVarMapChekc takes a list of state variable declarations and checks for 
-- potential mappings
stateVarMapCheck :: [StateVarDeclaration] ->[Maybe Identifier]
stateVarMapCheck [] = []
stateVarMapCheck (x:xs) = case x of
  (StateVariableDeclaration (Mapping _ _) _ a _) -> Just a : stateVarMapCheck xs
  _ -> stateVarMapCheck xs

-- ifStateCheck pulls the info from the list of expressions and returns the expression if it contains
-- an if statement, 
{- ifStateCheck :: [([Expression], Identifier)] -> [(Expression, Expression, Identifier)]
ifStateCheck [] = []
ifStateCheck ((x:xs,i):ys) = case x of
  (IfStatement a b _) -> (a,b,i) : ifStateCheck ys
  _ -> ifStateCheck ys -}

{- identCheck :: ([[(Expression, Expression, Identifier)]],[[Maybe Identifier]]) -> Bool 
identCheck ((x,exp,i),t) = case x of -}
{- 
identCheck x y = case x of
  (StateVariableDeclaration (Mapping _ _) _ a _) ->
    when (a == (Identifier "balances")) $ putStrLn "bad"
  _ -> return () -}

-- ! Currently trying to figure out how to pass the if statement information around and check
-- ! if the state variable identifier is included in the if statement check