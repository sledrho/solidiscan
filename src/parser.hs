{-# OPTIONS_GHC -w #-}
module Parser(solidiscan) where
import Lexer
import AST
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t9 t10 t12 t13 t14 t15 t16 t17 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 (PragmaDirective)
	| HappyAbsSyn7 (PragmaName)
	| HappyAbsSyn8 (ImportDirective)
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 (ContractDefinition)
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 (ContractConts)
	| HappyAbsSyn19 (FunctionContents)
	| HappyAbsSyn20 (Ident)
	| HappyAbsSyn21 (StateVarDec)
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37
	| HappyAbsSyn38 t38
	| HappyAbsSyn39 t39

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (45) = happyShift action_8
action_2 (46) = happyShift action_9
action_2 (52) = happyShift action_10
action_2 (53) = happyShift action_11
action_2 (54) = happyShift action_12
action_2 (92) = happyAccept
action_2 (5) = happyGoto action_3
action_2 (6) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 (11) = happyGoto action_6
action_2 (12) = happyGoto action_7
action_2 _ = happyFail

action_3 _ = happyReduce_2

action_4 _ = happyReduce_3

action_5 _ = happyReduce_4

action_6 _ = happyReduce_5

action_7 (88) = happyShift action_19
action_7 _ = happyFail

action_8 (88) = happyShift action_18
action_8 (7) = happyGoto action_17
action_8 _ = happyFail

action_9 (80) = happyShift action_14
action_9 (88) = happyShift action_15
action_9 (89) = happyShift action_16
action_9 (10) = happyGoto action_13
action_9 _ = happyFail

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 (61) = happyShift action_25
action_13 (9) = happyGoto action_26
action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_13

action_16 (61) = happyShift action_25
action_16 (9) = happyGoto action_24
action_16 _ = happyReduce_11

action_17 (41) = happyShift action_23
action_17 _ = happyFail

action_18 _ = happyReduce_7

action_19 (62) = happyShift action_22
action_19 (13) = happyGoto action_20
action_19 (36) = happyGoto action_21
action_19 _ = happyReduce_58

action_20 _ = happyReduce_57

action_21 (74) = happyShift action_34
action_21 _ = happyFail

action_22 (88) = happyShift action_33
action_22 (15) = happyGoto action_31
action_22 (30) = happyGoto action_32
action_22 _ = happyFail

action_23 (86) = happyShift action_30
action_23 _ = happyFail

action_24 (86) = happyShift action_29
action_24 _ = happyFail

action_25 (88) = happyShift action_28
action_25 _ = happyFail

action_26 (63) = happyShift action_27
action_26 _ = happyFail

action_27 (89) = happyShift action_52
action_27 _ = happyFail

action_28 _ = happyReduce_10

action_29 _ = happyReduce_8

action_30 _ = happyReduce_6

action_31 (87) = happyShift action_51
action_31 (14) = happyGoto action_48
action_31 (33) = happyGoto action_49
action_31 (39) = happyGoto action_50
action_31 _ = happyReduce_52

action_32 _ = happyReduce_20

action_33 _ = happyReduce_44

action_34 (51) = happyShift action_43
action_34 (55) = happyShift action_44
action_34 (56) = happyShift action_45
action_34 (57) = happyShift action_46
action_34 (58) = happyShift action_47
action_34 (88) = happyShift action_33
action_34 (18) = happyGoto action_35
action_34 (19) = happyGoto action_36
action_34 (21) = happyGoto action_37
action_34 (22) = happyGoto action_38
action_34 (30) = happyGoto action_39
action_34 (31) = happyGoto action_40
action_34 (32) = happyGoto action_41
action_34 (38) = happyGoto action_42
action_34 _ = happyReduce_50

action_35 (51) = happyShift action_43
action_35 (55) = happyShift action_44
action_35 (56) = happyShift action_45
action_35 (57) = happyShift action_46
action_35 (58) = happyShift action_47
action_35 (88) = happyShift action_33
action_35 (18) = happyGoto action_35
action_35 (19) = happyGoto action_36
action_35 (21) = happyGoto action_37
action_35 (22) = happyGoto action_38
action_35 (30) = happyGoto action_39
action_35 (31) = happyGoto action_40
action_35 (38) = happyGoto action_64
action_35 _ = happyReduce_61

action_36 _ = happyReduce_24

action_37 _ = happyReduce_23

action_38 (47) = happyShift action_60
action_38 (48) = happyShift action_61
action_38 (49) = happyShift action_62
action_38 (50) = happyShift action_63
action_38 (23) = happyGoto action_58
action_38 (35) = happyGoto action_59
action_38 _ = happyReduce_56

action_39 _ = happyReduce_29

action_40 _ = happyReduce_28

action_41 (75) = happyShift action_57
action_41 _ = happyFail

action_42 _ = happyReduce_49

action_43 _ = happyReduce_48

action_44 (88) = happyShift action_56
action_44 _ = happyFail

action_45 _ = happyReduce_45

action_46 _ = happyReduce_46

action_47 _ = happyReduce_47

action_48 (87) = happyShift action_51
action_48 (14) = happyGoto action_48
action_48 (39) = happyGoto action_55
action_48 _ = happyReduce_63

action_49 _ = happyReduce_18

action_50 _ = happyReduce_51

action_51 (88) = happyShift action_33
action_51 (15) = happyGoto action_54
action_51 (30) = happyGoto action_32
action_51 _ = happyFail

action_52 (86) = happyShift action_53
action_52 _ = happyFail

action_53 _ = happyReduce_9

action_54 _ = happyReduce_19

action_55 _ = happyReduce_64

action_56 (88) = happyShift action_67
action_56 (20) = happyGoto action_66
action_56 _ = happyFail

action_57 _ = happyReduce_14

action_58 _ = happyReduce_55

action_59 (88) = happyShift action_65
action_59 _ = happyFail

action_60 _ = happyReduce_30

action_61 _ = happyReduce_32

action_62 _ = happyReduce_31

action_63 _ = happyReduce_33

action_64 _ = happyReduce_62

action_65 (79) = happyShift action_71
action_65 (25) = happyGoto action_69
action_65 (37) = happyGoto action_70
action_65 _ = happyReduce_60

action_66 (86) = happyShift action_68
action_66 _ = happyFail

action_67 _ = happyReduce_26

action_68 _ = happyReduce_25

action_69 _ = happyReduce_59

action_70 (86) = happyShift action_80
action_70 _ = happyFail

action_71 (42) = happyShift action_76
action_71 (59) = happyShift action_77
action_71 (60) = happyShift action_78
action_71 (88) = happyShift action_79
action_71 (26) = happyGoto action_72
action_71 (27) = happyGoto action_73
action_71 (28) = happyGoto action_74
action_71 (29) = happyGoto action_75
action_71 _ = happyFail

action_72 _ = happyReduce_36

action_73 _ = happyReduce_37

action_74 _ = happyReduce_38

action_75 _ = happyReduce_39

action_76 _ = happyReduce_43

action_77 _ = happyReduce_41

action_78 _ = happyReduce_42

action_79 _ = happyReduce_40

action_80 _ = happyReduce_27

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
happyReduction_4 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (ImportUnit happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn11  happy_var_1)
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

happyReduce_8 = happyReduce 4 8 happyReduction_8
happyReduction_8 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TStringLiteral _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (ImportDir happy_var_2
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 6 8 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyTerminal (TStringLiteral _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (ImportMulti happy_var_2 happy_var_3 "from" happy_var_5
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_2  9 happyReduction_10
happyReduction_10 (HappyTerminal (TIdent _ happy_var_2))
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_0  9 happyReduction_11
happyReduction_11  =  HappyAbsSyn9
		 ([]
	)

happyReduce_12 = happySpecReduce_1  10 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn10
		 ("*"
	)

happyReduce_13 = happySpecReduce_1  10 happyReduction_13
happyReduction_13 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 11 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn32  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn36  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Contract (Identifier happy_var_2) happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  12 happyReduction_15
happyReduction_15 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  12 happyReduction_16
happyReduction_16 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  13 happyReduction_18
happyReduction_18 (HappyAbsSyn33  happy_var_3)
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (InheritanceSpec happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  14 happyReduction_19
happyReduction_19 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  15 happyReduction_20
happyReduction_20 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 16 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn34  happy_var_3) `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (happy_var_2 [happy_var_3]
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  17 happyReduction_22
happyReduction_22 (HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  18 happyReduction_23
happyReduction_23 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn18
		 (ContractContents happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  18 happyReduction_24
happyReduction_24 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (FunctionDefinition happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 19 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (FunctionDef happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  20 happyReduction_26
happyReduction_26 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyReduce 5 21 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn37  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn35  happy_var_2) `HappyStk`
	(HappyAbsSyn22  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (StateVariableDeclaration happy_var_1 happy_var_2 (Identifier happy_var_3) happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  22 happyReduction_28
happyReduction_28 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn22
		 (ElementaryTypeName happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  22 happyReduction_29
happyReduction_29 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  23 happyReduction_30
happyReduction_30 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn23
		 (PublicKeyword happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  23 happyReduction_31
happyReduction_31 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn23
		 (PrivateKeyword happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  23 happyReduction_32
happyReduction_32 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn23
		 (InternalKeyword happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  23 happyReduction_33
happyReduction_33 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn23
		 (ConstantKeyword happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  24 happyReduction_34
happyReduction_34 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_0  24 happyReduction_35
happyReduction_35  =  HappyAbsSyn24
		 ([]
	)

happyReduce_36 = happySpecReduce_2  25 happyReduction_36
happyReduction_36 (HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  26 happyReduction_37
happyReduction_37 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  27 happyReduction_38
happyReduction_38 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (BoolExpression happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  27 happyReduction_39
happyReduction_39 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn27
		 (NumExpression happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  27 happyReduction_40
happyReduction_40 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn27
		 (IdentExpression happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  28 happyReduction_41
happyReduction_41 (HappyTerminal (TTrue _ happy_var_1))
	 =  HappyAbsSyn28
		 (BooleanLiteral happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  28 happyReduction_42
happyReduction_42 (HappyTerminal (TFalse _ happy_var_1))
	 =  HappyAbsSyn28
		 (BooleanLiteral happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  29 happyReduction_43
happyReduction_43 (HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn29
		 (happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  30 happyReduction_44
happyReduction_44 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn30
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  31 happyReduction_45
happyReduction_45 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn31
		 (AddrType happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  31 happyReduction_46
happyReduction_46 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn31
		 (BoolType happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  31 happyReduction_47
happyReduction_47 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn31
		 (VarType happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  31 happyReduction_48
happyReduction_48 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn31
		 (StringType happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  32 happyReduction_49
happyReduction_49 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  32 happyReduction_50
happyReduction_50  =  HappyAbsSyn32
		 ([]
	)

happyReduce_51 = happySpecReduce_1  33 happyReduction_51
happyReduction_51 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_0  33 happyReduction_52
happyReduction_52  =  HappyAbsSyn33
		 ([]
	)

happyReduce_53 = happySpecReduce_1  34 happyReduction_53
happyReduction_53 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn34
		 ([happy_var_1]
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  34 happyReduction_54
happyReduction_54 (HappyAbsSyn34  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1 : happy_var_2
	)
happyReduction_54 _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  35 happyReduction_55
happyReduction_55 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn35
		 ([happy_var_1]
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_0  35 happyReduction_56
happyReduction_56  =  HappyAbsSyn35
		 ([]
	)

happyReduce_57 = happySpecReduce_1  36 happyReduction_57
happyReduction_57 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn36
		 ([happy_var_1]
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_0  36 happyReduction_58
happyReduction_58  =  HappyAbsSyn36
		 ([]
	)

happyReduce_59 = happySpecReduce_1  37 happyReduction_59
happyReduction_59 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn37
		 ([happy_var_1]
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_0  37 happyReduction_60
happyReduction_60  =  HappyAbsSyn37
		 ([]
	)

happyReduce_61 = happySpecReduce_1  38 happyReduction_61
happyReduction_61 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn38
		 ([happy_var_1]
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_2  38 happyReduction_62
happyReduction_62 (HappyAbsSyn38  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn38
		 (happy_var_1 : happy_var_2
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  39 happyReduction_63
happyReduction_63 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn39
		 ([happy_var_1]
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_2  39 happyReduction_64
happyReduction_64 (HappyAbsSyn39  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn39
		 (happy_var_1 : happy_var_2
	)
happyReduction_64 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 92 92 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 40;
	TVers _ -> cont 41;
	TDec _ happy_dollar_dollar -> cont 42;
	TExp _ happy_dollar_dollar -> cont 43;
	TInt _ happy_dollar_dollar -> cont 44;
	TPragma _ -> cont 45;
	TImport _ -> cont 46;
	TPublic _ happy_dollar_dollar -> cont 47;
	TIntern _ happy_dollar_dollar -> cont 48;
	TPriv _ happy_dollar_dollar -> cont 49;
	TConst _ happy_dollar_dollar -> cont 50;
	TStringAs _ happy_dollar_dollar -> cont 51;
	TContract _ -> cont 52;
	TLibrary _ -> cont 53;
	TInterface _ -> cont 54;
	TFuncDef _ -> cont 55;
	TAddr _ happy_dollar_dollar -> cont 56;
	TBooleanLit _ happy_dollar_dollar -> cont 57;
	TVar _ happy_dollar_dollar -> cont 58;
	TTrue _ happy_dollar_dollar -> cont 59;
	TFalse _ happy_dollar_dollar -> cont 60;
	TAs _ -> cont 61;
	TIs _ -> cont 62;
	TFrom _ -> cont 63;
	THat _ -> cont 64;
	TNegate _ -> cont 65;
	TAnd _ -> cont 66;
	TOr _ -> cont 67;
	TInEqual _ -> cont 68;
	TLThan _ -> cont 69;
	TGThan _ -> cont 70;
	TLTEq _ -> cont 71;
	TGTEq _ -> cont 72;
	TEquality _ -> cont 73;
	TLCurl _ -> cont 74;
	TRCurl _ -> cont 75;
	TLBrack _ -> cont 76;
	TRBrack _ -> cont 77;
	TPeriod _ -> cont 78;
	TEquals _ -> cont 79;
	TMult _ -> cont 80;
	TDiv _ -> cont 81;
	TExpSym _ -> cont 82;
	TModul _ -> cont 83;
	TOp _ happy_dollar_dollar -> cont 84;
	TSub _ -> cont 85;
	TSemiCol _ -> cont 86;
	TComma _ -> cont 87;
	TIdent _ happy_dollar_dollar -> cont 88;
	TStringLiteral _ happy_dollar_dollar -> cont 89;
	TLeftParen _ -> cont 90;
	TRightParen _ -> cont 91;
	_ -> happyError' (tk:tks)
	}

happyError_ 92 tk tks = happyError' tks
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
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "G:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "C:\\Users\\randy\\AppData\\Local\\Temp\\ghc8056_0\\ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}

{-# LINE 46 "templates\\GenericTemplate.hs" #-}








{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 155 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 256 "templates\\GenericTemplate.hs" #-}
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

{-# LINE 322 "templates\\GenericTemplate.hs" #-}
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
