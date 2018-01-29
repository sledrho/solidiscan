module Main where
import Parser
import Lexer

s = "pragma solidity"
main :: IO ()
main = do 
  inStr <- getContents
  let parseTree = solidiscan (alexScanTokens inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"