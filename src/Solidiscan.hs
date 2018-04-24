module Main where
import Text.Show.Pretty
import Test
import Analysis.Function_Check
import Analysis.Version_Check
import Analysis.Visibility_Check
import Analysis.Info_Data
import Analysis.Throw_Check
import Analysis.Reentrancy_Check
import Analysis.FallBackFunc_Check
import Helper_Functions
import Test.HUnit
import Solidiscan.Lexer
import Solidiscan.Parser
import Solidiscan.AST
import Control.Monad
import System.Environment
import qualified Data.Map as Map

data InfoList = InfoList [Info]
                deriving (Show)
type InfoMap = Map.Map InfoList

{- main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens2 inStr)
  --putStrLn ("parseTree: " ++ show(reverse(parseTree)))
  execute(inStr) -}

-- using getArgs to get the command line arguments
main :: IO ()
main = do
  args <- getArgs
  case args of
    []       -> putStrLn "Usage: solidiscan <input file>"
    [fname] -> do
      contents <- readFile fname
      process contents

process :: String -> IO ()
process input = do
  let ast = parseAst(input)
  executeAnalysis(input)

-- Execute takes a string (program source) and returns an IO Action
-- ? Just used for testing at the moment
executeAnalysis :: String -> IO ()
executeAnalysis source = do
  -- generate the ast from the source
  let ast = parseAst(source)
  -- splits the ast into it's contracts
  let contracts = listContracts(ast)
  let contractContents = contractContentsGetter(contracts)
  -- CleanResult is the result of the funcVisCheck used to check functions for 
  -- the lack of public/private
  let funcVisResult = visibilityTest (contractContents)
  printElements(funcVisResult)
  let versionResult = versionTest(source)
  when (versionResult /= []) $ putStrLn versionResult
  -- let versionResult = resultPrint $ resultClean $ versionTester $ versionGetter(ast)
  -- performing the throw check on the inputted contract
  let throwCheckResult = map resultPrinter $ resultCleaner $ funcThrowCheck(contracts)
  printElements(throwCheckResult)
  let reentResult = reentPrint $ reentClean $ reentCheck contracts
  -- to handle the issue of not printing an empty line to ther terminal
  -- check to see if the result is an empty list, if not then print
  putStrLn(reentResult)
  


{-
-- for reentrancy
execute :: String -> IO ()
execute x = do
  let y = runTest x
  let z = getCont(y)
  let t = mapGet(z)
  let f = getIf(y)
  print(f)
  print(mapCheck(z))
  print(ifCheck(f)) haske
-}


-- for running unit tests
{- 
main :: IO ()
main = do
  runTestTT test1
  putStrLn "Finished."
-}

