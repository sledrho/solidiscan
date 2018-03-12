module Solidiscan.AST where
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
data PragmaDirective = PragmaDirective PragmaName Version
                       deriving(Show, Eq)

data Version = Version String 
               deriving (Show, Eq)

data PragmaName = PragmaName Ident
                  deriving(Show, Eq)

data PragmaValue = PragmaValue Dnum
                   deriving(Show, Eq)
-- File imports/Contract Imports
data ImportDirective = ImportDir String
                     | ImportMulti Identifier Identifier Identifier String 
                       deriving (Show, Eq)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Identifier [InheritanceSpec] [ContractConts]
                          deriving (Show, Eq)

-- Data for the iheritance specifications
data InheritanceSpec = InheritanceSpec InheritanceSpecifier [InheritanceSpecifier]
                  deriving (Show, Eq)

data InheritanceSpecifier = InheritanceSpecifier TypeName [[Expression]]
                            deriving (Show, Eq)
-- The contents of a Contract
data ContractConts = ContractContents StateVarDec
                   | FunctionDefinition FunctionContents
                   | UsingFor UsingForDec
                   | StructDef StructDefinition
                   | EventDef EventDefinition
                   | ModDef ModifierDefinition
                   | EnumDef EnumDefinition
                     deriving (Show, Eq)

data FunctionContents = FunctionDef Identifier [[Parameter]] [FuncMods] [ReturnParam] [Expression]
                        deriving (Show, Eq)

data FuncMods = ModifierInvs [[[Expression]]]
              | StateMutability PublicKeyword
              | FuncVars PublicKeyword
                deriving (Show, Eq)

data ReturnParam = ReturnParam [[Parameter]]
                   deriving (Show, Eq)

data StructDefinition = StructDefinition Identifier [[Expression]]
                        deriving (Show, Eq) 

data EventDefinition = EventDefinition Identifier [[[EParameters]]]
                       deriving (Show, Eq)
{-
data Statements = Statements [Statement]
                  deriving (Show, Eq)

data Statement = IfStatement Expression
               | SimpleStatement Expression
                 deriving (Show, Eq)

data IfState = IfState ElseState
               deriving (Show, Eq)

data ElseState = ElseState Statement
                 deriving (Show, Eq)
-}

data ModifierDefinition = ModifierDefinition Identifier [[[Parameter]]] [Expression]
                          deriving (Show, Eq)

data EnumDefinition = EnumDefinition Identifier [EnumValue]
                      deriving (Show, Eq)

data EnumValue = EnumValue Identifier
                 deriving (Show, Eq)

{- 
data StateMutability = StateMutability PublicKeyword
                       deriving (Show, Eq)
-}

data EParameters = EParameters TypeName Identifier
                   deriving (Show, Eq)

data Parameter = Parameter TypeName [StorageLocation] Ident
                 deriving(Show, Eq)

data ParamName = ParamName Ident
                 deriving (Show, Eq)
-- Data Type for FuncVariable keywords
data FuncVar = FuncVar PublicKeyword
               deriving (Show, Eq)
                 
-- Declaring a variable, 
data StateVarDec = StateVariableDeclaration TypeName [PublicKeyword] Identifier [Expression]
                   deriving (Show, Eq)

data UsingForDec = UsingForDeclaration Ident Identifier Ident TypeName
                   deriving (Show, Eq)

data StorageLocation = StorageLocation Ident
                       deriving (Show, Eq)

data Identifier = Identifier String
                  deriving(Show, Eq)    

data AssVar = AssVar Ident
               deriving(Show, Eq)
            
data PublicKeyword = PublicKeyword Ident
                   | PrivateKeyword Ident
                   | InternalKeyword Ident
                   | ConstantKeyword Ident
                   | ExternalKeyword Ident
                   | PureKeyword Ident
                   | ViewKeyword Ident
                   | PayableKeyword Ident
                     deriving(Show, Eq)

-- The type of the variable assignment
data ElemType = AddrType Ident
              | BoolType Ident
              | StringType Ident
              | VarType Ident
              | UIntType Ident
              | IntType Ident
                deriving(Show, Eq)

-- Elementary types e.g address/bool/string/var etc etc
data TypeName = TypeName Ident
              | ElementaryTypeName ElemType
              | UserDefinedTypeName Identifier [Identifier] 
              | Mapping Identifier ElemType TypeName  
                deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)
{-
data BlockStatements = BlockStatements [Expression]
                       deriving (Show, Eq)
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
                -- | MemberExp MemberAccess
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
                  deriving (Show, Eq)

data VarDecExp = VarDecExp [Expression]
                 deriving (Show, Eq)

data ForParams = ForParams [Expression] [Expression] [Expression]
                 deriving (Show, Eq)
{-
data InlineAssemblyStatement = InlineAssemblyStatement Ident [AssemblyBlock]
                               deriving (Show, Eq)
-}                             
data AssemblyBlock = AssemblyBlock [AssemblyItem]
                     deriving (Show, Eq)

data AssemblyItem = AssemblyId Ident
                   | InlineAssemblyBlock AssemblyBlock 
                   | AssemblyLocal AssemblyLocalBinding
                   | AssemblyString Expression
                   | AssemblyNum Expression
                     deriving (Show, Eq)

data AssemblyLocalBinding = AssemblyLocalBinding Identifier AssemblyExpression
                            deriving (Show, Eq)

data AssemblyExpression = AssemblyExpression Ident [AssemblyItem] [AssemblyItem] 
                          deriving (Show, Eq)
{-
data MemberAccess = MemberAccess Expression String Identifier
                    deriving (Show, Eq)
data FunctionCall = FunctionCall Expression FunctionCallArgs
                    deriving (Show, Eq)
-}

data NumberLiteral = NumberLiteral Int [Ident]
               deriving (Show, Eq)

data FunctionCallArgs = FunctionCallArgs FunctionCallArgsLst
                        deriving (Show, Eq)

data FunctionCallArgsLst = NameValues [NameValueList]
                         | ExpLst [[Expression]]
                           deriving (Show, Eq)

data NameValueList = NameValueList NameValue [NameValue]
                     deriving (Show, Eq)
-- Used to simplify production rules within the parser
data NameValue = NameValue Identifier Expression
                 deriving (Show, Eq)

data NewExp = NewExp TypeName
              deriving (Show, Eq)

data ElseState = ElseState Expression
                 deriving (Show, Eq)

data BooleanLiteral = BooleanLiteral Ident  
                      deriving (Show, Eq)

-- Basic Identifier type :: String
type Ident = String
type Dnum = Double
--type AssVar = String
