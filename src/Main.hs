module Main where
import Text.Show.Pretty
import Test
import Analysis.Function_Check
import Analysis.Version_Check
import Test.HUnit
import Solidiscan.Lexer
import Solidiscan.Parser
import Solidiscan.AST

main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(reverse(parseTree)))


{- execute :: String -> IO ()
execute x = do
  let y = runTest x
  let z = getCont(y)
  let t = mapGet(z)
  let f = getIf(y)
  print(f)
  print(mapCheck(z))
  print(ifCheck(f)) 
-}



-- for running unit tests
{- 
main :: IO ()
main = do
  runTestTT test1
  putStrLn "Finished."
-}