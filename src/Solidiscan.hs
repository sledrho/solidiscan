module Main where
import Text.Show.Pretty
import Test
import Analysis.Function_Check
import Analysis.Version_Check
import Analysis.Visibility_Check
import Analysis.Info_Data
import Helper_Functions
import Test.HUnit
import Solidiscan.Lexer
import Solidiscan.Parser
import Solidiscan.AST
import qualified Data.Map as Map

data InfoList = InfoList [Info]
                deriving (Show)
type InfoMap = Map.Map InfoList

main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens2 inStr)
  putStrLn ("parseTree: " ++ show(reverse(parseTree)))


execute :: String -> IO ()
execute source = do
  let ast = runTest(source)
  let contracts = listContracts(ast)
  let visibilityResult = funcVisCheck(contracts)
  let cleanResult = resultCleaner(visibilityResult)
  print(cleanResult)
  --print("Contracts: " ++ contracts)
  --print("Version: " ++ show(version))

-- RunAnalysis will take the inputted parse tree and run the written rules 
-- on the said parse tree
runAnalysis :: [ProgSource] -> Maybe Info
runAnalysis progSource = do
  x <- versionTest'(progSource)
  return x


--infoWrite :: Info -> InfoMap
infoWrite x = info 
  where
    info = Map.insert x

{- execute :: String -> IO ()
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

