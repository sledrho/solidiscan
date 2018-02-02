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

SourceUnit : {- empty -}                                                             { [] }
           | SourceUnit SourceUnitSol                                                { $2 : $1}

SourceUnitSol  : PragmaDirective                                                       { SourceUnit $1 }
               | ImportDirective                                                       { ImportUnit $1 }
               | ContractDefinition                                                    { ContractDef $1 }

PragmaDirective 
             : "pragma" ident ";"                                                      { Pragma $2 }

ImportDirective 
             : "import" stringLiteral ";"                                              { ImportDir $2 }

ContractDefinition 
             : contract ident "{" ContractPart "}"                                     { Contract $2 $4 }

ContractPart : StateVariableDeclaration                                                { ContractContents $1 }

StateVariableDeclaration : TypeName "public" ident ";"                                 { StateVar $1 $3 }
                    
TypeName : ident                                                                       { ElemTypeName $1 }

ElementaryTypeName : ident                                                             { ElemType $1}
  
--Expression : Expression op Expression                                                  { ExpOp $1 $2 $3 }

Type: ident                                                                            { TypeIdent $1}


{
-- The following grabs a token from the token list
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("Parse error at " ++ show (head(tokenList)) ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))

data SourceUnit = SourceUnit PragmaDirective
                | ImportUnit ImportDirective 
                | ContractDef ContractDefinition
                deriving (Show, Eq)
              
data PragmaDirective = Pragma String
                       deriving(Show, Eq)

data ImportDirective = ImportDir String
                       deriving (Show, Eq)

data ContractDefinition = Contract Ident ContractConts
                    deriving (Show, Eq)

data ContractConts = ContractContents StateVariableDeclaration
                    deriving (Show, Eq)

data StateVariableDeclaration = StateVar TypeName String
                                deriving (Show, Eq)

data TypeName = ElemTypeName Ident
                deriving (Show, Eq)

data ElemTypeName = ElemType Ident
                    deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

type Ident = String

}