module Analysis.Version_Check where 
import Solidiscan.AST
import Analysis.Info_Data
import Helper_Functions
import qualified GitHub.Endpoints.Repos.Releases as GitHub

versionTest :: String -> String
versionTest inp = resultPrint $ resultClean $ versionTester $ versionGetter $ parseAst inp
-- Previous version getter and tester implemented with the maybe data type
versionGetter :: [ProgSource] -> Maybe Version
versionGetter [] = Nothing
versionGetter (x:xs) = case x of
    (SourceUnit (PragmaDirective _ r _)) -> Just r
    _ -> Nothing

-- versionTester takes a maybe version and returns a maybe Tuple containing the Info
-- and the version information
versionTester :: Maybe Version -> Maybe (Info, Version)
versionTester v 
    | v == Just (Version "0.4.20") = Nothing
    | v == Nothing = Just ((Warning "Version Info" "No version information supplied"), (versionPull v))
    | (v `elem` outDatedVersions) == True = Just ((High "Version Info" "Outdated compiler version used"), (versionPull v))
    
-- List containing outdated solidity versions
-- ! Refactor into a smarter version
outDatedVersions = [(Just (Version "0.4.19")),
                    (Just (Version "0.4.18")),
                    (Just (Version "0.4.17")),
                    (Just (Version "0.4.16")),
                    (Just (Version "0.4.15")),
                    (Just (Version "0.4.14")),
                    (Just (Version "0.4.13")),
                    (Just (Version "0.4.12")),
                    (Just (Version "0.4.11")),
                    (Just (Version "0.4.10")),
                    (Just (Version "0.4.9")),
                    (Just (Version "0.4.8")),
                    (Just (Version "0.4.7")),
                    (Just (Version "0.4.6")),
                    (Just (Version "0.4.5")),
                    (Just (Version "0.4.4")),
                    (Just (Version "0.4.3")),
                    (Just (Version "0.4.2")),
                    (Just (Version "0.4.1")),
                    (Just (Version "0.4.0")),
                    (Just (Version "0.3.6")),
                    (Just (Version "0.3.5")),
                    (Just (Version "0.3.4")),
                    (Just (Version "0.3.3")),
                    (Just (Version "0.3.2")),
                    (Just (Version "0.3.1")),
                    (Just (Version "0.3.0")),
                    (Just (Version "0.2.2")),
                    (Just (Version "0.2.1")),
                    (Just (Version "0.2.0")),
                    (Just (Version "0.1.7")),
                    (Just (Version "0.1.6")),
                    (Just (Version "0.1.5")),
                    (Just (Version "0.1.4")),
                    (Just (Version "0.1.3")),
                    (Just (Version "0.1.2"))]

-- versionPull turns a Maybe version into a version
versionPull :: Maybe Version -> Version
versionPull x 
    | Just (Version a) <- x = maybe (Version "Broken") id x
    | Nothing  <- x = (Version "Not Supplied")

-- resultClean is used to remove the maybe info from the result of funcVisCheck
-- returning a list of tuples of (Info, Identifier)
-- ? Needs rethought as essentially does the same as resultCleaner
resultClean :: Maybe (Info, Version) -> (Info, Version)
resultClean x = case x of
    Just (Info _ _, Version _) -> maybe (Info "Broken" "Broken", Version "Broken") id x 
    Just (Warning _ _, Version _) -> maybe (Info "Broken" "Broken", Version "Broken") id x 
    Just (High _ _, Version _) -> maybe (Info "Broken" "Broken", Version "Broken") id x 
    Nothing -> (Blank, Version "") -- this is how to handle if the version is up to date

-- Pulls the information from the (Info, Version) tuple and returns a string
resultPrint :: (Info, Version) -> String
resultPrint inp = case inp of
    (Info loc det, Version ver) -> "[!] Info: " ++ loc ++ "\n Details: " ++ det
    (Warning loc det, Version ver) -> "[!] Warning: " ++ loc ++ "\n Details: " ++ det ++ ". Version: " ++ ver 
    (High loc det, Version ver) -> "[!] High: " ++ loc ++ "\n Details: " ++ det ++ ". Version: " ++ ver
    (Blank, Version ver) -> [] -- results in a blank line in the output

{- 
-- Old version
-- VersionGetter is a helper function to pull the version from a supplied
-- program source.
versionGetter :: [ProgSource] -> Version
versionGetter (x:xs) = case x of
    (SourceUnit (PragmaDirective _ r _)) -> r
    _ -> (Version "Undefined")

versionTester :: Version -> Info
versionTester v 
    | v == (Version "0.4.2") = (Info "Version Info" "Version is up to date.")
    | v == (Version "0.4.20") = (Info "Version Info" "Version is up to date.")
    | v == (Version "Undefined") = (Warning "Version Info" "No version information supplied!")
    -- | (v `elem` outDatedVersions) == True = (High "Version Info" "Outdated compiler version used.") 
    
-- version check passes in the first part of an AST source
versionCheck :: [ProgSource] -> [Char]
versionCheck [] = []
versionCheck (x:xs)
    | versionTest(x) == False = "Possible Insecure Version"
    | versionTest(x) == True = "Most up-to-date version"

-- VersionTest takes the first element of the AST source and passes the version info
-- into the Version function
versionTest :: ProgSource -> Bool
versionTest (SourceUnit (PragmaDirective _ r x)) = version (r)
versionTest (_) = undefined

 -- versionTest' :: [ProgSource] -> Info
versionTest' version = do
    x <- versionTester' $ versionGetter'(version)
    return x
-}