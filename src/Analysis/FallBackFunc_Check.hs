module Analysis.FallBackFunc_Check where
import Solidiscan.AST
import Analysis.Info_Data
import Helper_Functions

fallBackCheck :: [ContractDefinition] -> IO ()
fallBackCheck inp = do
  return undefined