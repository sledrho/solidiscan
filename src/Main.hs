module Main where
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
