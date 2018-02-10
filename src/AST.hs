module AST where
-- The following module is the AST data type for the parser.

{-
SourceUnit is the overall program source consists of 3 main data values:
    1. PragmaDirective (Essentially Version Information)
    2. ImportUnit (Imported Contracts/Libraries)
    3. ContractDef (A definition of an actual contract.)
-}

data SourceUnit = SourceUnit PragmaDirective
                | ImportUnit ImportDirective 
                | ContractDef ContractDefinition
                deriving (Show, Eq)
              
-- Version Information
data PragmaDirective = PragmaDirective PragmaName
                       deriving(Show, Eq)

data PragmaName = PragmaName Ident
                  deriving(Show, Eq)

data PragmaValue = PragmaValue Dnum
                   deriving(Show, Eq)
-- File imports/Contract Imports
data ImportDirective = ImportDir String
                     | ImportMulti Ident Ident Ident Ident
                       deriving (Show, Eq)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Identifier [InheritanceSpec] [ContractConts]
                          deriving (Show, Eq)

-- Data for the iheritance specifications
data InheritanceSpec = InheritanceSpec TypeName [TypeName]
                  deriving (Show, Eq)
-- The contents of a Contract
data ContractConts = ContractContents StateVarDec
                   | FunctionDefinition FunctionContents
                     deriving (Show, Eq)

data FunctionContents = FunctionDef FuncName FuncParam
                        deriving(Show, Eq)

-- Declaring a variable, 
data StateVarDec = StateVariableDeclaration TypeName [PublicKeyword] Identifier [Expression]
                   deriving (Show, Eq)

data Identifier = Identifier Ident
                  deriving(Show, Eq)    

data AssVar = AssVar Ident
               deriving(Show, Eq)
            
data PublicKeyword = PublicKeyword Ident
                   | PrivateKeyword Ident
                   | InternalKeyword Ident
                   | ConstantKeyword Ident
                     deriving(Show, Eq)

-- The type of the variable assignment

data ElemType = AddrType Ident
              | BoolType Ident
              | StringType Ident
              | VarType Ident
                deriving(Show, Eq)

-- Elementary types e.g address/bool/string/var etc etc
data TypeName = TypeName Ident
              | ElementaryTypeName ElemType
              | UserDefinedTypeName Ident         
                deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

data Expression = BoolExpression BooleanLiteral
                | NumExpression Int
                | IdentExpression Ident
                  deriving (Show, Eq)

data BooleanLiteral = BooleanLiteral Ident  
                      deriving (Show, Eq)

-- Basic Identifier type :: String
type Ident = String
type FuncName = String
type FuncParam = String
type Dnum = Double
--type AssVar = String
