module Analysis.Reentrancy_Check where
import Solidiscan.AST
import Analysis.Info_Data
import Helper_Functions
import Analysis.Throw_Check
-- reentCheck takes a contractDefinition and checks for potential re-entrancy
-- returning a tuple containing the Info and Identifier
reentCheck :: [ContractDefinition] -> Maybe (Info, Identifier)
reentCheck inp = do
  -- first get all potential state-variable definitions from the input
  let stateVars = fmap stateVarMapCheck $ map stateVarCheckRe $ contractContentsGetter inp
  let functions = fmap functionGetter $ contractContentsGetter inp 
  let funcConts = concat $ map funcContInfo(functions)
  let strings = identPull <$> stateVars
  -- pull the conntents of the if statements, by mapping ifStateCheck' over the map of fst of 
  let ifContents = fmap ifStateCheck (fst <$> funcConts)
  -- check if any of the state variables are within the if-statements in the function
  let test2 = msgTest (head (concat ifContents)) (head strings)
  let funcComp = secondStates <$> (funcConts)
  let test3 = memberAxsTest (head (head funcComp)) (head strings)
  re_entRace test2 test3

-- Re_EntRace's are two functions to manage the conditionals of the inputs
re_entRace :: Bool -> (Bool, b) -> Maybe (Info, b)
re_entRace race1 race2
  | race1 == True = re_entRace2 race2
re_entRace2 :: (Bool, b) -> Maybe (Info, b)
re_entRace2 race2
  | (fst (race2) == True) = reentSuccess race2


reentSuccess inp = Just ((High "Possible Re-Entrancy" "The function contains a possible re-entrancy vulnerability."), (snd (inp)))
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


{- -- ifStateCheck pulls the info from the list of expressions and returns the expression if it contains
-- an if statement, 
ifStateCheck :: ([Expression], Identifier) -> (Expression, Expression, Identifier)
-- ifStateCheck [] = []
ifStateCheck ((x:xs,i)) = case x of
  (IfStatement a b _) -> (a,b,i)
 -}
-- pulls the identifier from a maybe value
identPull [(Just (Identifier x))] = x

-- pulles the expressions from an if statement
ifStateCheck [] = []
ifStateCheck (x:xs) = case x of
  (IfStatement a _ _ ) -> a : ifStateCheck xs
  _ -> ifStateCheck xs

-- really un-intuitive way of checking for balances identifier within an expression
-- used to test if an if-statement contains a state variable already seen
msgTest :: Expression -> Ident -> Bool
msgTest x y = case x of
  (NotExpression (FunctionCall (FunctionCall (MemberAccess (MemberAccess (MemberAccess (IdentExpression "msg") "." (Identifier "sender")) "." (Identifier "call")) "." (Identifier "value")) (ExpLst [[IndexAccess [IdentExpression ident,MemberAccess (IdentExpression "msg") "." (Identifier "sender")]]])) (ExpLst [])))
    | ident == y -> True
    | otherwise -> False
  (FunctionCall (MemberAccess (MemberAccess (MemberAccess (IdentExpression "msg") "." (Identifier "sender")) "." (Identifier "call")) "." (Identifier "value")) (ExpLst [[IndexAccess [IdentExpression ident,MemberAccess (IdentExpression "msg") "." (Identifier "sender")]]]))
    | ident == y -> True
    | otherwise -> False

memberAxsTest :: (Expression, Identifier) -> Ident -> (Bool, Identifier)
memberAxsTest (inp, i) testIdent = case inp of
  (LValEqual (IndexAccess [IdentExpression testIdent,MemberAccess (IdentExpression "msg") "." (Identifier "sender")]) (NumExpression (NumberLiteral 0 []))) -> (True, i)
  
-- pulls the remainder of the block of expressions out after an if statement
secondStates :: ([Expression], Identifier) -> [(Expression, Identifier)]
secondStates ([],i) = []
secondStates (x:xs,i)  = case x of
  (IfStatement _ out _) -> secondStates (xs,i)
  (LValEqual _ _) -> (x,i) : secondStates (xs, i)
  _ -> secondStates (xs,i)
-- Currently trying to figure out how to pass the if statement information around and check
-- if the state variable identifier is included in the if statement check
