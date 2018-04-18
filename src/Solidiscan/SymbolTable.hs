module Solidiscan.SymbolTable where
import Solidiscan.AST

data ContractSymbol = ContractSymbol
                      {
                          contractName :: Identifier -- Contracts Name
                          , contractVariables :: [ContractPart] -- (variable name, variable typename)
                      }
                      deriving ( Eq)
instance Show ContractSymbol where
  show (ContractSymbol cname cvar) = show cname ++ show(cvar)

data ContractContsSymbol = ContractContsSymbol
                           {
                             conType :: [ContractPart]
                           }
                           deriving (Show, Eq)

data ContractPart = StateVariableSymbol
                    {
                      varType :: TypeName
                      , varName :: Identifier
                    }
                  | FunctionDefinitionSymbol
                    {
                      funcName :: Identifier
                      , funcVars :: [Expression]
                    }
                  | EventDefSymbol
                    {
                      eventName :: Identifier
                      , eventParams :: [[[EParameters]]] 
                    }
                    deriving (Eq)

instance Show ContractPart where
  show (StateVariableSymbol vType vName) = show vType ++ "," ++ show vName
  show (FunctionDefinitionSymbol fName fVars) = show fName ++ show fVars
  show (EventDefSymbol eventName eventParams) = show eventName ++ show eventParams
{- instance Show ContractSymbol where
  show (ContractSymbol cName vars) = show cName -}

-- contractSymbols builds a symbol table for contract variables
contractSymbols :: ProgSource -> ContractSymbol
contractSymbols (ContractDef contractDefinition) = contractSymbolContractDef contractDefinition

contractSymbolContractDef :: ContractDefinition -> ContractSymbol
contractSymbolContractDef (Contract contractName _ contractConts) = (ContractSymbol contractName (contrsd contractConts))

contrs :: [ContractConts] -> [ContractContsSymbol]
contrs [] = []
contrs (x:xs) = (ContractContsSymbol [(contrP x)]) : contrs xs

contrP (StateVarDeclaration varType [] identifier []) = (StateVariableSymbol varType identifier)

contrP (FunctionDefinition a) = contrF a
contrP (EventDef a) = contrE a

contrF (FunctionDef fName [] [] [] block) = (FunctionDefinitionSymbol fName block)
contrE (EventDefinition eventName eParam) = (EventDefSymbol eventName eParam)

--contrsd :: [ContractConts] -> [ContractContsSymbol]
contrsd [] = []
contrsd (x:xs) = contrP x : contrsd xs