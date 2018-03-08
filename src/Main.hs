module Main where
import Test
import Test.HUnit
import Solidiscan.Lexer
import Solidiscan.Parser
import Solidiscan.AST

{-
main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(reverse(parseTree)))
-}

main :: IO ()
main = do
  runTestTT test1
  putStrLn "Finished."

runTest n = (reverse(solidiscan(alexScanTokens2 n)))