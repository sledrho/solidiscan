module Main where
import Parser
import Lexer

s = "pragma solidity;contract ident_1234 { }"
main :: IO ()
main = do 
  inStr <- getLine
  let parseTree = solidiscan (alexScanTokens2 s)  
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"