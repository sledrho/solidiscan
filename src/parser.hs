{-# OPTIONS_GHC -w #-}
module Parser(solidiscan) where
import Lexer
import AST
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t9 t10 t12 t13 t14 t15 t16 t17 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69
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
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 (StateVarDec)
	| HappyAbsSyn32 (UsingForDec)
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37
	| HappyAbsSyn38 t38
	| HappyAbsSyn39 t39
	| HappyAbsSyn40 t40
	| HappyAbsSyn41 t41
	| HappyAbsSyn42 t42
	| HappyAbsSyn43 t43
	| HappyAbsSyn44 t44
	| HappyAbsSyn45 t45
	| HappyAbsSyn46 (Expression)
	| HappyAbsSyn47 t47
	| HappyAbsSyn48 t48
	| HappyAbsSyn49 t49
	| HappyAbsSyn50 t50
	| HappyAbsSyn51 t51
	| HappyAbsSyn52 t52
	| HappyAbsSyn53 t53
	| HappyAbsSyn54 t54
	| HappyAbsSyn55 t55
	| HappyAbsSyn56 t56
	| HappyAbsSyn57 t57
	| HappyAbsSyn58 t58
	| HappyAbsSyn59 t59
	| HappyAbsSyn60 t60
	| HappyAbsSyn61 t61
	| HappyAbsSyn62 t62
	| HappyAbsSyn63 t63
	| HappyAbsSyn64 t64
	| HappyAbsSyn65 t65
	| HappyAbsSyn66 t66
	| HappyAbsSyn67 t67
	| HappyAbsSyn68 t68
	| HappyAbsSyn69 t69

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (76) = happyShift action_8
action_2 (77) = happyShift action_9
action_2 (84) = happyShift action_10
action_2 (85) = happyShift action_11
action_2 (86) = happyShift action_12
action_2 (132) = happyAccept
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

action_7 (128) = happyShift action_19
action_7 _ = happyFail

action_8 (128) = happyShift action_18
action_8 (7) = happyGoto action_17
action_8 _ = happyFail

action_9 (120) = happyShift action_14
action_9 (128) = happyShift action_15
action_9 (129) = happyShift action_16
action_9 (10) = happyGoto action_13
action_9 _ = happyFail

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 (95) = happyShift action_25
action_13 (9) = happyGoto action_26
action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_13

action_16 (95) = happyShift action_25
action_16 (9) = happyGoto action_24
action_16 _ = happyReduce_11

action_17 (71) = happyShift action_23
action_17 _ = happyFail

action_18 _ = happyReduce_7

action_19 (96) = happyShift action_22
action_19 (13) = happyGoto action_20
action_19 (60) = happyGoto action_21
action_19 _ = happyReduce_100

action_20 _ = happyReduce_99

action_21 (114) = happyShift action_34
action_21 _ = happyFail

action_22 (128) = happyShift action_33
action_22 (15) = happyGoto action_31
action_22 (49) = happyGoto action_32
action_22 _ = happyFail

action_23 (126) = happyShift action_30
action_23 _ = happyFail

action_24 (126) = happyShift action_29
action_24 _ = happyFail

action_25 (128) = happyShift action_28
action_25 _ = happyFail

action_26 (97) = happyShift action_27
action_26 _ = happyFail

action_27 (129) = happyShift action_54
action_27 _ = happyFail

action_28 _ = happyReduce_10

action_29 _ = happyReduce_8

action_30 _ = happyReduce_6

action_31 (127) = happyShift action_53
action_31 (14) = happyGoto action_50
action_31 (54) = happyGoto action_51
action_31 (67) = happyGoto action_52
action_31 _ = happyReduce_88

action_32 _ = happyReduce_20

action_33 _ = happyReduce_76

action_34 (83) = happyShift action_44
action_34 (87) = happyShift action_45
action_34 (88) = happyShift action_46
action_34 (89) = happyShift action_47
action_34 (90) = happyShift action_48
action_34 (91) = happyShift action_49
action_34 (128) = happyShift action_33
action_34 (18) = happyGoto action_35
action_34 (19) = happyGoto action_36
action_34 (31) = happyGoto action_37
action_34 (32) = happyGoto action_38
action_34 (34) = happyGoto action_39
action_34 (49) = happyGoto action_40
action_34 (50) = happyGoto action_41
action_34 (51) = happyGoto action_42
action_34 (64) = happyGoto action_43
action_34 _ = happyReduce_82

action_35 (83) = happyShift action_44
action_35 (87) = happyShift action_45
action_35 (88) = happyShift action_46
action_35 (89) = happyShift action_47
action_35 (90) = happyShift action_48
action_35 (91) = happyShift action_49
action_35 (128) = happyShift action_33
action_35 (18) = happyGoto action_35
action_35 (19) = happyGoto action_36
action_35 (31) = happyGoto action_37
action_35 (32) = happyGoto action_38
action_35 (34) = happyGoto action_39
action_35 (49) = happyGoto action_40
action_35 (50) = happyGoto action_41
action_35 (64) = happyGoto action_67
action_35 _ = happyReduce_107

action_36 _ = happyReduce_24

action_37 _ = happyReduce_23

action_38 _ = happyReduce_25

action_39 (79) = happyShift action_63
action_39 (80) = happyShift action_64
action_39 (81) = happyShift action_65
action_39 (82) = happyShift action_66
action_39 (35) = happyGoto action_61
action_39 (59) = happyGoto action_62
action_39 _ = happyReduce_98

action_40 _ = happyReduce_52

action_41 _ = happyReduce_51

action_42 (115) = happyShift action_60
action_42 _ = happyFail

action_43 _ = happyReduce_81

action_44 _ = happyReduce_80

action_45 (128) = happyShift action_59
action_45 _ = happyFail

action_46 _ = happyReduce_77

action_47 _ = happyReduce_78

action_48 _ = happyReduce_79

action_49 (128) = happyShift action_58
action_49 _ = happyFail

action_50 (127) = happyShift action_53
action_50 (14) = happyGoto action_50
action_50 (67) = happyGoto action_57
action_50 _ = happyReduce_113

action_51 _ = happyReduce_18

action_52 _ = happyReduce_87

action_53 (128) = happyShift action_33
action_53 (15) = happyGoto action_56
action_53 (49) = happyGoto action_32
action_53 _ = happyFail

action_54 (126) = happyShift action_55
action_54 _ = happyFail

action_55 _ = happyReduce_9

action_56 _ = happyReduce_19

action_57 _ = happyReduce_114

action_58 (92) = happyShift action_71
action_58 _ = happyFail

action_59 (130) = happyShift action_70
action_59 (20) = happyGoto action_69
action_59 _ = happyFail

action_60 _ = happyReduce_14

action_61 _ = happyReduce_97

action_62 (128) = happyShift action_68
action_62 _ = happyFail

action_63 _ = happyReduce_53

action_64 _ = happyReduce_55

action_65 _ = happyReduce_54

action_66 _ = happyReduce_56

action_67 _ = happyReduce_108

action_68 (119) = happyShift action_93
action_68 (37) = happyGoto action_91
action_68 (61) = happyGoto action_92
action_68 _ = happyReduce_102

action_69 (78) = happyShift action_82
action_69 (79) = happyShift action_83
action_69 (80) = happyShift action_84
action_69 (81) = happyShift action_85
action_69 (82) = happyShift action_86
action_69 (98) = happyShift action_87
action_69 (99) = happyShift action_88
action_69 (100) = happyShift action_89
action_69 (128) = happyShift action_90
action_69 (24) = happyGoto action_77
action_69 (27) = happyGoto action_78
action_69 (29) = happyGoto action_79
action_69 (30) = happyGoto action_80
action_69 (58) = happyGoto action_81
action_69 _ = happyFail

action_70 (83) = happyShift action_44
action_70 (88) = happyShift action_46
action_70 (89) = happyShift action_47
action_70 (90) = happyShift action_48
action_70 (128) = happyShift action_33
action_70 (21) = happyGoto action_73
action_70 (23) = happyGoto action_74
action_70 (34) = happyGoto action_75
action_70 (49) = happyGoto action_40
action_70 (50) = happyGoto action_41
action_70 (62) = happyGoto action_76
action_70 _ = happyReduce_104

action_71 (83) = happyShift action_44
action_71 (88) = happyShift action_46
action_71 (89) = happyShift action_47
action_71 (90) = happyShift action_48
action_71 (128) = happyShift action_33
action_71 (34) = happyGoto action_72
action_71 (49) = happyGoto action_40
action_71 (50) = happyGoto action_41
action_71 _ = happyFail

action_72 (126) = happyShift action_114
action_72 _ = happyFail

action_73 _ = happyReduce_103

action_74 (127) = happyShift action_113
action_74 (22) = happyGoto action_110
action_74 (55) = happyGoto action_111
action_74 (68) = happyGoto action_112
action_74 _ = happyReduce_90

action_75 _ = happyReduce_30

action_76 (131) = happyShift action_109
action_76 _ = happyFail

action_77 (78) = happyShift action_82
action_77 (79) = happyShift action_83
action_77 (80) = happyShift action_84
action_77 (81) = happyShift action_85
action_77 (82) = happyShift action_86
action_77 (98) = happyShift action_87
action_77 (99) = happyShift action_88
action_77 (100) = happyShift action_89
action_77 (128) = happyShift action_90
action_77 (24) = happyGoto action_77
action_77 (27) = happyGoto action_78
action_77 (29) = happyGoto action_79
action_77 (30) = happyGoto action_80
action_77 (58) = happyGoto action_108
action_77 _ = happyReduce_95

action_78 _ = happyReduce_31

action_79 _ = happyReduce_32

action_80 _ = happyReduce_33

action_81 (101) = happyShift action_107
action_81 (25) = happyGoto action_105
action_81 (63) = happyGoto action_106
action_81 _ = happyReduce_106

action_82 _ = happyReduce_43

action_83 _ = happyReduce_46

action_84 _ = happyReduce_44

action_85 _ = happyReduce_45

action_86 _ = happyReduce_40

action_87 _ = happyReduce_41

action_88 _ = happyReduce_39

action_89 _ = happyReduce_42

action_90 (130) = happyShift action_104
action_90 _ = happyFail

action_91 _ = happyReduce_101

action_92 (126) = happyShift action_103
action_92 _ = happyFail

action_93 (72) = happyShift action_98
action_93 (93) = happyShift action_99
action_93 (94) = happyShift action_100
action_93 (128) = happyShift action_101
action_93 (129) = happyShift action_102
action_93 (40) = happyGoto action_94
action_93 (46) = happyGoto action_95
action_93 (47) = happyGoto action_96
action_93 (48) = happyGoto action_97
action_93 _ = happyFail

action_94 _ = happyReduce_59

action_95 _ = happyReduce_62

action_96 _ = happyReduce_69

action_97 _ = happyReduce_70

action_98 (75) = happyShift action_126
action_98 _ = happyFail

action_99 _ = happyReduce_73

action_100 _ = happyReduce_74

action_101 _ = happyReduce_72

action_102 _ = happyReduce_71

action_103 _ = happyReduce_47

action_104 (72) = happyShift action_98
action_104 (93) = happyShift action_99
action_104 (94) = happyShift action_100
action_104 (128) = happyShift action_101
action_104 (129) = happyShift action_102
action_104 (28) = happyGoto action_121
action_104 (38) = happyGoto action_122
action_104 (40) = happyGoto action_123
action_104 (46) = happyGoto action_95
action_104 (47) = happyGoto action_96
action_104 (48) = happyGoto action_97
action_104 (53) = happyGoto action_124
action_104 (66) = happyGoto action_125
action_104 _ = happyReduce_86

action_105 _ = happyReduce_105

action_106 (114) = happyShift action_119
action_106 (126) = happyShift action_120
action_106 (26) = happyGoto action_118
action_106 _ = happyFail

action_107 (130) = happyShift action_70
action_107 (20) = happyGoto action_117
action_107 _ = happyFail

action_108 _ = happyReduce_96

action_109 _ = happyReduce_27

action_110 (127) = happyShift action_113
action_110 (22) = happyGoto action_110
action_110 (68) = happyGoto action_116
action_110 _ = happyReduce_115

action_111 _ = happyReduce_28

action_112 _ = happyReduce_89

action_113 (83) = happyShift action_44
action_113 (88) = happyShift action_46
action_113 (89) = happyShift action_47
action_113 (90) = happyShift action_48
action_113 (128) = happyShift action_33
action_113 (23) = happyGoto action_115
action_113 (34) = happyGoto action_75
action_113 (49) = happyGoto action_40
action_113 (50) = happyGoto action_41
action_113 _ = happyFail

action_114 _ = happyReduce_48

action_115 _ = happyReduce_29

action_116 _ = happyReduce_116

action_117 _ = happyReduce_34

action_118 _ = happyReduce_26

action_119 (72) = happyShift action_98
action_119 (90) = happyShift action_140
action_119 (93) = happyShift action_99
action_119 (94) = happyShift action_100
action_119 (128) = happyShift action_101
action_119 (129) = happyShift action_102
action_119 (40) = happyGoto action_133
action_119 (41) = happyGoto action_134
action_119 (42) = happyGoto action_135
action_119 (43) = happyGoto action_136
action_119 (45) = happyGoto action_137
action_119 (46) = happyGoto action_95
action_119 (47) = happyGoto action_96
action_119 (48) = happyGoto action_97
action_119 (56) = happyGoto action_138
action_119 (69) = happyGoto action_139
action_119 _ = happyReduce_92

action_120 _ = happyReduce_35

action_121 (72) = happyShift action_98
action_121 (93) = happyShift action_99
action_121 (94) = happyShift action_100
action_121 (128) = happyShift action_101
action_121 (129) = happyShift action_102
action_121 (28) = happyGoto action_121
action_121 (38) = happyGoto action_122
action_121 (40) = happyGoto action_123
action_121 (46) = happyGoto action_95
action_121 (47) = happyGoto action_96
action_121 (48) = happyGoto action_97
action_121 (66) = happyGoto action_132
action_121 _ = happyReduce_111

action_122 _ = happyReduce_38

action_123 (127) = happyShift action_131
action_123 (39) = happyGoto action_128
action_123 (52) = happyGoto action_129
action_123 (65) = happyGoto action_130
action_123 _ = happyReduce_84

action_124 (131) = happyShift action_127
action_124 _ = happyFail

action_125 _ = happyReduce_85

action_126 _ = happyReduce_75

action_127 _ = happyReduce_37

action_128 (127) = happyShift action_131
action_128 (39) = happyGoto action_128
action_128 (65) = happyGoto action_147
action_128 _ = happyReduce_109

action_129 _ = happyReduce_60

action_130 _ = happyReduce_83

action_131 (72) = happyShift action_98
action_131 (93) = happyShift action_99
action_131 (94) = happyShift action_100
action_131 (128) = happyShift action_101
action_131 (129) = happyShift action_102
action_131 (40) = happyGoto action_146
action_131 (46) = happyGoto action_95
action_131 (47) = happyGoto action_96
action_131 (48) = happyGoto action_97
action_131 _ = happyFail

action_132 _ = happyReduce_112

action_133 _ = happyReduce_68

action_134 (72) = happyShift action_98
action_134 (90) = happyShift action_140
action_134 (93) = happyShift action_99
action_134 (94) = happyShift action_100
action_134 (128) = happyShift action_101
action_134 (129) = happyShift action_102
action_134 (40) = happyGoto action_133
action_134 (41) = happyGoto action_134
action_134 (42) = happyGoto action_135
action_134 (43) = happyGoto action_136
action_134 (45) = happyGoto action_137
action_134 (46) = happyGoto action_95
action_134 (47) = happyGoto action_96
action_134 (48) = happyGoto action_97
action_134 (69) = happyGoto action_145
action_134 _ = happyReduce_117

action_135 (126) = happyShift action_144
action_135 _ = happyFail

action_136 _ = happyReduce_64

action_137 _ = happyReduce_65

action_138 (115) = happyShift action_143
action_138 _ = happyFail

action_139 _ = happyReduce_91

action_140 (83) = happyShift action_44
action_140 (88) = happyShift action_46
action_140 (89) = happyShift action_47
action_140 (90) = happyShift action_48
action_140 (128) = happyShift action_33
action_140 (34) = happyGoto action_141
action_140 (44) = happyGoto action_142
action_140 (49) = happyGoto action_40
action_140 (50) = happyGoto action_41
action_140 _ = happyFail

action_141 (128) = happyShift action_148
action_141 _ = happyFail

action_142 _ = happyReduce_66

action_143 _ = happyReduce_36

action_144 _ = happyReduce_63

action_145 _ = happyReduce_118

action_146 _ = happyReduce_61

action_147 _ = happyReduce_110

action_148 _ = happyReduce_67

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
	(HappyAbsSyn51  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn60  happy_var_3) `HappyStk`
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
happyReduction_18 (HappyAbsSyn54  happy_var_3)
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
happyReduction_20 (HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 16 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn57  happy_var_3) `HappyStk`
	(HappyAbsSyn40  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (happy_var_2 [happy_var_3]
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  17 happyReduction_22
happyReduction_22 (HappyAbsSyn40  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  18 happyReduction_23
happyReduction_23 (HappyAbsSyn31  happy_var_1)
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

happyReduce_25 = happySpecReduce_1  18 happyReduction_25
happyReduction_25 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn18
		 (UsingFor happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happyReduce 6 19 happyReduction_26
happyReduction_26 ((HappyAbsSyn26  happy_var_6) `HappyStk`
	(HappyAbsSyn63  happy_var_5) `HappyStk`
	(HappyAbsSyn58  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (FunctionDef happy_var_2 happy_var_3 happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  20 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn62  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  21 happyReduction_28
happyReduction_28 (HappyAbsSyn55  happy_var_2)
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_1:happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  22 happyReduction_29
happyReduction_29 (HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  23 happyReduction_30
happyReduction_30 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn23
		 (Parameter happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  24 happyReduction_31
happyReduction_31 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn24
		 (ModifierInvs happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  24 happyReduction_32
happyReduction_32 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn24
		 (StateMutability happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  24 happyReduction_33
happyReduction_33 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn24
		 (FuncVars happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  25 happyReduction_34
happyReduction_34 (HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  26 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn26
		 ([]
	)

happyReduce_36 = happySpecReduce_3  26 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn56  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 27 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn53  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_1  28 happyReduction_38
happyReduction_38 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  29 happyReduction_39
happyReduction_39 (HappyTerminal (TPure _ happy_var_1))
	 =  HappyAbsSyn29
		 (PureKeyword happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  29 happyReduction_40
happyReduction_40 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn29
		 (ConstantKeyword happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  29 happyReduction_41
happyReduction_41 (HappyTerminal (TView _ happy_var_1))
	 =  HappyAbsSyn29
		 (ViewKeyword happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  29 happyReduction_42
happyReduction_42 (HappyTerminal (TPayable _ happy_var_1))
	 =  HappyAbsSyn29
		 (PayableKeyword happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  30 happyReduction_43
happyReduction_43 (HappyTerminal (TExternal _ happy_var_1))
	 =  HappyAbsSyn30
		 (ExternalKeyword happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  30 happyReduction_44
happyReduction_44 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn30
		 (InternalKeyword happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  30 happyReduction_45
happyReduction_45 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn30
		 (PrivateKeyword happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  30 happyReduction_46
happyReduction_46 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn30
		 (PublicKeyword happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happyReduce 5 31 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn61  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn59  happy_var_2) `HappyStk`
	(HappyAbsSyn34  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (StateVariableDeclaration happy_var_1 happy_var_2 (Identifier happy_var_3) happy_var_4
	) `HappyStk` happyRest

happyReduce_48 = happyReduce 5 32 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn34  happy_var_4) `HappyStk`
	(HappyTerminal (TFor _ happy_var_3)) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	(HappyTerminal (TUsing _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (UsingForDeclaration happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_49 = happySpecReduce_1  33 happyReduction_49
happyReduction_49 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  33 happyReduction_50
happyReduction_50 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  34 happyReduction_51
happyReduction_51 (HappyAbsSyn50  happy_var_1)
	 =  HappyAbsSyn34
		 (ElementaryTypeName happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  34 happyReduction_52
happyReduction_52 (HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  35 happyReduction_53
happyReduction_53 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn35
		 (PublicKeyword happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  35 happyReduction_54
happyReduction_54 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn35
		 (PrivateKeyword happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  35 happyReduction_55
happyReduction_55 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn35
		 (InternalKeyword happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  35 happyReduction_56
happyReduction_56 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn35
		 (ConstantKeyword happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  36 happyReduction_57
happyReduction_57 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn36
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_0  36 happyReduction_58
happyReduction_58  =  HappyAbsSyn36
		 ([]
	)

happyReduce_59 = happySpecReduce_2  37 happyReduction_59
happyReduction_59 (HappyAbsSyn40  happy_var_2)
	_
	 =  HappyAbsSyn37
		 (happy_var_2
	)
happyReduction_59 _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_2  38 happyReduction_60
happyReduction_60 (HappyAbsSyn52  happy_var_2)
	(HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn38
		 (happy_var_1:happy_var_2
	)
happyReduction_60 _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_2  39 happyReduction_61
happyReduction_61 (HappyAbsSyn40  happy_var_2)
	_
	 =  HappyAbsSyn39
		 (happy_var_2
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  40 happyReduction_62
happyReduction_62 (HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn40
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  41 happyReduction_63
happyReduction_63 _
	(HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn41
		 (happy_var_1
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  42 happyReduction_64
happyReduction_64 (HappyAbsSyn43  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  42 happyReduction_65
happyReduction_65 (HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn42
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_2  43 happyReduction_66
happyReduction_66 (HappyAbsSyn44  happy_var_2)
	_
	 =  HappyAbsSyn43
		 (happy_var_2
	)
happyReduction_66 _ _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_2  44 happyReduction_67
happyReduction_67 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn44
		 (VariableDeclaration happy_var_1 happy_var_2
	)
happyReduction_67 _ _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  45 happyReduction_68
happyReduction_68 (HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn45
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  46 happyReduction_69
happyReduction_69 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn46
		 (BoolExpression happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  46 happyReduction_70
happyReduction_70 (HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn46
		 (NumExpression happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  46 happyReduction_71
happyReduction_71 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn46
		 (StringExpression happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  46 happyReduction_72
happyReduction_72 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn46
		 (IdentExpression happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  47 happyReduction_73
happyReduction_73 (HappyTerminal (TTrue _ happy_var_1))
	 =  HappyAbsSyn47
		 (BooleanLiteral happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  47 happyReduction_74
happyReduction_74 (HappyTerminal (TFalse _ happy_var_1))
	 =  HappyAbsSyn47
		 (BooleanLiteral happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  48 happyReduction_75
happyReduction_75 _
	(HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn48
		 (happy_var_1
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_1  49 happyReduction_76
happyReduction_76 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn49
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  50 happyReduction_77
happyReduction_77 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn50
		 (AddrType happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  50 happyReduction_78
happyReduction_78 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn50
		 (BoolType happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  50 happyReduction_79
happyReduction_79 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn50
		 (VarType happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  50 happyReduction_80
happyReduction_80 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn50
		 (StringType happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  51 happyReduction_81
happyReduction_81 (HappyAbsSyn64  happy_var_1)
	 =  HappyAbsSyn51
		 (happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_0  51 happyReduction_82
happyReduction_82  =  HappyAbsSyn51
		 ([]
	)

happyReduce_83 = happySpecReduce_1  52 happyReduction_83
happyReduction_83 (HappyAbsSyn65  happy_var_1)
	 =  HappyAbsSyn52
		 (happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_0  52 happyReduction_84
happyReduction_84  =  HappyAbsSyn52
		 ([]
	)

happyReduce_85 = happySpecReduce_1  53 happyReduction_85
happyReduction_85 (HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn53
		 (happy_var_1
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_0  53 happyReduction_86
happyReduction_86  =  HappyAbsSyn53
		 ([]
	)

happyReduce_87 = happySpecReduce_1  54 happyReduction_87
happyReduction_87 (HappyAbsSyn67  happy_var_1)
	 =  HappyAbsSyn54
		 (happy_var_1
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_0  54 happyReduction_88
happyReduction_88  =  HappyAbsSyn54
		 ([]
	)

happyReduce_89 = happySpecReduce_1  55 happyReduction_89
happyReduction_89 (HappyAbsSyn68  happy_var_1)
	 =  HappyAbsSyn55
		 (happy_var_1
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_0  55 happyReduction_90
happyReduction_90  =  HappyAbsSyn55
		 ([]
	)

happyReduce_91 = happySpecReduce_1  56 happyReduction_91
happyReduction_91 (HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn56
		 (happy_var_1
	)
happyReduction_91 _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_0  56 happyReduction_92
happyReduction_92  =  HappyAbsSyn56
		 ([]
	)

happyReduce_93 = happySpecReduce_1  57 happyReduction_93
happyReduction_93 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn57
		 ([happy_var_1]
	)
happyReduction_93 _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  57 happyReduction_94
happyReduction_94 (HappyAbsSyn57  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn57
		 (happy_var_1 : happy_var_2
	)
happyReduction_94 _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_1  58 happyReduction_95
happyReduction_95 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn58
		 ([happy_var_1]
	)
happyReduction_95 _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_2  58 happyReduction_96
happyReduction_96 (HappyAbsSyn58  happy_var_2)
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn58
		 (happy_var_1 : happy_var_2
	)
happyReduction_96 _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_1  59 happyReduction_97
happyReduction_97 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn59
		 ([happy_var_1]
	)
happyReduction_97 _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_0  59 happyReduction_98
happyReduction_98  =  HappyAbsSyn59
		 ([]
	)

happyReduce_99 = happySpecReduce_1  60 happyReduction_99
happyReduction_99 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn60
		 ([happy_var_1]
	)
happyReduction_99 _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_0  60 happyReduction_100
happyReduction_100  =  HappyAbsSyn60
		 ([]
	)

happyReduce_101 = happySpecReduce_1  61 happyReduction_101
happyReduction_101 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn61
		 ([happy_var_1]
	)
happyReduction_101 _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_0  61 happyReduction_102
happyReduction_102  =  HappyAbsSyn61
		 ([]
	)

happyReduce_103 = happySpecReduce_1  62 happyReduction_103
happyReduction_103 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn62
		 ([happy_var_1]
	)
happyReduction_103 _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_0  62 happyReduction_104
happyReduction_104  =  HappyAbsSyn62
		 ([]
	)

happyReduce_105 = happySpecReduce_1  63 happyReduction_105
happyReduction_105 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn63
		 ([happy_var_1]
	)
happyReduction_105 _  = notHappyAtAll 

happyReduce_106 = happySpecReduce_0  63 happyReduction_106
happyReduction_106  =  HappyAbsSyn63
		 ([]
	)

happyReduce_107 = happySpecReduce_1  64 happyReduction_107
happyReduction_107 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn64
		 ([happy_var_1]
	)
happyReduction_107 _  = notHappyAtAll 

happyReduce_108 = happySpecReduce_2  64 happyReduction_108
happyReduction_108 (HappyAbsSyn64  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn64
		 (happy_var_1 : happy_var_2
	)
happyReduction_108 _ _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_1  65 happyReduction_109
happyReduction_109 (HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn65
		 ([happy_var_1]
	)
happyReduction_109 _  = notHappyAtAll 

happyReduce_110 = happySpecReduce_2  65 happyReduction_110
happyReduction_110 (HappyAbsSyn65  happy_var_2)
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn65
		 (happy_var_1 : happy_var_2
	)
happyReduction_110 _ _  = notHappyAtAll 

happyReduce_111 = happySpecReduce_1  66 happyReduction_111
happyReduction_111 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn66
		 ([happy_var_1]
	)
happyReduction_111 _  = notHappyAtAll 

happyReduce_112 = happySpecReduce_2  66 happyReduction_112
happyReduction_112 (HappyAbsSyn66  happy_var_2)
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn66
		 (happy_var_1 : happy_var_2
	)
happyReduction_112 _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_1  67 happyReduction_113
happyReduction_113 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn67
		 ([happy_var_1]
	)
happyReduction_113 _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_2  67 happyReduction_114
happyReduction_114 (HappyAbsSyn67  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn67
		 (happy_var_1 : happy_var_2
	)
happyReduction_114 _ _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_1  68 happyReduction_115
happyReduction_115 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn68
		 ([happy_var_1]
	)
happyReduction_115 _  = notHappyAtAll 

happyReduce_116 = happySpecReduce_2  68 happyReduction_116
happyReduction_116 (HappyAbsSyn68  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn68
		 (happy_var_1 : happy_var_2
	)
happyReduction_116 _ _  = notHappyAtAll 

happyReduce_117 = happySpecReduce_1  69 happyReduction_117
happyReduction_117 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn69
		 ([happy_var_1]
	)
happyReduction_117 _  = notHappyAtAll 

happyReduce_118 = happySpecReduce_2  69 happyReduction_118
happyReduction_118 (HappyAbsSyn69  happy_var_2)
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn69
		 (happy_var_1 : happy_var_2
	)
happyReduction_118 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 132 132 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 70;
	TVers _ -> cont 71;
	TDec _ happy_dollar_dollar -> cont 72;
	TExp _ happy_dollar_dollar -> cont 73;
	TInt _ happy_dollar_dollar -> cont 74;
	TNumUnit _ -> cont 75;
	TPragma _ -> cont 76;
	TImport _ -> cont 77;
	TExternal _ happy_dollar_dollar -> cont 78;
	TPublic _ happy_dollar_dollar -> cont 79;
	TIntern _ happy_dollar_dollar -> cont 80;
	TPriv _ happy_dollar_dollar -> cont 81;
	TConst _ happy_dollar_dollar -> cont 82;
	TStringAs _ happy_dollar_dollar -> cont 83;
	TContract _ -> cont 84;
	TLibrary _ -> cont 85;
	TInterface _ -> cont 86;
	TFuncDef _ -> cont 87;
	TAddr _ happy_dollar_dollar -> cont 88;
	TBooleanLit _ happy_dollar_dollar -> cont 89;
	TVar _ happy_dollar_dollar -> cont 90;
	TUsing _ happy_dollar_dollar -> cont 91;
	TFor _ happy_dollar_dollar -> cont 92;
	TTrue _ happy_dollar_dollar -> cont 93;
	TFalse _ happy_dollar_dollar -> cont 94;
	TAs _ -> cont 95;
	TIs _ -> cont 96;
	TFrom _ -> cont 97;
	TView _ happy_dollar_dollar -> cont 98;
	TPure _ happy_dollar_dollar -> cont 99;
	TPayable _ happy_dollar_dollar -> cont 100;
	TReturns _ -> cont 101;
	TIf _ -> cont 102;
	TElse _ -> cont 103;
	THat _ -> cont 104;
	TNegate _ -> cont 105;
	TAnd _ -> cont 106;
	TOr _ -> cont 107;
	TInEqual _ -> cont 108;
	TLThan _ -> cont 109;
	TGThan _ -> cont 110;
	TLTEq _ -> cont 111;
	TGTEq _ -> cont 112;
	TEquality _ -> cont 113;
	TLCurl _ -> cont 114;
	TRCurl _ -> cont 115;
	TLBrack _ -> cont 116;
	TRBrack _ -> cont 117;
	TPeriod _ -> cont 118;
	TEquals _ -> cont 119;
	TMult _ -> cont 120;
	TDiv _ -> cont 121;
	TExpSym _ -> cont 122;
	TModul _ -> cont 123;
	TOp _ happy_dollar_dollar -> cont 124;
	TSub _ -> cont 125;
	TSemiCol _ -> cont 126;
	TComma _ -> cont 127;
	TIdent _ happy_dollar_dollar -> cont 128;
	TStringLiteral _ happy_dollar_dollar -> cont 129;
	TLeftParen _ -> cont 130;
	TRightParen _ -> cont 131;
	_ -> happyError' (tk:tks)
	}

happyError_ 132 tk tks = happyError' tks
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
