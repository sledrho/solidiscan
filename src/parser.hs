{-# OPTIONS_GHC -w #-}
module Parser(solidiscan) where
import Lexer
import AST
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t9 t10 t12 t13 t14 t15 t16 t17 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t54 t55 t56 t57 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 t82
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
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34
	| HappyAbsSyn35 t35
	| HappyAbsSyn36 t36
	| HappyAbsSyn37 t37
	| HappyAbsSyn38 (StateVarDec)
	| HappyAbsSyn39 (UsingForDec)
	| HappyAbsSyn40 t40
	| HappyAbsSyn41 t41
	| HappyAbsSyn42 t42
	| HappyAbsSyn43 t43
	| HappyAbsSyn44 t44
	| HappyAbsSyn45 t45
	| HappyAbsSyn46 t46
	| HappyAbsSyn47 t47
	| HappyAbsSyn48 t48
	| HappyAbsSyn49 t49
	| HappyAbsSyn50 t50
	| HappyAbsSyn51 t51
	| HappyAbsSyn52 t52
	| HappyAbsSyn53 (Expression)
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

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (89) = happyShift action_8
action_2 (90) = happyShift action_9
action_2 (97) = happyShift action_10
action_2 (98) = happyShift action_11
action_2 (99) = happyShift action_12
action_2 (148) = happyAccept
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

action_7 (144) = happyShift action_19
action_7 _ = happyFail

action_8 (144) = happyShift action_18
action_8 (7) = happyGoto action_17
action_8 _ = happyFail

action_9 (136) = happyShift action_14
action_9 (144) = happyShift action_15
action_9 (145) = happyShift action_16
action_9 (10) = happyGoto action_13
action_9 _ = happyFail

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 (108) = happyShift action_25
action_13 (9) = happyGoto action_26
action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_13

action_16 (108) = happyShift action_25
action_16 (9) = happyGoto action_24
action_16 _ = happyReduce_11

action_17 (84) = happyShift action_23
action_17 _ = happyFail

action_18 _ = happyReduce_7

action_19 (109) = happyShift action_22
action_19 (13) = happyGoto action_20
action_19 (71) = happyGoto action_21
action_19 _ = happyReduce_117

action_20 _ = happyReduce_116

action_21 (130) = happyShift action_34
action_21 _ = happyFail

action_22 (144) = happyShift action_33
action_22 (15) = happyGoto action_31
action_22 (56) = happyGoto action_32
action_22 _ = happyFail

action_23 (142) = happyShift action_30
action_23 _ = happyFail

action_24 (142) = happyShift action_29
action_24 _ = happyFail

action_25 (144) = happyShift action_28
action_25 _ = happyFail

action_26 (110) = happyShift action_27
action_26 _ = happyFail

action_27 (145) = happyShift action_58
action_27 _ = happyFail

action_28 _ = happyReduce_10

action_29 _ = happyReduce_8

action_30 _ = happyReduce_6

action_31 (143) = happyShift action_57
action_31 (14) = happyGoto action_54
action_31 (62) = happyGoto action_55
action_31 (80) = happyGoto action_56
action_31 _ = happyReduce_99

action_32 _ = happyReduce_20

action_33 _ = happyReduce_85

action_34 (96) = happyShift action_46
action_34 (100) = happyShift action_47
action_34 (101) = happyShift action_48
action_34 (102) = happyShift action_49
action_34 (103) = happyShift action_50
action_34 (104) = happyShift action_51
action_34 (117) = happyShift action_52
action_34 (119) = happyShift action_53
action_34 (144) = happyShift action_33
action_34 (18) = happyGoto action_35
action_34 (19) = happyGoto action_36
action_34 (20) = happyGoto action_37
action_34 (21) = happyGoto action_38
action_34 (38) = happyGoto action_39
action_34 (39) = happyGoto action_40
action_34 (41) = happyGoto action_41
action_34 (56) = happyGoto action_42
action_34 (57) = happyGoto action_43
action_34 (58) = happyGoto action_44
action_34 (76) = happyGoto action_45
action_34 _ = happyReduce_91

action_35 (96) = happyShift action_46
action_35 (100) = happyShift action_47
action_35 (101) = happyShift action_48
action_35 (102) = happyShift action_49
action_35 (103) = happyShift action_50
action_35 (104) = happyShift action_51
action_35 (117) = happyShift action_52
action_35 (119) = happyShift action_53
action_35 (144) = happyShift action_33
action_35 (18) = happyGoto action_35
action_35 (19) = happyGoto action_36
action_35 (20) = happyGoto action_37
action_35 (21) = happyGoto action_38
action_35 (38) = happyGoto action_39
action_35 (39) = happyGoto action_40
action_35 (41) = happyGoto action_41
action_35 (56) = happyGoto action_42
action_35 (57) = happyGoto action_43
action_35 (76) = happyGoto action_73
action_35 _ = happyReduce_126

action_36 _ = happyReduce_25

action_37 _ = happyReduce_26

action_38 _ = happyReduce_27

action_39 _ = happyReduce_23

action_40 _ = happyReduce_24

action_41 (92) = happyShift action_69
action_41 (93) = happyShift action_70
action_41 (94) = happyShift action_71
action_41 (95) = happyShift action_72
action_41 (42) = happyGoto action_67
action_41 (68) = happyGoto action_68
action_41 _ = happyReduce_111

action_42 _ = happyReduce_61

action_43 _ = happyReduce_60

action_44 (131) = happyShift action_66
action_44 _ = happyFail

action_45 _ = happyReduce_90

action_46 _ = happyReduce_89

action_47 (144) = happyShift action_65
action_47 _ = happyFail

action_48 _ = happyReduce_86

action_49 _ = happyReduce_87

action_50 _ = happyReduce_88

action_51 (144) = happyShift action_64
action_51 _ = happyFail

action_52 (144) = happyShift action_63
action_52 _ = happyFail

action_53 (144) = happyShift action_62
action_53 _ = happyFail

action_54 (143) = happyShift action_57
action_54 (14) = happyGoto action_54
action_54 (80) = happyGoto action_61
action_54 _ = happyReduce_134

action_55 _ = happyReduce_18

action_56 _ = happyReduce_98

action_57 (144) = happyShift action_33
action_57 (15) = happyGoto action_60
action_57 (56) = happyGoto action_32
action_57 _ = happyFail

action_58 (142) = happyShift action_59
action_58 _ = happyFail

action_59 _ = happyReduce_9

action_60 _ = happyReduce_19

action_61 _ = happyReduce_135

action_62 (146) = happyShift action_76
action_62 (29) = happyGoto action_81
action_62 (73) = happyGoto action_82
action_62 _ = happyReduce_121

action_63 (146) = happyShift action_80
action_63 (24) = happyGoto action_78
action_63 (69) = happyGoto action_79
action_63 _ = happyReduce_113

action_64 (105) = happyShift action_77
action_64 _ = happyFail

action_65 (146) = happyShift action_76
action_65 (29) = happyGoto action_75
action_65 _ = happyFail

action_66 _ = happyReduce_14

action_67 _ = happyReduce_110

action_68 (144) = happyShift action_74
action_68 _ = happyFail

action_69 _ = happyReduce_62

action_70 _ = happyReduce_64

action_71 _ = happyReduce_63

action_72 _ = happyReduce_65

action_73 _ = happyReduce_127

action_74 (135) = happyShift action_114
action_74 (44) = happyGoto action_112
action_74 (72) = happyGoto action_113
action_74 _ = happyReduce_119

action_75 (91) = happyShift action_103
action_75 (92) = happyShift action_104
action_75 (93) = happyShift action_105
action_75 (94) = happyShift action_106
action_75 (95) = happyShift action_107
action_75 (111) = happyShift action_108
action_75 (112) = happyShift action_109
action_75 (113) = happyShift action_110
action_75 (144) = happyShift action_111
action_75 (22) = happyGoto action_98
action_75 (33) = happyGoto action_99
action_75 (36) = happyGoto action_100
action_75 (37) = happyGoto action_101
action_75 (66) = happyGoto action_102
action_75 _ = happyFail

action_76 (96) = happyShift action_46
action_76 (101) = happyShift action_48
action_76 (102) = happyShift action_49
action_76 (103) = happyShift action_50
action_76 (144) = happyShift action_33
action_76 (30) = happyGoto action_94
action_76 (32) = happyGoto action_95
action_76 (41) = happyGoto action_96
action_76 (56) = happyGoto action_42
action_76 (57) = happyGoto action_43
action_76 (74) = happyGoto action_97
action_76 _ = happyReduce_123

action_77 (96) = happyShift action_46
action_77 (101) = happyShift action_48
action_77 (102) = happyShift action_49
action_77 (103) = happyShift action_50
action_77 (144) = happyShift action_33
action_77 (41) = happyGoto action_93
action_77 (56) = happyGoto action_42
action_77 (57) = happyGoto action_43
action_77 _ = happyFail

action_78 _ = happyReduce_112

action_79 (118) = happyShift action_92
action_79 (28) = happyGoto action_90
action_79 (67) = happyGoto action_91
action_79 _ = happyReduce_109

action_80 (96) = happyShift action_46
action_80 (101) = happyShift action_48
action_80 (102) = happyShift action_49
action_80 (103) = happyShift action_50
action_80 (144) = happyShift action_33
action_80 (25) = happyGoto action_86
action_80 (27) = happyGoto action_87
action_80 (41) = happyGoto action_88
action_80 (56) = happyGoto action_42
action_80 (57) = happyGoto action_43
action_80 (70) = happyGoto action_89
action_80 _ = happyReduce_115

action_81 _ = happyReduce_120

action_82 (130) = happyShift action_84
action_82 (142) = happyShift action_85
action_82 (35) = happyGoto action_83
action_82 _ = happyFail

action_83 _ = happyReduce_30

action_84 (85) = happyShift action_119
action_84 (103) = happyShift action_151
action_84 (106) = happyShift action_120
action_84 (107) = happyShift action_121
action_84 (144) = happyShift action_122
action_84 (145) = happyShift action_123
action_84 (47) = happyGoto action_144
action_84 (48) = happyGoto action_145
action_84 (49) = happyGoto action_146
action_84 (50) = happyGoto action_147
action_84 (52) = happyGoto action_148
action_84 (53) = happyGoto action_116
action_84 (54) = happyGoto action_117
action_84 (55) = happyGoto action_118
action_84 (64) = happyGoto action_149
action_84 (82) = happyGoto action_150
action_84 _ = happyReduce_103

action_85 _ = happyReduce_46

action_86 _ = happyReduce_114

action_87 (143) = happyShift action_143
action_87 (26) = happyGoto action_140
action_87 (59) = happyGoto action_141
action_87 (77) = happyGoto action_142
action_87 _ = happyReduce_93

action_88 (144) = happyShift action_139
action_88 _ = happyFail

action_89 (147) = happyShift action_138
action_89 _ = happyFail

action_90 _ = happyReduce_108

action_91 (142) = happyShift action_137
action_91 _ = happyFail

action_92 _ = happyReduce_37

action_93 (142) = happyShift action_136
action_93 _ = happyFail

action_94 _ = happyReduce_122

action_95 (143) = happyShift action_135
action_95 (31) = happyGoto action_132
action_95 (63) = happyGoto action_133
action_95 (81) = happyGoto action_134
action_95 _ = happyReduce_101

action_96 (144) = happyShift action_131
action_96 _ = happyFail

action_97 (147) = happyShift action_130
action_97 _ = happyFail

action_98 _ = happyReduce_42

action_99 (91) = happyShift action_103
action_99 (92) = happyShift action_104
action_99 (93) = happyShift action_105
action_99 (94) = happyShift action_106
action_99 (95) = happyShift action_107
action_99 (111) = happyShift action_108
action_99 (112) = happyShift action_109
action_99 (113) = happyShift action_110
action_99 (144) = happyShift action_111
action_99 (22) = happyGoto action_98
action_99 (33) = happyGoto action_99
action_99 (36) = happyGoto action_100
action_99 (37) = happyGoto action_101
action_99 (66) = happyGoto action_129
action_99 _ = happyReduce_106

action_100 _ = happyReduce_43

action_101 _ = happyReduce_44

action_102 (114) = happyShift action_128
action_102 (34) = happyGoto action_126
action_102 (75) = happyGoto action_127
action_102 _ = happyReduce_125

action_103 _ = happyReduce_52

action_104 _ = happyReduce_55

action_105 _ = happyReduce_53

action_106 _ = happyReduce_54

action_107 _ = happyReduce_49

action_108 _ = happyReduce_50

action_109 _ = happyReduce_48

action_110 _ = happyReduce_51

action_111 (146) = happyShift action_125
action_111 _ = happyFail

action_112 _ = happyReduce_118

action_113 (142) = happyShift action_124
action_113 _ = happyFail

action_114 (85) = happyShift action_119
action_114 (106) = happyShift action_120
action_114 (107) = happyShift action_121
action_114 (144) = happyShift action_122
action_114 (145) = happyShift action_123
action_114 (47) = happyGoto action_115
action_114 (53) = happyGoto action_116
action_114 (54) = happyGoto action_117
action_114 (55) = happyGoto action_118
action_114 _ = happyFail

action_115 _ = happyReduce_68

action_116 _ = happyReduce_71

action_117 _ = happyReduce_78

action_118 _ = happyReduce_79

action_119 (88) = happyShift action_168
action_119 _ = happyFail

action_120 _ = happyReduce_82

action_121 _ = happyReduce_83

action_122 _ = happyReduce_81

action_123 _ = happyReduce_80

action_124 _ = happyReduce_56

action_125 (85) = happyShift action_119
action_125 (106) = happyShift action_120
action_125 (107) = happyShift action_121
action_125 (144) = happyShift action_122
action_125 (145) = happyShift action_123
action_125 (23) = happyGoto action_163
action_125 (45) = happyGoto action_164
action_125 (47) = happyGoto action_165
action_125 (53) = happyGoto action_116
action_125 (54) = happyGoto action_117
action_125 (55) = happyGoto action_118
action_125 (61) = happyGoto action_166
action_125 (79) = happyGoto action_167
action_125 _ = happyReduce_97

action_126 _ = happyReduce_124

action_127 (130) = happyShift action_84
action_127 (142) = happyShift action_85
action_127 (35) = happyGoto action_162
action_127 _ = happyFail

action_128 (146) = happyShift action_76
action_128 (29) = happyGoto action_161
action_128 _ = happyFail

action_129 _ = happyReduce_107

action_130 _ = happyReduce_38

action_131 _ = happyReduce_41

action_132 (143) = happyShift action_135
action_132 (31) = happyGoto action_132
action_132 (81) = happyGoto action_160
action_132 _ = happyReduce_136

action_133 _ = happyReduce_39

action_134 _ = happyReduce_100

action_135 (96) = happyShift action_46
action_135 (101) = happyShift action_48
action_135 (102) = happyShift action_49
action_135 (103) = happyShift action_50
action_135 (144) = happyShift action_33
action_135 (32) = happyGoto action_159
action_135 (41) = happyGoto action_96
action_135 (56) = happyGoto action_42
action_135 (57) = happyGoto action_43
action_135 _ = happyFail

action_136 _ = happyReduce_57

action_137 _ = happyReduce_29

action_138 _ = happyReduce_33

action_139 _ = happyReduce_36

action_140 (143) = happyShift action_143
action_140 (26) = happyGoto action_140
action_140 (77) = happyGoto action_158
action_140 _ = happyReduce_128

action_141 _ = happyReduce_34

action_142 _ = happyReduce_92

action_143 (96) = happyShift action_46
action_143 (101) = happyShift action_48
action_143 (102) = happyShift action_49
action_143 (103) = happyShift action_50
action_143 (144) = happyShift action_33
action_143 (27) = happyGoto action_157
action_143 (41) = happyGoto action_88
action_143 (56) = happyGoto action_42
action_143 (57) = happyGoto action_43
action_143 _ = happyFail

action_144 _ = happyReduce_77

action_145 (85) = happyShift action_119
action_145 (103) = happyShift action_151
action_145 (106) = happyShift action_120
action_145 (107) = happyShift action_121
action_145 (144) = happyShift action_122
action_145 (145) = happyShift action_123
action_145 (47) = happyGoto action_144
action_145 (48) = happyGoto action_145
action_145 (49) = happyGoto action_146
action_145 (50) = happyGoto action_147
action_145 (52) = happyGoto action_148
action_145 (53) = happyGoto action_116
action_145 (54) = happyGoto action_117
action_145 (55) = happyGoto action_118
action_145 (82) = happyGoto action_156
action_145 _ = happyReduce_138

action_146 (142) = happyShift action_155
action_146 _ = happyFail

action_147 _ = happyReduce_73

action_148 _ = happyReduce_74

action_149 (131) = happyShift action_154
action_149 _ = happyFail

action_150 _ = happyReduce_102

action_151 (96) = happyShift action_46
action_151 (101) = happyShift action_48
action_151 (102) = happyShift action_49
action_151 (103) = happyShift action_50
action_151 (144) = happyShift action_33
action_151 (41) = happyGoto action_152
action_151 (51) = happyGoto action_153
action_151 (56) = happyGoto action_42
action_151 (57) = happyGoto action_43
action_151 _ = happyFail

action_152 (144) = happyShift action_175
action_152 _ = happyFail

action_153 _ = happyReduce_75

action_154 _ = happyReduce_47

action_155 _ = happyReduce_72

action_156 _ = happyReduce_139

action_157 _ = happyReduce_35

action_158 _ = happyReduce_129

action_159 _ = happyReduce_40

action_160 _ = happyReduce_137

action_161 _ = happyReduce_45

action_162 _ = happyReduce_28

action_163 (85) = happyShift action_119
action_163 (106) = happyShift action_120
action_163 (107) = happyShift action_121
action_163 (144) = happyShift action_122
action_163 (145) = happyShift action_123
action_163 (23) = happyGoto action_163
action_163 (45) = happyGoto action_164
action_163 (47) = happyGoto action_165
action_163 (53) = happyGoto action_116
action_163 (54) = happyGoto action_117
action_163 (55) = happyGoto action_118
action_163 (79) = happyGoto action_174
action_163 _ = happyReduce_132

action_164 _ = happyReduce_32

action_165 (143) = happyShift action_173
action_165 (46) = happyGoto action_170
action_165 (60) = happyGoto action_171
action_165 (78) = happyGoto action_172
action_165 _ = happyReduce_95

action_166 (147) = happyShift action_169
action_166 _ = happyFail

action_167 _ = happyReduce_96

action_168 _ = happyReduce_84

action_169 _ = happyReduce_31

action_170 (143) = happyShift action_173
action_170 (46) = happyGoto action_170
action_170 (78) = happyGoto action_177
action_170 _ = happyReduce_130

action_171 _ = happyReduce_69

action_172 _ = happyReduce_94

action_173 (85) = happyShift action_119
action_173 (106) = happyShift action_120
action_173 (107) = happyShift action_121
action_173 (144) = happyShift action_122
action_173 (145) = happyShift action_123
action_173 (47) = happyGoto action_176
action_173 (53) = happyGoto action_116
action_173 (54) = happyGoto action_117
action_173 (55) = happyGoto action_118
action_173 _ = happyFail

action_174 _ = happyReduce_133

action_175 _ = happyReduce_76

action_176 _ = happyReduce_70

action_177 _ = happyReduce_131

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
	(HappyAbsSyn58  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn71  happy_var_3) `HappyStk`
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
happyReduction_18 (HappyAbsSyn62  happy_var_3)
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
happyReduction_20 (HappyAbsSyn56  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 16 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn65  happy_var_3) `HappyStk`
	(HappyAbsSyn47  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (happy_var_2 [happy_var_3]
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  17 happyReduction_22
happyReduction_22 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  18 happyReduction_23
happyReduction_23 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn18
		 (ContractContents happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  18 happyReduction_24
happyReduction_24 (HappyAbsSyn39  happy_var_1)
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

happyReduce_28 = happyReduce 6 19 happyReduction_28
happyReduction_28 ((HappyAbsSyn35  happy_var_6) `HappyStk`
	(HappyAbsSyn75  happy_var_5) `HappyStk`
	(HappyAbsSyn66  happy_var_4) `HappyStk`
	(HappyAbsSyn29  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (FunctionDef happy_var_2 happy_var_3 happy_var_4 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 5 20 happyReduction_29
happyReduction_29 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn69  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (EventDefinition happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 21 happyReduction_30
happyReduction_30 ((HappyAbsSyn35  happy_var_4) `HappyStk`
	(HappyAbsSyn73  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (ModifierDefinition happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 22 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn61  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  23 happyReduction_32
happyReduction_32 (HappyAbsSyn45  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  24 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn70  happy_var_2)
	_
	 =  HappyAbsSyn24
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  25 happyReduction_34
happyReduction_34 (HappyAbsSyn59  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1:happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  26 happyReduction_35
happyReduction_35 (HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  27 happyReduction_36
happyReduction_36 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn27
		 (EParameters happy_var_1 happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  28 happyReduction_37
happyReduction_37 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  29 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn74  happy_var_2)
	_
	 =  HappyAbsSyn29
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  30 happyReduction_39
happyReduction_39 (HappyAbsSyn63  happy_var_2)
	(HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1:happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  31 happyReduction_40
happyReduction_40 (HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  32 happyReduction_41
happyReduction_41 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn32
		 (Parameter happy_var_1 happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  33 happyReduction_42
happyReduction_42 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn33
		 (ModifierInvs happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  33 happyReduction_43
happyReduction_43 (HappyAbsSyn36  happy_var_1)
	 =  HappyAbsSyn33
		 (StateMutability happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  33 happyReduction_44
happyReduction_44 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn33
		 (FuncVars happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  34 happyReduction_45
happyReduction_45 (HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn34
		 (happy_var_2
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  35 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn35
		 ([]
	)

happyReduce_47 = happySpecReduce_3  35 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn64  happy_var_2)
	_
	 =  HappyAbsSyn35
		 (happy_var_2
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  36 happyReduction_48
happyReduction_48 (HappyTerminal (TPure _ happy_var_1))
	 =  HappyAbsSyn36
		 (PureKeyword happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  36 happyReduction_49
happyReduction_49 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn36
		 (ConstantKeyword happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  36 happyReduction_50
happyReduction_50 (HappyTerminal (TView _ happy_var_1))
	 =  HappyAbsSyn36
		 (ViewKeyword happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  36 happyReduction_51
happyReduction_51 (HappyTerminal (TPayable _ happy_var_1))
	 =  HappyAbsSyn36
		 (PayableKeyword happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  37 happyReduction_52
happyReduction_52 (HappyTerminal (TExternal _ happy_var_1))
	 =  HappyAbsSyn37
		 (ExternalKeyword happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  37 happyReduction_53
happyReduction_53 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn37
		 (InternalKeyword happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  37 happyReduction_54
happyReduction_54 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn37
		 (PrivateKeyword happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  37 happyReduction_55
happyReduction_55 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn37
		 (PublicKeyword happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happyReduce 5 38 happyReduction_56
happyReduction_56 (_ `HappyStk`
	(HappyAbsSyn72  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn68  happy_var_2) `HappyStk`
	(HappyAbsSyn41  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn38
		 (StateVariableDeclaration happy_var_1 happy_var_2 (Identifier happy_var_3) happy_var_4
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 5 39 happyReduction_57
happyReduction_57 (_ `HappyStk`
	(HappyAbsSyn41  happy_var_4) `HappyStk`
	(HappyTerminal (TFor _ happy_var_3)) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	(HappyTerminal (TUsing _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn39
		 (UsingForDeclaration happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_58 = happySpecReduce_1  40 happyReduction_58
happyReduction_58 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn40
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  40 happyReduction_59
happyReduction_59 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn40
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  41 happyReduction_60
happyReduction_60 (HappyAbsSyn57  happy_var_1)
	 =  HappyAbsSyn41
		 (ElementaryTypeName happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  41 happyReduction_61
happyReduction_61 (HappyAbsSyn56  happy_var_1)
	 =  HappyAbsSyn41
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  42 happyReduction_62
happyReduction_62 (HappyTerminal (TPublic _ happy_var_1))
	 =  HappyAbsSyn42
		 (PublicKeyword happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  42 happyReduction_63
happyReduction_63 (HappyTerminal (TPriv _ happy_var_1))
	 =  HappyAbsSyn42
		 (PrivateKeyword happy_var_1
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  42 happyReduction_64
happyReduction_64 (HappyTerminal (TIntern _ happy_var_1))
	 =  HappyAbsSyn42
		 (InternalKeyword happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  42 happyReduction_65
happyReduction_65 (HappyTerminal (TConst _ happy_var_1))
	 =  HappyAbsSyn42
		 (ConstantKeyword happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  43 happyReduction_66
happyReduction_66 (HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn43
		 (happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_0  43 happyReduction_67
happyReduction_67  =  HappyAbsSyn43
		 ([]
	)

happyReduce_68 = happySpecReduce_2  44 happyReduction_68
happyReduction_68 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn44
		 (happy_var_2
	)
happyReduction_68 _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_2  45 happyReduction_69
happyReduction_69 (HappyAbsSyn60  happy_var_2)
	(HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn45
		 (happy_var_1:happy_var_2
	)
happyReduction_69 _ _  = notHappyAtAll 

happyReduce_70 = happySpecReduce_2  46 happyReduction_70
happyReduction_70 (HappyAbsSyn47  happy_var_2)
	_
	 =  HappyAbsSyn46
		 (happy_var_2
	)
happyReduction_70 _ _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_1  47 happyReduction_71
happyReduction_71 (HappyAbsSyn53  happy_var_1)
	 =  HappyAbsSyn47
		 (happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_2  48 happyReduction_72
happyReduction_72 _
	(HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn48
		 (happy_var_1
	)
happyReduction_72 _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_1  49 happyReduction_73
happyReduction_73 (HappyAbsSyn50  happy_var_1)
	 =  HappyAbsSyn49
		 (happy_var_1
	)
happyReduction_73 _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_1  49 happyReduction_74
happyReduction_74 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn49
		 (happy_var_1
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_2  50 happyReduction_75
happyReduction_75 (HappyAbsSyn51  happy_var_2)
	_
	 =  HappyAbsSyn50
		 (happy_var_2
	)
happyReduction_75 _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_2  51 happyReduction_76
happyReduction_76 (HappyTerminal (TIdent _ happy_var_2))
	(HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn51
		 (VariableDeclaration happy_var_1 happy_var_2
	)
happyReduction_76 _ _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_1  52 happyReduction_77
happyReduction_77 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn52
		 (happy_var_1
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_1  53 happyReduction_78
happyReduction_78 (HappyAbsSyn54  happy_var_1)
	 =  HappyAbsSyn53
		 (BoolExpression happy_var_1
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_1  53 happyReduction_79
happyReduction_79 (HappyAbsSyn55  happy_var_1)
	 =  HappyAbsSyn53
		 (NumExpression happy_var_1
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_1  53 happyReduction_80
happyReduction_80 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn53
		 (StringExpression happy_var_1
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_1  53 happyReduction_81
happyReduction_81 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn53
		 (IdentExpression happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happySpecReduce_1  54 happyReduction_82
happyReduction_82 (HappyTerminal (TTrue _ happy_var_1))
	 =  HappyAbsSyn54
		 (BooleanLiteral happy_var_1
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_1  54 happyReduction_83
happyReduction_83 (HappyTerminal (TFalse _ happy_var_1))
	 =  HappyAbsSyn54
		 (BooleanLiteral happy_var_1
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_2  55 happyReduction_84
happyReduction_84 _
	(HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn55
		 (happy_var_1
	)
happyReduction_84 _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_1  56 happyReduction_85
happyReduction_85 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn56
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_85 _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_1  57 happyReduction_86
happyReduction_86 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn57
		 (AddrType happy_var_1
	)
happyReduction_86 _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  57 happyReduction_87
happyReduction_87 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn57
		 (BoolType happy_var_1
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_1  57 happyReduction_88
happyReduction_88 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn57
		 (VarType happy_var_1
	)
happyReduction_88 _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_1  57 happyReduction_89
happyReduction_89 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn57
		 (StringType happy_var_1
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_1  58 happyReduction_90
happyReduction_90 (HappyAbsSyn76  happy_var_1)
	 =  HappyAbsSyn58
		 (happy_var_1
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_0  58 happyReduction_91
happyReduction_91  =  HappyAbsSyn58
		 ([]
	)

happyReduce_92 = happySpecReduce_1  59 happyReduction_92
happyReduction_92 (HappyAbsSyn77  happy_var_1)
	 =  HappyAbsSyn59
		 (happy_var_1
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_0  59 happyReduction_93
happyReduction_93  =  HappyAbsSyn59
		 ([]
	)

happyReduce_94 = happySpecReduce_1  60 happyReduction_94
happyReduction_94 (HappyAbsSyn78  happy_var_1)
	 =  HappyAbsSyn60
		 (happy_var_1
	)
happyReduction_94 _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_0  60 happyReduction_95
happyReduction_95  =  HappyAbsSyn60
		 ([]
	)

happyReduce_96 = happySpecReduce_1  61 happyReduction_96
happyReduction_96 (HappyAbsSyn79  happy_var_1)
	 =  HappyAbsSyn61
		 (happy_var_1
	)
happyReduction_96 _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_0  61 happyReduction_97
happyReduction_97  =  HappyAbsSyn61
		 ([]
	)

happyReduce_98 = happySpecReduce_1  62 happyReduction_98
happyReduction_98 (HappyAbsSyn80  happy_var_1)
	 =  HappyAbsSyn62
		 (happy_var_1
	)
happyReduction_98 _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_0  62 happyReduction_99
happyReduction_99  =  HappyAbsSyn62
		 ([]
	)

happyReduce_100 = happySpecReduce_1  63 happyReduction_100
happyReduction_100 (HappyAbsSyn81  happy_var_1)
	 =  HappyAbsSyn63
		 (happy_var_1
	)
happyReduction_100 _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_0  63 happyReduction_101
happyReduction_101  =  HappyAbsSyn63
		 ([]
	)

happyReduce_102 = happySpecReduce_1  64 happyReduction_102
happyReduction_102 (HappyAbsSyn82  happy_var_1)
	 =  HappyAbsSyn64
		 (happy_var_1
	)
happyReduction_102 _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_0  64 happyReduction_103
happyReduction_103  =  HappyAbsSyn64
		 ([]
	)

happyReduce_104 = happySpecReduce_1  65 happyReduction_104
happyReduction_104 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn65
		 ([happy_var_1]
	)
happyReduction_104 _  = notHappyAtAll 

happyReduce_105 = happySpecReduce_2  65 happyReduction_105
happyReduction_105 (HappyAbsSyn65  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn65
		 (happy_var_1 : happy_var_2
	)
happyReduction_105 _ _  = notHappyAtAll 

happyReduce_106 = happySpecReduce_1  66 happyReduction_106
happyReduction_106 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn66
		 ([happy_var_1]
	)
happyReduction_106 _  = notHappyAtAll 

happyReduce_107 = happySpecReduce_2  66 happyReduction_107
happyReduction_107 (HappyAbsSyn66  happy_var_2)
	(HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn66
		 (happy_var_1 : happy_var_2
	)
happyReduction_107 _ _  = notHappyAtAll 

happyReduce_108 = happySpecReduce_1  67 happyReduction_108
happyReduction_108 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn67
		 ([happy_var_1]
	)
happyReduction_108 _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_0  67 happyReduction_109
happyReduction_109  =  HappyAbsSyn67
		 ([]
	)

happyReduce_110 = happySpecReduce_1  68 happyReduction_110
happyReduction_110 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn68
		 ([happy_var_1]
	)
happyReduction_110 _  = notHappyAtAll 

happyReduce_111 = happySpecReduce_0  68 happyReduction_111
happyReduction_111  =  HappyAbsSyn68
		 ([]
	)

happyReduce_112 = happySpecReduce_1  69 happyReduction_112
happyReduction_112 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn69
		 ([happy_var_1]
	)
happyReduction_112 _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_0  69 happyReduction_113
happyReduction_113  =  HappyAbsSyn69
		 ([]
	)

happyReduce_114 = happySpecReduce_1  70 happyReduction_114
happyReduction_114 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn70
		 ([happy_var_1]
	)
happyReduction_114 _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_0  70 happyReduction_115
happyReduction_115  =  HappyAbsSyn70
		 ([]
	)

happyReduce_116 = happySpecReduce_1  71 happyReduction_116
happyReduction_116 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn71
		 ([happy_var_1]
	)
happyReduction_116 _  = notHappyAtAll 

happyReduce_117 = happySpecReduce_0  71 happyReduction_117
happyReduction_117  =  HappyAbsSyn71
		 ([]
	)

happyReduce_118 = happySpecReduce_1  72 happyReduction_118
happyReduction_118 (HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn72
		 ([happy_var_1]
	)
happyReduction_118 _  = notHappyAtAll 

happyReduce_119 = happySpecReduce_0  72 happyReduction_119
happyReduction_119  =  HappyAbsSyn72
		 ([]
	)

happyReduce_120 = happySpecReduce_1  73 happyReduction_120
happyReduction_120 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn73
		 ([happy_var_1]
	)
happyReduction_120 _  = notHappyAtAll 

happyReduce_121 = happySpecReduce_0  73 happyReduction_121
happyReduction_121  =  HappyAbsSyn73
		 ([]
	)

happyReduce_122 = happySpecReduce_1  74 happyReduction_122
happyReduction_122 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn74
		 ([happy_var_1]
	)
happyReduction_122 _  = notHappyAtAll 

happyReduce_123 = happySpecReduce_0  74 happyReduction_123
happyReduction_123  =  HappyAbsSyn74
		 ([]
	)

happyReduce_124 = happySpecReduce_1  75 happyReduction_124
happyReduction_124 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn75
		 ([happy_var_1]
	)
happyReduction_124 _  = notHappyAtAll 

happyReduce_125 = happySpecReduce_0  75 happyReduction_125
happyReduction_125  =  HappyAbsSyn75
		 ([]
	)

happyReduce_126 = happySpecReduce_1  76 happyReduction_126
happyReduction_126 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn76
		 ([happy_var_1]
	)
happyReduction_126 _  = notHappyAtAll 

happyReduce_127 = happySpecReduce_2  76 happyReduction_127
happyReduction_127 (HappyAbsSyn76  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn76
		 (happy_var_1 : happy_var_2
	)
happyReduction_127 _ _  = notHappyAtAll 

happyReduce_128 = happySpecReduce_1  77 happyReduction_128
happyReduction_128 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn77
		 ([happy_var_1]
	)
happyReduction_128 _  = notHappyAtAll 

happyReduce_129 = happySpecReduce_2  77 happyReduction_129
happyReduction_129 (HappyAbsSyn77  happy_var_2)
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn77
		 (happy_var_1 : happy_var_2
	)
happyReduction_129 _ _  = notHappyAtAll 

happyReduce_130 = happySpecReduce_1  78 happyReduction_130
happyReduction_130 (HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn78
		 ([happy_var_1]
	)
happyReduction_130 _  = notHappyAtAll 

happyReduce_131 = happySpecReduce_2  78 happyReduction_131
happyReduction_131 (HappyAbsSyn78  happy_var_2)
	(HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn78
		 (happy_var_1 : happy_var_2
	)
happyReduction_131 _ _  = notHappyAtAll 

happyReduce_132 = happySpecReduce_1  79 happyReduction_132
happyReduction_132 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn79
		 ([happy_var_1]
	)
happyReduction_132 _  = notHappyAtAll 

happyReduce_133 = happySpecReduce_2  79 happyReduction_133
happyReduction_133 (HappyAbsSyn79  happy_var_2)
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn79
		 (happy_var_1 : happy_var_2
	)
happyReduction_133 _ _  = notHappyAtAll 

happyReduce_134 = happySpecReduce_1  80 happyReduction_134
happyReduction_134 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn80
		 ([happy_var_1]
	)
happyReduction_134 _  = notHappyAtAll 

happyReduce_135 = happySpecReduce_2  80 happyReduction_135
happyReduction_135 (HappyAbsSyn80  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn80
		 (happy_var_1 : happy_var_2
	)
happyReduction_135 _ _  = notHappyAtAll 

happyReduce_136 = happySpecReduce_1  81 happyReduction_136
happyReduction_136 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn81
		 ([happy_var_1]
	)
happyReduction_136 _  = notHappyAtAll 

happyReduce_137 = happySpecReduce_2  81 happyReduction_137
happyReduction_137 (HappyAbsSyn81  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn81
		 (happy_var_1 : happy_var_2
	)
happyReduction_137 _ _  = notHappyAtAll 

happyReduce_138 = happySpecReduce_1  82 happyReduction_138
happyReduction_138 (HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn82
		 ([happy_var_1]
	)
happyReduction_138 _  = notHappyAtAll 

happyReduce_139 = happySpecReduce_2  82 happyReduction_139
happyReduction_139 (HappyAbsSyn82  happy_var_2)
	(HappyAbsSyn48  happy_var_1)
	 =  HappyAbsSyn82
		 (happy_var_1 : happy_var_2
	)
happyReduction_139 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 148 148 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 83;
	TVers _ -> cont 84;
	TDec _ happy_dollar_dollar -> cont 85;
	TExp _ happy_dollar_dollar -> cont 86;
	TInt _ happy_dollar_dollar -> cont 87;
	TNumUnit _ -> cont 88;
	TPragma _ -> cont 89;
	TImport _ -> cont 90;
	TExternal _ happy_dollar_dollar -> cont 91;
	TPublic _ happy_dollar_dollar -> cont 92;
	TIntern _ happy_dollar_dollar -> cont 93;
	TPriv _ happy_dollar_dollar -> cont 94;
	TConst _ happy_dollar_dollar -> cont 95;
	TStringAs _ happy_dollar_dollar -> cont 96;
	TContract _ -> cont 97;
	TLibrary _ -> cont 98;
	TInterface _ -> cont 99;
	TFuncDef _ -> cont 100;
	TAddr _ happy_dollar_dollar -> cont 101;
	TBooleanLit _ happy_dollar_dollar -> cont 102;
	TVar _ happy_dollar_dollar -> cont 103;
	TUsing _ happy_dollar_dollar -> cont 104;
	TFor _ happy_dollar_dollar -> cont 105;
	TTrue _ happy_dollar_dollar -> cont 106;
	TFalse _ happy_dollar_dollar -> cont 107;
	TAs _ -> cont 108;
	TIs _ -> cont 109;
	TFrom _ -> cont 110;
	TView _ happy_dollar_dollar -> cont 111;
	TPure _ happy_dollar_dollar -> cont 112;
	TPayable _ happy_dollar_dollar -> cont 113;
	TReturns _ -> cont 114;
	TIf _ -> cont 115;
	TElse _ -> cont 116;
	TEvent _ -> cont 117;
	TAnon _ -> cont 118;
	TModi _ -> cont 119;
	THat _ -> cont 120;
	TNegate _ -> cont 121;
	TAnd _ -> cont 122;
	TOr _ -> cont 123;
	TInEqual _ -> cont 124;
	TLThan _ -> cont 125;
	TGThan _ -> cont 126;
	TLTEq _ -> cont 127;
	TGTEq _ -> cont 128;
	TEquality _ -> cont 129;
	TLCurl _ -> cont 130;
	TRCurl _ -> cont 131;
	TLBrack _ -> cont 132;
	TRBrack _ -> cont 133;
	TPeriod _ -> cont 134;
	TEquals _ -> cont 135;
	TMult _ -> cont 136;
	TDiv _ -> cont 137;
	TExpSym _ -> cont 138;
	TModul _ -> cont 139;
	TOp _ happy_dollar_dollar -> cont 140;
	TSub _ -> cont 141;
	TSemiCol _ -> cont 142;
	TComma _ -> cont 143;
	TIdent _ happy_dollar_dollar -> cont 144;
	TStringLiteral _ happy_dollar_dollar -> cont 145;
	TLeftParen _ -> cont 146;
	TRightParen _ -> cont 147;
	_ -> happyError' (tk:tks)
	}

happyError_ 148 tk tks = happyError' tks
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
