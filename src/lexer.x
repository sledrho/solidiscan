{
module Lexer where
}

-- Attempting to make a Monadic lexer
%wrapper "posn"

-- The following are un-working lexemes
--$byte = (s ([1-9]|[1-2][0-9]|[3][0-2])? )?  -- bytes
--$uint = u $int                                     -- integers
--$decimalnum = [0-9]+([eE][0-9]+)?                  -- decimal numbers
--$hexnum = 0[xX][0-9a-fA-F]+                           -- hexadecimal
--$identifier = [a-zA-Z_$][a-zA-Z_$0-9]*             -- identifiers
--$comment = \/\/ [^\r\n]* | \/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\/

-- For basic Digit/Alpha numeric characters
$digit = 0-9                                       -- digits
$alpha = [a-zA-Z]                                  -- alphabetic characters
$hexit = [0-9A-Fa-f]
--$version = [\^\;]
$graphic  = $printable # $white
$int = [8-16]
-- for comments
@comment = \/\/ [^\r\n]* | \/\*[^\*]
-- Char Sets for Specific Number combinations
@string         = \" ($graphic # \")* \"
@decimalnum     = $digit+
@hexadecimal    = $hexit+
-- Version info to parse pragma version
@version        = \^ @decimalnum \. @decimalnum \. @decimalnum
@exponent       = [eE] [\-\+] @decimalnum

@int = int (8 | 16 | 24 | 32 | 40 | 48 | 56 | 64 | 72 | 80 | 88 | 96 | 104 | 112 | 120 
              | 128 | 136 | 144 | 152 | 160 | 168 | 176 | 184 | 192 | 200 | 208 | 216 
              | 224 | 232 | 240 | 248 | 256 )?

-- List of reserved words used by Solidity
@reservedid = abstract| case| catch| default| final| in| inline| match| null| of|
              relocatable| static| switch| try| type| typeof                       -- reserved keywords within the Solidity language
@numberunit =  wei | szabo | finney | ether | seconds | minutes | hours | days | weeks | years
-- The initial tokens used by the lexer, followed by Haskell code segments
-- Each token has type String -> Token 
-- Token being a custom type by Alex, all tokens MUST have the same type.

tokens :-

    $white+                                ;
    @comment                               ;
<0> @version                               { \p s -> TVers p }
<0> @decimalnum
    | 0[xX] @hexadecimal+                  { \p s -> TDec p (read s) }

-- Because of the way Int's are bound, they will overflow and wrap around - Limitations of Haskell Int datatype.
<0> @decimalnum \. @decimalnum @exponent?
    | @decimalnum @exponent                { \p s -> TExp p (read s) }
    @reservedid                            { \p s -> TReservedOp p }
    @int                                   { \p s -> TIntLit p (read s) }
    @numberunit                            { \p s -> TNumUnit p }
    $digit+                                { \p s -> TInt p (read s) }
    "pragma"                               { \p s -> TPragma p }
    "import"                               { \p s -> TImport p }
    contract                               { \p s -> TContract p }
    "library"                              { \p s -> TLibrary p }
    "interface"                            { \p s -> TInterface p }
    function                               { \p s -> TFuncDef p }
    "external"                             { \p s -> TExternal p s }
    "public"                               { \p s -> TPublic p s }
    "internal"                             { \p s -> TIntern p s }
    "private"                              { \p s -> TPriv p s }
    "constant"                             { \p s -> TConst p s }
    "string"                               { \p s -> TStringAs p s }
    "address"                              { \p s -> TAddr p s }
    "bool"                                 { \p s -> TBooleanLit p s }
    "var"                                  { \p s -> TVar p s }
    "using"                                { \p s -> TUsing p s }
    "for"                                  { \p s -> TFor p s }
    "true"                                 { \p s -> TTrue p s }
    "false"                                { \p s -> TFalse p s }
    "as"                                   { \p s -> TAs p }
    "is"                                   { \p s -> TIs p }
    "from"                                 { \p s -> TFrom p }
    "pure"                                 { \p s -> TPure p s }
    "view"                                 { \p s -> TView p s }
    "payable"                              { \p s -> TPayable p s }
    "returns"                              { \p s -> TReturns p }
    "if"                                   { \p s -> TIf p }
    "else"                                 { \p s -> TElse p }
    "event"                                { \p s -> TEvent p }
    "anonymous"                            { \p s -> TAnon p }
    "modifier"                             { \p s -> TModi p }
    "memory"                               { \p s -> TMem p s }
    "storage"                              { \p s -> TStorage p s }
    "^"                                    { \p s -> THat p }
    "!"                                    { \p s -> TNegate p }
    "&&"                                   { \p s -> TAnd p }
    "||"                                   { \p s -> TOr p }
    "!="                                   { \p s -> TInEqual p }
    "<"                                    { \p s -> TLThan p }
    ">"                                    { \p s -> TGThan p }
    "<="                                   { \p s -> TLTEq p }
    ">="                                   { \p s -> TGTEq p }
    "=="                                   { \p s -> TEquality p }
    "{"                                    { \p s -> TLCurl p }
    "}"                                    { \p s -> TRCurl p }
    "["                                    { \p s -> TLBrack p }
    "]"                                    { \p s -> TRBrack p }
    "."                                    { \p s -> TPeriod p }
    "="                                    { \p s -> TEquals p }
    "*"                                    { \p s -> TMult p }
    "/"                                    { \p s -> TDiv p }
    "**"                                   { \p s -> TExpSym p }
    "%"                                    { \p s -> TModul p }
    "+"                                    { \p s -> TOp p (head s) }
    "-"                                    { \p s -> TSub p }
    ";"                                    { \p s -> TSemiCol p }
    ","                                    { \p s -> TComma p }
    $alpha[$alpha $digit \_ \']*           { \p s -> TIdent p s }                       -- The lexical token for an identifier 
    @string                                { \p s -> TStringLiteral p (init (tail s)) } -- Lexical token for a string, (init(tail s)) removes leading and trailing "
    "("                                    { \p s -> TLeftParen p }
    ")"                                    { \p s -> TRightParen p }
    --$byte                                { \p s -> TByte p (read s) }

{

-- Each token has type: AlexPosn -> String -> Token
-- The token type
data Token = 
        TIdent AlexPosn String
        | TReservedOp AlexPosn
        | THexNum AlexPosn
        | TExp AlexPosn Int
        | TIntLit AlexPosn Int
        | TInt AlexPosn Int
        | TNumUnit AlexPosn
        | TDec AlexPosn Int
        | TStringLiteral AlexPosn String
        | TPragma AlexPosn
        | TImport AlexPosn
        | TContract AlexPosn
        | TLibrary AlexPosn
        | TInterface AlexPosn
        | TFuncDef AlexPosn
        | TExternal AlexPosn String
        | TPublic AlexPosn String                   -- In order to pass through the value of the token, as opposed to the token position.
        | TIntern AlexPosn String
        | TPriv AlexPosn String
        | TConst AlexPosn String
        | TStringAs AlexPosn String
        | TAddr AlexPosn String
        | TVar AlexPosn String
        | TUsing AlexPosn String
        | TFor AlexPosn String
        | TBooleanLit AlexPosn String
        | TTrue AlexPosn String
        | TFalse AlexPosn String
        | TAs AlexPosn
        | TIs AlexPosn
        | TFrom AlexPosn
        | TView AlexPosn String
        | TPure AlexPosn String
        | TPayable AlexPosn String
        | TReturns AlexPosn
        | TMem AlexPosn String
        | TStorage AlexPosn String
        | TIf AlexPosn
        | TElse AlexPosn
        | TEvent AlexPosn
        | TAnon AlexPosn
        | TModi AlexPosn
        | TVers AlexPosn
        | THat AlexPosn
        | TNegate AlexPosn
        | TAnd AlexPosn
        | TOr AlexPosn
        | TInEqual AlexPosn
        | TLThan AlexPosn
        | TGThan AlexPosn
        | TLTEq AlexPosn
        | TGTEq  AlexPosn
        | TEquality AlexPosn
        | TLCurl AlexPosn
        | TRCurl AlexPosn
        | TLBrack AlexPosn
        | TRBrack AlexPosn
        | TBytes AlexPosn
        | TLeftParen AlexPosn
        | TRightParen AlexPosn
        | TPeriod AlexPosn
        | TEquals AlexPosn
        | TMult AlexPosn
        | TDiv AlexPosn
        | TExpSym AlexPosn
        | TModul AlexPosn
        | TOp AlexPosn Char
        | TSub AlexPosn
        | TSemiCol AlexPosn
        | TComma AlexPosn
        deriving (Eq, Show)

tokenPosn (TVers p) = p
tokenPosn (TIdent p id) = p
tokenPosn (TReservedOp p) = p 
tokenPosn (THexNum p) = p
tokenPosn (TExp p f) = p 
tokenPosn (TIntLit p i) = p 
tokenPosn (TInt p i) = p 
tokenPosn (TNumUnit p) = p
tokenPosn (TDec p i) = p 
tokenPosn (TStringLiteral p str) = p 
tokenPosn (TPragma p) = p 
tokenPosn (TImport p) = p 
tokenPosn (TContract p) = p 
tokenPosn (TLibrary p) = p 
tokenPosn (TInterface p) = p 
tokenPosn (TExternal p str) = p 
tokenPosn (TPublic p str) = p 
tokenPosn (TPriv p str) = p 
tokenPosn (TIntern p str) = p
tokenPosn (TConst p str) = p
tokenPosn (TStringAs p str) = p
tokenPosn (TAddr p str) = p
tokenPosn (TBooleanLit p str) = p
tokenPosn (TVar p str) = p 
tokenPosn (TUsing p str) = p
tokenPosn (TFor p str) = p
tokenPosn (TTrue p str) = p 
tokenPosn (TFalse p str) = p
tokenPosn (TAs p) = p
tokenPosn (TIs p) = p
tokenPosn (TFrom p) = p
tokenPosn (TPure p str) = p
tokenPosn (TPayable p str) = p
tokenPosn (TReturns p ) = p
tokenPosn (TMem p str) = p
tokenPosn (TStorage p str) = p
tokenPosn (TView p str) = p
tokenPosn (TIf p ) = p
tokenPosn (TElse p) = p
tokenPosn (TEvent p) = p
tokenPosn (TAnon p) = p
tokenPosn (TModi p) = p
tokenPosn (THat p) = p 
tokenPosn (TNegate p) = p 
tokenPosn (TAnd p) = p 
tokenPosn (TOr p) = p 
tokenPosn (TInEqual p) = p 
tokenPosn (TLThan p) = p 
tokenPosn (TGThan p) = p 
tokenPosn (TLTEq p) = p 
tokenPosn (TGTEq p) = p 
tokenPosn (TEquality p) = p 
tokenPosn (TLCurl p) = p  
tokenPosn (TRCurl p) = p  
tokenPosn (TLBrack p) = p  
tokenPosn (TRBrack p) = p  
tokenPosn (TBytes p) = p  
tokenPosn (TLeftParen p) = p  
tokenPosn (TRightParen p) = p  
tokenPosn (TPeriod p) = p  
tokenPosn (TEquals p) = p  
tokenPosn (TMult p) = p  
tokenPosn (TDiv p) = p
tokenPosn (TExpSym p) = p  
tokenPosn (TModul p) = p  
tokenPosn (TOp p c) = p  
tokenPosn (TSub p) = p  
tokenPosn (TSemiCol p) = p  
tokenPosn (TComma p) = p  

-- In order to get position information a new alexScanTokens must be created

-- First a getLineNum function is created to get the current getLine
getLineNum :: AlexPosn -> Int
getLineNum (AlexPn offset lineNum colNum) = lineNum

getColumnNum :: AlexPosn -> Int
getColumnNum (AlexPn offset lineNum colNum) = colNum

alexScanTokens2 str = go (alexStartPos,'\n',[],str)
  where go inp@(pos,_,_,str) =
          case alexScan inp 0 of
                AlexEOF -> []
                AlexError ((AlexPn _ line column),_,_,_) -> error $ "lexical error at line " ++ (show line) ++ " and column " ++ (show column)
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> act pos (take len str) : go inp'

}