{
module Parser(solidiscan) where
import Lexer
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp _ }
    version                                { TVers _ }
    "decimalnum"                           { TDec _ $$ }
    "exponent"                             { TExp _ $$ }
    "int"                                  { TInt _ $$ }
    "pragma"                               { TPragma _ }
    "import"                               { TImport _ }
    "public"                               { TPublic _ }
    "internal"                             { TIntern _ }
    "private"                              { TPriv _ }
    "constant"                             { TConst _ }
    contract                               { TContract _ }
    function                               { TFuncDef _ }
    "address"                              { TAddr _}
    "bool"                                 { TBooleanLit _ }
    "var"                                  { TVar _ }
    "true"                                 { TTrue _ }
    "false"                                { TFalse _ }
    "^"                                    { THat _ }
    "!"                                    { TNegate _ }
    "&&"                                   { TAnd _ }
    "||"                                   { TOr _ }
    "!="                                   { TInEqual _ }
    "<"                                    { TLThan _ }
    ">"                                    { TGThan _ }
    "<="                                   { TLTEq _ }
    ">="                                   { TGTEq _ }
    "=="                                   { TEquality _ }
    "{"                                    { TLCurl _ }
    "}"                                    { TRCurl _ }
    "["                                    { TLBrack _ }
    "]"                                    { TRBrack _ }
    "."                                    { TPeriod _ }
    "="                                    { TEquals _}
    "*"                                    { TMult _ }
    "/"                                    { TDiv _ }
    "**"                                   { TExpSym _ }
    "%"                                    { TModul _ }
    op                                     { TOp _ $$ }
    "-"                                    { TSub _ }
    ";"                                    { TSemiCol _ }
    ident                                  { TIdent _ $$ }                       -- The lexical token for an identifier 
    stringLiteral                          { TStringLiteral _ $$ }
    "("                                    { TLeftParen _ }
    ")"                                    { TRightParen _ }

%%

SourceUnit    : {- empty -}                                                            { [] }
              | SourceUnit SourceUnitSol                                               { $2 : $1 }

SourceUnitSol : PragmaDirective                                                        { SourceUnit $1 }
              | ImportDirective                                                        { ImportUnit $1 }
              | ContractDefinition                                                     { ContractDef $1 }

PragmaDirective :: { PragmaDirective }
PragmaDirective 
             : "pragma" PragmaName version ";"                                         { PragmaDirective $2 }

PragmaName : ident                                                                     { PragmaName $1 }
PragmaValue : "decimalnum"                                                                    { $1 }

ImportDirective :: { ImportDirective }
ImportDirective 
             : "import" stringLiteral ";"                                              { ImportDir $2 }

ContractDefinition :: { ContractDefinition }
ContractDefinition                                                                    -- Passing the $2 token to Identifier to return the appropriate data type
             : contract ident "{" list(ContractPart) "}"                               { Contract (Identifier $2) $4 }

ContractPart :: { ContractConts }
ContractPart : StateVariableDeclaration                                                { ContractContents $1 }
             | FunctionDefinition                                                      { FunctionDefinition $1 }

FunctionDefinition :: { FunctionContents }
FunctionDefinition 
             : function ident Parameter ";"                                            { FunctionDef $2 $3 }

Parameter    : ident                                                                   { $1 }

-- StateVariableDeclaration = TypeName ( 'public' | 'internal' | 'private' | 'constant' )? Identifier ('=' Expression)? ';'
-- Passing the ident into the Ident function to ensure its type is formatted correctly
StateVariableDeclaration                                                               -- Passing $3 token into Identifier to return the appropriate data type
             : TypeName AssVar ident MExpression ";"                                      { StateVar $1 (Identifier $3) $4 }

AssVarL      : AssVar                                                                  { [$1] } 
             | AssVarL AssVar                                                          { $2 : $1 }

AssVar       : "public"                                                                { $1 }
             | "internal"                                                              { $1 }
             | "private"                                                               { $1 }
             | "constant"                                                              { $1 }       

MaybeExp     : {- empty -}                                                             { [] }
             | MaybeExp MExpression                                                    { $2 : $1 }

MExpression  : "=" Expression                                                          { Expression $2 }

Expression   : ident                                       { $1 }


TypeName     : ElementaryTypeNames                                                     { $1 }

ElementaryTypeNames : ident                                                            {ElemType $1}
ElementaryTypeName : "address"                                                         {  $1 }                                                
                   | "bool"                                                            {  $1 }
                   | "var"                                                             {  $1 }
                   --| "string"                                                        {  $1 }

-- The following allows the parser to create lists of one or more or zero or more lists.
-- one or more
list1(p) : p                                                                           { [$1] }
         | p list1(p)                                                                  { $1 : $2 }
-- zero or more 
list(p) : list1(p)                                                                     { $1 }
        | {- empty -}                                                                  { [] }
-- The following are commented out until they will be used
--Expression : Expression op Expression                                                { ExpOp $1 $2 $3 }
--Type: ident                                                                            { TypeIdent $1}
{
-- The following grabs a token from the token list
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("Parse error at " ++ show (head(tokenList)) ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))


-- The following are data types to store the source codes value

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
                       deriving (Show, Eq)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Identifier [ContractConts]
                    deriving (Show, Eq)

-- The contents of a Contract
data ContractConts = ContractContents StateVariableDeclaration
                   | FunctionDefinition FunctionContents
                    deriving (Show, Eq)

data FunctionContents = FunctionDef FuncName FuncParam
                        deriving(Show, Eq)

-- Declaring a variable, 
data StateVariableDeclaration = StateVar ElemTypeName Identifier Expression
                                deriving (Show, Eq)


data Identifier = Identifier Ident
                deriving(Show, Eq)    

data AssVars = AssVar Ident
              deriving(Show, Eq)
-- The type of the variable assignment
{-
data TypeName = ElemTypeName Ident
                deriving (Show, Eq)

-}

-- Elementary types e.g address/bool/string/var etc etc
data ElemTypeName = ElemType Ident
                    deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

data Expression = Expression Identifier
                  deriving (Show, Eq)

-- Basic Identifier type :: String
type Ident = String
type FuncName = String
type FuncParam = String
type Dnum = Double
--type AssVar = String

}