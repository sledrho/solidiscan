module Analyzer where
import Solidiscan.AST

contractCheck :: [SourceUnit] -> String
contractCheck (x:xs)
    | x:xs == [] = "No Contract Detected"
    | x == y = "Contract Detected"
      where y = contract_check

-- version check passes in the first part of an AST source
versionCheck :: [SourceUnit] -> [Char]
versionCheck (x:xs)
    | versionTest(x) == False = "Possible Insecure Version"
    | versionTest(x) == True = "Most up-to-date version"

-- VersionTest takes the first element of the AST source and passes the version info
-- into the Version function
versionTest :: SourceUnit -> Bool
versionTest (SourceUnit (PragmaDirective _ r)) = version (r)
versionTest (_) = undefined

-- Version takes a Version data type and checks if it is equal to the most up-to-date version
-- if so returns True
-- if not returns False  
-- TODO: Rethink this as it's not very good.
version :: Version -> Bool
version r | r == z = True
          | r /= z = False
            where z = (Version "0.4.20")
            

contract_check = (SourceUnit (PragmaDirective (PragmaName "solidity") (Version "0.4.20")))