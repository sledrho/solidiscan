{-# LANGUAGE DeriveDataTypeable #-}
module Solidiscan.AST where
import Solidiscan.Lexer
import Data.Typeable
import Data.Data
import Data.Generics (Data, Typeable, mkQ, mkT, everything, everywhere)

-- The following module is the AST data type for the parser.


{-
SourceUnit is the overall program source consists of 3 main data values:
    1. PragmaDirective (Essentially Version Information)
    2. ImportUnit (Imported Contracts/Libraries)
    3. ContractDef (A definition of an actual contract.)
-}

data ProgSource = SourceUnit PragmaDirective
                | ImportUnit ImportDirective 
                | ContractDef ContractDefinition
                deriving (Show, Eq, Data, Typeable, Ord)
              
-- Version Information
data PragmaDirective = PragmaDirective PragmaName Version Int
                       deriving(Show, Eq, Data, Typeable, Ord)

data Version = Version String 
               deriving (Show, Eq, Data, Typeable, Ord)

data PragmaName = PragmaName Ident
                  deriving(Show, Eq, Typeable, Data, Ord)

data PragmaValue = PragmaValue Dnum
                   deriving(Show, Eq, Data, Typeable, Ord)
-- File imports/Contract Imports
data ImportDirective = ImportDir String
                     | ImportMulti Identifier Identifier Identifier String 
                       deriving (Show, Eq, Data, Typeable, Ord)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Identifier [InheritanceSpec] [ContractConts]
                          deriving (Show, Eq, Data, Typeable, Ord)

-- Data for the iheritance specifications
-- ? 
data InheritanceSpec = InheritanceSpec InheritanceSpecifier [InheritanceSpecifier]
                  deriving (Show, Eq, Data, Typeable, Ord)

data InheritanceSpecifier = InheritanceSpecifier TypeName [[Expression]]
                            deriving (Show, Eq, Data, Typeable, Ord)
-- The contents of a Contract
data ContractConts = StateVarDec StateVarDeclaration
                   | FunctionDefinition FunctionDef
                   | UsingFor UsingForDec
                   | StructDef StructDefinition
                   | EventDef EventDefinition
                   | ModDef ModifierDefinition
                   | EnumDef EnumDefinition
                     deriving (Show, Eq, Data, Typeable, Ord)

data FunctionDef = FunctionDef Identifier [[Parameter]] [FuncMods] [ReturnParam] [Expression]
                        deriving (Show, Eq, Data, Typeable, Ord)

data FuncMods = ModifierInvs [[[Expression]]]
              | StateMutability PublicKeyword
              | FuncVars PublicKeyword
                deriving (Show, Eq, Ord, Data, Typeable)

data ReturnParam = ReturnParam [[Parameter]]
                   deriving (Show, Eq, Ord, Data, Typeable)

data StructDefinition = StructDefinition Identifier [[Expression]]
                        deriving (Show, Eq, Ord, Data, Typeable) 

data EventDefinition = EventDefinition Identifier [[[EParameters]]]
                       deriving (Show, Eq, Data, Typeable, Ord)
{-
data Statements = Statements [Statement]
                  deriving (Show, Eq, Data, Typeable, Ord)

data Statement = IfStatement Expression
               | SimpleStatement Expression
                 deriving (Show, Eq, Data, Typeable, Ord)

data IfState = IfState ElseState
               deriving (Show, Eq, Data, Typeable, Ord)

data ElseState = ElseState Statement
                 deriving (Show, Eq, Data, Typeable, Ord)
-}

data ModifierDefinition = ModifierDefinition Identifier [[[Parameter]]] [Expression]
                          deriving (Show, Eq, Data, Typeable, Ord)

data EnumDefinition = EnumDefinition Identifier [EnumValue]
                      deriving (Show, Eq, Data, Typeable, Ord)

data EnumValue = EnumValue Identifier
                 deriving (Show, Eq, Data, Typeable, Ord)

{- 
data StateMutability = StateMutability PublicKeyword
                       deriving (Show, Eq, Data, Typeable, Ord)
-}

data EParameters = EParameters TypeName Identifier
                   deriving (Show, Eq, Data, Typeable, Ord)

data Parameter = Parameter TypeName [StorageLocation] Ident
                 deriving(Show, Eq, Data, Typeable, Ord)

data ParamName = ParamName Ident
                 deriving (Show, Eq, Data, Typeable, Ord)
-- Data Type for FuncVariable keywords
data FuncVar = FuncVar PublicKeyword
               deriving (Show, Eq, Data, Typeable, Ord)
                 
-- Declaring a variable, 
data StateVarDeclaration = StateVariableDeclaration TypeName [PublicKeyword] Identifier [Expression]
                   deriving (Show, Eq, Data, Typeable, Ord)

data UsingForDec = UsingForDeclaration Ident Identifier Ident TypeName
                   deriving (Show, Eq, Data, Typeable, Ord)

data StorageLocation = StorageLocation Ident
                       deriving (Show, Eq, Data, Typeable, Ord)

data Identifier = Identifier String
                  deriving(Show, Eq, Ord, Data, Typeable)    

data AssVar = AssVar Ident
               deriving(Show, Eq, Data, Typeable, Ord)
            
data PublicKeyword = PublicKeyword Ident
                   | PrivateKeyword Ident
                   | InternalKeyword Ident
                   | ConstantKeyword Ident
                   | ExternalKeyword Ident
                   | PureKeyword Ident
                   | ViewKeyword Ident
                   | PayableKeyword Ident
                     deriving(Show, Eq, Data, Typeable, Ord)

-- The type of the variable assignment
data ElemType = AddrType Ident
              | BoolType Ident
              | StringType Ident
              | VarType Ident
              | UIntType Ident
              | IntType Ident
                deriving(Show, Eq, Data, Typeable, Ord)

-- Elementary types e.g address/bool/string/var etc etc
data TypeName = TypeName Ident
              | ElementaryTypeName ElemType
              | UserDefinedTypeName Identifier [Identifier] 
              | Mapping ElemType TypeName  
              | ArrayType TypeName [Expression]
              | FunctionTypeName [[FParam]] [PublicKeyword] [[[FParam]]]
                deriving (Show, Eq, Data, Typeable, Ord)

data FParam = FParam TypeName [StorageLocation] 
              deriving (Show, Eq, Data, Typeable, Ord)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq, Data, Typeable, Ord)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq, Data, Typeable, Ord)
{-
data BlockStatements = BlockStatements [Expression]
                       deriving (Show, Eq, Data, Typeable, Ord)
-}
data Expression = BoolExpression BooleanLiteral
                | NumExpression NumberLiteral
                | IdentExpression Ident
                | StringExpression Ident 
                | VariableDeclaration TypeName [StorageLocation] Identifier VarDecExp
                | IdentifierList [[String]] [String] VarDecExp
                | IfStatement Expression Expression [ElseState]
                | WhileStatement Expression Expression
                | ForStatement ForParams Expression
                | BlockStatements [Expression]
                | InlineAssemblyStatement [Ident] AssemblyBlock
                | DoWhile Expression Expression
                | PlaceholderStatement String
                | ContinueStatement String
                | BreakStatement String
                | ReturnStatement [Expression]
                | ThrowStatement String
                | NotExpression Expression
                | AdditionExp Expression Expression
                | SubtractionExp Expression Expression
                | ExponentExp Expression Expression
                | DivisionExp Expression Expression
                | MultiExp Expression Expression
                | ModuloExp Expression Expression
                | BracketsExp Expression
                | IncrExp Expression
                | DecrExp Expression
                | LShiftExp Expression Expression
                | RShiftExp Expression Expression
                | BitAndExp Expression Expression
                | BitXOrExp Expression Expression
                | BitOrExp Expression Expression
                | LThanExp Expression Expression
                | GThanExp Expression Expression
                | LThanEqExp Expression Expression
                | GThanEqExp Expression Expression
                | EqualExp Expression Expression
                | NotEqualExp Expression Expression
                | AndExp Expression Expression
                | OrExp Expression Expression
                | NewExpression TypeName
                | MemberAccess Expression String Identifier
                | IndexAccess [Expression]
                | FunctionCall Expression FunctionCallArgsLst
                | LValEqual Expression Expression
                | LValOr Expression Expression
                | LValXOr Expression Expression
                | LValAnd Expression Expression
                | LValLeftShift Expression Expression
                | LValRightShift Expression Expression
                | LValIncr Expression Expression
                | LValDecr Expression Expression
                | LValMult Expression Expression
                | LValDivis Expression Expression
                | LValMod Expression Expression
                  deriving (Show, Eq, Data, Typeable, Ord)

data VarDecExp = VarDecExp [Expression]
                 deriving (Show, Eq, Data, Typeable, Ord)

data ForParams = ForParams [Expression] [Expression] [Expression]
                 deriving (Show, Eq, Data, Typeable, Ord)
{-
data InlineAssemblyStatement = InlineAssemblyStatement Ident [AssemblyBlock]
                               deriving (Show, Eq, Data, Typeable, Ord)
-}                             
data AssemblyBlock = AssemblyBlock [AssemblyItem]
                     deriving (Show, Eq, Data, Typeable, Ord)

data AssemblyItem = AssemblyId Ident
                   | InlineAssemblyBlock AssemblyBlock 
                   | AssemblyLocal AssemblyLocalBinding
                   | AssemblyString Expression
                   | AssemblyNum Expression
                     deriving (Show, Eq, Data, Typeable, Ord)

data AssemblyLocalBinding = AssemblyLocalBinding Identifier AssemblyExpression
                            deriving (Show, Eq, Data, Typeable, Ord)

data AssemblyExpression = AssemblyExpression Ident [AssemblyItem] [AssemblyItem] 
                          deriving (Show, Eq, Data, Typeable, Ord)
{-
data MemberAccess = MemberAccess Expression String Identifier
                    deriving (Show, Eq, Data, Typeable, Ord)
data FunctionCall = FunctionCall Expression FunctionCallArgs
                    deriving (Show, Eq, Data, Typeable, Ord)
-}

data NumberLiteral = NumberLiteral Int [Ident]
               deriving (Show, Eq, Data, Typeable, Ord)

data FunctionCallArgs = FunctionCallArgs FunctionCallArgsLst
                        deriving (Show, Eq, Data, Typeable, Ord)

data FunctionCallArgsLst = NameValues [NameValueList]
                         | ExpLst [[Expression]]
                           deriving (Show, Eq, Data, Typeable, Ord)

data NameValueList = NameValueList NameValue [NameValue]
                     deriving (Show, Eq, Data, Typeable, Ord)
-- Used to simplify production rules within the parser
data NameValue = NameValue Identifier Expression
                 deriving (Show, Eq, Data, Typeable, Ord)

data NewExp = NewExp TypeName
              deriving (Show, Eq, Data, Typeable, Ord)

data ElseState = ElseState Expression
                 deriving (Show, Eq, Data, Typeable, Ord)

data BooleanLiteral = BooleanLiteral Ident  
                      deriving (Show, Eq, Data, Typeable, Ord)

-- Basic Identifier type :: String
type Ident = String
type Dnum = Double
--type AssVar = String
