{
module Parser(solidiscan) where
import Lexer
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp _ }
    "decimalnum"                           { TDec _ $$ }
    "exponent"                             { TExp _ $$ }
    "int"                                  { TInt _ $$ }
    "pragma"                               { TPragma _ }
    "import"                               { TImport _ }
    "public"                               { TPublic _ }
    contract                               { TContract _ }
    "function"                             { TFuncDef _ }
    "boolean"                              { TBooleanLit _ }
    "true"                                 { TTrue _ }
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

PragmaDirective 
             : "pragma" ident ";"                                                      { Pragma $2 }

ImportDirective 
             : "import" stringLiteral ";"                                              { ImportDir $2 }

ContractDefinition 
             : contract ident "{" list1(ContractPart) "}"                               { Contract $2 $4 }

ContractPart : StateVariableDeclaration                                                { ContractContents $1 }
             | FunctionDefinition                                                      { FunctionDefinition $1 }

FunctionDefinition
             : "function" ident Parameter ";"                                          { FunctionDef $2 $3 }

ParameterList : Parameter                                                              { $1 }

Parameter    : ident                                                                   { $1 }

StateVariableDeclaration : TypeName "public" ident ";"                                 { StateVar $1 $3 }
                    
TypeName : ident                                                                       { ElemTypeName $1 }


-- The following allows the parser to create lists of one or more or zero or more lists.
-- one or more
list1(p) : p                                                                           { [$1] }
         | p list1(p)                                                                  { $1 : $2 }


-- zero or more 
list(p) : list1(p)                                                                     { $1 }
        | {- empty -}                                                                  { [] }


-- The following are commented out until they will be used

--ElementaryTypeName : ident                                                             { ElemType $1}
  
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
data PragmaDirective = Pragma String
                       deriving(Show, Eq)

-- File imports/Contract Imports
data ImportDirective = ImportDir String
                       deriving (Show, Eq)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Ident [ContractConts]
                    deriving (Show, Eq)

-- The contents of a Contract
data ContractConts = ContractContents StateVariableDeclaration
                   | FunctionDefinition FunctionContents
                    deriving (Show, Eq)

data FunctionContents = FunctionDef FuncName FuncParam
                        deriving(Show, Eq)

-- Declaring a variable, 
data StateVariableDeclaration = StateVar TypeName String
                                deriving (Show, Eq)

-- The type of the variable assignment
data TypeName = ElemTypeName Ident
                deriving (Show, Eq)

-- Elementary types e.g address/bool/string/var etc etc
data ElemTypeName = ElemType Ident
                    deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

-- Basic Identifier type :: String
type Ident = String
type FuncName = String
type FuncParam = String

}