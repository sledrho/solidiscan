{-# OPTIONS_GHC -w #-}
module Parser(solidiscan) where
import Lexer
import AST
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t9 t10 t12 t13 t14 t15 t16 t17 t22 t23 t26 t27 t28 t29 t30 t32 t33 t34 t35 t38 t39 t45 t46 t47 t48 t49 t50 t51 t53 t54 t55 t56 t57 t59 t61 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t90 t91 t92 t93 t94 t95 t96 t97 t98 t99
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
	| HappyAbsSyn20 (EventDefinition)
	| HappyAbsSyn21 (ModifierDefinition)
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 (EnumDefinition)
	| HappyAbsSyn25 (EnumValue)
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 (EParameters)
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 (Parameter)
	| HappyAbsSyn37 (FuncMods)
	| HappyAbsSyn38 t38
	| HappyAbsSyn39 t39
	| HappyAbsSyn40 (PublicKeyword)
	| HappyAbsSyn41 (StorageLocation)
	| HappyAbsSyn43 (StateVarDec)
	| HappyAbsSyn44 (UsingForDec)
	| HappyAbsSyn45 t45
	| HappyAbsSyn46 t46
	| HappyAbsSyn47 t47
	| HappyAbsSyn48 t48
	| HappyAbsSyn49 t49
	| HappyAbsSyn50 t50
	| HappyAbsSyn51 t51
	| HappyAbsSyn52 (Expression)
	| HappyAbsSyn53 t53
	| HappyAbsSyn54 t54
	| HappyAbsSyn55 t55
	| HappyAbsSyn56 t56
	| HappyAbsSyn57 t57
	| HappyAbsSyn59 t59
	| HappyAbsSyn61 t61
	| HappyAbsSyn63 (BooleanLiteral)
	| HappyAbsSyn64 t64
	| HappyAbsSyn65 t65
	| HappyAbsSyn66 t66
	| HappyAbsSyn67 t67
	| HappyAbsSyn68 t68
	| HappyAbsSyn69 t69
	| HappyAbsSyn70 t70
	| HappyAbsSyn71 t71
	| HappyAbsSyn72 t72
	| HappyAbsSyn73 t73
	| HappyAbsSyn74 t74
	| HappyAbsSyn75 t75
	| HappyAbsSyn76 t76
	| HappyAbsSyn77 t77
	| HappyAbsSyn78 t78
	| HappyAbsSyn79 t79
	| HappyAbsSyn80 t80
	| HappyAbsSyn81 t81
	| HappyAbsSyn82 t82
	| HappyAbsSyn83 t83
	| HappyAbsSyn84 t84
	| HappyAbsSyn85 t85
	| HappyAbsSyn86 t86
	| HappyAbsSyn87 t87
	| HappyAbsSyn88 t88
	| HappyAbsSyn89 t89
	| HappyAbsSyn90 t90
	| HappyAbsSyn91 t91
	| HappyAbsSyn92 t92
	| HappyAbsSyn93 t93
	| HappyAbsSyn94 t94
	| HappyAbsSyn95 t95
	| HappyAbsSyn96 t96
	| HappyAbsSyn97 t97
	| HappyAbsSyn98 t98
	| HappyAbsSyn99 t99

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (106) = happyShift action_8
action_2 (107) = happyShift action_9
action_2 (114) = happyShift action_10
action_2 (115) = happyShift action_11
action_2 (116) = happyShift action_12
action_2 (175) = happyAccept
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

action_7 (171) = happyShift action_19
action_7 _ = happyFail

action_8 (171) = happyShift action_18
action_8 (7) = happyGoto action_17
action_8 _ = happyFail

action_9 (163) = happyShift action_14
action_9 (171) = happyShift action_15
action_9 (172) = happyShift action_16
action_9 (10) = happyGoto action_13
action_9 _ = happyFail

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 (125) = happyShift action_25
action_13 (9) = happyGoto action_26
action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_13

action_16 (125) = happyShift action_25
action_16 (9) = happyGoto action_24
action_16 _ = happyReduce_11

action_17 (101) = happyShift action_23
action_17 _ = happyFail

action_18 _ = happyReduce_7

action_19 (126) = happyShift action_22
action_19 (13) = happyGoto action_20
action_19 (84) = happyGoto action_21
action_19 _ = happyReduce_160

action_20 _ = happyReduce_159

action_21 (157) = happyShift action_34
action_21 _ = happyFail

action_22 (171) = happyShift action_33
action_22 (15) = happyGoto action_31
action_22 (65) = happyGoto action_32
action_22 _ = happyFail

action_23 (169) = happyShift action_30
action_23 _ = happyFail

action_24 (169) = happyShift action_29
action_24 _ = happyFail

action_25 (171) = happyShift action_28
action_25 _ = happyFail

action_26 (127) = happyShift action_27
action_26 _ = happyFail

action_27 (172) = happyShift action_63
action_27 _ = happyFail

action_28 _ = happyReduce_10

action_29 _ = happyReduce_8

action_30 _ = happyReduce_6

action_31 (170) = happyShift action_62
action_31 (14) = happyGoto action_59
action_31 (74) = happyGoto action_60
action_31 (97) = happyGoto action_61
action_31 _ = happyReduce_140

action_32 (173) = happyShift action_58
action_32 (16) = happyGoto action_56
action_32 (83) = happyGoto action_57
action_32 _ = happyReduce_158

action_33 _ = happyReduce_120

action_34 (113) = happyShift action_47
action_34 (117) = happyShift action_48
action_34 (118) = happyShift action_49
action_34 (119) = happyShift action_50
action_34 (120) = happyShift action_51
action_34 (121) = happyShift action_52
action_34 (134) = happyShift action_53
action_34 (136) = happyShift action_54
action_34 (139) = happyShift action_55
action_34 (171) = happyShift action_33
action_34 (18) = happyGoto action_35
action_34 (19) = happyGoto action_36
action_34 (20) = happyGoto action_37
action_34 (21) = happyGoto action_38
action_34 (24) = happyGoto action_39
action_34 (43) = happyGoto action_40
action_34 (44) = happyGoto action_41
action_34 (46) = happyGoto action_42
action_34 (65) = happyGoto action_43
action_34 (66) = happyGoto action_44
action_34 (68) = happyGoto action_45
action_34 (91) = happyGoto action_46
action_34 _ = happyReduce_128

action_35 (113) = happyShift action_47
action_35 (117) = happyShift action_48
action_35 (118) = happyShift action_49
action_35 (119) = happyShift action_50
action_35 (120) = happyShift action_51
action_35 (121) = happyShift action_52
action_35 (134) = happyShift action_53
action_35 (136) = happyShift action_54
action_35 (139) = happyShift action_55
action_35 (171) = happyShift action_33
action_35 (18) = happyGoto action_35
action_35 (19) = happyGoto action_36
action_35 (20) = happyGoto action_37
action_35 (21) = happyGoto action_38
action_35 (24) = happyGoto action_39
action_35 (43) = happyGoto action_40
action_35 (44) = happyGoto action_41
action_35 (46) = happyGoto action_42
action_35 (65) = happyGoto action_43
action_35 (66) = happyGoto action_44
action_35 (91) = happyGoto action_91
action_35 _ = happyReduce_173

action_36 _ = happyReduce_25

action_37 _ = happyReduce_26

action_38 _ = happyReduce_27

action_39 _ = happyReduce_28

action_40 _ = happyReduce_23

action_41 _ = happyReduce_24

action_42 (109) = happyShift action_87
action_42 (110) = happyShift action_88
action_42 (111) = happyShift action_89
action_42 (112) = happyShift action_90
action_42 (47) = happyGoto action_85
action_42 (78) = happyGoto action_86
action_42 _ = happyReduce_148

action_43 _ = happyReduce_68

action_44 _ = happyReduce_67

action_45 (158) = happyShift action_84
action_45 _ = happyFail

action_46 _ = happyReduce_127

action_47 _ = happyReduce_124

action_48 (171) = happyShift action_83
action_48 _ = happyFail

action_49 _ = happyReduce_121

action_50 _ = happyReduce_122

action_51 _ = happyReduce_123

action_52 (171) = happyShift action_82
action_52 _ = happyFail

action_53 (171) = happyShift action_81
action_53 _ = happyFail

action_54 (171) = happyShift action_80
action_54 _ = happyFail

action_55 (171) = happyShift action_79
action_55 _ = happyFail

action_56 _ = happyReduce_157

action_57 _ = happyReduce_20

action_58 (102) = happyShift action_72
action_58 (123) = happyShift action_73
action_58 (124) = happyShift action_74
action_58 (140) = happyShift action_75
action_58 (171) = happyShift action_76
action_58 (172) = happyShift action_77
action_58 (173) = happyShift action_78
action_58 (52) = happyGoto action_67
action_58 (53) = happyGoto action_68
action_58 (62) = happyGoto action_69
action_58 (63) = happyGoto action_70
action_58 (64) = happyGoto action_71
action_58 _ = happyFail

action_59 (170) = happyShift action_62
action_59 (14) = happyGoto action_59
action_59 (97) = happyGoto action_66
action_59 _ = happyReduce_185

action_60 _ = happyReduce_18

action_61 _ = happyReduce_139

action_62 (171) = happyShift action_33
action_62 (15) = happyGoto action_65
action_62 (65) = happyGoto action_32
action_62 _ = happyFail

action_63 (169) = happyShift action_64
action_63 _ = happyFail

action_64 _ = happyReduce_9

action_65 _ = happyReduce_19

action_66 _ = happyReduce_186

action_67 (141) = happyShift action_108
action_67 (142) = happyShift action_109
action_67 (143) = happyShift action_110
action_67 (145) = happyShift action_111
action_67 (146) = happyShift action_112
action_67 (147) = happyShift action_113
action_67 (148) = happyShift action_114
action_67 (149) = happyShift action_115
action_67 (150) = happyShift action_116
action_67 (151) = happyShift action_117
action_67 (152) = happyShift action_118
action_67 (153) = happyShift action_119
action_67 (154) = happyShift action_120
action_67 (155) = happyShift action_121
action_67 (156) = happyShift action_122
action_67 (163) = happyShift action_123
action_67 (164) = happyShift action_124
action_67 (165) = happyShift action_125
action_67 (166) = happyShift action_126
action_67 (167) = happyShift action_127
action_67 (168) = happyShift action_128
action_67 (170) = happyShift action_129
action_67 (17) = happyGoto action_105
action_67 (67) = happyGoto action_106
action_67 (90) = happyGoto action_107
action_67 _ = happyReduce_126

action_68 _ = happyReduce_80

action_69 _ = happyReduce_101

action_70 _ = happyReduce_113

action_71 _ = happyReduce_114

action_72 (105) = happyShift action_104
action_72 _ = happyFail

action_73 _ = happyReduce_117

action_74 _ = happyReduce_118

action_75 (113) = happyShift action_47
action_75 (118) = happyShift action_49
action_75 (119) = happyShift action_50
action_75 (120) = happyShift action_51
action_75 (171) = happyShift action_33
action_75 (46) = happyGoto action_103
action_75 (65) = happyGoto action_43
action_75 (66) = happyGoto action_44
action_75 _ = happyFail

action_76 _ = happyReduce_116

action_77 _ = happyReduce_115

action_78 (102) = happyShift action_72
action_78 (123) = happyShift action_73
action_78 (124) = happyShift action_74
action_78 (140) = happyShift action_75
action_78 (171) = happyShift action_76
action_78 (172) = happyShift action_77
action_78 (173) = happyShift action_78
action_78 (52) = happyGoto action_102
action_78 (53) = happyGoto action_68
action_78 (62) = happyGoto action_69
action_78 (63) = happyGoto action_70
action_78 (64) = happyGoto action_71
action_78 _ = happyFail

action_79 (157) = happyShift action_101
action_79 _ = happyFail

action_80 (173) = happyShift action_94
action_80 (33) = happyGoto action_99
action_80 (86) = happyGoto action_100
action_80 _ = happyReduce_164

action_81 (173) = happyShift action_98
action_81 (28) = happyGoto action_96
action_81 (80) = happyGoto action_97
action_81 _ = happyReduce_152

action_82 (122) = happyShift action_95
action_82 _ = happyFail

action_83 (173) = happyShift action_94
action_83 (33) = happyGoto action_93
action_83 _ = happyFail

action_84 _ = happyReduce_14

action_85 _ = happyReduce_147

action_86 (171) = happyShift action_92
action_86 _ = happyFail

action_87 _ = happyReduce_69

action_88 _ = happyReduce_71

action_89 _ = happyReduce_70

action_90 _ = happyReduce_72

action_91 _ = happyReduce_174

action_92 (162) = happyShift action_188
action_92 (49) = happyGoto action_186
action_92 (85) = happyGoto action_187
action_92 _ = happyReduce_162

action_93 (108) = happyShift action_177
action_93 (109) = happyShift action_178
action_93 (110) = happyShift action_179
action_93 (111) = happyShift action_180
action_93 (112) = happyShift action_181
action_93 (128) = happyShift action_182
action_93 (129) = happyShift action_183
action_93 (130) = happyShift action_184
action_93 (171) = happyShift action_185
action_93 (22) = happyGoto action_171
action_93 (37) = happyGoto action_172
action_93 (40) = happyGoto action_173
action_93 (42) = happyGoto action_174
action_93 (71) = happyGoto action_175
action_93 (94) = happyGoto action_176
action_93 _ = happyReduce_134

action_94 (113) = happyShift action_47
action_94 (118) = happyShift action_49
action_94 (119) = happyShift action_50
action_94 (120) = happyShift action_51
action_94 (171) = happyShift action_33
action_94 (34) = happyGoto action_167
action_94 (36) = happyGoto action_168
action_94 (46) = happyGoto action_169
action_94 (65) = happyGoto action_43
action_94 (66) = happyGoto action_44
action_94 (87) = happyGoto action_170
action_94 _ = happyReduce_166

action_95 (113) = happyShift action_47
action_95 (118) = happyShift action_49
action_95 (119) = happyShift action_50
action_95 (120) = happyShift action_51
action_95 (171) = happyShift action_33
action_95 (46) = happyGoto action_166
action_95 (65) = happyGoto action_43
action_95 (66) = happyGoto action_44
action_95 _ = happyFail

action_96 _ = happyReduce_151

action_97 (135) = happyShift action_165
action_97 (32) = happyGoto action_163
action_97 (77) = happyGoto action_164
action_97 _ = happyReduce_146

action_98 (113) = happyShift action_47
action_98 (118) = happyShift action_49
action_98 (119) = happyShift action_50
action_98 (120) = happyShift action_51
action_98 (171) = happyShift action_33
action_98 (29) = happyGoto action_159
action_98 (31) = happyGoto action_160
action_98 (46) = happyGoto action_161
action_98 (65) = happyGoto action_43
action_98 (66) = happyGoto action_44
action_98 (81) = happyGoto action_162
action_98 _ = happyReduce_154

action_99 _ = happyReduce_163

action_100 (157) = happyShift action_157
action_100 (169) = happyShift action_158
action_100 (39) = happyGoto action_156
action_100 _ = happyFail

action_101 (171) = happyShift action_155
action_101 (25) = happyGoto action_153
action_101 (26) = happyGoto action_154
action_101 _ = happyFail

action_102 (141) = happyShift action_108
action_102 (142) = happyShift action_109
action_102 (143) = happyShift action_110
action_102 (145) = happyShift action_111
action_102 (146) = happyShift action_112
action_102 (147) = happyShift action_113
action_102 (148) = happyShift action_114
action_102 (149) = happyShift action_115
action_102 (150) = happyShift action_116
action_102 (151) = happyShift action_117
action_102 (152) = happyShift action_118
action_102 (153) = happyShift action_119
action_102 (154) = happyShift action_120
action_102 (155) = happyShift action_121
action_102 (156) = happyShift action_122
action_102 (163) = happyShift action_123
action_102 (164) = happyShift action_124
action_102 (165) = happyShift action_125
action_102 (166) = happyShift action_126
action_102 (167) = happyShift action_127
action_102 (168) = happyShift action_128
action_102 (174) = happyShift action_152
action_102 _ = happyFail

action_103 _ = happyReduce_102

action_104 _ = happyReduce_119

action_105 (170) = happyShift action_129
action_105 (17) = happyGoto action_105
action_105 (90) = happyGoto action_151
action_105 _ = happyReduce_171

action_106 (174) = happyShift action_150
action_106 _ = happyFail

action_107 _ = happyReduce_125

action_108 _ = happyReduce_78

action_109 _ = happyReduce_79

action_110 (102) = happyShift action_72
action_110 (123) = happyShift action_73
action_110 (124) = happyShift action_74
action_110 (140) = happyShift action_75
action_110 (171) = happyShift action_76
action_110 (172) = happyShift action_77
action_110 (173) = happyShift action_78
action_110 (52) = happyGoto action_149
action_110 (53) = happyGoto action_68
action_110 (62) = happyGoto action_69
action_110 (63) = happyGoto action_70
action_110 (64) = happyGoto action_71
action_110 _ = happyFail

action_111 (102) = happyShift action_72
action_111 (123) = happyShift action_73
action_111 (124) = happyShift action_74
action_111 (140) = happyShift action_75
action_111 (171) = happyShift action_76
action_111 (172) = happyShift action_77
action_111 (173) = happyShift action_78
action_111 (52) = happyGoto action_148
action_111 (53) = happyGoto action_68
action_111 (62) = happyGoto action_69
action_111 (63) = happyGoto action_70
action_111 (64) = happyGoto action_71
action_111 _ = happyFail

action_112 (102) = happyShift action_72
action_112 (123) = happyShift action_73
action_112 (124) = happyShift action_74
action_112 (140) = happyShift action_75
action_112 (171) = happyShift action_76
action_112 (172) = happyShift action_77
action_112 (173) = happyShift action_78
action_112 (52) = happyGoto action_147
action_112 (53) = happyGoto action_68
action_112 (62) = happyGoto action_69
action_112 (63) = happyGoto action_70
action_112 (64) = happyGoto action_71
action_112 _ = happyFail

action_113 (102) = happyShift action_72
action_113 (123) = happyShift action_73
action_113 (124) = happyShift action_74
action_113 (140) = happyShift action_75
action_113 (171) = happyShift action_76
action_113 (172) = happyShift action_77
action_113 (173) = happyShift action_78
action_113 (52) = happyGoto action_146
action_113 (53) = happyGoto action_68
action_113 (62) = happyGoto action_69
action_113 (63) = happyGoto action_70
action_113 (64) = happyGoto action_71
action_113 _ = happyFail

action_114 (102) = happyShift action_72
action_114 (123) = happyShift action_73
action_114 (124) = happyShift action_74
action_114 (140) = happyShift action_75
action_114 (171) = happyShift action_76
action_114 (172) = happyShift action_77
action_114 (173) = happyShift action_78
action_114 (52) = happyGoto action_145
action_114 (53) = happyGoto action_68
action_114 (62) = happyGoto action_69
action_114 (63) = happyGoto action_70
action_114 (64) = happyGoto action_71
action_114 _ = happyFail

action_115 (102) = happyShift action_72
action_115 (123) = happyShift action_73
action_115 (124) = happyShift action_74
action_115 (140) = happyShift action_75
action_115 (171) = happyShift action_76
action_115 (172) = happyShift action_77
action_115 (173) = happyShift action_78
action_115 (52) = happyGoto action_144
action_115 (53) = happyGoto action_68
action_115 (62) = happyGoto action_69
action_115 (63) = happyGoto action_70
action_115 (64) = happyGoto action_71
action_115 _ = happyFail

action_116 (102) = happyShift action_72
action_116 (123) = happyShift action_73
action_116 (124) = happyShift action_74
action_116 (140) = happyShift action_75
action_116 (171) = happyShift action_76
action_116 (172) = happyShift action_77
action_116 (173) = happyShift action_78
action_116 (52) = happyGoto action_143
action_116 (53) = happyGoto action_68
action_116 (62) = happyGoto action_69
action_116 (63) = happyGoto action_70
action_116 (64) = happyGoto action_71
action_116 _ = happyFail

action_117 (102) = happyShift action_72
action_117 (123) = happyShift action_73
action_117 (124) = happyShift action_74
action_117 (140) = happyShift action_75
action_117 (171) = happyShift action_76
action_117 (172) = happyShift action_77
action_117 (173) = happyShift action_78
action_117 (52) = happyGoto action_142
action_117 (53) = happyGoto action_68
action_117 (62) = happyGoto action_69
action_117 (63) = happyGoto action_70
action_117 (64) = happyGoto action_71
action_117 _ = happyFail

action_118 (102) = happyShift action_72
action_118 (123) = happyShift action_73
action_118 (124) = happyShift action_74
action_118 (140) = happyShift action_75
action_118 (171) = happyShift action_76
action_118 (172) = happyShift action_77
action_118 (173) = happyShift action_78
action_118 (52) = happyGoto action_141
action_118 (53) = happyGoto action_68
action_118 (62) = happyGoto action_69
action_118 (63) = happyGoto action_70
action_118 (64) = happyGoto action_71
action_118 _ = happyFail

action_119 (102) = happyShift action_72
action_119 (123) = happyShift action_73
action_119 (124) = happyShift action_74
action_119 (140) = happyShift action_75
action_119 (171) = happyShift action_76
action_119 (172) = happyShift action_77
action_119 (173) = happyShift action_78
action_119 (52) = happyGoto action_140
action_119 (53) = happyGoto action_68
action_119 (62) = happyGoto action_69
action_119 (63) = happyGoto action_70
action_119 (64) = happyGoto action_71
action_119 _ = happyFail

action_120 (102) = happyShift action_72
action_120 (123) = happyShift action_73
action_120 (124) = happyShift action_74
action_120 (140) = happyShift action_75
action_120 (171) = happyShift action_76
action_120 (172) = happyShift action_77
action_120 (173) = happyShift action_78
action_120 (52) = happyGoto action_139
action_120 (53) = happyGoto action_68
action_120 (62) = happyGoto action_69
action_120 (63) = happyGoto action_70
action_120 (64) = happyGoto action_71
action_120 _ = happyFail

action_121 (102) = happyShift action_72
action_121 (123) = happyShift action_73
action_121 (124) = happyShift action_74
action_121 (140) = happyShift action_75
action_121 (171) = happyShift action_76
action_121 (172) = happyShift action_77
action_121 (173) = happyShift action_78
action_121 (52) = happyGoto action_138
action_121 (53) = happyGoto action_68
action_121 (62) = happyGoto action_69
action_121 (63) = happyGoto action_70
action_121 (64) = happyGoto action_71
action_121 _ = happyFail

action_122 (102) = happyShift action_72
action_122 (123) = happyShift action_73
action_122 (124) = happyShift action_74
action_122 (140) = happyShift action_75
action_122 (171) = happyShift action_76
action_122 (172) = happyShift action_77
action_122 (173) = happyShift action_78
action_122 (52) = happyGoto action_137
action_122 (53) = happyGoto action_68
action_122 (62) = happyGoto action_69
action_122 (63) = happyGoto action_70
action_122 (64) = happyGoto action_71
action_122 _ = happyFail

action_123 (102) = happyShift action_72
action_123 (123) = happyShift action_73
action_123 (124) = happyShift action_74
action_123 (140) = happyShift action_75
action_123 (171) = happyShift action_76
action_123 (172) = happyShift action_77
action_123 (173) = happyShift action_78
action_123 (52) = happyGoto action_136
action_123 (53) = happyGoto action_68
action_123 (62) = happyGoto action_69
action_123 (63) = happyGoto action_70
action_123 (64) = happyGoto action_71
action_123 _ = happyFail

action_124 (102) = happyShift action_72
action_124 (123) = happyShift action_73
action_124 (124) = happyShift action_74
action_124 (140) = happyShift action_75
action_124 (171) = happyShift action_76
action_124 (172) = happyShift action_77
action_124 (173) = happyShift action_78
action_124 (52) = happyGoto action_135
action_124 (53) = happyGoto action_68
action_124 (62) = happyGoto action_69
action_124 (63) = happyGoto action_70
action_124 (64) = happyGoto action_71
action_124 _ = happyFail

action_125 (102) = happyShift action_72
action_125 (123) = happyShift action_73
action_125 (124) = happyShift action_74
action_125 (140) = happyShift action_75
action_125 (171) = happyShift action_76
action_125 (172) = happyShift action_77
action_125 (173) = happyShift action_78
action_125 (52) = happyGoto action_134
action_125 (53) = happyGoto action_68
action_125 (62) = happyGoto action_69
action_125 (63) = happyGoto action_70
action_125 (64) = happyGoto action_71
action_125 _ = happyFail

action_126 (102) = happyShift action_72
action_126 (123) = happyShift action_73
action_126 (124) = happyShift action_74
action_126 (140) = happyShift action_75
action_126 (171) = happyShift action_76
action_126 (172) = happyShift action_77
action_126 (173) = happyShift action_78
action_126 (52) = happyGoto action_133
action_126 (53) = happyGoto action_68
action_126 (62) = happyGoto action_69
action_126 (63) = happyGoto action_70
action_126 (64) = happyGoto action_71
action_126 _ = happyFail

action_127 (102) = happyShift action_72
action_127 (123) = happyShift action_73
action_127 (124) = happyShift action_74
action_127 (140) = happyShift action_75
action_127 (171) = happyShift action_76
action_127 (172) = happyShift action_77
action_127 (173) = happyShift action_78
action_127 (52) = happyGoto action_132
action_127 (53) = happyGoto action_68
action_127 (62) = happyGoto action_69
action_127 (63) = happyGoto action_70
action_127 (64) = happyGoto action_71
action_127 _ = happyFail

action_128 (102) = happyShift action_72
action_128 (123) = happyShift action_73
action_128 (124) = happyShift action_74
action_128 (140) = happyShift action_75
action_128 (171) = happyShift action_76
action_128 (172) = happyShift action_77
action_128 (173) = happyShift action_78
action_128 (52) = happyGoto action_131
action_128 (53) = happyGoto action_68
action_128 (62) = happyGoto action_69
action_128 (63) = happyGoto action_70
action_128 (64) = happyGoto action_71
action_128 _ = happyFail

action_129 (102) = happyShift action_72
action_129 (123) = happyShift action_73
action_129 (124) = happyShift action_74
action_129 (140) = happyShift action_75
action_129 (171) = happyShift action_76
action_129 (172) = happyShift action_77
action_129 (173) = happyShift action_78
action_129 (52) = happyGoto action_130
action_129 (53) = happyGoto action_68
action_129 (62) = happyGoto action_69
action_129 (63) = happyGoto action_70
action_129 (64) = happyGoto action_71
action_129 _ = happyFail

action_130 (141) = happyShift action_108
action_130 (142) = happyShift action_109
action_130 (143) = happyShift action_110
action_130 (145) = happyShift action_111
action_130 (146) = happyShift action_112
action_130 (147) = happyShift action_113
action_130 (148) = happyShift action_114
action_130 (149) = happyShift action_115
action_130 (150) = happyShift action_116
action_130 (151) = happyShift action_117
action_130 (152) = happyShift action_118
action_130 (153) = happyShift action_119
action_130 (154) = happyShift action_120
action_130 (155) = happyShift action_121
action_130 (156) = happyShift action_122
action_130 (163) = happyShift action_123
action_130 (164) = happyShift action_124
action_130 (165) = happyShift action_125
action_130 (166) = happyShift action_126
action_130 (167) = happyShift action_127
action_130 (168) = happyShift action_128
action_130 _ = happyReduce_22

action_131 (141) = happyShift action_108
action_131 (142) = happyShift action_109
action_131 (163) = happyShift action_123
action_131 (164) = happyShift action_124
action_131 (165) = happyShift action_125
action_131 (166) = happyShift action_126
action_131 _ = happyReduce_87

action_132 (141) = happyShift action_108
action_132 (142) = happyShift action_109
action_132 (163) = happyShift action_123
action_132 (164) = happyShift action_124
action_132 (165) = happyShift action_125
action_132 (166) = happyShift action_126
action_132 _ = happyReduce_86

action_133 (141) = happyShift action_108
action_133 (142) = happyShift action_109
action_133 (165) = happyShift action_125
action_133 _ = happyReduce_85

action_134 (141) = happyShift action_108
action_134 (142) = happyShift action_109
action_134 _ = happyReduce_82

action_135 (141) = happyShift action_108
action_135 (142) = happyShift action_109
action_135 (165) = happyShift action_125
action_135 _ = happyReduce_84

action_136 (141) = happyShift action_108
action_136 (142) = happyShift action_109
action_136 (165) = happyShift action_125
action_136 _ = happyReduce_83

action_137 (141) = happyShift action_108
action_137 (142) = happyShift action_109
action_137 (143) = happyShift action_110
action_137 (146) = happyShift action_112
action_137 (148) = happyShift action_114
action_137 (150) = happyShift action_116
action_137 (151) = happyShift action_117
action_137 (152) = happyShift action_118
action_137 (153) = happyShift action_119
action_137 (154) = happyShift action_120
action_137 (155) = happyShift action_121
action_137 (163) = happyShift action_123
action_137 (164) = happyShift action_124
action_137 (165) = happyShift action_125
action_137 (166) = happyShift action_126
action_137 (167) = happyShift action_127
action_137 (168) = happyShift action_128
action_137 _ = happyReduce_97

action_138 (141) = happyShift action_108
action_138 (142) = happyShift action_109
action_138 (143) = happyShift action_110
action_138 (146) = happyShift action_112
action_138 (148) = happyShift action_114
action_138 (152) = happyShift action_118
action_138 (153) = happyShift action_119
action_138 (163) = happyShift action_123
action_138 (164) = happyShift action_124
action_138 (165) = happyShift action_125
action_138 (166) = happyShift action_126
action_138 (167) = happyShift action_127
action_138 (168) = happyShift action_128
action_138 _ = happyReduce_96

action_139 (141) = happyShift action_108
action_139 (142) = happyShift action_109
action_139 (143) = happyShift action_110
action_139 (146) = happyShift action_112
action_139 (148) = happyShift action_114
action_139 (152) = happyShift action_118
action_139 (153) = happyShift action_119
action_139 (163) = happyShift action_123
action_139 (164) = happyShift action_124
action_139 (165) = happyShift action_125
action_139 (166) = happyShift action_126
action_139 (167) = happyShift action_127
action_139 (168) = happyShift action_128
action_139 _ = happyReduce_95

action_140 (141) = happyShift action_108
action_140 (142) = happyShift action_109
action_140 (163) = happyShift action_123
action_140 (164) = happyShift action_124
action_140 (165) = happyShift action_125
action_140 (166) = happyShift action_126
action_140 (167) = happyShift action_127
action_140 (168) = happyShift action_128
action_140 _ = happyReduce_88

action_141 (141) = happyShift action_108
action_141 (142) = happyShift action_109
action_141 (163) = happyShift action_123
action_141 (164) = happyShift action_124
action_141 (165) = happyShift action_125
action_141 (166) = happyShift action_126
action_141 (167) = happyShift action_127
action_141 (168) = happyShift action_128
action_141 _ = happyReduce_89

action_142 (141) = happyShift action_108
action_142 (142) = happyShift action_109
action_142 (143) = happyShift action_110
action_142 (146) = happyShift action_112
action_142 (148) = happyShift action_114
action_142 (152) = happyShift action_118
action_142 (153) = happyShift action_119
action_142 (163) = happyShift action_123
action_142 (164) = happyShift action_124
action_142 (165) = happyShift action_125
action_142 (166) = happyShift action_126
action_142 (167) = happyShift action_127
action_142 (168) = happyShift action_128
action_142 _ = happyReduce_94

action_143 (141) = happyShift action_108
action_143 (142) = happyShift action_109
action_143 (143) = happyShift action_110
action_143 (146) = happyShift action_112
action_143 (148) = happyShift action_114
action_143 (152) = happyShift action_118
action_143 (153) = happyShift action_119
action_143 (163) = happyShift action_123
action_143 (164) = happyShift action_124
action_143 (165) = happyShift action_125
action_143 (166) = happyShift action_126
action_143 (167) = happyShift action_127
action_143 (168) = happyShift action_128
action_143 _ = happyReduce_93

action_144 (141) = happyShift action_108
action_144 (142) = happyShift action_109
action_144 (143) = happyShift action_110
action_144 (146) = happyShift action_112
action_144 (148) = happyShift action_114
action_144 (150) = happyShift action_116
action_144 (151) = happyShift action_117
action_144 (152) = happyShift action_118
action_144 (153) = happyShift action_119
action_144 (154) = happyShift action_120
action_144 (155) = happyShift action_121
action_144 (163) = happyShift action_123
action_144 (164) = happyShift action_124
action_144 (165) = happyShift action_125
action_144 (166) = happyShift action_126
action_144 (167) = happyShift action_127
action_144 (168) = happyShift action_128
action_144 _ = happyReduce_98

action_145 (141) = happyShift action_108
action_145 (142) = happyShift action_109
action_145 (143) = happyShift action_110
action_145 (146) = happyShift action_112
action_145 (152) = happyShift action_118
action_145 (153) = happyShift action_119
action_145 (163) = happyShift action_123
action_145 (164) = happyShift action_124
action_145 (165) = happyShift action_125
action_145 (166) = happyShift action_126
action_145 (167) = happyShift action_127
action_145 (168) = happyShift action_128
action_145 _ = happyReduce_92

action_146 (141) = happyShift action_108
action_146 (142) = happyShift action_109
action_146 (143) = happyShift action_110
action_146 (145) = happyShift action_111
action_146 (146) = happyShift action_112
action_146 (148) = happyShift action_114
action_146 (149) = happyShift action_115
action_146 (150) = happyShift action_116
action_146 (151) = happyShift action_117
action_146 (152) = happyShift action_118
action_146 (153) = happyShift action_119
action_146 (154) = happyShift action_120
action_146 (155) = happyShift action_121
action_146 (156) = happyShift action_122
action_146 (163) = happyShift action_123
action_146 (164) = happyShift action_124
action_146 (165) = happyShift action_125
action_146 (166) = happyShift action_126
action_146 (167) = happyShift action_127
action_146 (168) = happyShift action_128
action_146 _ = happyReduce_100

action_147 (141) = happyShift action_108
action_147 (142) = happyShift action_109
action_147 (152) = happyShift action_118
action_147 (153) = happyShift action_119
action_147 (163) = happyShift action_123
action_147 (164) = happyShift action_124
action_147 (165) = happyShift action_125
action_147 (166) = happyShift action_126
action_147 (167) = happyShift action_127
action_147 (168) = happyShift action_128
action_147 _ = happyReduce_90

action_148 (141) = happyShift action_108
action_148 (142) = happyShift action_109
action_148 (143) = happyShift action_110
action_148 (146) = happyShift action_112
action_148 (148) = happyShift action_114
action_148 (149) = happyShift action_115
action_148 (150) = happyShift action_116
action_148 (151) = happyShift action_117
action_148 (152) = happyShift action_118
action_148 (153) = happyShift action_119
action_148 (154) = happyShift action_120
action_148 (155) = happyShift action_121
action_148 (156) = happyShift action_122
action_148 (163) = happyShift action_123
action_148 (164) = happyShift action_124
action_148 (165) = happyShift action_125
action_148 (166) = happyShift action_126
action_148 (167) = happyShift action_127
action_148 (168) = happyShift action_128
action_148 _ = happyReduce_99

action_149 (141) = happyShift action_108
action_149 (142) = happyShift action_109
action_149 (146) = happyShift action_112
action_149 (152) = happyShift action_118
action_149 (153) = happyShift action_119
action_149 (163) = happyShift action_123
action_149 (164) = happyShift action_124
action_149 (165) = happyShift action_125
action_149 (166) = happyShift action_126
action_149 (167) = happyShift action_127
action_149 (168) = happyShift action_128
action_149 _ = happyReduce_91

action_150 _ = happyReduce_21

action_151 _ = happyReduce_172

action_152 _ = happyReduce_81

action_153 (170) = happyShift action_227
action_153 (27) = happyGoto action_224
action_153 (73) = happyGoto action_225
action_153 (96) = happyGoto action_226
action_153 _ = happyReduce_138

action_154 (158) = happyShift action_223
action_154 _ = happyFail

action_155 _ = happyReduce_35

action_156 _ = happyReduce_31

action_157 (102) = happyShift action_72
action_157 (120) = happyShift action_221
action_157 (123) = happyShift action_73
action_157 (124) = happyShift action_74
action_157 (132) = happyShift action_222
action_157 (140) = happyShift action_75
action_157 (171) = happyShift action_76
action_157 (172) = happyShift action_77
action_157 (173) = happyShift action_78
action_157 (52) = happyGoto action_213
action_157 (53) = happyGoto action_68
action_157 (55) = happyGoto action_214
action_157 (56) = happyGoto action_215
action_157 (57) = happyGoto action_216
action_157 (59) = happyGoto action_217
action_157 (60) = happyGoto action_218
action_157 (62) = happyGoto action_69
action_157 (63) = happyGoto action_70
action_157 (64) = happyGoto action_71
action_157 (76) = happyGoto action_219
action_157 (99) = happyGoto action_220
action_157 _ = happyReduce_144

action_158 _ = happyReduce_51

action_159 _ = happyReduce_153

action_160 (170) = happyShift action_212
action_160 (30) = happyGoto action_209
action_160 (69) = happyGoto action_210
action_160 (92) = happyGoto action_211
action_160 _ = happyReduce_130

action_161 (171) = happyShift action_208
action_161 _ = happyFail

action_162 (174) = happyShift action_207
action_162 _ = happyFail

action_163 _ = happyReduce_145

action_164 (169) = happyShift action_206
action_164 _ = happyFail

action_165 _ = happyReduce_42

action_166 (169) = happyShift action_205
action_166 _ = happyFail

action_167 _ = happyReduce_165

action_168 (170) = happyShift action_204
action_168 (35) = happyGoto action_201
action_168 (75) = happyGoto action_202
action_168 (98) = happyGoto action_203
action_168 _ = happyReduce_142

action_169 (137) = happyShift action_199
action_169 (138) = happyShift action_200
action_169 (41) = happyGoto action_197
action_169 (89) = happyGoto action_198
action_169 _ = happyReduce_170

action_170 (174) = happyShift action_196
action_170 _ = happyFail

action_171 _ = happyReduce_47

action_172 (108) = happyShift action_177
action_172 (109) = happyShift action_178
action_172 (110) = happyShift action_179
action_172 (111) = happyShift action_180
action_172 (112) = happyShift action_181
action_172 (128) = happyShift action_182
action_172 (129) = happyShift action_183
action_172 (130) = happyShift action_184
action_172 (171) = happyShift action_185
action_172 (22) = happyGoto action_171
action_172 (37) = happyGoto action_172
action_172 (40) = happyGoto action_173
action_172 (42) = happyGoto action_174
action_172 (94) = happyGoto action_195
action_172 _ = happyReduce_179

action_173 _ = happyReduce_48

action_174 _ = happyReduce_49

action_175 (131) = happyShift action_194
action_175 (38) = happyGoto action_192
action_175 (88) = happyGoto action_193
action_175 _ = happyReduce_168

action_176 _ = happyReduce_133

action_177 _ = happyReduce_59

action_178 _ = happyReduce_62

action_179 _ = happyReduce_60

action_180 _ = happyReduce_61

action_181 _ = happyReduce_54

action_182 _ = happyReduce_55

action_183 _ = happyReduce_53

action_184 _ = happyReduce_56

action_185 (173) = happyShift action_191
action_185 _ = happyFail

action_186 _ = happyReduce_161

action_187 (169) = happyShift action_190
action_187 _ = happyFail

action_188 (102) = happyShift action_72
action_188 (123) = happyShift action_73
action_188 (124) = happyShift action_74
action_188 (140) = happyShift action_75
action_188 (171) = happyShift action_76
action_188 (172) = happyShift action_77
action_188 (173) = happyShift action_78
action_188 (52) = happyGoto action_189
action_188 (53) = happyGoto action_68
action_188 (62) = happyGoto action_69
action_188 (63) = happyGoto action_70
action_188 (64) = happyGoto action_71
action_188 _ = happyFail

action_189 (141) = happyShift action_108
action_189 (142) = happyShift action_109
action_189 (143) = happyShift action_110
action_189 (145) = happyShift action_111
action_189 (146) = happyShift action_112
action_189 (147) = happyShift action_113
action_189 (148) = happyShift action_114
action_189 (149) = happyShift action_115
action_189 (150) = happyShift action_116
action_189 (151) = happyShift action_117
action_189 (152) = happyShift action_118
action_189 (153) = happyShift action_119
action_189 (154) = happyShift action_120
action_189 (155) = happyShift action_121
action_189 (156) = happyShift action_122
action_189 (163) = happyShift action_123
action_189 (164) = happyShift action_124
action_189 (165) = happyShift action_125
action_189 (166) = happyShift action_126
action_189 (167) = happyShift action_127
action_189 (168) = happyShift action_128
action_189 _ = happyReduce_75

action_190 _ = happyReduce_63

action_191 (102) = happyShift action_72
action_191 (123) = happyShift action_73
action_191 (124) = happyShift action_74
action_191 (140) = happyShift action_75
action_191 (171) = happyShift action_76
action_191 (172) = happyShift action_77
action_191 (173) = happyShift action_78
action_191 (23) = happyGoto action_243
action_191 (50) = happyGoto action_244
action_191 (52) = happyGoto action_245
action_191 (53) = happyGoto action_68
action_191 (62) = happyGoto action_69
action_191 (63) = happyGoto action_70
action_191 (64) = happyGoto action_71
action_191 (72) = happyGoto action_246
action_191 (95) = happyGoto action_247
action_191 _ = happyReduce_136

action_192 _ = happyReduce_167

action_193 (157) = happyShift action_157
action_193 (169) = happyShift action_158
action_193 (39) = happyGoto action_242
action_193 _ = happyFail

action_194 (173) = happyShift action_94
action_194 (33) = happyGoto action_241
action_194 _ = happyFail

action_195 _ = happyReduce_180

action_196 _ = happyReduce_43

action_197 _ = happyReduce_169

action_198 (171) = happyShift action_240
action_198 _ = happyFail

action_199 _ = happyReduce_57

action_200 _ = happyReduce_58

action_201 (170) = happyShift action_204
action_201 (35) = happyGoto action_201
action_201 (98) = happyGoto action_239
action_201 _ = happyReduce_187

action_202 _ = happyReduce_44

action_203 _ = happyReduce_141

action_204 (113) = happyShift action_47
action_204 (118) = happyShift action_49
action_204 (119) = happyShift action_50
action_204 (120) = happyShift action_51
action_204 (171) = happyShift action_33
action_204 (36) = happyGoto action_238
action_204 (46) = happyGoto action_169
action_204 (65) = happyGoto action_43
action_204 (66) = happyGoto action_44
action_204 _ = happyFail

action_205 _ = happyReduce_64

action_206 _ = happyReduce_30

action_207 _ = happyReduce_38

action_208 _ = happyReduce_41

action_209 (170) = happyShift action_212
action_209 (30) = happyGoto action_209
action_209 (92) = happyGoto action_237
action_209 _ = happyReduce_175

action_210 _ = happyReduce_39

action_211 _ = happyReduce_129

action_212 (113) = happyShift action_47
action_212 (118) = happyShift action_49
action_212 (119) = happyShift action_50
action_212 (120) = happyShift action_51
action_212 (171) = happyShift action_33
action_212 (31) = happyGoto action_236
action_212 (46) = happyGoto action_161
action_212 (65) = happyGoto action_43
action_212 (66) = happyGoto action_44
action_212 _ = happyFail

action_213 (141) = happyShift action_108
action_213 (142) = happyShift action_109
action_213 (143) = happyShift action_110
action_213 (145) = happyShift action_111
action_213 (146) = happyShift action_112
action_213 (147) = happyShift action_113
action_213 (148) = happyShift action_114
action_213 (149) = happyShift action_115
action_213 (150) = happyShift action_116
action_213 (151) = happyShift action_117
action_213 (152) = happyShift action_118
action_213 (153) = happyShift action_119
action_213 (154) = happyShift action_120
action_213 (155) = happyShift action_121
action_213 (156) = happyShift action_122
action_213 (163) = happyShift action_123
action_213 (164) = happyShift action_124
action_213 (165) = happyShift action_125
action_213 (166) = happyShift action_126
action_213 (167) = happyShift action_127
action_213 (168) = happyShift action_128
action_213 _ = happyReduce_110

action_214 (102) = happyShift action_72
action_214 (120) = happyShift action_221
action_214 (123) = happyShift action_73
action_214 (124) = happyShift action_74
action_214 (132) = happyShift action_222
action_214 (140) = happyShift action_75
action_214 (171) = happyShift action_76
action_214 (172) = happyShift action_77
action_214 (173) = happyShift action_78
action_214 (52) = happyGoto action_213
action_214 (53) = happyGoto action_68
action_214 (55) = happyGoto action_214
action_214 (56) = happyGoto action_215
action_214 (57) = happyGoto action_216
action_214 (59) = happyGoto action_217
action_214 (60) = happyGoto action_218
action_214 (62) = happyGoto action_69
action_214 (63) = happyGoto action_70
action_214 (64) = happyGoto action_71
action_214 (99) = happyGoto action_235
action_214 _ = happyReduce_189

action_215 (169) = happyShift action_234
action_215 _ = happyFail

action_216 _ = happyReduce_106

action_217 _ = happyReduce_107

action_218 _ = happyReduce_104

action_219 (158) = happyShift action_233
action_219 _ = happyFail

action_220 _ = happyReduce_143

action_221 (113) = happyShift action_47
action_221 (118) = happyShift action_49
action_221 (119) = happyShift action_50
action_221 (120) = happyShift action_51
action_221 (171) = happyShift action_33
action_221 (46) = happyGoto action_231
action_221 (58) = happyGoto action_232
action_221 (65) = happyGoto action_43
action_221 (66) = happyGoto action_44
action_221 _ = happyFail

action_222 (173) = happyShift action_230
action_222 _ = happyFail

action_223 _ = happyReduce_34

action_224 (170) = happyShift action_227
action_224 (27) = happyGoto action_224
action_224 (96) = happyGoto action_229
action_224 _ = happyReduce_183

action_225 _ = happyReduce_36

action_226 _ = happyReduce_137

action_227 (171) = happyShift action_155
action_227 (25) = happyGoto action_228
action_227 _ = happyFail

action_228 _ = happyReduce_37

action_229 _ = happyReduce_184

action_230 (102) = happyShift action_72
action_230 (123) = happyShift action_73
action_230 (124) = happyShift action_74
action_230 (140) = happyShift action_75
action_230 (171) = happyShift action_76
action_230 (172) = happyShift action_77
action_230 (173) = happyShift action_78
action_230 (52) = happyGoto action_255
action_230 (53) = happyGoto action_68
action_230 (62) = happyGoto action_69
action_230 (63) = happyGoto action_70
action_230 (64) = happyGoto action_71
action_230 _ = happyFail

action_231 (137) = happyShift action_199
action_231 (138) = happyShift action_200
action_231 (41) = happyGoto action_197
action_231 (89) = happyGoto action_254
action_231 _ = happyReduce_170

action_232 _ = happyReduce_108

action_233 _ = happyReduce_52

action_234 _ = happyReduce_105

action_235 _ = happyReduce_190

action_236 _ = happyReduce_40

action_237 _ = happyReduce_176

action_238 _ = happyReduce_45

action_239 _ = happyReduce_188

action_240 _ = happyReduce_46

action_241 _ = happyReduce_50

action_242 _ = happyReduce_29

action_243 (102) = happyShift action_72
action_243 (123) = happyShift action_73
action_243 (124) = happyShift action_74
action_243 (140) = happyShift action_75
action_243 (171) = happyShift action_76
action_243 (172) = happyShift action_77
action_243 (173) = happyShift action_78
action_243 (23) = happyGoto action_243
action_243 (50) = happyGoto action_244
action_243 (52) = happyGoto action_245
action_243 (53) = happyGoto action_68
action_243 (62) = happyGoto action_69
action_243 (63) = happyGoto action_70
action_243 (64) = happyGoto action_71
action_243 (95) = happyGoto action_253
action_243 _ = happyReduce_181

action_244 _ = happyReduce_33

action_245 (141) = happyShift action_108
action_245 (142) = happyShift action_109
action_245 (143) = happyShift action_110
action_245 (145) = happyShift action_111
action_245 (146) = happyShift action_112
action_245 (147) = happyShift action_113
action_245 (148) = happyShift action_114
action_245 (149) = happyShift action_115
action_245 (150) = happyShift action_116
action_245 (151) = happyShift action_117
action_245 (152) = happyShift action_118
action_245 (153) = happyShift action_119
action_245 (154) = happyShift action_120
action_245 (155) = happyShift action_121
action_245 (156) = happyShift action_122
action_245 (163) = happyShift action_123
action_245 (164) = happyShift action_124
action_245 (165) = happyShift action_125
action_245 (166) = happyShift action_126
action_245 (167) = happyShift action_127
action_245 (168) = happyShift action_128
action_245 (170) = happyShift action_252
action_245 (51) = happyGoto action_249
action_245 (70) = happyGoto action_250
action_245 (93) = happyGoto action_251
action_245 _ = happyReduce_132

action_246 (174) = happyShift action_248
action_246 _ = happyFail

action_247 _ = happyReduce_135

action_248 _ = happyReduce_32

action_249 (170) = happyShift action_252
action_249 (51) = happyGoto action_249
action_249 (93) = happyGoto action_259
action_249 _ = happyReduce_177

action_250 _ = happyReduce_76

action_251 _ = happyReduce_131

action_252 (102) = happyShift action_72
action_252 (123) = happyShift action_73
action_252 (124) = happyShift action_74
action_252 (140) = happyShift action_75
action_252 (171) = happyShift action_76
action_252 (172) = happyShift action_77
action_252 (173) = happyShift action_78
action_252 (52) = happyGoto action_258
action_252 (53) = happyGoto action_68
action_252 (62) = happyGoto action_69
action_252 (63) = happyGoto action_70
action_252 (64) = happyGoto action_71
action_252 _ = happyFail

action_253 _ = happyReduce_182

action_254 (171) = happyShift action_257
action_254 _ = happyFail

action_255 (141) = happyShift action_108
action_255 (142) = happyShift action_109
action_255 (143) = happyShift action_110
action_255 (145) = happyShift action_111
action_255 (146) = happyShift action_112
action_255 (147) = happyShift action_113
action_255 (148) = happyShift action_114
action_255 (149) = happyShift action_115
action_255 (150) = happyShift action_116
action_255 (151) = happyShift action_117
action_255 (152) = happyShift action_118
action_255 (153) = happyShift action_119
action_255 (154) = happyShift action_120
action_255 (155) = happyShift action_121
action_255 (156) = happyShift action_122
action_255 (163) = happyShift action_123
action_255 (164) = happyShift action_124
action_255 (165) = happyShift action_125
action_255 (166) = happyShift action_126
action_255 (167) = happyShift action_127
action_255 (168) = happyShift action_128
action_255 (174) = happyShift action_256
action_255 _ = happyFail

action_256 (102) = happyShift action_72
action_256 (120) = happyShift action_221
action_256 (123) = happyShift action_73
action_256 (124) = happyShift action_74
action_256 (132) = happyShift action_222
action_256 (140) = happyShift action_75
action_256 (171) = happyShift action_76
action_256 (172) = happyShift action_77
action_256 (173) = happyShift action_78
action_256 (52) = happyGoto action_213
action_256 (53) = happyGoto action_68
action_256 (55) = happyGoto action_260
action_256 (56) = happyGoto action_215
action_256 (57) = happyGoto action_216
action_256 (59) = happyGoto action_217
action_256 (60) = happyGoto action_218
action_256 (62) = happyGoto action_69
action_256 (63) = happyGoto action_70
action_256 (64) = happyGoto action_71
action_256 _ = happyFail

action_257 _ = happyReduce_109

action_258 (141) = happyShift action_108
action_258 (142) = happyShift action_109
action_258 (143) = happyShift action_110
action_258 (145) = happyShift action_111
action_258 (146) = happyShift action_112
action_258 (147) = happyShift action_113
action_258 (148) = happyShift action_114
action_258 (149) = happyShift action_115
action_258 (150) = happyShift action_116
action_258 (151) = happyShift action_117
action_258 (152) = happyShift action_118
action_258 (153) = happyShift action_119
action_258 (154) = happyShift action_120
action_258 (155) = happyShift action_121
action_258 (156) = happyShift action_122
action_258 (163) = happyShift action_123
action_258 (164) = happyShift action_124
action_258 (165) = happyShift action_125
action_258 (166) = happyShift action_126
action_258 (167) = happyShift action_127
action_258 (168) = happyShift action_128
action_258 _ = happyReduce_77

action_259 _ = happyReduce_178

action_260 (133) = happyShift action_263
action_260 (61) = happyGoto action_261
action_260 (79) = happyGoto action_262
action_260 _ = happyReduce_150

action_261 _ = happyReduce_149

action_262 _ = happyReduce_111

action_263 (102) = happyShift action_72
action_263 (120) = happyShift action_221
action_263 (123) = happyShift action_73
action_263 (124) = happyShift action_74
action_263 (132) = happyShift action_222
action_263 (140) = happyShift action_75
action_263 (171) = happyShift action_76
action_263 (172) = happyShift action_77
action_263 (173) = happyShift action_78
action_263 (52) = happyGoto action_213
action_263 (53) = happyGoto action_68
action_263 (55) = happyGoto action_264
action_263 (56) = happyGoto action_215
action_263 (57) = happyGoto action_216
action_263 (59) = happyGoto action_217
action_263 (60) = happyGoto action_218
action_263 (62) = happyGoto action_69
action_263 (63) = happyGoto action_70
action_263 (64) = happyGoto action_71
action_263 _ = happyFail

action_264 _ = happyReduce_112

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
	(HappyAbsSyn68  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn84  happy_var_3) `HappyStk`
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
happyReduction_18 (HappyAbsSyn74  happy_var_3)
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

happyReduce_20 = happySpecReduce_2  15 happyReduction_20
happyReduction_20 (HappyAbsSyn83  happy_var_2)
	(HappyAbsSyn65  happy_var_1)
	 =  HappyAbsSyn15
		 (InheritanceSpecifier happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 16 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn67  happy_var_3) `HappyStk`
	(HappyAbsSyn52  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (happy_var_2:happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  17 happyReduction_22
happyReduction_22 (HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  18 happyReduction_23
happyReduction_23 (HappyAbsSyn43  happy_var_1)
	 =  HappyAbsSyn18
		 (ContractContents happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  18 happyReduction_24
happyReduction_24 (HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn18
		 (UsingFor happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  18 happyReduction_25
happyReduction_25 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (FunctionDefinition happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  18 happyReduction_26
happyReduction_26 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (EventDef happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  18 happyReduction_27
happyReduction_27 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn18
		 (ModDef happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  18 happyReduction_28
happyReduction_28 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn18
		 (EnumDef happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happyReduce 6 19 happyReduction_29
happyReduction_29 ((HappyAbsSyn39  happy_var_6) `HappyStk`
	(HappyAbsSyn88  happy_var_5) `HappyStk`
	(HappyAbsSyn71  happy_var_4) `HappyStk`
	(HappyAbsSyn33  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (FunctionDef happy_var_2 happy_var_3 happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 5 20 happyReduction_30
happyReduction_30 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn80  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (EventDefinition happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 21 happyReduction_31
happyReduction_31 ((HappyAbsSyn39  happy_var_4) `HappyStk`
	(HappyAbsSyn86  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (ModifierDefinition happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 22 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn72  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_1  23 happyReduction_33
happyReduction_33 (HappyAbsSyn50  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happyReduce 5 24 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn26  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (EnumDefinition happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  25 happyReduction_35
happyReduction_35 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn25
		 (EnumValue happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  26 happyReduction_36
happyReduction_36 (HappyAbsSyn73  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  27 happyReduction_37
happyReduction_37 (HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn27
		 (happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  28 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn81  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  29 happyReduction_39
happyReduction_39 (HappyAbsSyn69  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_1:happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  30 happyReduction_40
happyReduction_40 (HappyAbsSyn31  happy_var_2)
	_
	 =  HappyAbsSyn30
		 (happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  31 happyReduction_41
happyReduction_41 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn31
		 (EParameters happy_var_1 happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  32 happyReduction_42
happyReduction_42 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn32
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  33 happyReduction_43
happyReduction_43 _
	(HappyAbsSyn87  happy_var_2)
	_
	 =  HappyAbsSyn33
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  34 happyReduction_44
happyReduction_44 (HappyAbsSyn75  happy_var_2)
	(HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn34
		 (happy_var_1:happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  35 happyReduction_45
happyReduction_45 (HappyAbsSyn36  happy_var_2)
	_
	 =  HappyAbsSyn35
		 (happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  36 happyReduction_46
happyReduction_46 (HappyTerminal (TIdent _ happy_var_3))
	(HappyAbsSyn89  happy_var_2)
	(HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn36
		 (Parameter happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  37 happyReduction_47
happyReduction_47 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn37
		 (ModifierInvs happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  37 happyReduction_48
happyReduction_48 (HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn37
		 (StateMutability happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  37 happyReduction_49
happyReduction_49 (HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn37
		 (FuncVars happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  38 happyReduction_50
happyReduction_50 (HappyAbsSyn33  happy_var_2)
	_
	 =  HappyAbsSyn38
		 (ReturnParam happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  39 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn39
		 ([]
	)

happyReduce_52 = happySpecReduce_3  39 happyReduction_52
happyReduction_52 _
	(HappyAbsSyn76  happy_var_2)
	_
	 =  HappyAbsSyn39
		 (happy_var_2
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  40 happyReduction_53
happyReduction_53 (HappyTerminal (TPure _ happy_var_1))
	 =  HappyAbsSyn40
		 (PureKeyword happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  40 happyReduction_54
happyReduction_54 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn40
		 (ConstantKeyword happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  40 happyReduction_55
happyReduction_55 (HappyTerminal (TView _ happy_var_1))
	 =  HappyAbsSyn40
		 (ViewKeyword happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  40 happyReduction_56
happyReduction_56 (HappyTerminal (TPayable _ happy_var_1))
	 =  HappyAbsSyn40
		 (PayableKeyword happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  41 happyReduction_57
happyReduction_57 (HappyTerminal (TMem _  happy_var_1))
	 =  HappyAbsSyn41
		 (StorageLocation happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  41 happyReduction_58
happyReduction_58 (HappyTerminal (TStorage _ happy_var_1))
	 =  HappyAbsSyn41
		 (StorageLocation happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  42 happyReduction_59
happyReduction_59 (HappyTerminal (TExternal _ happy_var_1))
	 =  HappyAbsSyn40
		 (ExternalKeyword happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  42 happyReduction_60
happyReduction_60 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn40
		 (InternalKeyword happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  42 happyReduction_61
happyReduction_61 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn40
		 (PrivateKeyword happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  42 happyReduction_62
happyReduction_62 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn40
		 (PublicKeyword happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happyReduce 5 43 happyReduction_63
happyReduction_63 (_ `HappyStk`
	(HappyAbsSyn85  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn78  happy_var_2) `HappyStk`
	(HappyAbsSyn46  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn43
		 (StateVariableDeclaration happy_var_1 happy_var_2 (Identifier happy_var_3) happy_var_4
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 5 44 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn46  happy_var_4) `HappyStk`
	(HappyTerminal (TFor _ happy_var_3)) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	(HappyTerminal (TUsing _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn44
		 (UsingForDeclaration happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_1  45 happyReduction_65
happyReduction_65 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn45
		 (happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  45 happyReduction_66
happyReduction_66 (HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn45
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  46 happyReduction_67
happyReduction_67 (HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn46
		 (ElementaryTypeName happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  46 happyReduction_68
happyReduction_68 (HappyAbsSyn65  happy_var_1)
	 =  HappyAbsSyn46
		 (happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  47 happyReduction_69
happyReduction_69 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn47
		 (PublicKeyword happy_var_1
	)
happyReduction_69 _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_1  47 happyReduction_70
happyReduction_70 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn47
		 (PrivateKeyword happy_var_1
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  47 happyReduction_71
happyReduction_71 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn47
		 (InternalKeyword happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_1  47 happyReduction_72
happyReduction_72 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn47
		 (ConstantKeyword happy_var_1
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  48 happyReduction_73
happyReduction_73 (HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn48
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_0  48 happyReduction_74
happyReduction_74  =  HappyAbsSyn48
		 ([]
	)

happyReduce_75 = happySpecReduce_2  49 happyReduction_75
happyReduction_75 (HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn49
		 (happy_var_2
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  50 happyReduction_76
happyReduction_76 (HappyAbsSyn70  happy_var_2)
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn50
		 (happy_var_1:happy_var_2
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_2  51 happyReduction_77
happyReduction_77 (HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn51
		 (happy_var_2
	)
happyReduction_77 _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_2  52 happyReduction_78
happyReduction_78 _
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (IncrExp happy_var_1
	)
happyReduction_78 _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_2  52 happyReduction_79
happyReduction_79 _
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (DecrExp happy_var_1
	)
happyReduction_79 _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  52 happyReduction_80
happyReduction_80 (HappyAbsSyn53  happy_var_1)
	 =  HappyAbsSyn52
		 (NewExpression happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  52 happyReduction_81
happyReduction_81 _
	(HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn52
		 (BracketsExp happy_var_2
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_3  52 happyReduction_82
happyReduction_82 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (ExponentExp happy_var_1 happy_var_3
	)
happyReduction_82 _ _ _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_3  52 happyReduction_83
happyReduction_83 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (MultiExp happy_var_1 happy_var_3
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  52 happyReduction_84
happyReduction_84 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (DivisionExp happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  52 happyReduction_85
happyReduction_85 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (ModuloExp happy_var_1 happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  52 happyReduction_86
happyReduction_86 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (AdditionExp happy_var_1 happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  52 happyReduction_87
happyReduction_87 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (SubtractionExp happy_var_1 happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_3  52 happyReduction_88
happyReduction_88 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LShiftExp happy_var_1 happy_var_3
	)
happyReduction_88 _ _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  52 happyReduction_89
happyReduction_89 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (RShiftExp happy_var_1 happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  52 happyReduction_90
happyReduction_90 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitAndExp happy_var_1 happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  52 happyReduction_91
happyReduction_91 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitXOrExp happy_var_1 happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  52 happyReduction_92
happyReduction_92 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitOrExp happy_var_1 happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  52 happyReduction_93
happyReduction_93 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LThanExp happy_var_1 happy_var_3
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_3  52 happyReduction_94
happyReduction_94 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (GThanExp happy_var_1 happy_var_3
	)
happyReduction_94 _ _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  52 happyReduction_95
happyReduction_95 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LThanEqExp happy_var_1 happy_var_3
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_3  52 happyReduction_96
happyReduction_96 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (GThanEqExp happy_var_1 happy_var_3
	)
happyReduction_96 _ _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_3  52 happyReduction_97
happyReduction_97 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (EqualExp happy_var_1 happy_var_3
	)
happyReduction_97 _ _ _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_3  52 happyReduction_98
happyReduction_98 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (NotEqualExp happy_var_1 happy_var_3
	)
happyReduction_98 _ _ _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_3  52 happyReduction_99
happyReduction_99 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (AndExp happy_var_1 happy_var_3
	)
happyReduction_99 _ _ _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_3  52 happyReduction_100
happyReduction_100 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (OrExp happy_var_1 happy_var_3
	)
happyReduction_100 _ _ _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_1  52 happyReduction_101
happyReduction_101 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (happy_var_1
	)
happyReduction_101 _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_2  53 happyReduction_102
happyReduction_102 (HappyAbsSyn46  happy_var_2)
	_
	 =  HappyAbsSyn53
		 (happy_var_2
	)
happyReduction_102 _ _  = notHappyAtAll 

happyReduce_103 = happyReduce 4 54 happyReduction_103
happyReduction_103 (_ `HappyStk`
	(HappyAbsSyn82  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn54
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_104 = happySpecReduce_1  55 happyReduction_104
happyReduction_104 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn55
		 (happy_var_1
	)
happyReduction_104 _  = notHappyAtAll 

happyReduce_105 = happySpecReduce_2  55 happyReduction_105
happyReduction_105 _
	(HappyAbsSyn56  happy_var_1)
	 =  HappyAbsSyn55
		 (happy_var_1
	)
happyReduction_105 _ _  = notHappyAtAll 

happyReduce_106 = happySpecReduce_1  56 happyReduction_106
happyReduction_106 (HappyAbsSyn57  happy_var_1)
	 =  HappyAbsSyn56
		 (happy_var_1
	)
happyReduction_106 _  = notHappyAtAll 

happyReduce_107 = happySpecReduce_1  56 happyReduction_107
happyReduction_107 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn56
		 (happy_var_1
	)
happyReduction_107 _  = notHappyAtAll 

happyReduce_108 = happySpecReduce_2  57 happyReduction_108
happyReduction_108 (HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn57
		 (happy_var_2
	)
happyReduction_108 _ _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_3  58 happyReduction_109
happyReduction_109 (HappyTerminal (TIdent _ happy_var_3))
	(HappyAbsSyn89  happy_var_2)
	(HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn52
		 (VariableDeclaration happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_109 _ _ _  = notHappyAtAll 

happyReduce_110 = happySpecReduce_1  59 happyReduction_110
happyReduction_110 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn59
		 (happy_var_1
	)
happyReduction_110 _  = notHappyAtAll 

happyReduce_111 = happyReduce 6 60 happyReduction_111
happyReduction_111 ((HappyAbsSyn79  happy_var_6) `HappyStk`
	(HappyAbsSyn55  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn52
		 (IfStatement happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_112 = happySpecReduce_2  61 happyReduction_112
happyReduction_112 (HappyAbsSyn55  happy_var_2)
	_
	 =  HappyAbsSyn61
		 (ElseState happy_var_2
	)
happyReduction_112 _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_1  62 happyReduction_113
happyReduction_113 (HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn52
		 (BoolExpression happy_var_1
	)
happyReduction_113 _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_1  62 happyReduction_114
happyReduction_114 (HappyAbsSyn64  happy_var_1)
	 =  HappyAbsSyn52
		 (NumExpression happy_var_1
	)
happyReduction_114 _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_1  62 happyReduction_115
happyReduction_115 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn52
		 (StringExpression happy_var_1
	)
happyReduction_115 _  = notHappyAtAll 

happyReduce_116 = happySpecReduce_1  62 happyReduction_116
happyReduction_116 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn52
		 (IdentExpression happy_var_1
	)
happyReduction_116 _  = notHappyAtAll 

happyReduce_117 = happySpecReduce_1  63 happyReduction_117
happyReduction_117 (HappyTerminal (TTrue _ happy_var_1))
	 =  HappyAbsSyn63
		 (BooleanLiteral happy_var_1
	)
happyReduction_117 _  = notHappyAtAll 

happyReduce_118 = happySpecReduce_1  63 happyReduction_118
happyReduction_118 (HappyTerminal (TFalse _ happy_var_1))
	 =  HappyAbsSyn63
		 (BooleanLiteral happy_var_1
	)
happyReduction_118 _  = notHappyAtAll 

happyReduce_119 = happySpecReduce_2  64 happyReduction_119
happyReduction_119 _
	(HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn64
		 (happy_var_1
	)
happyReduction_119 _ _  = notHappyAtAll 

happyReduce_120 = happySpecReduce_1  65 happyReduction_120
happyReduction_120 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn65
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_120 _  = notHappyAtAll 

happyReduce_121 = happySpecReduce_1  66 happyReduction_121
happyReduction_121 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn66
		 (AddrType happy_var_1
	)
happyReduction_121 _  = notHappyAtAll 

happyReduce_122 = happySpecReduce_1  66 happyReduction_122
happyReduction_122 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn66
		 (BoolType happy_var_1
	)
happyReduction_122 _  = notHappyAtAll 

happyReduce_123 = happySpecReduce_1  66 happyReduction_123
happyReduction_123 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn66
		 (VarType happy_var_1
	)
happyReduction_123 _  = notHappyAtAll 

happyReduce_124 = happySpecReduce_1  66 happyReduction_124
happyReduction_124 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn66
		 (StringType happy_var_1
	)
happyReduction_124 _  = notHappyAtAll 

happyReduce_125 = happySpecReduce_1  67 happyReduction_125
happyReduction_125 (HappyAbsSyn90  happy_var_1)
	 =  HappyAbsSyn67
		 (happy_var_1
	)
happyReduction_125 _  = notHappyAtAll 

happyReduce_126 = happySpecReduce_0  67 happyReduction_126
happyReduction_126  =  HappyAbsSyn67
		 ([]
	)

happyReduce_127 = happySpecReduce_1  68 happyReduction_127
happyReduction_127 (HappyAbsSyn91  happy_var_1)
	 =  HappyAbsSyn68
		 (happy_var_1
	)
happyReduction_127 _  = notHappyAtAll 

happyReduce_128 = happySpecReduce_0  68 happyReduction_128
happyReduction_128  =  HappyAbsSyn68
		 ([]
	)

happyReduce_129 = happySpecReduce_1  69 happyReduction_129
happyReduction_129 (HappyAbsSyn92  happy_var_1)
	 =  HappyAbsSyn69
		 (happy_var_1
	)
happyReduction_129 _  = notHappyAtAll 

happyReduce_130 = happySpecReduce_0  69 happyReduction_130
happyReduction_130  =  HappyAbsSyn69
		 ([]
	)

happyReduce_131 = happySpecReduce_1  70 happyReduction_131
happyReduction_131 (HappyAbsSyn93  happy_var_1)
	 =  HappyAbsSyn70
		 (happy_var_1
	)
happyReduction_131 _  = notHappyAtAll 

happyReduce_132 = happySpecReduce_0  70 happyReduction_132
happyReduction_132  =  HappyAbsSyn70
		 ([]
	)

happyReduce_133 = happySpecReduce_1  71 happyReduction_133
happyReduction_133 (HappyAbsSyn94  happy_var_1)
	 =  HappyAbsSyn71
		 (happy_var_1
	)
happyReduction_133 _  = notHappyAtAll 

happyReduce_134 = happySpecReduce_0  71 happyReduction_134
happyReduction_134  =  HappyAbsSyn71
		 ([]
	)

happyReduce_135 = happySpecReduce_1  72 happyReduction_135
happyReduction_135 (HappyAbsSyn95  happy_var_1)
	 =  HappyAbsSyn72
		 (happy_var_1
	)
happyReduction_135 _  = notHappyAtAll 

happyReduce_136 = happySpecReduce_0  72 happyReduction_136
happyReduction_136  =  HappyAbsSyn72
		 ([]
	)

happyReduce_137 = happySpecReduce_1  73 happyReduction_137
happyReduction_137 (HappyAbsSyn96  happy_var_1)
	 =  HappyAbsSyn73
		 (happy_var_1
	)
happyReduction_137 _  = notHappyAtAll 

happyReduce_138 = happySpecReduce_0  73 happyReduction_138
happyReduction_138  =  HappyAbsSyn73
		 ([]
	)

happyReduce_139 = happySpecReduce_1  74 happyReduction_139
happyReduction_139 (HappyAbsSyn97  happy_var_1)
	 =  HappyAbsSyn74
		 (happy_var_1
	)
happyReduction_139 _  = notHappyAtAll 

happyReduce_140 = happySpecReduce_0  74 happyReduction_140
happyReduction_140  =  HappyAbsSyn74
		 ([]
	)

happyReduce_141 = happySpecReduce_1  75 happyReduction_141
happyReduction_141 (HappyAbsSyn98  happy_var_1)
	 =  HappyAbsSyn75
		 (happy_var_1
	)
happyReduction_141 _  = notHappyAtAll 

happyReduce_142 = happySpecReduce_0  75 happyReduction_142
happyReduction_142  =  HappyAbsSyn75
		 ([]
	)

happyReduce_143 = happySpecReduce_1  76 happyReduction_143
happyReduction_143 (HappyAbsSyn99  happy_var_1)
	 =  HappyAbsSyn76
		 (happy_var_1
	)
happyReduction_143 _  = notHappyAtAll 

happyReduce_144 = happySpecReduce_0  76 happyReduction_144
happyReduction_144  =  HappyAbsSyn76
		 ([]
	)

happyReduce_145 = happySpecReduce_1  77 happyReduction_145
happyReduction_145 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn77
		 ([happy_var_1]
	)
happyReduction_145 _  = notHappyAtAll 

happyReduce_146 = happySpecReduce_0  77 happyReduction_146
happyReduction_146  =  HappyAbsSyn77
		 ([]
	)

happyReduce_147 = happySpecReduce_1  78 happyReduction_147
happyReduction_147 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn78
		 ([happy_var_1]
	)
happyReduction_147 _  = notHappyAtAll 

happyReduce_148 = happySpecReduce_0  78 happyReduction_148
happyReduction_148  =  HappyAbsSyn78
		 ([]
	)

happyReduce_149 = happySpecReduce_1  79 happyReduction_149
happyReduction_149 (HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn79
		 ([happy_var_1]
	)
happyReduction_149 _  = notHappyAtAll 

happyReduce_150 = happySpecReduce_0  79 happyReduction_150
happyReduction_150  =  HappyAbsSyn79
		 ([]
	)

happyReduce_151 = happySpecReduce_1  80 happyReduction_151
happyReduction_151 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn80
		 ([happy_var_1]
	)
happyReduction_151 _  = notHappyAtAll 

happyReduce_152 = happySpecReduce_0  80 happyReduction_152
happyReduction_152  =  HappyAbsSyn80
		 ([]
	)

happyReduce_153 = happySpecReduce_1  81 happyReduction_153
happyReduction_153 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn81
		 ([happy_var_1]
	)
happyReduction_153 _  = notHappyAtAll 

happyReduce_154 = happySpecReduce_0  81 happyReduction_154
happyReduction_154  =  HappyAbsSyn81
		 ([]
	)

happyReduce_155 = happySpecReduce_1  82 happyReduction_155
happyReduction_155 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn82
		 ([happy_var_1]
	)
happyReduction_155 _  = notHappyAtAll 

happyReduce_156 = happySpecReduce_0  82 happyReduction_156
happyReduction_156  =  HappyAbsSyn82
		 ([]
	)

happyReduce_157 = happySpecReduce_1  83 happyReduction_157
happyReduction_157 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn83
		 ([happy_var_1]
	)
happyReduction_157 _  = notHappyAtAll 

happyReduce_158 = happySpecReduce_0  83 happyReduction_158
happyReduction_158  =  HappyAbsSyn83
		 ([]
	)

happyReduce_159 = happySpecReduce_1  84 happyReduction_159
happyReduction_159 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn84
		 ([happy_var_1]
	)
happyReduction_159 _  = notHappyAtAll 

happyReduce_160 = happySpecReduce_0  84 happyReduction_160
happyReduction_160  =  HappyAbsSyn84
		 ([]
	)

happyReduce_161 = happySpecReduce_1  85 happyReduction_161
happyReduction_161 (HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn85
		 ([happy_var_1]
	)
happyReduction_161 _  = notHappyAtAll 

happyReduce_162 = happySpecReduce_0  85 happyReduction_162
happyReduction_162  =  HappyAbsSyn85
		 ([]
	)

happyReduce_163 = happySpecReduce_1  86 happyReduction_163
happyReduction_163 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn86
		 ([happy_var_1]
	)
happyReduction_163 _  = notHappyAtAll 

happyReduce_164 = happySpecReduce_0  86 happyReduction_164
happyReduction_164  =  HappyAbsSyn86
		 ([]
	)

happyReduce_165 = happySpecReduce_1  87 happyReduction_165
happyReduction_165 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn87
		 ([happy_var_1]
	)
happyReduction_165 _  = notHappyAtAll 

happyReduce_166 = happySpecReduce_0  87 happyReduction_166
happyReduction_166  =  HappyAbsSyn87
		 ([]
	)

happyReduce_167 = happySpecReduce_1  88 happyReduction_167
happyReduction_167 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn88
		 ([happy_var_1]
	)
happyReduction_167 _  = notHappyAtAll 

happyReduce_168 = happySpecReduce_0  88 happyReduction_168
happyReduction_168  =  HappyAbsSyn88
		 ([]
	)

happyReduce_169 = happySpecReduce_1  89 happyReduction_169
happyReduction_169 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn89
		 ([happy_var_1]
	)
happyReduction_169 _  = notHappyAtAll 

happyReduce_170 = happySpecReduce_0  89 happyReduction_170
happyReduction_170  =  HappyAbsSyn89
		 ([]
	)

happyReduce_171 = happySpecReduce_1  90 happyReduction_171
happyReduction_171 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn90
		 ([happy_var_1]
	)
happyReduction_171 _  = notHappyAtAll 

happyReduce_172 = happySpecReduce_2  90 happyReduction_172
happyReduction_172 (HappyAbsSyn90  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn90
		 (happy_var_1 : happy_var_2
	)
happyReduction_172 _ _  = notHappyAtAll 

happyReduce_173 = happySpecReduce_1  91 happyReduction_173
happyReduction_173 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn91
		 ([happy_var_1]
	)
happyReduction_173 _  = notHappyAtAll 

happyReduce_174 = happySpecReduce_2  91 happyReduction_174
happyReduction_174 (HappyAbsSyn91  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn91
		 (happy_var_1 : happy_var_2
	)
happyReduction_174 _ _  = notHappyAtAll 

happyReduce_175 = happySpecReduce_1  92 happyReduction_175
happyReduction_175 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn92
		 ([happy_var_1]
	)
happyReduction_175 _  = notHappyAtAll 

happyReduce_176 = happySpecReduce_2  92 happyReduction_176
happyReduction_176 (HappyAbsSyn92  happy_var_2)
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn92
		 (happy_var_1 : happy_var_2
	)
happyReduction_176 _ _  = notHappyAtAll 

happyReduce_177 = happySpecReduce_1  93 happyReduction_177
happyReduction_177 (HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn93
		 ([happy_var_1]
	)
happyReduction_177 _  = notHappyAtAll 

happyReduce_178 = happySpecReduce_2  93 happyReduction_178
happyReduction_178 (HappyAbsSyn93  happy_var_2)
	(HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn93
		 (happy_var_1 : happy_var_2
	)
happyReduction_178 _ _  = notHappyAtAll 

happyReduce_179 = happySpecReduce_1  94 happyReduction_179
happyReduction_179 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn94
		 ([happy_var_1]
	)
happyReduction_179 _  = notHappyAtAll 

happyReduce_180 = happySpecReduce_2  94 happyReduction_180
happyReduction_180 (HappyAbsSyn94  happy_var_2)
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn94
		 (happy_var_1 : happy_var_2
	)
happyReduction_180 _ _  = notHappyAtAll 

happyReduce_181 = happySpecReduce_1  95 happyReduction_181
happyReduction_181 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn95
		 ([happy_var_1]
	)
happyReduction_181 _  = notHappyAtAll 

happyReduce_182 = happySpecReduce_2  95 happyReduction_182
happyReduction_182 (HappyAbsSyn95  happy_var_2)
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn95
		 (happy_var_1 : happy_var_2
	)
happyReduction_182 _ _  = notHappyAtAll 

happyReduce_183 = happySpecReduce_1  96 happyReduction_183
happyReduction_183 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn96
		 ([happy_var_1]
	)
happyReduction_183 _  = notHappyAtAll 

happyReduce_184 = happySpecReduce_2  96 happyReduction_184
happyReduction_184 (HappyAbsSyn96  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn96
		 (happy_var_1 : happy_var_2
	)
happyReduction_184 _ _  = notHappyAtAll 

happyReduce_185 = happySpecReduce_1  97 happyReduction_185
happyReduction_185 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn97
		 ([happy_var_1]
	)
happyReduction_185 _  = notHappyAtAll 

happyReduce_186 = happySpecReduce_2  97 happyReduction_186
happyReduction_186 (HappyAbsSyn97  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn97
		 (happy_var_1 : happy_var_2
	)
happyReduction_186 _ _  = notHappyAtAll 

happyReduce_187 = happySpecReduce_1  98 happyReduction_187
happyReduction_187 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn98
		 ([happy_var_1]
	)
happyReduction_187 _  = notHappyAtAll 

happyReduce_188 = happySpecReduce_2  98 happyReduction_188
happyReduction_188 (HappyAbsSyn98  happy_var_2)
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn98
		 (happy_var_1 : happy_var_2
	)
happyReduction_188 _ _  = notHappyAtAll 

happyReduce_189 = happySpecReduce_1  99 happyReduction_189
happyReduction_189 (HappyAbsSyn55  happy_var_1)
	 =  HappyAbsSyn99
		 ([happy_var_1]
	)
happyReduction_189 _  = notHappyAtAll 

happyReduce_190 = happySpecReduce_2  99 happyReduction_190
happyReduction_190 (HappyAbsSyn99  happy_var_2)
	(HappyAbsSyn55  happy_var_1)
	 =  HappyAbsSyn99
		 (happy_var_1 : happy_var_2
	)
happyReduction_190 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 175 175 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 100;
	TVers _ -> cont 101;
	TDec _ happy_dollar_dollar -> cont 102;
	TExp _ happy_dollar_dollar -> cont 103;
	TInt _ happy_dollar_dollar -> cont 104;
	TNumUnit _ -> cont 105;
	TPragma _ -> cont 106;
	TImport _ -> cont 107;
	TExternal _ happy_dollar_dollar -> cont 108;
	TPublic _ happy_dollar_dollar -> cont 109;
	TIntern _ happy_dollar_dollar -> cont 110;
	TPriv _ happy_dollar_dollar -> cont 111;
	TConst _ happy_dollar_dollar -> cont 112;
	TStringAs _ happy_dollar_dollar -> cont 113;
	TContract _ -> cont 114;
	TLibrary _ -> cont 115;
	TInterface _ -> cont 116;
	TFuncDef _ -> cont 117;
	TAddr _ happy_dollar_dollar -> cont 118;
	TBooleanLit _ happy_dollar_dollar -> cont 119;
	TVar _ happy_dollar_dollar -> cont 120;
	TUsing _ happy_dollar_dollar -> cont 121;
	TFor _ happy_dollar_dollar -> cont 122;
	TTrue _ happy_dollar_dollar -> cont 123;
	TFalse _ happy_dollar_dollar -> cont 124;
	TAs _ -> cont 125;
	TIs _ -> cont 126;
	TFrom _ -> cont 127;
	TView _ happy_dollar_dollar -> cont 128;
	TPure _ happy_dollar_dollar -> cont 129;
	TPayable _ happy_dollar_dollar -> cont 130;
	TReturns _ -> cont 131;
	TIf _ -> cont 132;
	TElse _ -> cont 133;
	TEvent _ -> cont 134;
	TAnon _ -> cont 135;
	TModi _ -> cont 136;
	TMem _  happy_dollar_dollar -> cont 137;
	TStorage _ happy_dollar_dollar -> cont 138;
	TEnum _ -> cont 139;
	TNew _ -> cont 140;
	TIncr _ -> cont 141;
	TDecr _ -> cont 142;
	THat _ -> cont 143;
	TNegate _ -> cont 144;
	TAnd _ -> cont 145;
	TBitAnd _ -> cont 146;
	TOr _ -> cont 147;
	TBOr _ -> cont 148;
	TInEqual _ -> cont 149;
	TLThan _ -> cont 150;
	TGThan _ -> cont 151;
	TRShift _ -> cont 152;
	TLShift _ -> cont 153;
	TLTEq _ -> cont 154;
	TGTEq _ -> cont 155;
	TEquality _ -> cont 156;
	TLCurl _ -> cont 157;
	TRCurl _ -> cont 158;
	TLBrack _ -> cont 159;
	TRBrack _ -> cont 160;
	TPeriod _ -> cont 161;
	TEquals _ -> cont 162;
	TMult _ -> cont 163;
	TDiv _ -> cont 164;
	TExpSym _ -> cont 165;
	TModul _ -> cont 166;
	TOp _ happy_dollar_dollar -> cont 167;
	TSub _ -> cont 168;
	TSemiCol _ -> cont 169;
	TComma _ -> cont 170;
	TIdent _ happy_dollar_dollar -> cont 171;
	TStringLiteral _ happy_dollar_dollar -> cont 172;
	TLeftParen _ -> cont 173;
	TRightParen _ -> cont 174;
	_ -> happyError' (tk:tks)
	}

happyError_ 175 tk tks = happyError' tks
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
