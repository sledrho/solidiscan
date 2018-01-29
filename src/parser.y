{
module Parser(solidiscan) where
import Lexer
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp}
    "decimalnum"                           { TDec $$ }
    "exponent"                             { TExp $$ }
    "int"                                  { TInt $$ }
    "pragma"                               { TPragma }
    "import"                               { TImport }
    "public"                               { TPublic }
    "contract"                             { TContract }
    "boolean"                              { TBooleanLit }
    "true"                                 { TTrue }
    "!"                                    { TNegate }
    "&&"                                   { TAnd }
    "||"                                   { TOr }
    "!="                                   { TInEqual }
    "<"                                    { TLThan }
    ">"                                    { TGThan }
    "<="                                   { TLTEq }
    ">="                                   { TGTEq }
    "=="                                   { TEquality }
    "{"                                    { TLCurl }
    "}"                                    { TRCurl }
    "["                                    { TLBrack }
    "]"                                    { TRBrack }
    "."                                    { TPeriod }
    "="                                    { TEquals}
    "*"                                    { TMult }
    "/"                                    { TDiv }
    "**"                                   { TExpSym }
    "%"                                    { TModul }
    op                                     { TOp $$ }
    "-"                                    { TSub }
    ";"                                    { TSemiCol }
    ident                                  { TIdent $$ }                       -- The lexical token for an identifier 
    stringLiteral                          { TStringLiteral $$ }
    "("                                    { TLeftParen }
    ")"                                    { TRightParen }

%%

ProgSource   :: { ProgSource }
ProgSource   : SourceUnit                                                   { ProgSource $1 }

SourceUnit   : PragmaDirective                                              { SourceUnit $1}
             --| ImportDirective                                            { SourceUnit $1 }
             --| ContractDefinition ";"                                     { ContractDefinition $1}

PragmaDirective 
             : "pragma" ident ";"                                           { Pragma $2 }

ImportDirective 
             : "import" stringLiteral ";"                                   { ImportDir $2 }

ContractDefinition : "contract" ident "{" ContractPart "}"                  { ContractDef $2 $4 }

ContractPart : StateVariableDeclaration  { ContractPart $1 }

StateVariableDeclaration : TypeName "public" ident ";"                 { StateVar $1 $3 }
                         | TypeName "public" ident "=" Expression ";"  { StateV $1 $3 $5 }

TypeName : ElementaryTypeName { ElemTypeName $1 }

ElementaryTypeName : stringLiteral { ElemType $1}
 
Expression : Expression op Expression    { ExpOp $1 $2 $3 }

Type: ident                               { TypeIdent $1}


{

parseError :: [Token] -> a
parseError _ = error "Parse Error."

data ProgSource = ProgSource SourceUnit 
                deriving (Show, Eq)

data SourceUnit = SourceUnit PragmaDirective
                | ImportDirective
                deriving (Show, Eq)
              
data PragmaDirective = Pragma String
                       deriving(Show, Eq)

data ContractDef = ContractDef Ident ContractPart
                   deriving (Show, Eq)

data ImportDirective = ImportDir String
                       deriving (Show, Eq)

data ContractPart = ContractPart StateVariableDeclaration
                    deriving (Show, Eq)

data StateVariableDeclaration = StateVar TypeName String
                              | StateV TypeName String Exp
                                deriving (Show, Eq)

data TypeName = ElemTypeName String
                deriving (Show, Eq)

data ElemTypeName = ElemType String
                    deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

type Ident = String

}