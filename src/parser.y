{
module Parser(solidiscan) where
import tokens
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp}
    "decimalnum"                           { TDec $$ }
    "exponent"                             { TExp $$ }
    "int"                                  { TInt $$ }
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
    "+"                                    { TPlus }
    "-"                                    { TSub }
    ident                                  { TIdent $$ }                       -- The lexical token for an identifier 
    stringLiteral                          { TStringLiteral $$ }
    "("                                    { TLeftParen }
    ")"                                    { TRightParen }

%%

ProgSource   : SourceUnit                 { ProgSource $1 }
             | ProgSources SourceUnit     { $2 : $1}

SourceUnit   : PragmaDirective            { SourceUnit $1}
             | ImportDirective
             | ContractDefinition ";"

PragmaDirective 
             : "pragma" <identifier> "id" (Version "version") ";"

ImportDirective 
             : "import" stringLiteral ";"

ContractDefinition
             : 


{
-- Parse error is the fallback function when we come across a problem
-- within the parsing

parseError :: [Token] -> a
parseError _ = error "Parse Error."

data ProgSource = 
                String 
                deriving (Show, Eq)

data SourceUnit =
                PragmaDirective String String 
                deriving (Show, Eq)

data ContractDefinition 
                = 
}