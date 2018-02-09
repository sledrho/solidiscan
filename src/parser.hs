{-# OPTIONS_GHC -w #-}
module Parser(solidiscan) where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t7 t8 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (PragmaDirective)
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 (ImportDirective)
	| HappyAbsSyn10 (ContractDefinition)
	| HappyAbsSyn11 (ContractConts)
	| HappyAbsSyn12 (FunctionContents)
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (32) = happyShift action_7
action_2 (33) = happyShift action_8
action_2 (39) = happyShift action_9
action_2 (73) = happyAccept
action_2 (5) = happyGoto action_3
action_2 (6) = happyGoto action_4
action_2 (9) = happyGoto action_5
action_2 (10) = happyGoto action_6
action_2 _ = happyFail

action_3 _ = happyReduce_2

action_4 _ = happyReduce_3

action_5 _ = happyReduce_4

action_6 _ = happyReduce_5

action_7 (69) = happyShift action_13
action_7 (7) = happyGoto action_12
action_7 _ = happyFail

action_8 (70) = happyShift action_11
action_8 _ = happyFail

action_9 (69) = happyShift action_10
action_9 _ = happyFail

action_10 (56) = happyShift action_16
action_10 _ = happyFail

action_11 (68) = happyShift action_15
action_11 _ = happyFail

action_12 (28) = happyShift action_14
action_12 _ = happyFail

action_13 _ = happyReduce_7

action_14 (68) = happyShift action_31
action_14 _ = happyFail

action_15 _ = happyReduce_9

action_16 (38) = happyShift action_25
action_16 (40) = happyShift action_26
action_16 (41) = happyShift action_27
action_16 (42) = happyShift action_28
action_16 (43) = happyShift action_29
action_16 (69) = happyShift action_30
action_16 (11) = happyGoto action_17
action_16 (12) = happyGoto action_18
action_16 (14) = happyGoto action_19
action_16 (20) = happyGoto action_20
action_16 (21) = happyGoto action_21
action_16 (22) = happyGoto action_22
action_16 (23) = happyGoto action_23
action_16 (26) = happyGoto action_24
action_16 _ = happyReduce_34

action_17 (38) = happyShift action_25
action_17 (40) = happyShift action_26
action_17 (41) = happyShift action_27
action_17 (42) = happyShift action_28
action_17 (43) = happyShift action_29
action_17 (69) = happyShift action_30
action_17 (11) = happyGoto action_17
action_17 (12) = happyGoto action_18
action_17 (14) = happyGoto action_19
action_17 (20) = happyGoto action_20
action_17 (21) = happyGoto action_21
action_17 (22) = happyGoto action_22
action_17 (26) = happyGoto action_40
action_17 _ = happyReduce_39

action_18 _ = happyReduce_12

action_19 _ = happyReduce_11

action_20 (34) = happyShift action_36
action_20 (35) = happyShift action_37
action_20 (36) = happyShift action_38
action_20 (37) = happyShift action_39
action_20 (16) = happyGoto action_34
action_20 (24) = happyGoto action_35
action_20 _ = happyReduce_36

action_21 _ = happyReduce_27

action_22 _ = happyReduce_26

action_23 (57) = happyShift action_33
action_23 _ = happyFail

action_24 _ = happyReduce_33

action_25 _ = happyReduce_32

action_26 (69) = happyShift action_32
action_26 _ = happyFail

action_27 _ = happyReduce_29

action_28 _ = happyReduce_30

action_29 _ = happyReduce_31

action_30 _ = happyReduce_28

action_31 _ = happyReduce_6

action_32 (69) = happyShift action_43
action_32 (13) = happyGoto action_42
action_32 _ = happyFail

action_33 _ = happyReduce_10

action_34 _ = happyReduce_35

action_35 (69) = happyShift action_41
action_35 _ = happyFail

action_36 _ = happyReduce_18

action_37 _ = happyReduce_20

action_38 _ = happyReduce_19

action_39 _ = happyReduce_21

action_40 _ = happyReduce_40

action_41 (61) = happyShift action_47
action_41 (18) = happyGoto action_45
action_41 (25) = happyGoto action_46
action_41 _ = happyReduce_38

action_42 (68) = happyShift action_44
action_42 _ = happyFail

action_43 _ = happyReduce_14

action_44 _ = happyReduce_13

action_45 _ = happyReduce_37

action_46 (68) = happyShift action_50
action_46 _ = happyFail

action_47 (69) = happyShift action_49
action_47 (19) = happyGoto action_48
action_47 _ = happyFail

action_48 _ = happyReduce_24

action_49 _ = happyReduce_25

action_50 _ = happyReduce_15

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_2 : happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (SourceUnit happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (ImportUnit happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (ContractDef happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (PragmaDirective happy_var_2
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn7
		 (PragmaName happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  9 happyReduction_9
happyReduction_9 _
	(HappyTerminal (TStringLiteral _ happy_var_2))
	_
	 =  HappyAbsSyn9
		 (ImportDir happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 5 10 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn23  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (Contract (Identifier happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  11 happyReduction_11
happyReduction_11 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn11
		 (ContractContents happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  11 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (FunctionDefinition happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 12 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FunctionDef happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  13 happyReduction_14
happyReduction_14 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happyReduce 5 14 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn25  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn24  happy_var_2) `HappyStk`
	(HappyAbsSyn20  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (StateVariableDeclaration happy_var_1 happy_var_2 (Identifier happy_var_3) happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  15 happyReduction_16
happyReduction_16 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  15 happyReduction_17
happyReduction_17 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_2 : happy_var_1
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  16 happyReduction_18
happyReduction_18 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn16
		 (PublicKeyword happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  16 happyReduction_19
happyReduction_19 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn16
		 (PrivateKeyword happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  16 happyReduction_20
happyReduction_20 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn16
		 (InternalKeyword happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  16 happyReduction_21
happyReduction_21 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn16
		 (ConstantKeyword happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  17 happyReduction_22
happyReduction_22 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_0  17 happyReduction_23
happyReduction_23  =  HappyAbsSyn17
		 ([]
	)

happyReduce_24 = happySpecReduce_2  18 happyReduction_24
happyReduction_24 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (Expression happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  19 happyReduction_25
happyReduction_25 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  20 happyReduction_26
happyReduction_26 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (Elemhappy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  20 happyReduction_27
happyReduction_27 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  21 happyReduction_28
happyReduction_28 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn21
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  22 happyReduction_29
happyReduction_29 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn22
		 (AddrType happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  22 happyReduction_30
happyReduction_30 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn22
		 (BoolType happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  22 happyReduction_31
happyReduction_31 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn22
		 (VarType happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  22 happyReduction_32
happyReduction_32 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn22
		 (StringType happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  23 happyReduction_33
happyReduction_33 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_0  23 happyReduction_34
happyReduction_34  =  HappyAbsSyn23
		 ([]
	)

happyReduce_35 = happySpecReduce_1  24 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_0  24 happyReduction_36
happyReduction_36  =  HappyAbsSyn24
		 ([]
	)

happyReduce_37 = happySpecReduce_1  25 happyReduction_37
happyReduction_37 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn25
		 ([happy_var_1]
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_0  25 happyReduction_38
happyReduction_38  =  HappyAbsSyn25
		 ([]
	)

happyReduce_39 = happySpecReduce_1  26 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn26
		 ([happy_var_1]
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  26 happyReduction_40
happyReduction_40 (HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1 : happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 73 73 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 27;
	TVers _ -> cont 28;
	TDec _ happy_dollar_dollar -> cont 29;
	TExp _ happy_dollar_dollar -> cont 30;
	TInt _ happy_dollar_dollar -> cont 31;
	TPragma _ -> cont 32;
	TImport _ -> cont 33;
	TPublic _ happy_dollar_dollar -> cont 34;
	TIntern _ happy_dollar_dollar -> cont 35;
	TPriv _ happy_dollar_dollar -> cont 36;
	TConst _ happy_dollar_dollar -> cont 37;
	TStringAs _ happy_dollar_dollar -> cont 38;
	TContract _ -> cont 39;
	TFuncDef _ -> cont 40;
	TAddr _ happy_dollar_dollar -> cont 41;
	TBooleanLit _ happy_dollar_dollar -> cont 42;
	TVar _ happy_dollar_dollar -> cont 43;
	TTrue _ -> cont 44;
	TFalse _ -> cont 45;
	THat _ -> cont 46;
	TNegate _ -> cont 47;
	TAnd _ -> cont 48;
	TOr _ -> cont 49;
	TInEqual _ -> cont 50;
	TLThan _ -> cont 51;
	TGThan _ -> cont 52;
	TLTEq _ -> cont 53;
	TGTEq _ -> cont 54;
	TEquality _ -> cont 55;
	TLCurl _ -> cont 56;
	TRCurl _ -> cont 57;
	TLBrack _ -> cont 58;
	TRBrack _ -> cont 59;
	TPeriod _ -> cont 60;
	TEquals _ -> cont 61;
	TMult _ -> cont 62;
	TDiv _ -> cont 63;
	TExpSym _ -> cont 64;
	TModul _ -> cont 65;
	TOp _ happy_dollar_dollar -> cont 66;
	TSub _ -> cont 67;
	TSemiCol _ -> cont 68;
	TIdent _ happy_dollar_dollar -> cont 69;
	TStringLiteral _ happy_dollar_dollar -> cont 70;
	TLeftParen _ -> cont 71;
	TRightParen _ -> cont 72;
	_ -> happyError' (tk:tks)
	}

happyError_ 73 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

solidiscan tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- The following grabs a token from the token list
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("Parse error at " ++ show (head(tokenList)) ++ show(getLineNum(pos)) ++ ":" ++ show(getColumnNum(pos)))


-- The following are data types to store the source codes value

{-
SourceUnit is the overall program source consists of 3 main data values:
    1. PragmaDirective (Essentially Version Information)
    2. ImportUnit (Imported Contracts/Libraries)
    3. ContractDef (A definition of an actual contract.)
-}

data SourceUnit = SourceUnit PragmaDirective
                | ImportUnit ImportDirective 
                | ContractDef ContractDefinition
                deriving (Show, Eq)
              
-- Version Information
data PragmaDirective = PragmaDirective PragmaName
                       deriving(Show, Eq)

data PragmaName = PragmaName Ident
                  deriving(Show, Eq)

data PragmaValue = PragmaValue Dnum
                   deriving(Show, Eq)
-- File imports/Contract Imports
data ImportDirective = ImportDir String
                       deriving (Show, Eq)

-- The definition of an actual Contract Code Block
data ContractDefinition = Contract Identifier [ContractConts]
                          deriving (Show, Eq)

-- The contents of a Contract
data ContractConts = ContractContents StateVarDec
                   | FunctionDefinition FunctionContents
                     deriving (Show, Eq)

data FunctionContents = FunctionDef FuncName FuncParam
                        deriving(Show, Eq)

-- Declaring a variable, 
data StateVarDec = StateVariableDeclaration TypeName [PublicKeyword] Identifier [Expression]
                                deriving (Show, Eq)

data Identifier = Identifier Ident
                  deriving(Show, Eq)    

data AssVar = AssVar Ident
               deriving(Show, Eq)
            
data PublicKeyword = PublicKeyword Ident
                   | InternalKeyword Ident
                   | VarType Ident
                   | StringType Ident
                     deriving(Show, Eq)

-- The type of the variable assignment
data ElemType = AddrType Ident
              | BoolType Ident
              | PrivateKeyword Ident
              | ConstantKeyword Ident
                deriving(Show, Eq)

-- Elementary types e.g address/bool/string/var etc etc
data TypeName = TypeName Ident
--              | ElementaryTypeName ElemType      
--              | UserDefinedTypeName Ident         
                deriving (Show, Eq)

data Exp = Exp String
         | ExpOp Exp Char Exp
           deriving (Show, Eq)

data TypeIdent = TypeIdent Ident
                 deriving (Show, Eq)

data Expression = Expression Ident
                  deriving (Show, Eq)

-- Basic Identifier type :: String
type Ident = String
type FuncName = String
type FuncParam = String
type Dnum = Double
--type AssVar = String
{-# LINE 1 "templates/GenericTemplate.hs" #-}



















































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

























infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

