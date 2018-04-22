{
module Solidiscan.Parser where
import Solidiscan.Lexer
import Solidiscan.AST
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp _ }
    version                                { TVers _ $$ }
    decimalnum                             { TDec _ $$ }            -- $$ allows us to pass through the value of the token
    "exponent"                             { TExp _ $$ }            -- Can be seen in Int/Op/StringLiteral tokens also
    digit                                  { TInt _ $$ }
    int                                    { TIntLit _ $$ }
    uint                                   { TUInt _ $$ }
    bytes                                  { TBytes _ $$ }
    fixed                                  { TFixed _ $$ }
    ufixed                                 { TUFixed _ $$ }
    numberunit                             { TNumUnit _ $$ }
    "pragma"                               { TPragma _ }
    "import"                               { TImport _ }
    "external"                             { TExternal _ $$ }
    "public"                               { TPublic _ $$}
    "internal"                             { TIntern _ $$}
    "private"                              { TPriv _ $$}
    "constant"                             { TConst _ $$}
    "string"                               { TStringAs _ $$}
    contract                               { TContract _ }
    "library"                              { TLibrary _ }
    "interface"                            { TInterface _ }
    function                               { TFuncDef _ }
    "struct"                               { TStruct _ }
    "address"                              { TAddr _ $$ }
    "bool"                                 { TBooleanLit _ $$ }
    "do"                                   { TDo _ $$ }
    "_"                                    { TPlaceHold _ $$ }
    "continue"                             { TCont _ $$ }
    "break"                                { TBreak _ $$ }
    "return"                               { TRetState _ $$ }
    "throw"                                { TThrow _ $$ }
    "var"                                  { TVar _ $$ }
    "mapping"                              { TMap _ $$ }
    "using"                                { TUsing _ $$ }
    "for"                                  { TFor _ $$ }
    "true"                                 { TTrue _ $$ }
    "false"                                { TFalse _ $$ }
    "as"                                   { TAs _ }
    "is"                                   { TIs _ }
    "indexed"                              { TIndex _ }
    "view"                                 { TView _ $$ }
    "pure"                                 { TPure _ $$ }
    "payable"                              { TPayable _ $$ }
    "returns"                              { TReturns _ }
    "if"                                   { TIf _ }
    "while"                                { TWhile _ }
    "assembly"                             { TAssem _ }
    "let"                                  { TLet _ }
    "else"                                 { TElse _ }
    "event"                                { TEvent _ }
    "anonymous"                            { TAnon _ }
    "modifier"                             { TModi _ }
    "memory"                               { TMem _  $$ }
    "storage"                              { TStorage _ $$ }
    "enum"                                 { TEnum _ }
    "new"                                  { TNew _ }
    "++"                                   { TIncr _ }
    "--"                                   { TDecr _ }
    "^"                                    { THat _ }
    "!"                                    { TNegate _ }
    "&&"                                   { TAnd _ }
    "&"                                    { TBitAnd _ }
    "||"                                   { TOr _ }
    "|"                                    { TBOr _ }
    "!="                                   { TInEqual _ }
    "<"                                    { TLThan _ }
    ">"                                    { TGThan _ }
    ">>"                                   { TRShift _ }
    "<<"                                   { TLShift _ }
    "<="                                   { TLTEq _ }
    ">="                                   { TGTEq _ }
    "=="                                   { TEquality _ }
    "=>"                                   { TRef _ } 
    "{"                                    { TLCurl _ }
    "}"                                    { TRCurl _ }
    "["                                    { TLBrack _ }
    "]"                                    { TRBrack _ }
    "."                                    { TPeriod _ $$ }
    "="                                    { TEquals _}
    "*"                                    { TMult _ $$ }
    "/"                                    { TDiv _ }
    "**"                                   { TExpSym _ }
    "%"                                    { TModul _ }
    "+"                                    { TOp _ $$ }
    "-"                                    { TSub _ }
    ";"                                    { TSemiCol _ }
    ":"                                    { TCol _ }
    ","                                    { TComma _ }
    ":="                                   { TAssign _ }
    "|="                                   { TLVOr _ }
    "^="                                   { TLVXor _ }
    "&="                                   { TLVAnd _ }
    "<<="                                  { TLVLeftShift _ }
    ">>="                                  { TLVRightShift _ }
    "+="                                   { TLVIncr _ }
    "-="                                   { TLVDecr _ }
    "*="                                   { TLVMult _ }
    "/="                                   { TLVDiv _ }
    "%="                                   { TLVMod _ }
    ident                                  { TIdent _ $$ }                       -- The lexical token for an identifier 
    "from"                                 { TFrom _ $$ }
    nestedids                              { TNestedIds _ $$ }                   -- Used to prevent shift/reduce errors with user defined typenames
    stringLiteral                          { TStringLiteral _ $$ }
    "("                                    { TLeftParen _ }
    ")"                                    { TRightParen _ }


-- To prevent shift reduce by these keywords
%left "constant" "internal" 
%left ")"
-- Added to prevent dangling else issue
%right "else"

-- Expression Operators, lowest precedence is first
%left ","
%right "=" "|=" "^=" "&=" "<<=" ">>=" "+=" "-=" "*=" "/=" "%="
%left "||"
%left "&&"
%left "==" "!="
%left "<" "<=" ">" ">="
%left "|"
%left "^"
%left "&"
%left "<<" ">>"
%left "+" "-"
%left "*" "/" "%"
%right "**"
%left "++" "--"
%right "!"
%right "[" "("
%left "."

-- Tells happy to expect at least 22 shift reduce conflict (at current this is within the if-else block and function-call methods)
-- %expect 22
%%

SourceUnit    : {- empty -}                         { [] }
              | SourceUnit SourceUnitSol            { $2 : $1 }

SourceUnitSol :: { ProgSource }
              : PragmaDirective                     { SourceUnit $1 }
              | ImportDirective                     { ImportUnit $1 }
              | ContractDefinition                  { ContractDef $1 }

PragmaDirective :: { PragmaDirective } 
             : "pragma" ident "^" version ";"                                     { PragmaDirective (PragmaName $2) (Version $4) (lineNum $1) }


ImportDirective :: { ImportDirective } 
             : "import" stringLiteral zero(ImportAs) ";"                               { ImportDir $2 }
             | "import" ImportAster zero(ImportAs) "from" stringLiteral ";"            { ImportMulti $2 $3 (Identifier $4) $5}

ImportAs
             : "as" ident                                                              { (Identifier $2) } 
ImportAster : "*"                                                                      { (Identifier $1) }
            | ident                                                                    { (Identifier $1)  }

-- Production for the Contract Definition
ContractDefinition :: { ContractDefinition }                                                       -- Passing the $2 token to Identifier to return the appropriate data type
             : ConLibInt ident zero(InheritanceSpecList) "{" list(ContractContents) "}"    { Contract (Identifier $2) $3 $5 }
-- Production for (Contract | Library | Interface)
ConLibInt   : contract                                                                 { $1 }
            | "library"                                                                { $1 }
            | "interface"                                                              { $1 }

-- The following is a production group for 
--          ( 'is' InheritanceSpecifier (',' InheritanceSpecifier )* )?
--  Where each production is nested below
InheritanceSpecList :: { InheritanceSpec }
                  : "is" InheritanceSpecifier list(OMInheritanceSpec)                  { InheritanceSpec $2 $3 }
OMInheritanceSpec : "," InheritanceSpecifier                                           { $2 }

-- InheritanceSpecifier Production 
--       InheritanceSpecifier = UserDefinedTypeName ( '(' Expression ( ',' Expression )* ')' )? 
--InheritanceSpecifier : UserDefinedTypeName                                              { $1 }
InheritanceSpecifier :: { InheritanceSpecifier }
                     : UserDefinedTypeName zero(InhExpList)                             { InheritanceSpecifier $1 $2 }
InhExpList :: { [Expression] }
          : "(" Expression list(CSExpList) ")"                                          { $2:$3 }
CSExpList : "," Expression                                                              { $2 }

{-
ContractParts : ContractPart                     { [$1] }
              | ContractParts ContractPart       { $1:$2}
-}
ContractContents :: { ContractConts }
             : StateVarDeclaration                                                     { StateVarDec $1 }
             | UsingForDec                                                             { UsingFor $1 }
             | StructDefinition                                                        { StructDef $1 }
             | ModifierDefinition                                                      { ModDef $1 }
             | FunctionDefinition                                                      { FunctionDefinition $1 }
             | EventDefinition                                                         { EventDef $1 }
             | EnumDefinition                                                          { EnumDef $1 }
             
-- The following rules are for the function definition production.
-- ---------------------------------------------------------------
-- Function definition, function modifiers have been put into their own rule in order to handle
-- the fallback function within the solidity language docs.
FunctionDefinition :: { FunctionDef } 
             : function ident ParameterList list(FuncMods) zero(ReturnParam) TermBlock  { FunctionDef (Identifier $2) $3 $4 $5 $6 }
             | function "(" ")" list(FuncMods) zero(ReturnParam) TermBlock              { FallBackFunc $4 $5 $6}

-- ParameterList = '(' ( Parameter (',' Parameter)* )? ')'
ParameterList :: { [[Parameter]] }
              : "(" zero(Parameters) ")"                                                { $2 }
Parameters    : Parameter list(ParamList)                                               { $1:$2 }
ParamList     : "," Parameter                                                           { $2 }
Parameter :: { Parameter }
              : TypeName zero(StorageLocation) zero(ParamIdent)                                    { Parameter $1 $2 $3 }
ParamIdent : ident                                                                      { (Identifier $1)}

-- Func mods allow the use of any ModifierInvocation | StateMutability | FuncVar
FuncMods :: { FuncMods }
             : ModifierInvocation                                                       { ModifierInvs $1 }
             | StateMutability                                                          { StateMutability $1 }
             | FuncVar                                                                  { FuncVars $1 }

-- Either 'return' | ParamaterList
--  ( 'returns' ParameterList )? 
ReturnParam  :: { ReturnParam } 
             : "returns" ParameterList                                                   { ReturnParam $2 }

-- Either terminates the function declaration with ';'
-- Or a Block
-- ( ';' | Block )
TermBlock    : ";"                                                                       { [] }
             | Block                                                                     { [$1] }
-- ---------------------------------------------------------------

-- Eventdefinition grammar production
EventDefinition :: { EventDefinition }
             : "event" ident zero(EventParamList) zero(AnonList) ";"                    { EventDefinition (Identifier $2) $3 }
-- Production rules for the Event definition and it's parameters
-- Setup is very similar to the FunctionDefinition paramater list
EventParamList
             : "(" zero(EventParams) ")"                                                { $2 }
EventParams  : EParameters list(EParamList)                                             { $1:$2 }
EParamList   : "," EParameters                                                          { $2 }
EParameters :: { EParameters }
             : TypeName zero(Indexed) ident                                             { EParameters $1 (Identifier $3) }
Indexed      : "indexed"                                                                { $1 }


-- StructDefinition follows this grammar:
--      StructDefinition = 'struct' Identifier '{' ( VariableDeclaration ';' (VariableDeclaration ';')* )* '}'
StructDefinition :: { StructDefinition }
             : "struct" ident "{" zero(StructVarDecList) "}"                            { StructDefinition (Identifier $2) $4 }
StructVarDecList :: { [Expression]}
             : StructValue list(StructValue)                                            { $1:$2 }
StructValue : VariableDeclaration ";"                                                   { $1 }

-- Production rules for modifier definitions + invocations
ModifierDefinition :: { ModifierDefinition }
             : "modifier" ident zero(ParameterList) TermBlock                           { ModifierDefinition (Identifier $2) $3 $4 }
ModifierInvocation 
             : ident zero(ZOModExpList)                                                 { $2 }
ZOModExpList : "(" zero(ModExpList) ")"                                                 { $2 }
ModExpList   : ExpressionList                                                           { $1 }

-- Enum Definition follows the following grammar production
--             'enum' Identifier '{' EnumValue? (',' EnumValue)* '}'
EnumDefinition :: { EnumDefinition }
             : "enum" ident "{" EnumValList "}"                                         { EnumDefinition (Identifier $2) $4 }
EnumValue :: { EnumValue }
             : ident                                                                    { EnumValue (Identifier $1) }
             -- ! This isn't correct!
EnumValList  : EnumValue list(MultiEnumValue)                                           { $2 }
MultiEnumValue 
             : "," EnumValue                                                            { $2 }

AnonList     : "anonymous"                                                              { $1 }



StateMutability :: { PublicKeyword } 
             : "pure"                                                                    { PureKeyword $1 }
             | "constant"                                                                { ConstantKeyword $1 }
             | "view"                                                                    { ViewKeyword $1 }
             | "payable"                                                                 { PayableKeyword $1 }

StorageLocation :: { StorageLocation }
             : "memory"                                                                  { StorageLocation $1 }
             | "storage"                                                                 { StorageLocation $1 }

FuncVar :: { PublicKeyword }
             : "external"                                                                { ExternalKeyword $1 }
             | "internal"                                                                { InternalKeyword $1}
             | "private"                                                                 { PrivateKeyword $1}
             | "public"                                                                  { PublicKeyword $1 }

-- StateVarDec = TypeName ( 'public' | 'internal' | 'private' | 'constant' )? Identifier ('=' Expression)? ';'
-- Passing the ident into the Ident function to ensure its type is formatted correctly
StateVarDeclaration :: { StateVarDeclaration }                                                         -- Passing $3 token into Identifier to return the appropriate data type
             : TypeName zero(AssVar) ident zero(MExpression) ";"                       { StateVariableDeclaration $1 $2 (Identifier $3) $4 }


UsingForDec :: { UsingForDec }
             : "using" ident "for" TypeName ";"                                        { UsingForDeclaration $1 (Identifier $2) $3 $4}
        
--Todo: finish this method for * implementation
{-
MTypeName    : "*"                                                                     { $1 }
             | TypeName                                                                { $1}
-}
TypeName     : ElementaryTypeName                                                      { ElementaryTypeName $1 }
             | UserDefinedTypeName                                                     { $1 }
             | Mapping                                                                 { $1 }
             | ArrayTypeName                                                           { $1 }
             | FunctionTypeName                                                        { $1 }

AssVar       : "public"                                                                { PublicKeyword $1 }       
             | "private"                                                               { PrivateKeyword $1 }
             | "internal"                                                              { InternalKeyword $1 }
             | "constant"                                                              { ConstantKeyword $1 }

-- MaybeExp = Possibility of an Expression
MExpression  :: {Expression}
             : "=" Expression                                                          { $2 }

-- Expression list
-- ExpressionList = Expression ( ',' Expression )*
ExpressionList :: { [Expression] }
             : Expression list(ExprList)                                               { $1:$2 }
ExprList     :: { Expression }
             : "," Expression                                                          { $2 }

-- The basic Expression type
Expression   :: { Expression }
             : Expression "++"                                                         { IncrExp $1 }
             | Expression "--"                                                         { DecrExp $1 }                      
             | NewExpression                                                           { NewExpression $1 }
             | IndexAccess                                                             { IndexAccess $1 }
             | MemberAccess                                                            { $1 }
             | Expression "(" FunctionCallArgs ")"                                     { FunctionCall $1 $3 }
             | "(" Expression ")"                                                      { BracketsExp $2 }
             | "!" Expression                                                          { NotExpression $2 }
             | Expression "**" Expression                                              { ExponentExp $1 $3 }
             | Expression "*" Expression                                               { MultiExp $1 $3 }
             | Expression "/" Expression                                               { DivisionExp $1 $3 }
             | Expression "%" Expression                                               { ModuloExp $1 $3 }
             | Expression "+" Expression                                               { AdditionExp $1 $3 }
             | Expression "-" Expression                                               { SubtractionExp $1 $3 }
             | Expression "<<" Expression                                              { LShiftExp $1 $3 }
             | Expression ">>" Expression                                              { RShiftExp $1 $3 }
             | Expression "&" Expression                                               { BitAndExp $1 $3 }
             | Expression "^" Expression                                               { BitXOrExp $1 $3 }
             | Expression "|" Expression                                               { BitOrExp $1 $3 }
             | Expression "<" Expression                                               { LThanExp $1 $3 }
             | Expression ">" Expression                                               { GThanExp $1 $3 }
             | Expression "<=" Expression                                              { LThanEqExp $1 $3 }
             | Expression ">=" Expression                                              { GThanEqExp $1 $3 }
             | Expression "==" Expression                                              { EqualExp $1 $3 }
             | Expression "!=" Expression                                              { NotEqualExp $1 $3 }
             | Expression "&&" Expression                                              { AndExp $1 $3 }
             | Expression "||" Expression                                              { OrExp $1 $3 }
             | Expression "=" Expression                                               { LValEqual $1 $3 }
             | Expression "|=" Expression                                              { LValOr $1 $3 }
             | Expression "^=" Expression                                              { LValXOr $1 $3 }
             | Expression "&=" Expression                                              { LValAnd $1 $3 }
             | Expression "<<=" Expression                                             { LValLeftShift $1 $3 }
             | Expression ">>=" Expression                                             { LValRightShift $1 $3 }
             | Expression "+=" Expression                                              { LValIncr $1 $3 }
             | Expression "-=" Expression                                              { LValDecr $1 $3 }
             | Expression "*=" Expression                                              { LValMult $1 $3 }
             | Expression "/=" Expression                                              { LValDivis $1 $3 }
             | Expression "%=" Expression                                              { LValMod $1 $3 }
             | PrimaryExpression                                                       { $1 }

NewExpression :: { TypeName }
             : "new" TypeName                                                          { $2 }

IndexAccess  :: { [Expression] }
             : Expression "[" zero(Expression) "]"                                     { $1:$3 }

-- To handle member access e.g test.Test
MemberAccess :: { Expression }
             : Expression "." ident                                                    { MemberAccess $1 $2 (Identifier $3) }

{- FunctionCall :: { Expression }
             : Expression "(" FunctionCallArgs ")"                                     { FunctionCall $1 $3 } -}
FunctionCallArgs
             : "{" zero(NameValueList) "}"                                             { NameValues $2 }
             | zero(ExpressionList)                                                    { ExpLst $1}

-- Production rules to do the following grammar rule
--             Identifier : Expression ( , Identifier : Expression )*
-- This is for named function calls see - http://solidity.readthedocs.io/en/develop/control-structures.html#function-calls
NameValueList :: { NameValueList }
             : NameVal list(NameValueList_Lst)                                         { NameValueList $1 $2}
NameValueList_Lst :: { NameValue }
             : "," NameVal                                                             { $2 }
NameVal      :: { NameValue }
             : ident ":" Expression                                                    { NameValue (Identifier $1) $3}


Statement    :: { Statement }
             : IfStatement                                                             { $1 }
             | WhileStatement                                                          { $1 }
             | ForStatement                                                            { $1 }
             | Block                                                                   { $1 }
             | InlineAssemblyStatement                                                 { $1 }
             | DoWhileStatement ";"                                                    { $1 }
             | PlaceholderStatement ";"                                                { $1 } 
             | Continue ";"                                                            { $1 }
             | Break ";"                                                               { $1 }
             | Return ";"                                                              { $1 }
             | Throw ";"                                                               { $1 }
             | SimpleStatement ";"                                                     { $1 }
             
IfStatement  :: { Statement }
                : "if" "(" Expression ")" Statement zero(ElseState)                    { IfStatement $3 $5 $6  }
ElseState    :: { ElseState }
             : "else" Statement                                                        { ElseState $2 }

WhileStatement :: { Statement }
             : "while" "(" Expression ")" Statement                                    { WhileStatement $3 $5 }

ForStatement :: { Statement }
             : "for" "(" ForParams ")" Statement                                       { ForStatement $3 $5 }
ForParams    :: { ForParams }
             : zero(SimpleStatement) ";" zero(Expression) ";" zero(ExpressionStatement) { ForParams $1 $3 $5 }

Block        :: { Statement }
             : "{" list(Statement) "}"                                                 { BlockStatements $2 }

-- The following is for Solidity's inline assembly expressions.
InlineAssemblyStatement :: { Statement }
             : "assembly" zero(stringLiteral) InlineAssemblyBlock                      { InlineAssemblyStatement $2 $3 }
InlineAssemblyBlock
             : "{" list(AssemblyItem) "}"                                              { AssemblyBlock $2 }
AssemblyItem 
             : ident                                                                  { AssemblyId $1 }
             --| FunctionalAssemblyExpression                                         { $1 }
             | InlineAssemblyBlock                                                    { InlineAssemblyBlock $1 }
             | AssemblyLocalBinding                                                   { AssemblyLocal $1 }                                             
             --| AssemblyAssignment                                                   { $1 }
             --| AssemblyLabel                                                        { $1 }
             | NumberLiteral                                                          { AssemblyNum (NumExpression $1) }
             | stringLiteral                                                          { AssemblyString (StringExpression $1) }
             -- | HexLiteral                                                           { $1 }       
AssemblyLocalBinding :: { AssemblyLocalBinding }
             : "let" ident ":=" FunctionalAssemblyExpression                          { AssemblyLocalBinding (Identifier $2) $4 }
FunctionalAssemblyExpression :: { AssemblyExpression }
             : ident "(" zero(AssemblyItem) list(MAssemblyItem) ")"                   { AssemblyExpression $1 $3 $4 }        
MAssemblyItem :: { AssemblyItem }
             : "," AssemblyItem                                                       { $2 }

DoWhileStatement :: { Statement }
             : "do" Statement "while" "(" Expression ")"                              { DoWhile $2 $5}

PlaceholderStatement :: { Statement }                          
             : "_"                                                                    { PlaceholderStatement $1 }

Continue     :: { Statement }
             : "continue"                                                             { ContinueStatement $1 }

Break        :: { Statement }
             : "break"                                                                { BreakStatement $1 }

Return     :: { Statement }
             : "return" zero(Expression)                                              { ReturnStatement $2 }

Throw        :: { Statement }
             : "throw"                                                                { ThrowStatement $1 }

SimpleStatement  
             : VariableDefinition                                                      { $1 }
             | ExpressionStatement                                                     { $1 }
             
VariableDefinition 
             : "var" IdentifierList                                                    { $2 }
             | "var" VariableDeclaration                                               { $2 } 

VariableDeclaration :: { Expression }
             : TypeName zero(StorageLocation) ident zero(VarMExp)                      { VariableDeclaration $1 $2 (Identifier $3) (VarDecExp $4) }
VarMExp      : "=" Expression                                                          { $2 }

-- IdentifierList follows the following grammar rule
--              "(" ( Identifier? "," )* Identifier? ")"
IdentifierList :: { Expression }
             : "(" list(IdentList) zero(IdentVar) ")" zero(VarMExp)                    { IdentifierList $2 $3 (VarDecExp $5) }
IdentList    : zero(IdentVar) ","                                                      { $1 }
IdentVar     : ident                                                                   { $1 }

ExpressionStatement
             : Expression                                                              { $1 } 

-- Production rule for an if-else statement, currently contains a shift reduce conflict

-- Nums/Bools/Strings
PrimaryExpression :: { Expression }
               : BooleanLiteral                                                     { BoolExpression $1 }
               | NumberLiteral                                                      { NumExpression $1 }
               | stringLiteral                                                      { StringExpression $1 }
              -- | TupleExpression                                                    { TupleExpression $1 }
               | ident                                                              { IdentExpression $1 }
               | ElementaryTypeNameExpression                                       { ElemTypeExpression $1}

BooleanLiteral :: {BooleanLiteral}
               : "true"                                                                { BooleanLiteral $1 }
               | "false"                                                               { BooleanLiteral $1 }

NumberLiteral  :: { NumberLiteral }
               : decimalnum zero(numberunit)                                           { NumberLiteral $1 $2 }

{- TupleExpression 
               : "(" zero(TupleEx) ")"                                              { TupleExpression $2 }
               -- | "[" zero(TupleEx) "]"                                              { TupleExpression $2 }
TupleEx        : zero(Expression) list(MaybeTupleEx)                                { $1 $2 }
MaybeTupleEx   : "," zero(Expression)                                               { $2 }
-}    

ElementaryTypeNameExpression
               : ElementaryTypeName                                                    { $1 }

{- UserDefinedTypeName :: { TypeName }
               : ident list(OMUDTypename)                                              { UserDefinedTypeName (Identifier $1) $2}
OMUDTypename   : "." ident                                                             { (Identifier $2) } -}

UserDefinedTypeName :: {TypeName}
               : nestedids                                                         { UserDefinedTypeName (Identifier $1) }
               | ident                                                             { UserDefinedTypeName (Identifier $1) }

ElementaryTypeName :: { ElemType }
               : "address"                                                         { AddrType $1 }                                     
               | "bool"                                                            { BoolType $1 }
               | "var"                                                             { VarType $1 }
               | "string"                                                          { StringType $1 }
               | uint                                                              { UIntType $1}
               | int                                                               { IntType $1 }
               | bytes                                                             { ByteType $1 }
               | fixed                                                             { FixedType $1 }
               | ufixed                                                            { UFixedType $1 }

Mapping        :: { TypeName }
              :  "mapping" "(" ElementaryTypeName "=>" TypeName ")"                    { Mapping $3 $5}

ArrayTypeName :: { TypeName }
              : TypeName "[" zero(Expression) "]"                                      { ArrayType $1 $3}

FunctionTypeName :: { TypeName }
              : function "(" zero(FParameters) ")" list(FTNParams) zero(FTNReturn)     { FunctionTypeName $3 $5 $6 }
{- FTParamList : "(" zero(FParameters) ")"                                                { $2 } -}
FTNParams : "internal"                                                                 { InternalKeyword $1 }
          | "external"                                                                 { ExternalKeyword $1 }
          | StateMutability                                                            { $1 }
FTNReturn : "returns" "(" list(FParameters) ")"                                        { $3 }

FParameters
          : FParam list(FParamList)                                                    { $1:$2}
FParamList 
          : "," FParam                                                                 { $2 }
FParam    : TypeName zero(StorageLocation)                                             { FParam $1 $2 }

-- The following allows the parser to create lists of one or more or zero or more lists.
-- one or more
list1(p) : p                    { [$1] }
         | p list1(p)           { $1 : $2 }
-- zero or more 
list(p) : list1(p)              { $1 }
        | {- empty -}           { [] }

-- Zero or one
zero(q) : q                     { [$1] }
        | {- empty -}           { [] }  


-- The following are commented out until they will be used
--Expression : Expression op Expression                                                { ExpOp $1 $2 $3 }
--Type: ident                                                                          { TypeIdent $1}
{

-- helper function for line number
lineNum :: Token -> Int
lineNum x = getLineNum $ tokenPosn x
-- The following grabs a token from the token list
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("Parse error at " ++ show (head(tokenList)) ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))
}