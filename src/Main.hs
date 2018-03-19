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

rule1 = [[StateVariableDeclaration (Mapping (AddrType "address") (ElementaryTypeName (UIntType "uint"))) [PublicKeyword "public"] (Identifier "balances") []]]


execute :: String -> IO ()
execute x = do
  let y = runTest x
  let z = getCont(y)
  let t = mapGet(z)
  if z == [[]] 
    then print("Empty contract, no issues found.")
    else if z /= rule1 
      then print("Mapping found but no external use")
      else print("Mapping Found")
  
{- 
main :: IO ()
main = do
  runTestTT test1
  putStrLn "Finished."
-}
