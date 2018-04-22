{
module Solidiscan.Lexer where
}

%wrapper "posn"


-- For basic Digit/Alpha numeric characters
$digit = 0-9                                       -- digits
$alpha = [a-zA-Z\_\$]                              -- alphabetic characters
$hexit = [0-9A-Fa-f]

-- Alex's default for handling whitespace
$graphic  = $printable # $white

-- for comments
@comment = \/\/ [^\r\n]* | \/\*[^\*]

-- Char Sets for Specific Number combinations
@string         = \" ($graphic # \")* \"
@decimalnum     = $digit+
@hexadecimal    = $hexit+

-- Version info to parse pragma version
@version        = @decimalnum \. @decimalnum \. @decimalnum
@exponent       = [eE] [\-\+] @decimalnum

-- Lexical production for an identifier
@identifier = $alpha[$alpha $digit \_ \' \$]*

-- Lexical production for nestedids
@nestedids = identifier (\. identifier)+

-- To handle the int/uint type within solidity.
@int = int | int8 | int16 | int24 | int32 | int40 | int48 | int56 | int64 | int72 | int80 | int88 | int96 | int104 | int112 | int120 | int128 | int136 | int144 | int152 | int160 | int168 | int176 | int184 | int192 | int200 | int208 | int216 | int224 | int232 | int240 | int248 | int256
@uint = u @int
@bytes = bytes | bytes1 | bytes2 | bytes3 | bytes4 | bytes5 | bytes6 | bytes7 | bytes8 | bytes9 | bytes10 | bytes11 | bytes12 | bytes13 | bytes14 | bytes15 | bytes16 | bytes17 | bytes18 | bytes19 | bytes20 | bytes21 | bytes22 | bytes23 | bytes24 | bytes25 | bytes26 | bytes27 | bytes28 | bytes29 | bytes30 | bytes31 | bytes32
@fixed = fixed | ( fixed [0-9]+ x [0-9]+ )
@ufixed = ufixed | ( ufixed [0-9]+ x [0-9]+ )

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
<0> @version                               { \p s -> TVers p s }
<0> @decimalnum
    | 0[xX] @hexadecimal+                  { \p s -> TDec p (read s) }

-- Because of the way Int's are bound, they will overflow and wrap around - Limitations of Haskell Int datatype.
<0> @decimalnum \. @decimalnum @exponent?
    | @decimalnum @exponent                { \p s -> TExp p (read s) }
    @reservedid                            { \p s -> TReservedOp p }
    @numberunit                            { \p s -> TNumUnit p s}
    $digit+                                { \p s -> TInt p (read s) }
    "pragma"                               { \p s -> TPragma p }
    "import"                               { \p s -> TImport p }
    contract                               { \p s -> TContract p }
    "library"                              { \p s -> TLibrary p }
    "interface"                            { \p s -> TInterface p }
    function                               { \p s -> TFuncDef p }
    "struct"                               { \p s -> TStruct p }
    "external"                             { \p s -> TExternal p s }
    "using"                                { \p s -> TUsing p s }
    "for"                                  { \p s -> TFor p s }
    "true"                                 { \p s -> TTrue p s }
    "false"                                { \p s -> TFalse p s }
    "as"                                   { \p s -> TAs p }
    "is"                                   { \p s -> TIs p }
    "if"                                   { \p s -> TIf p }
    "while"                                { \p s -> TWhile p }
    "else"                                 { \p s -> TElse p }
    "assembly"                             { \p s -> TAssem p }
    "let"                                  { \p s -> TLet p }
    "event"                                { \p s -> TEvent p }
    "anonymous"                            { \p s -> TAnon p }
    "modifier"                             { \p s -> TModi p }
    "enum"                                 { \p s -> TEnum p }
    "new"                                  { \p s -> TNew p }
    "mapping"                              { \p s -> TMap p s }
    "indexed"                              { \p s -> TIndex p }

    -- Statement Tokens
    "do"                                   { \p s -> TDo p s }
    "continue"                             { \p s -> TCont p s }
    "break"                                { \p s -> TBreak p s }
    "return"                               { \p s -> TRetState p s }
    "throw"                                { \p s -> TThrow p s }  

    -- Returns needs to go here because of precedence
    "returns"                              { \p s -> TReturns p }

    -- ElementaryTypeNames
    "string"                               { \p s -> TStringAs p s }
    "address"                              { \p s -> TAddr p s }
    "bool"                                 { \p s -> TBooleanLit p s }
    "var"                                  { \p s -> TVar p s }
    @uint                                  { \p s -> TUInt p s }
    @int                                   { \p s -> TIntLit p s }
    @bytes                                 { \p s -> TBytes p s }
    @fixed                                 { \p s -> TFixed p s }
    @ufixed                                { \p s -> TUFixed p s }

    -- AssignmentVariables
    "public"                               { \p s -> TPublic p s }
    "internal"                             { \p s -> TIntern p s }
    "private"                              { \p s -> TPriv p s }
    "constant"                             { \p s -> TConst p s }

    -- Storage keywords
    "memory"                               { \p s -> TMem p s }
    "storage"                              { \p s -> TStorage p s }

    -- Statemutability Keywords
    "pure"                                 { \p s -> TPure p s }
    "view"                                 { \p s -> TView p s }
    "payable"                              { \p s -> TPayable p s }

    -- Expression Tokens 
    "++"                                   { \p s -> TIncr p }
    "<<"                                   { \p s -> TLShift p }
    ">>"                                   { \p s -> TRShift p }
    "--"                                   { \p s -> TDecr p }
    "^"                                    { \p s -> THat p }
    "!"                                    { \p s -> TNegate p }
    "&&"                                   { \p s -> TAnd p }
    "&"                                    { \p s -> TBitAnd p }
    "||"                                   { \p s -> TOr p }
    "|"                                    { \p s -> TBOr p }
    "!="                                   { \p s -> TInEqual p }
    "<"                                    { \p s -> TLThan p }
    ">"                                    { \p s -> TGThan p }
    "<="                                   { \p s -> TLTEq p }
    ">="                                   { \p s -> TGTEq p }
    "=="                                   { \p s -> TEquality p }
    "=>"                                   { \p s -> TRef p }
    "{"                                    { \p s -> TLCurl p }
    "}"                                    { \p s -> TRCurl p }
    "["                                    { \p s -> TLBrack p }
    "]"                                    { \p s -> TRBrack p }
    "="                                    { \p s -> TEquals p }
    "*"                                    { \p s -> TMult p s }
    "/"                                    { \p s -> TDiv p }
    "**"                                   { \p s -> TExpSym p }
    "%"                                    { \p s -> TModul p } 
    "+"                                    { \p s -> TOp p (head s) }
    "-"                                    { \p s -> TSub p }
    ";"                                    { \p s -> TSemiCol p }
    ":"                                    { \p s -> TCol p }
    ","                                    { \p s -> TComma p }
    ":="                                   { \p s -> TAssign p }
    "|="                                   { \p s -> TLVOr p }
    "^="                                   { \p s -> TLVXor p}
    "&="                                   { \p s -> TLVAnd p }
    "<<="                                  { \p s -> TLVLeftShift p }
    ">>="                                  { \p s -> TLVRightShift p }
    "+="                                   { \p s -> TLVIncr p }
    "-="                                   { \p s -> TLVDecr p }
    "*="                                   { \p s -> TLVMult p }
    "/="                                   { \p s -> TLVDiv p }
    "%="                                   { \p s -> TLVMod p }
    "."                                    { \p s -> TPeriod p s } 

    "_"                                    { \p s -> TPlaceHold p s }

    "from"                                 { \p s -> TFrom p s }
    @identifier                            { \p s -> TIdent p s }                       -- The lexical token for an identifier 
    @nestedids                             { \p s -> TNestedIds p s}
    @string                                { \p s -> TStringLiteral p (init (tail s)) } -- Lexical token for a string, (init(tail s)) removes leading and trailing "
    "("                                    { \p s -> TLeftParen p }
    ")"                                    { \p s -> TRightParen p }

{

-- Each token has type: AlexPosn -> String -> Token
-- The token type
data Token = 
        TIdent AlexPosn String
        | TNestedIds AlexPosn String
        | TReservedOp AlexPosn
        | THexNum AlexPosn
        | TExp AlexPosn Int
        | TIntLit AlexPosn String
        | TInt AlexPosn Int
        | TUInt AlexPosn String
        | TBytes AlexPosn String
        | TFixed AlexPosn String
        | TUFixed AlexPosn String
        | TNumUnit AlexPosn String
        | TDec AlexPosn Int
        | TStringLiteral AlexPosn String
        | TPragma AlexPosn
        | TImport AlexPosn
        | TContract AlexPosn
        | TLibrary AlexPosn
        | TInterface AlexPosn
        | TFuncDef AlexPosn
        | TStruct AlexPosn
        | TExternal AlexPosn String
        | TMap AlexPosn String
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
        | TIndex AlexPosn
        | TFrom AlexPosn String
        | TView AlexPosn String
        | TPure AlexPosn String
        | TPayable AlexPosn String
        | TReturns AlexPosn
        | TMem AlexPosn String
        | TStorage AlexPosn String
        | TEnum AlexPosn
        | TNew AlexPosn
        | TIf AlexPosn
        | TElse AlexPosn
        | TWhile AlexPosn
        | TAssem AlexPosn
        | TLet AlexPosn
        | TEvent AlexPosn
        | TAnon AlexPosn
        | TModi AlexPosn
        | TVers AlexPosn String
        | THat AlexPosn
        | TIncr AlexPosn
        | TDecr AlexPosn
        | TRShift AlexPosn
        | TLShift AlexPosn
        | TNegate AlexPosn
        | TAnd AlexPosn
        | TBitAnd AlexPosn
        | TOr AlexPosn
        | TBOr AlexPosn
        | TInEqual AlexPosn
        | TLThan AlexPosn
        | TGThan AlexPosn
        | TLTEq AlexPosn
        | TGTEq  AlexPosn
        | TEquality AlexPosn
        | TRef AlexPosn
        | TLCurl AlexPosn
        | TRCurl AlexPosn
        | TLBrack AlexPosn
        | TRBrack AlexPosn
        | TLeftParen AlexPosn
        | TRightParen AlexPosn
        | TEquals AlexPosn
        | TMult AlexPosn String
        | TDiv AlexPosn
        | TExpSym AlexPosn
        | TModul AlexPosn
        | TOp AlexPosn Char
        | TSub AlexPosn
        | TSemiCol AlexPosn
        | TCol AlexPosn
        | TComma AlexPosn
        | TAssign AlexPosn
        | TLVOr AlexPosn
        | TLVXor AlexPosn
        | TLVAnd AlexPosn
        | TLVLeftShift AlexPosn
        | TLVRightShift AlexPosn
        | TLVIncr AlexPosn
        | TLVDecr AlexPosn
        | TLVMult AlexPosn
        | TLVDiv AlexPosn
        | TLVMod AlexPosn
        | TPeriod AlexPosn String
        | TDo AlexPosn String
        | TPlaceHold AlexPosn String
        | TCont AlexPosn String
        | TBreak AlexPosn String
        | TRetState AlexPosn String
        | TThrow AlexPosn String
        deriving (Eq, Show)

tokenPosn (TVers p str) = p
tokenPosn (TIdent p id) = p
tokenPosn (TNestedIds p str) = p
tokenPosn (TReservedOp p) = p 
tokenPosn (THexNum p) = p
tokenPosn (TExp p f) = p 
tokenPosn (TIntLit p str) = p 
tokenPosn (TInt p i) = p  
tokenPosn (TUInt p str) = p 
tokenPosn (TBytes p str) = p 
tokenPosn (TFixed p str) = p 
tokenPosn (TUFixed p str) = p 
tokenPosn (TNumUnit p str) = p
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
tokenPosn (TFuncDef p) = p 
tokenPosn (TStruct p) = p 
tokenPosn (TBooleanLit p str) = p
tokenPosn (TMap p str) = p
tokenPosn (TVar p str) = p 
tokenPosn (TUsing p str) = p
tokenPosn (TFor p str) = p
tokenPosn (TTrue p str) = p 
tokenPosn (TFalse p str) = p
tokenPosn (TAs p) = p
tokenPosn (TIs p) = p
tokenPosn (TIndex p) = p
tokenPosn (TFrom p str) = p
tokenPosn (TPure p str) = p
tokenPosn (TPayable p str) = p
tokenPosn (TReturns p ) = p
tokenPosn (TMem p str) = p
tokenPosn (TStorage p str) = p
tokenPosn (TEnum p) = p
tokenPosn (TNew p) = p
tokenPosn (TView p str) = p
tokenPosn (TIf p ) = p
tokenPosn (TElse p) = p
tokenPosn (TWhile p ) = p
tokenPosn (TAssem p ) = p
tokenPosn (TLet p ) = p
tokenPosn (TEvent p) = p
tokenPosn (TAnon p) = p
tokenPosn (TModi p) = p
tokenPosn (THat p) = p 
tokenPosn (TIncr p) = p
tokenPosn (TDecr p) = p 
tokenPosn (TLShift p) = p
tokenPosn (TRShift p) = p
tokenPosn (TNegate p) = p 
tokenPosn (TBitAnd p) = p
tokenPosn (TAnd p) = p 
tokenPosn (TOr p) = p 
tokenPosn (TBOr p) = p
tokenPosn (TInEqual p) = p 
tokenPosn (TLThan p) = p 
tokenPosn (TGThan p) = p 
tokenPosn (TLTEq p) = p 
tokenPosn (TGTEq p) = p 
tokenPosn (TEquality p) = p 
tokenPosn (TRef p) = p 
tokenPosn (TLCurl p) = p  
tokenPosn (TRCurl p) = p  
tokenPosn (TLBrack p) = p  
tokenPosn (TRBrack p) = p  
tokenPosn (TLeftParen p) = p  
tokenPosn (TRightParen p) = p  
tokenPosn (TEquals p) = p  
tokenPosn (TMult p str) = p  
tokenPosn (TDiv p) = p
tokenPosn (TExpSym p) = p  
tokenPosn (TModul p) = p  
tokenPosn (TOp p c) = p  
tokenPosn (TSub p) = p  
tokenPosn (TSemiCol p) = p  
tokenPosn (TCol p) = p  
tokenPosn (TComma p) = p 
tokenPosn (TAssign p) = p
tokenPosn (TLVAnd p) = p 
tokenPosn (TLVOr p) = p 
tokenPosn (TLVXor p) = p 
tokenPosn (TLVLeftShift p) = p 
tokenPosn (TLVRightShift p) = p 
tokenPosn (TLVIncr p) = p 
tokenPosn (TLVDecr p) = p 
tokenPosn (TLVMult p) = p 
tokenPosn (TLVDiv p) = p 
tokenPosn (TLVMod p) = p 
tokenPosn (TPeriod p str) = p 
tokenPosn (TDo p str) = p 
tokenPosn (TPlaceHold p str) = p 
tokenPosn (TCont p str) = p 
tokenPosn (TRetState p str) = p 
tokenPosn (TBreak p str) = p 
tokenPosn (TThrow p str) = p 

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