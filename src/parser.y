{
module Parser(solidiscan) where
import Lexer
import AST
}

%name solidiscan
%tokentype { Token }
%error { parseError }

%token
    "reservedid"                           { TReservedOp _ }
    version                                { TVers _ }
    "decimalnum"                           { TDec _ $$ }            -- $$ allows us to pass through the value of the token
    "exponent"                             { TExp _ $$ }            -- Can be seen in Int/Op/StringLiteral tokens also
    "int"                                  { TInt _ $$ }
    numberunit                             { TNumUnit _ }
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
    "address"                              { TAddr _ $$ }
    "bool"                                 { TBooleanLit _ $$ }
    "var"                                  { TVar _ $$ }
    "using"                                { TUsing _ $$ }
    "for"                                  { TFor _ $$ }
    "true"                                 { TTrue _ $$ }
    "false"                                { TFalse _ $$ }
    "as"                                   { TAs _ }
    "is"                                   { TIs _ }
    "from"                                 { TFrom _ }
    "view"                                 { TView _ $$ }
    "pure"                                 { TPure _ $$ }
    "payable"                              { TPayable _ $$ }
    "returns"                              { TReturns _ }
    "if"                                   { TIf _ }
    "else"                                 { TElse _ }
    "event"                                { TEvent _ }
    "anonymous"                            { TAnon _ }
    "modifier"                             { TModi _ }
    "memory"                               { TMem _  $$ }
    "storage"                              { TStorage _ $$ }
    "^"                                    { THat _ }
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
    ","                                    { TComma _ }
    ident                                  { TIdent _ $$ }                       -- The lexical token for an identifier 
    stringLiteral                          { TStringLiteral _ $$ }
    "("                                    { TLeftParen _ }
    ")"                                    { TRightParen _ }

-- Added to prevent dangling else issue
%right "else"
%%

SourceUnit    : {- empty -}                                                            { [] }
              | SourceUnit SourceUnitSol                                               { $2 : $1 }

SourceUnitSol : PragmaDirective                                                        { SourceUnit $1 }
              | ImportDirective                                                        { ImportUnit $1 }
              | ContractDefinition                                                     { ContractDef $1 }

PragmaDirective :: { PragmaDirective } 
             : "pragma" PragmaName version ";"                                         { PragmaDirective $2 }

PragmaName :: { PragmaName }
             : ident                                                                   { PragmaName $1 }

ImportDirective :: { ImportDirective } 
             : "import" stringLiteral ImportAs ";"                                     { ImportDir $2 }
             | "import" ImportAster ImportAs "from" stringLiteral ";"                  { ImportMulti $2 $3 "from" $5}

ImportAs     : "as" ident                                                              { $2 } 
             | {- empty -}                                                             { [] }

ImportAster : "*"                                                                      { "*" }
            | ident                                                                    { $1 }

-- Production for the Contract Definition
ContractDefinition :: { ContractDefinition }                                                       -- Passing the $2 token to Identifier to return the appropriate data type
             : ConLibInt ident zero(InheritanceSpecList) "{" list(ContractPart) "}"    { Contract (Identifier $2) $3 $5 }

-- Production for (Contract | Library | Interface)
ConLibInt   : contract                                                                 { $1 }
            | "library"                                                                { $1 }
            | "interface"                                                              { $1 }

-- The following is a production group for 
--          ( 'is' InheritanceSpecifier (',' InheritanceSpecifier )* )?
--  Where each production is nested below
-- ! Needs finished
InheritanceSpecList : "is" InheritanceSpecifier list(OMInheritanceSpec)                { InheritanceSpec $2 $3 }
OMInheritanceSpec : "," InheritanceSpecifier                                           { $2 }

-- InheritanceSpecifier Production 
--       InheritanceSpecifier = UserDefinedTypeName ( '(' Expression ( ',' Expression )* ')' )? 
--InheritanceSpecifier : UserDefinedTypeName                                              { $1 }
InheritanceSpecifier : UserDefinedTypeName zero(InhExpList)                             { InheritanceSpecifier $1 $2 }
InhExpList : "(" Expression list(CSExpList) ")"                                        { $2:$3 }
CSExpList : "," Expression                                                              { $2}


ContractPart :: { ContractConts }
             : StateVarDec                                                             { ContractContents $1 }
             | UsingForDec                                                             { UsingFor $1 }
             | FunctionDefinition                                                      { FunctionDefinition $1 }
             | EventDefinition                                                         { EventDef $1 }
             | ModifierDefinition                                                      { ModDef $1 }
             

FunctionDefinition :: { FunctionContents } 
             : function ident ParameterList list(FuncMods) zero(ReturnParam) TermBlock { FunctionDef $2 $3 $4 $5 $6 }

-- Eventdefinition grammar production
EventDefinition
             : "event" ident zero(EventParamList) zero(AnonList) ";"                    { EventDefinition $2 $3 }

-- Production rules for modifier definitions + invocations
ModifierDefinition 
             : "modifier" ident zero(ParameterList) TermBlock                           { ModifierDefinition $2 $3 $4 }
ModifierInvocation 
             : ident "(" list(ModExpList) ")"                                            { $3 }
ModExpList   : ExpressionList                                                            { $1 }

-- Production rules for the Event definition and it's parameters
-- Setup is very similar to the FunctionDefinition paramater list
EventParamList
             : "(" zero(EventParams) ")"                                                { $2 }
EventParams  : EParameters list(EParamList)                                             { $1:$2 }
EParamList   : "," EParameters                                                          { $2 }
EParameters  : TypeName ident                                                           { EParameters $1 $2 }

AnonList     : "anonymous"                                                              { $1 }

-- ParameterList = '(' ( Parameter (',' Parameter)* )? ')'
ParameterList : "(" zero(Parameters) ")"                                                 { $2 }
Parameters    : Parameter list(ParamList)                                                { $1:$2 }
ParamList     : "," Parameter                                                            { $2 }
Parameter      : TypeName zero(StorageLocation) ident                                    { Parameter $1 $2 $3 }

-- Func mods allow the use of any ModifierInvocation | StateMutability | FuncVar
FuncMods     : ModifierInvocation                                                        { ModifierInvs $1 }
             | StateMutability                                                           { StateMutability $1 }
             | FuncVar                                                                   { FuncVars $1 }

-- Either 'return' | ParamaterList
--  ( 'returns' ParameterList )? 
ReturnParam  : "returns" ParameterList                                                   { ReturnParam $2 }

-- Either terminates the function declaration with ';'
-- Or a Block
-- ( ';' | Block )
TermBlock    : ";"                                                                       { [] }
             | "{" list(Statement) "}"                                                   { $2 }


StateMutability 
             : "pure"                                                                    { PureKeyword $1 }
             | "constant"                                                                { ConstantKeyword $1 }
             | "view"                                                                    { ViewKeyword $1 }
             | "payable"                                                                 { PayableKeyword $1 }

StorageLocation
             : "memory"                                                                  { StorageLocation $1 }
             | "storage"                                                                 { StorageLocation $1 }

FuncVar      : "external"                                                                { ExternalKeyword $1 }
             | "internal"                                                                { InternalKeyword $1}
             | "private"                                                                 { PrivateKeyword $1}
             | "public"                                                                  { PublicKeyword $1 }

-- StateVarDec = TypeName ( 'public' | 'internal' | 'private' | 'constant' )? Identifier ('=' Expression)? ';'
-- Passing the ident into the Ident function to ensure its type is formatted correctly
StateVarDec :: { StateVarDec }                                                         -- Passing $3 token into Identifier to return the appropriate data type
             : TypeName zero(AssVar) ident zero(MExpression) ";"                       { StateVariableDeclaration $1 $2 (Identifier $3) $4 }


UsingForDec :: { UsingForDec }
             : "using" ident "for" TypeName ";"                                        { UsingForDeclaration $1 $2 $3 $4}
        
--Todo: finish this method for * implementation
MTypeName    : "*"                                                                     { $1 }
             | TypeName                                                                { $1}

TypeName     : ElementaryTypeName                                                      { ElementaryTypeName $1 }
             | UserDefinedTypeName                                                     { $1 }

AssVar       : "public"                                                                { PublicKeyword $1 }       
             | "private"                                                               { PrivateKeyword $1 }
             | "internal"                                                              { InternalKeyword $1 }
             | "constant"                                                              { ConstantKeyword $1 }

-- MaybeExp = Possibility of an Expression
MaybeExp     : MExpression                                                             { $1 }
             | {- empty -}                                                             { [] }  
MExpression  : "=" Expression                                                          { $2 }

-- Expression list
-- ExpressionList = Expression ( ',' Expression )*
ExpressionList
             : Expression list(ExprList)                                               { $1:$2 }
ExprList     : "," Expression                                                          { $2 }

-- The basic Expression type
Expression   : PrimaryExpression                                                       { $1 }

Statement    : IfStatement                                                             { $1 }
             | SimpleStatement ";"                                                     { $1 }

SimpleStatement  
             : VariableDefinition                                                      { $1 }
             | ExpressionStatement                                                     { $1 }
VariableDefinition 
             : "var" VariableDeclaration                                               { $2 } 
VariableDeclaration :: { Expression }
             : TypeName zero(StorageLocation) ident                                    { VariableDeclaration $1 $2 $3 }
ExpressionStatement 
             : Expression                                                              { $1 } 

IfStatement  : "if" "(" Expression ")" Statement zero(ElseState)                           { IfStatement $3 $5 $6  }

ElseState    : "else" Statement                                                        { ElseState $2 }

{-
IfStatement  : "if" "(" Expression ")" Statement zero(ElseState)                       { $1 }

ElseState    : "else" Statement                                                        { $1 }


-}

-- Nums/Bools/Strings
PrimaryExpression :: { Expression }
                  : BooleanLiteral                                                     { BoolExpression $1 }
                  | NumberLiteral                                                      { NumExpression $1 }
                  | stringLiteral                                                      { StringExpression $1 }
                  | ident                                                              { IdentExpression $1 }

BooleanLiteral : "true"                                                                { BooleanLiteral $1 }
               | "false"                                                               { BooleanLiteral $1 }

NumberLiteral  : "decimalnum" numberunit                                               { $1 }
               
UserDefinedTypeName : ident                                                            {UserDefinedTypeName $1}

ElementaryTypeName : "address"                                                         { AddrType $1 }                                     
                   | "bool"                                                            { BoolType $1 }
                   | "var"                                                             { VarType $1 }
                   | "string"                                                          { StringType $1 }
                   -- | Int                                                               { $1 }
                   -- | Uint                                                              { $1}

-- The following allows the parser to create lists of one or more or zero or more lists.
-- one or more
list1(p) : p                                                                           { [$1] }
         | p list1(p)                                                                  { $1 : $2 }
-- zero or more 
list(p) : list1(p)                                                                     { $1 }
        | {- empty -}                                                                  { [] }

-- Zero or one
zero(q) : q                                                                            { [$1] }
        | {- empty -}                                                                  { [] }  


-- The following are commented out until they will be used
--Expression : Expression op Expression                                                { ExpOp $1 $2 $3 }
--Type: ident                                                                          { TypeIdent $1}
{
-- The following grabs a token from the token list
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("Parse error at " ++ show (head(tokenList)) ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))
}