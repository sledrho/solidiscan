{
module Main (main) where
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
    | @decimalnum @exponent                { \s -> TExp (read s) }
    @reservedid                            { \s -> TReservedOp }
    @int                                   { \s -> TIntLit (read s) }
    $digit+                                { \s -> TInt (read s) }
    "boolean"                              { \s -> TBooleanLit }
    "true"                                 { \s -> TTrue }
    "false"                                { \s -> TFalse }
    "!"                                    { \s -> TNegate }
    "&&"                                   { \s -> TAnd }
    "||"                                   { \s -> TOr }
    "!="                                   { \s -> TInEqual }
    "<"                                    { \s -> TLThan }
    ">"                                    { \s -> TGThan }
    "<="                                   { \s -> TLTEq }
    ">="                                   { \s -> TGTEq }
    "=="                                   { \s -> TEquality }
    "{"                                    { \s -> TLCurl }
    "}"                                    { \s -> TRCurl }
    "["                                    { \s -> TLBrack }
    "]"                                    { \s -> TRBrack }
    "."                                    { \s -> TPeriod }
    "="                                    { \s -> TEquals}
    "*"                                    { \s -> TMult }
    "/"                                    { \s -> TDiv }
    "**"                                   { \s -> TExpSym }
    "%"                                    { \s -> TModul }
    "+"                                    { \s -> TPlus }
    "-"                                    { \s -> TSub }
    $alpha[$alpha $digit \_ \']*           { \s -> TIdent s }                       -- The lexical token for an identifier 
    @string                                { \s -> TStringLiteral (init (tail s)) } -- Lexical token for a string, (init(tail s)) removes leading and trailing "
    "("                                    { \s -> TLeftParen }
    ")"                                    { \s -> TRightParen }
    --$byte                                { \s -> TByte (read s) }


{

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
        | TPlus 
        | TSub
        deriving (Eq, Show)

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