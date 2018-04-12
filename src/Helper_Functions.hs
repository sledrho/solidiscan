module Helper_Functions where 
import Solidiscan.AST
  -- grabs the contracts from the supplied source file and produces a list
-- with each individual item being a contract
listContracts :: [ProgSource] -> [ContractDefinition]
listContracts [] = []
listContracts (x:xs) = case x of
  (SourceUnit y) -> listContracts xs
  (ContractDef y) -> y : (listContracts xs)
  (ImportUnit y) -> listContracts xs
