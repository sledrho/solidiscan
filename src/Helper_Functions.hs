module Helper_Functions where 
import Solidiscan.AST
import Analysis.Info_Data

  -- grabs the contracts from the supplied source file and produces a list
-- with each individual item being a contract
listContracts :: [ProgSource] -> [ContractDefinition]
listContracts [] = []
listContracts (x:xs) = case x of
  (SourceUnit y) -> listContracts xs
  (ContractDef y) -> y : (listContracts xs)
  (ImportUnit y) -> listContracts xs

-- ContractContentsGetter pulls the contents of each contract definition, resulting in a list of contract contents
contractContentsGetter :: [ContractDefinition] -> [[ContractConts]]
contractContentsGetter [] = []
contractContentsGetter (x:xs) = case x of
    (Contract _ _ x) -> x : contractContentsGetter xs

-- functionGetter pulls the function information from the contract contents
functionGetter :: [ContractConts] -> [FunctionDef]
functionGetter [] = []
functionGetter (x:xs) = case x of
    (FunctionDefinition a) -> a : functionGetter xs
    _ -> functionGetter xs


-- resultCleaner is used to remove the maybe info from the result of funcVisCheck
-- returning a list of tuples of (Info, Identifier)
resultCleaner :: [Maybe (Info, Identifier)] -> [(Info, Identifier)]
resultCleaner [] = []
resultCleaner (x:xs) = case x of
    Just (Info _ _, Identifier _ ) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x : resultCleaner xs
    Just (Warning _ _, Identifier _ ) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x : resultCleaner xs
    Just (High _ _, Identifier _ ) -> maybe (Info "Broken" "Broken", Identifier "Broken") id x : resultCleaner xs
    Nothing -> resultCleaner xs

-- resultPrinter takes a tuple of type (Info, Identifier) and returns a string built from
-- the information provided in the tuple
-- example useage is :- map resultPrinter $ resultCleaner
resultPrinter :: (Info, Identifier) -> String
resultPrinter x = case x of
    (Info loc det, Identifier id) -> "[!] Info: " ++ loc ++ "\n Details: " ++ det ++ " in Function: " ++ id
    (Warning loc det, Identifier id) -> "[!] Warning: " ++ loc ++ "\n Details: " ++ det ++ " in Function: " ++ id
    (High loc det, Identifier id) -> "[!] High: " ++ loc ++ "\n Details: " ++ det ++ " in Function: " ++ id


-- printElements takes a list of Strings and then prints them in a IO () action
-- example useage is :- printElements $ map resultPrinter $ resultCleaner
printElements :: [String] -> IO ()
printElements = mapM_ putStrLn