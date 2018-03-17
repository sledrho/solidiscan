module Analysis.Version_Check where 
import Solidiscan.AST
{-# LANGUAGE ScopedTypeVariables #-}

-- version check passes in the first part of an AST source
versionCheck :: [SourceUnit] -> [Char]
versionCheck (x:xs)
    | versionTest(x) == False = "Possible Insecure Version"
    | versionTest(x) == True = "Most up-to-date version"

-- VersionTest takes the first element of the AST source and passes the version info
-- into the Version function
versionTest :: SourceUnit -> Bool
versionTest (SourceUnit (PragmaDirective _ r x)) = version (r)
versionTest (_) = undefined

-- Version takes a Version data type and checks if it is equal to the most up-to-date version
-- if so returns True
-- if not returns False  
-- TODO: Rethink this as it's not very good.
version :: Version -> Bool
version r | r == (Version "0.4.20") = True
          | otherwise = False

lineNumber :: Int -> String
lineNumber x = "Located at Line:" ++ show(x) 