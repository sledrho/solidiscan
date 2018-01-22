{
module Main (main) where
}

%wrapper "basic"
--$byte = (s ([1-9]|[1-2][0-9]|[3][0-2])? )?  -- bytes
--$uint = u $int                                     -- integers
--$decimalnum = [0-9]+([eE][0-9]+)?                  -- decimal numbers
--$hexnum = 0[xX][0-9a-fA-F]+                           -- hexadecimal
--$identifier = [a-zA-Z_$][a-zA-Z_$0-9]*             -- identifiers
--$comment = \/\/ [^\r\n]* | \/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+\/

-- For basic Digit/Alpha numeric characters
$digit = 0-9                                       -- digits
$alpha = [a-zA-Z]                                  -- alphabetic characters
$hexit = [0-9 A-F a-f]
$graphic  = $printable # $white

-- Char Sets for Specific Number combinations
@string         = \" ($graphic # \")* \"
@decimalnum    = $digit+
@hexadecimal    = $hexit+
@exponent       = [eE] [\-\+] @decimalnum

@int = int (8 | 16 | 24 | 32 | 40 | 48 | 56 | 64 | 72 | 80 | 88 | 96 | 104 | 112 | 120 
              | 128 | 136 | 144 | 152 | 160 | 168 | 176 | 184 | 192 | 200 | 208 | 216 
              | 224 | 232 | 240 | 248 | 256 )?
@reservedid = abstract| case| catch| default| final| in| inline| match| null| of|
              relocatable| static| switch| try| type| typeof                       -- reserved keywords within the Solidity language

tokens :-

    $white+                                ;
<0> @decimalnum
    | 0[xX] @hexadecimal                   { \s -> TDec (read s) }

<0> @decimalnum \. @decimalnum @exponent?
    | @decimalnum @exponent                { \s -> TExp (read s) }
    @reservedid                            { \s -> TReservedOp }
    @int                                   { \s -> TIntLit (read s) }
    $digit+                                { \s -> TInt (read s) }
    "boolean"                              { \s -> TBooleanLiteral }
    "true"                                 { \s -> TTrue }
    "false"                                { \s -> TFalse }
    --$byte                                { \s -> TByte (read s) }
    "."                                    { \s -> TPeriod }
    "="                                    { \s -> TEquals}
    $alpha[$alpha $digit \_ \']*           { \s -> TIdent s }                       -- The lexical token for an identifier 
    @string                                { \s -> TStringLiteral (init (tail s)) } -- Lexical token for a string, (init(tail s)) removes leading and trailing "
    "("                                    { \s -> TLeftParen }
    ")"                                    { \s -> TRightParen }

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
        | TBooleanLiteral
        | TTrue
        | TFalse
        | TBytes
        | TLeftParen
        | TRightParen
        | TPeriod
        | TEquals
        deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}