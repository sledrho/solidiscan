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

{- 
main :: IO ()
main = do
  runTestTT test1
  putStrLn "Finished."
-}
