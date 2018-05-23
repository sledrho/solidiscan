module Analysis.Throw_Check where
import Solidiscan.AST
import Analysis.Visibility_Check
import Analysis.Info_Data
import Helper_Functions
-- Throw check is used to check for 'throw' useage within a function's body
{- 
funcThrowCheck :: [ContractDefinition] -> [Maybe (Info, Identifier)]
funcThrowCheck inp = do
  -- first pull all the functions from the input
  let functions = map funcContInfo $ map functionGetter $ contractContentsGetter inp
  -- then the functions are concatted to make life easier
  let concatFunc = concat functions
  -- then functions are checked to see if they contain a throw statement
  funcCheck <- fmap internalThrowCheck concatFunc
  return funcCheck

-- funcConts is a getter for the contents of a function, it returns a list of tuples containing the expressions in
-- a functions block and the identifier of the function. 
-- ? StripBlock is used on the head of the Expression list to remove the blockStatements Expression Type
funcContInfo :: [FunctionDef] -> [([Expression], Identifier)]
funcContInfo []  = []
funcContInfo (x:xs) = case x of
    (FunctionDef i _ _ _ e) -> (stripBlock(head (e)), i) : funcContInfo xs
    (FallBackFunc _ _ e) -> (stripBlock(head (e)), (Identifier "FallBack Function")) : funcContInfo xs

-- internalThrowCheck takes a tuple of expression and identifier and returns a maybe of that tuple if
-- the contents of the expression contains a throw statement
internalThrowCheck :: ([Expression], Identifier) -> Maybe (Info, Identifier)
internalThrowCheck ((x,i))
  | (elem (ThrowStatement "throw") x) == True = Just ((Warning "Deprecated Command" "Throw is deprecated in favour of revert(), require() and assert()", i))
  | (elem (ThrowStatement "throw") x) == False = Nothing

resultCleanThrow :: Maybe (Info, Identifier) -> (Info, Identifier)
resultCleanThrow x = case x of
    Just (Info _ _, Identifier _) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x 
    Just (Warning _ _, Identifier _) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x 
    Just (High _ _, Identifier _) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x 
    Nothing -> (Blank, Identifier "")

-- StripBlock removes the blockStatements expresion from the list of expressions
stripBlock :: Expression -> [Expression]
stripBlock x = case x of
  (BlockStatements x) -> x
 -}