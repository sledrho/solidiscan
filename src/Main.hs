module Main where
import Parser
import Lexer
import AST
import Test
import Test.HUnit

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
