module Main where
import Parser
import Lexer

s = "pragma solidity; contract ident_1234 { }"
main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(reverse(parseTree)))
