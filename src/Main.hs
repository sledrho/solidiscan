module Main where
import Parser
import Lexer
import Test
import Test.HUnit

s = "pragma solidity; contract ident_1234 { }"

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
