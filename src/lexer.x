{
module Lexer where
import Control.Monad
}

-- Attempting to make a Monadic lexer
%wrapper "basic"
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
$graphic  = $printable # $white

-- for comments
@comment = \\
-- Char Sets for Specific Number combinations
@string         = \" ($graphic # \")* \"
@decimalnum     = $digit+
@hexadecimal    = $hexit+
@exponent       = [eE] [\-\+] @decimalnum

@int = int (8 | 16 | 24 | 32 | 40 | 48 | 56 | 64 | 72 | 80 | 88 | 96 | 104 | 112 | 120 
              | 128 | 136 | 144 | 152 | 160 | 168 | 176 | 184 | 192 | 200 | 208 | 216 
              | 224 | 232 | 240 | 248 | 256 )?

-- List of reserved words used by Solidity
@reservedid = abstract| case| catch| default| final| in| inline| match| null| of|
              relocatable| static| switch| try| type| typeof                       -- reserved keywords within the Solidity language

-- The initial tokens used by the lexer, followed by Haskell code segments
-- Each token has type String -> Token 
-- Token being a custom type by Alex, all tokens MUST have the same type.

tokens :-

    $white+                                ;
<0> @decimalnum
    | 0[xX] @hexadecimal+                  { \s -> TDec (read s) }
-- Because of the way Int's are bound, they will overflow and wrap around - Limitations of Haskell Int datatype.
<0> @decimalnum \. @decimalnum @exponent?
    | @decimalnum @exponent                { \p s -> TExp p (read s) }
    @reservedid                            { \p s -> TReservedOp p }
    @int                                   { \p s -> TIntLit p (read s) }
    $digit+                                { \p s -> TInt p (read s) }
    "pragma"                               { \p s -> TPragma p }
    "import"                               { \p s -> TImport p }
    "contract"                             { \p s -> TContract p }
    "public"                               { \p s -> TPublic p }
    "boolean"                              { \p s -> TBooleanLit p }
    "true"                                 { \p s -> TTrue p }
    "false"                                { \p s -> TFalse p }
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
    $alpha[$alpha $digit \_ \']*           { \p s -> TIdent p s }                       -- The lexical token for an identifier 
    @string                                { \p s -> TStringLiteral p (init (tail s)) } -- Lexical token for a string, (init(tail s)) removes leading and trailing "
    "("                                    { \p s -> TLeftParen p }
    ")"                                    { \p s -> TRightParen p }
    --$byte                                { \p s -> TByte p (read s) }


{
-- Each token has type: AlexPosn -> String -> Token


-- The token type
data Token = 
        TIdent String
        | TReservedOp
        | THexNum
        | TExp Float
        | TIntLit Int
        | TInt Int
        | TDec Int
        | TStringLiteral String
        | TPragma
        | TImport
        | TContract
        | TPublic
        | TBooleanLit
        | TTrue
        | TFalse
        | TNegate
        | TAnd
        | TOr
        | TInEqual
        | TLThan
        | TGThan
        | TLTEq
        | TGTEq 
        | TEquality
        | TLCurl
        | TRCurl
        | TLBrack
        | TRBrack
        | TBytes
        | TLeftParen
        | TRightParen
        | TPeriod
        | TEquals
        | TMult
        | TDiv
        | TExpSym
        | TModul
        | TOp Char
        | TSub
        | TSemiCol
        deriving (Eq, Show)

-- In order to get position information a new alexScanTokens must be created

-- First a getLineNum function is created to get the current getLine
getLineNum :: AlexPosn -> Int
getLIneNum (AlexPn offset lineNum colNum) = lineNum

getColumnNum :: AlexPosn -> Int
getColumnNum (AlexPn offset lineNum colNum) = colNum

alexScanTokens2 str = go (alexStartPos,'\n',str)
    where go inp@(pos,_,str) =
        case alexScan inp 0 of
               AlexEOF -> []
               AlexError _ -> error ("Lexical error on Line " ++ show (getLineNum(pos)) ++ "and column " ++ show (getColumnNum(pos)))
               AlexSkip inp' len    -> go inp'
               AlexToken inp' len act -> act pos (take len str) : go inp'

-- test case for the Lexical analysis
s = "1 + 1 tester 1234 - 2000 ({test})"
d = "== || != !"

-- read function to read input from the repl
read_ :: IO String
read_ = putStr ">"
    >> getLine

-- eval takes the input from the REPL and evaluates
-- it using the 'alexScanTokens function, takes String
-- and returns a list of tokens
eval_ :: String -> [Token]
eval_ input = alexScanTokens input

-- The main function for the Repl
main :: IO ()
main = do
    -- Takes the input from the read function
    input <- read_
    -- unless it is :q or :quit
    unless (input == ":q" || input == ":quit")
    -- then prints the result of the evaluation function passing read as the input
    -- then recursively calls main
        $ print (eval_ input) >> main
    -- alexScanTokens s
    
}