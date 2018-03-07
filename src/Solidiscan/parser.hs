{-# OPTIONS_GHC -w #-}
module Solidiscan.Parser where
import Solidiscan.Lexer
import Solidiscan.AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t9 t10 t12 t13 t14 t15 t16 t17 t22 t23 t26 t27 t28 t29 t30 t32 t33 t34 t35 t38 t39 t45 t46 t47 t48 t49 t50 t51 t53 t54 t55 t56 t57 t58 t59 t60 t61 t62 t63 t65 t67 t70 t71 t72 t73 t74 t75 t76 t77 t78 t79 t80 t81 t82 t83 t84 t85 t86 t87 t88 t89 t90 t91 t92 t93 t94 t95 t96 t97 t98 t99 t100 t101 t102 t103 t104 t105 t106 t107 t108 t109
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
	| HappyAbsSyn58 t58
	| HappyAbsSyn59 t59
	| HappyAbsSyn60 t60
	| HappyAbsSyn61 t61
	| HappyAbsSyn62 t62
	| HappyAbsSyn63 t63
	| HappyAbsSyn65 t65
	| HappyAbsSyn67 t67
	| HappyAbsSyn69 (BooleanLiteral)
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
	| HappyAbsSyn100 t100
	| HappyAbsSyn101 t101
	| HappyAbsSyn102 t102
	| HappyAbsSyn103 t103
	| HappyAbsSyn104 t104
	| HappyAbsSyn105 t105
	| HappyAbsSyn106 t106
	| HappyAbsSyn107 t107
	| HappyAbsSyn108 t108
	| HappyAbsSyn109 t109

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,930) ([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33152,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,32832,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,124,296,0,512,0,0,0,0,0,0,0,61696,40961,4,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,768,512,0,3584,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65392,64783,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,900,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,3072,2048,0,14336,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,62,224,0,0,2,0,0,0,0,0,0,0,225,0,0,2048,0,0,0,0,0,0,0,33792,3,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,57600,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,16,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,28672,4095,24829,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,3072,2048,0,14336,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,512,49152,32768,0,32768,3,0,0,0,0,0,0,8,768,512,0,3584,0,0,0,0,0,0,8192,0,12,8,0,56,0,0,0,0,0,0,128,12288,8192,0,57344,0,0,0,0,0,0,0,2,192,128,0,896,0,0,0,0,0,0,2048,0,3,2,0,14,0,0,0,0,0,0,32,3072,2048,0,14336,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,512,49152,32768,0,32768,3,0,0,0,0,0,0,8,768,512,0,3584,0,0,0,0,0,0,8192,0,12,8,0,56,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,2,192,128,0,896,0,0,0,0,0,0,2048,0,3,2,0,14,0,0,0,0,0,0,32,3072,2048,0,14336,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,512,49152,32768,0,32768,3,0,0,0,0,0,0,8,768,512,0,3584,0,0,0,0,0,0,8192,0,12,8,0,56,0,0,0,0,0,0,128,12288,8192,16384,57344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65500,16195,1,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,56320,17407,2111,0,0,0,0,0,0,0,0,0,48,15616,0,0,0,0,0,0,0,0,0,49152,0,244,0,0,0,0,0,0,0,0,0,768,4096,1,0,0,0,0,0,0,0,0,0,12,64,0,0,0,0,0,0,0,0,0,12288,0,17,0,0,0,0,0,0,0,0,0,192,17408,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,39936,16890,63,0,0,0,0,0,0,0,0,0,35440,64769,0,0,0,0,0,0,0,0,0,49152,1577,1012,0,0,0,0,0,0,0,0,0,768,53248,15,0,0,0,0,0,0,0,0,0,12,16192,0,0,0,0,0,0,0,0,0,28672,394,253,0,0,0,0,0,0,0,0,0,10688,62470,3,0,0,0,0,0,0,0,0,0,32423,4048,0,0,0,0,0,0,0,0,0,39936,16480,63,0,0,0,0,0,0,0,0,0,64368,64783,0,0,0,0,0,0,0,0,0,49152,1536,1012,0,0,0,0,0,0,0,0,0,42752,53503,15,0,0,0,0,0,0,0,0,0,24716,16192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,8192,515,2,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3968,14336,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,2,192,128,0,896,0,0,0,0,0,0,0,0,0,65500,16195,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,64,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,14,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,14,0,0,128,0,0,0,0,0,0,0,0,0,65500,16195,8,0,0,0,0,0,0,32,3200,2056,0,14336,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14400,0,0,0,2,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,192,128,0,896,0,0,0,0,0,0,0,0,0,65500,16195,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,48,32,0,224,0,0,0,0,0,0,0,0,12288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,192,128,0,896,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,49152,16381,33780,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28672,4095,8445,0,0,0,0,0,0,32768,0,8242,32,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,32968,128,0,896,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_solidiscan","SourceUnit","SourceUnitSol","PragmaDirective","PragmaName","ImportDirective","ImportAs","ImportAster","ContractDefinition","ConLibInt","InheritanceSpecList","OMInheritanceSpec","InheritanceSpecifier","InhExpList","CSExpList","ContractPart","FunctionDefinition","EventDefinition","ModifierDefinition","ModifierInvocation","ModExpList","EnumDefinition","EnumValue","EnumValList","MultiEnumValue","EventParamList","EventParams","EParamList","EParameters","AnonList","ParameterList","Parameters","ParamList","Parameter","FuncMods","ReturnParam","TermBlock","StateMutability","StorageLocation","FuncVar","StateVarDec","UsingForDec","MTypeName","TypeName","AssVar","MaybeExp","MExpression","ExpressionList","ExprList","Expression","NewExpression","IndexAccess","MemberAccess","FunctionCall","FunctionCallArgs","NameValueList","NameValueList_Lst","NameVal","Statement","SimpleStatement","VariableDefinition","VariableDeclaration","ExpressionStatement","IfStatement","ElseState","PrimaryExpression","BooleanLiteral","NumberLiteral","UserDefinedTypeName","ElementaryTypeName","list__CSExpList__","list__ContractPart__","list__EParamList__","list__ExprList__","list__FuncMods__","list__ModExpList__","list__MultiEnumValue__","list__NameValueList_Lst__","list__OMInheritanceSpec__","list__ParamList__","list__Statement__","zero__AnonList__","zero__AssVar__","zero__ElseState__","zero__EventParamList__","zero__EventParams__","zero__Expression__","zero__ExpressionList__","zero__InhExpList__","zero__InheritanceSpecList__","zero__MExpression__","zero__NameValueList__","zero__ParameterList__","zero__Parameters__","zero__ReturnParam__","zero__StorageLocation__","list1__CSExpList__","list1__ContractPart__","list1__EParamList__","list1__ExprList__","list1__FuncMods__","list1__ModExpList__","list1__MultiEnumValue__","list1__NameValueList_Lst__","list1__OMInheritanceSpec__","list1__ParamList__","list1__Statement__","\"reservedid\"","version","\"decimalnum\"","\"exponent\"","\"int\"","numberunit","\"pragma\"","\"import\"","\"external\"","\"public\"","\"internal\"","\"private\"","\"constant\"","\"string\"","contract","\"library\"","\"interface\"","function","\"address\"","\"bool\"","\"var\"","\"using\"","\"for\"","\"true\"","\"false\"","\"as\"","\"is\"","\"from\"","\"view\"","\"pure\"","\"payable\"","\"returns\"","\"if\"","\"else\"","\"event\"","\"anonymous\"","\"modifier\"","\"memory\"","\"storage\"","\"enum\"","\"new\"","\"++\"","\"--\"","\"^\"","\"!\"","\"&&\"","\"&\"","\"||\"","\"|\"","\"!=\"","\"<\"","\">\"","\">>\"","\"<<\"","\"<=\"","\">=\"","\"==\"","\"{\"","\"}\"","\"[\"","\"]\"","\".\"","\"=\"","\"*\"","\"/\"","\"**\"","\"%\"","\"+\"","\"-\"","\";\"","\":\"","\",\"","ident","stringLiteral","\"(\"","\")\"","%eof"]
        bit_start = st * 186
        bit_end = (st + 1) * 186
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..185]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (4) = happyGoto action_2
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (116) = happyShift action_8
action_2 (117) = happyShift action_9
action_2 (124) = happyShift action_10
action_2 (125) = happyShift action_11
action_2 (126) = happyShift action_12
action_2 (186) = happyAccept
action_2 (5) = happyGoto action_3
action_2 (6) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 (11) = happyGoto action_6
action_2 (12) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 _ = happyReduce_3

action_5 _ = happyReduce_4

action_6 _ = happyReduce_5

action_7 (182) = happyShift action_19
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (182) = happyShift action_18
action_8 (7) = happyGoto action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (173) = happyShift action_14
action_9 (182) = happyShift action_15
action_9 (183) = happyShift action_16
action_9 (10) = happyGoto action_13
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 (135) = happyShift action_25
action_13 (9) = happyGoto action_26
action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_13

action_16 (135) = happyShift action_25
action_16 (9) = happyGoto action_24
action_16 _ = happyReduce_11

action_17 (111) = happyShift action_23
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_7

action_19 (136) = happyShift action_22
action_19 (13) = happyGoto action_20
action_19 (92) = happyGoto action_21
action_19 _ = happyReduce_173

action_20 _ = happyReduce_172

action_21 (167) = happyShift action_34
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (182) = happyShift action_33
action_22 (15) = happyGoto action_31
action_22 (71) = happyGoto action_32
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (179) = happyShift action_30
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (179) = happyShift action_29
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (182) = happyShift action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (137) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (183) = happyShift action_63
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_10

action_29 _ = happyReduce_8

action_30 _ = happyReduce_6

action_31 (181) = happyShift action_62
action_31 (14) = happyGoto action_59
action_31 (81) = happyGoto action_60
action_31 (107) = happyGoto action_61
action_31 _ = happyReduce_151

action_32 (184) = happyShift action_58
action_32 (16) = happyGoto action_56
action_32 (91) = happyGoto action_57
action_32 _ = happyReduce_171

action_33 _ = happyReduce_129

action_34 (123) = happyShift action_47
action_34 (127) = happyShift action_48
action_34 (128) = happyShift action_49
action_34 (129) = happyShift action_50
action_34 (130) = happyShift action_51
action_34 (131) = happyShift action_52
action_34 (144) = happyShift action_53
action_34 (146) = happyShift action_54
action_34 (149) = happyShift action_55
action_34 (182) = happyShift action_33
action_34 (18) = happyGoto action_35
action_34 (19) = happyGoto action_36
action_34 (20) = happyGoto action_37
action_34 (21) = happyGoto action_38
action_34 (24) = happyGoto action_39
action_34 (43) = happyGoto action_40
action_34 (44) = happyGoto action_41
action_34 (46) = happyGoto action_42
action_34 (71) = happyGoto action_43
action_34 (72) = happyGoto action_44
action_34 (74) = happyGoto action_45
action_34 (100) = happyGoto action_46
action_34 _ = happyReduce_137

action_35 (123) = happyShift action_47
action_35 (127) = happyShift action_48
action_35 (128) = happyShift action_49
action_35 (129) = happyShift action_50
action_35 (130) = happyShift action_51
action_35 (131) = happyShift action_52
action_35 (144) = happyShift action_53
action_35 (146) = happyShift action_54
action_35 (149) = happyShift action_55
action_35 (182) = happyShift action_33
action_35 (18) = happyGoto action_35
action_35 (19) = happyGoto action_36
action_35 (20) = happyGoto action_37
action_35 (21) = happyGoto action_38
action_35 (24) = happyGoto action_39
action_35 (43) = happyGoto action_40
action_35 (44) = happyGoto action_41
action_35 (46) = happyGoto action_42
action_35 (71) = happyGoto action_43
action_35 (72) = happyGoto action_44
action_35 (100) = happyGoto action_92
action_35 _ = happyReduce_188

action_36 _ = happyReduce_25

action_37 _ = happyReduce_26

action_38 _ = happyReduce_27

action_39 _ = happyReduce_28

action_40 _ = happyReduce_23

action_41 _ = happyReduce_24

action_42 (119) = happyShift action_88
action_42 (120) = happyShift action_89
action_42 (121) = happyShift action_90
action_42 (122) = happyShift action_91
action_42 (47) = happyGoto action_86
action_42 (85) = happyGoto action_87
action_42 _ = happyReduce_159

action_43 _ = happyReduce_68

action_44 _ = happyReduce_67

action_45 (168) = happyShift action_85
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_136

action_47 _ = happyReduce_133

action_48 (182) = happyShift action_84
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_130

action_50 _ = happyReduce_131

action_51 _ = happyReduce_132

action_52 (182) = happyShift action_83
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (182) = happyShift action_82
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (182) = happyShift action_81
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (182) = happyShift action_80
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_170

action_57 _ = happyReduce_20

action_58 (112) = happyShift action_73
action_58 (133) = happyShift action_74
action_58 (134) = happyShift action_75
action_58 (150) = happyShift action_76
action_58 (182) = happyShift action_77
action_58 (183) = happyShift action_78
action_58 (184) = happyShift action_79
action_58 (52) = happyGoto action_67
action_58 (53) = happyGoto action_68
action_58 (55) = happyGoto action_69
action_58 (68) = happyGoto action_70
action_58 (69) = happyGoto action_71
action_58 (70) = happyGoto action_72
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (181) = happyShift action_62
action_59 (14) = happyGoto action_59
action_59 (107) = happyGoto action_66
action_59 _ = happyReduce_202

action_60 _ = happyReduce_18

action_61 _ = happyReduce_150

action_62 (182) = happyShift action_33
action_62 (15) = happyGoto action_65
action_62 (71) = happyGoto action_32
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (179) = happyShift action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_9

action_65 _ = happyReduce_19

action_66 _ = happyReduce_203

action_67 (151) = happyShift action_109
action_67 (152) = happyShift action_110
action_67 (153) = happyShift action_111
action_67 (155) = happyShift action_112
action_67 (156) = happyShift action_113
action_67 (157) = happyShift action_114
action_67 (158) = happyShift action_115
action_67 (159) = happyShift action_116
action_67 (160) = happyShift action_117
action_67 (161) = happyShift action_118
action_67 (162) = happyShift action_119
action_67 (163) = happyShift action_120
action_67 (164) = happyShift action_121
action_67 (165) = happyShift action_122
action_67 (166) = happyShift action_123
action_67 (171) = happyShift action_124
action_67 (173) = happyShift action_125
action_67 (174) = happyShift action_126
action_67 (175) = happyShift action_127
action_67 (176) = happyShift action_128
action_67 (177) = happyShift action_129
action_67 (178) = happyShift action_130
action_67 (181) = happyShift action_131
action_67 (184) = happyShift action_132
action_67 (17) = happyGoto action_106
action_67 (73) = happyGoto action_107
action_67 (99) = happyGoto action_108
action_67 _ = happyReduce_135

action_68 _ = happyReduce_80

action_69 _ = happyReduce_81

action_70 _ = happyReduce_103

action_71 _ = happyReduce_122

action_72 _ = happyReduce_123

action_73 (115) = happyShift action_105
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_126

action_75 _ = happyReduce_127

action_76 (123) = happyShift action_47
action_76 (128) = happyShift action_49
action_76 (129) = happyShift action_50
action_76 (130) = happyShift action_51
action_76 (182) = happyShift action_33
action_76 (46) = happyGoto action_104
action_76 (71) = happyGoto action_43
action_76 (72) = happyGoto action_44
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_125

action_78 _ = happyReduce_124

action_79 (112) = happyShift action_73
action_79 (133) = happyShift action_74
action_79 (134) = happyShift action_75
action_79 (150) = happyShift action_76
action_79 (182) = happyShift action_77
action_79 (183) = happyShift action_78
action_79 (184) = happyShift action_79
action_79 (52) = happyGoto action_103
action_79 (53) = happyGoto action_68
action_79 (55) = happyGoto action_69
action_79 (68) = happyGoto action_70
action_79 (69) = happyGoto action_71
action_79 (70) = happyGoto action_72
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (167) = happyShift action_102
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (184) = happyShift action_95
action_81 (33) = happyGoto action_100
action_81 (95) = happyGoto action_101
action_81 _ = happyReduce_179

action_82 (184) = happyShift action_99
action_82 (28) = happyGoto action_97
action_82 (87) = happyGoto action_98
action_82 _ = happyReduce_163

action_83 (132) = happyShift action_96
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (184) = happyShift action_95
action_84 (33) = happyGoto action_94
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_14

action_86 _ = happyReduce_158

action_87 (182) = happyShift action_93
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_69

action_89 _ = happyReduce_71

action_90 _ = happyReduce_70

action_91 _ = happyReduce_72

action_92 _ = happyReduce_189

action_93 (172) = happyShift action_197
action_93 (49) = happyGoto action_195
action_93 (93) = happyGoto action_196
action_93 _ = happyReduce_175

action_94 (118) = happyShift action_186
action_94 (119) = happyShift action_187
action_94 (120) = happyShift action_188
action_94 (121) = happyShift action_189
action_94 (122) = happyShift action_190
action_94 (138) = happyShift action_191
action_94 (139) = happyShift action_192
action_94 (140) = happyShift action_193
action_94 (182) = happyShift action_194
action_94 (22) = happyGoto action_180
action_94 (37) = happyGoto action_181
action_94 (40) = happyGoto action_182
action_94 (42) = happyGoto action_183
action_94 (77) = happyGoto action_184
action_94 (103) = happyGoto action_185
action_94 _ = happyReduce_143

action_95 (123) = happyShift action_47
action_95 (128) = happyShift action_49
action_95 (129) = happyShift action_50
action_95 (130) = happyShift action_51
action_95 (182) = happyShift action_33
action_95 (34) = happyGoto action_176
action_95 (36) = happyGoto action_177
action_95 (46) = happyGoto action_178
action_95 (71) = happyGoto action_43
action_95 (72) = happyGoto action_44
action_95 (96) = happyGoto action_179
action_95 _ = happyReduce_181

action_96 (123) = happyShift action_47
action_96 (128) = happyShift action_49
action_96 (129) = happyShift action_50
action_96 (130) = happyShift action_51
action_96 (182) = happyShift action_33
action_96 (46) = happyGoto action_175
action_96 (71) = happyGoto action_43
action_96 (72) = happyGoto action_44
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_162

action_98 (145) = happyShift action_174
action_98 (32) = happyGoto action_172
action_98 (84) = happyGoto action_173
action_98 _ = happyReduce_157

action_99 (123) = happyShift action_47
action_99 (128) = happyShift action_49
action_99 (129) = happyShift action_50
action_99 (130) = happyShift action_51
action_99 (182) = happyShift action_33
action_99 (29) = happyGoto action_168
action_99 (31) = happyGoto action_169
action_99 (46) = happyGoto action_170
action_99 (71) = happyGoto action_43
action_99 (72) = happyGoto action_44
action_99 (88) = happyGoto action_171
action_99 _ = happyReduce_165

action_100 _ = happyReduce_178

action_101 (167) = happyShift action_166
action_101 (179) = happyShift action_167
action_101 (39) = happyGoto action_165
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (182) = happyShift action_164
action_102 (25) = happyGoto action_162
action_102 (26) = happyGoto action_163
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (151) = happyShift action_109
action_103 (152) = happyShift action_110
action_103 (153) = happyShift action_111
action_103 (155) = happyShift action_112
action_103 (156) = happyShift action_113
action_103 (157) = happyShift action_114
action_103 (158) = happyShift action_115
action_103 (159) = happyShift action_116
action_103 (160) = happyShift action_117
action_103 (161) = happyShift action_118
action_103 (162) = happyShift action_119
action_103 (163) = happyShift action_120
action_103 (164) = happyShift action_121
action_103 (165) = happyShift action_122
action_103 (166) = happyShift action_123
action_103 (171) = happyShift action_124
action_103 (173) = happyShift action_125
action_103 (174) = happyShift action_126
action_103 (175) = happyShift action_127
action_103 (176) = happyShift action_128
action_103 (177) = happyShift action_129
action_103 (178) = happyShift action_130
action_103 (184) = happyShift action_132
action_103 (185) = happyShift action_161
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_104

action_105 _ = happyReduce_128

action_106 (181) = happyShift action_131
action_106 (17) = happyGoto action_106
action_106 (99) = happyGoto action_160
action_106 _ = happyReduce_186

action_107 (185) = happyShift action_159
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_134

action_109 _ = happyReduce_78

action_110 _ = happyReduce_79

action_111 (112) = happyShift action_73
action_111 (133) = happyShift action_74
action_111 (134) = happyShift action_75
action_111 (150) = happyShift action_76
action_111 (182) = happyShift action_77
action_111 (183) = happyShift action_78
action_111 (184) = happyShift action_79
action_111 (52) = happyGoto action_158
action_111 (53) = happyGoto action_68
action_111 (55) = happyGoto action_69
action_111 (68) = happyGoto action_70
action_111 (69) = happyGoto action_71
action_111 (70) = happyGoto action_72
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (112) = happyShift action_73
action_112 (133) = happyShift action_74
action_112 (134) = happyShift action_75
action_112 (150) = happyShift action_76
action_112 (182) = happyShift action_77
action_112 (183) = happyShift action_78
action_112 (184) = happyShift action_79
action_112 (52) = happyGoto action_157
action_112 (53) = happyGoto action_68
action_112 (55) = happyGoto action_69
action_112 (68) = happyGoto action_70
action_112 (69) = happyGoto action_71
action_112 (70) = happyGoto action_72
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (112) = happyShift action_73
action_113 (133) = happyShift action_74
action_113 (134) = happyShift action_75
action_113 (150) = happyShift action_76
action_113 (182) = happyShift action_77
action_113 (183) = happyShift action_78
action_113 (184) = happyShift action_79
action_113 (52) = happyGoto action_156
action_113 (53) = happyGoto action_68
action_113 (55) = happyGoto action_69
action_113 (68) = happyGoto action_70
action_113 (69) = happyGoto action_71
action_113 (70) = happyGoto action_72
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (112) = happyShift action_73
action_114 (133) = happyShift action_74
action_114 (134) = happyShift action_75
action_114 (150) = happyShift action_76
action_114 (182) = happyShift action_77
action_114 (183) = happyShift action_78
action_114 (184) = happyShift action_79
action_114 (52) = happyGoto action_155
action_114 (53) = happyGoto action_68
action_114 (55) = happyGoto action_69
action_114 (68) = happyGoto action_70
action_114 (69) = happyGoto action_71
action_114 (70) = happyGoto action_72
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (112) = happyShift action_73
action_115 (133) = happyShift action_74
action_115 (134) = happyShift action_75
action_115 (150) = happyShift action_76
action_115 (182) = happyShift action_77
action_115 (183) = happyShift action_78
action_115 (184) = happyShift action_79
action_115 (52) = happyGoto action_154
action_115 (53) = happyGoto action_68
action_115 (55) = happyGoto action_69
action_115 (68) = happyGoto action_70
action_115 (69) = happyGoto action_71
action_115 (70) = happyGoto action_72
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (112) = happyShift action_73
action_116 (133) = happyShift action_74
action_116 (134) = happyShift action_75
action_116 (150) = happyShift action_76
action_116 (182) = happyShift action_77
action_116 (183) = happyShift action_78
action_116 (184) = happyShift action_79
action_116 (52) = happyGoto action_153
action_116 (53) = happyGoto action_68
action_116 (55) = happyGoto action_69
action_116 (68) = happyGoto action_70
action_116 (69) = happyGoto action_71
action_116 (70) = happyGoto action_72
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (112) = happyShift action_73
action_117 (133) = happyShift action_74
action_117 (134) = happyShift action_75
action_117 (150) = happyShift action_76
action_117 (182) = happyShift action_77
action_117 (183) = happyShift action_78
action_117 (184) = happyShift action_79
action_117 (52) = happyGoto action_152
action_117 (53) = happyGoto action_68
action_117 (55) = happyGoto action_69
action_117 (68) = happyGoto action_70
action_117 (69) = happyGoto action_71
action_117 (70) = happyGoto action_72
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (112) = happyShift action_73
action_118 (133) = happyShift action_74
action_118 (134) = happyShift action_75
action_118 (150) = happyShift action_76
action_118 (182) = happyShift action_77
action_118 (183) = happyShift action_78
action_118 (184) = happyShift action_79
action_118 (52) = happyGoto action_151
action_118 (53) = happyGoto action_68
action_118 (55) = happyGoto action_69
action_118 (68) = happyGoto action_70
action_118 (69) = happyGoto action_71
action_118 (70) = happyGoto action_72
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (112) = happyShift action_73
action_119 (133) = happyShift action_74
action_119 (134) = happyShift action_75
action_119 (150) = happyShift action_76
action_119 (182) = happyShift action_77
action_119 (183) = happyShift action_78
action_119 (184) = happyShift action_79
action_119 (52) = happyGoto action_150
action_119 (53) = happyGoto action_68
action_119 (55) = happyGoto action_69
action_119 (68) = happyGoto action_70
action_119 (69) = happyGoto action_71
action_119 (70) = happyGoto action_72
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (112) = happyShift action_73
action_120 (133) = happyShift action_74
action_120 (134) = happyShift action_75
action_120 (150) = happyShift action_76
action_120 (182) = happyShift action_77
action_120 (183) = happyShift action_78
action_120 (184) = happyShift action_79
action_120 (52) = happyGoto action_149
action_120 (53) = happyGoto action_68
action_120 (55) = happyGoto action_69
action_120 (68) = happyGoto action_70
action_120 (69) = happyGoto action_71
action_120 (70) = happyGoto action_72
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (112) = happyShift action_73
action_121 (133) = happyShift action_74
action_121 (134) = happyShift action_75
action_121 (150) = happyShift action_76
action_121 (182) = happyShift action_77
action_121 (183) = happyShift action_78
action_121 (184) = happyShift action_79
action_121 (52) = happyGoto action_148
action_121 (53) = happyGoto action_68
action_121 (55) = happyGoto action_69
action_121 (68) = happyGoto action_70
action_121 (69) = happyGoto action_71
action_121 (70) = happyGoto action_72
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (112) = happyShift action_73
action_122 (133) = happyShift action_74
action_122 (134) = happyShift action_75
action_122 (150) = happyShift action_76
action_122 (182) = happyShift action_77
action_122 (183) = happyShift action_78
action_122 (184) = happyShift action_79
action_122 (52) = happyGoto action_147
action_122 (53) = happyGoto action_68
action_122 (55) = happyGoto action_69
action_122 (68) = happyGoto action_70
action_122 (69) = happyGoto action_71
action_122 (70) = happyGoto action_72
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (112) = happyShift action_73
action_123 (133) = happyShift action_74
action_123 (134) = happyShift action_75
action_123 (150) = happyShift action_76
action_123 (182) = happyShift action_77
action_123 (183) = happyShift action_78
action_123 (184) = happyShift action_79
action_123 (52) = happyGoto action_146
action_123 (53) = happyGoto action_68
action_123 (55) = happyGoto action_69
action_123 (68) = happyGoto action_70
action_123 (69) = happyGoto action_71
action_123 (70) = happyGoto action_72
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (182) = happyShift action_145
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (112) = happyShift action_73
action_125 (133) = happyShift action_74
action_125 (134) = happyShift action_75
action_125 (150) = happyShift action_76
action_125 (182) = happyShift action_77
action_125 (183) = happyShift action_78
action_125 (184) = happyShift action_79
action_125 (52) = happyGoto action_144
action_125 (53) = happyGoto action_68
action_125 (55) = happyGoto action_69
action_125 (68) = happyGoto action_70
action_125 (69) = happyGoto action_71
action_125 (70) = happyGoto action_72
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (112) = happyShift action_73
action_126 (133) = happyShift action_74
action_126 (134) = happyShift action_75
action_126 (150) = happyShift action_76
action_126 (182) = happyShift action_77
action_126 (183) = happyShift action_78
action_126 (184) = happyShift action_79
action_126 (52) = happyGoto action_143
action_126 (53) = happyGoto action_68
action_126 (55) = happyGoto action_69
action_126 (68) = happyGoto action_70
action_126 (69) = happyGoto action_71
action_126 (70) = happyGoto action_72
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (112) = happyShift action_73
action_127 (133) = happyShift action_74
action_127 (134) = happyShift action_75
action_127 (150) = happyShift action_76
action_127 (182) = happyShift action_77
action_127 (183) = happyShift action_78
action_127 (184) = happyShift action_79
action_127 (52) = happyGoto action_142
action_127 (53) = happyGoto action_68
action_127 (55) = happyGoto action_69
action_127 (68) = happyGoto action_70
action_127 (69) = happyGoto action_71
action_127 (70) = happyGoto action_72
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (112) = happyShift action_73
action_128 (133) = happyShift action_74
action_128 (134) = happyShift action_75
action_128 (150) = happyShift action_76
action_128 (182) = happyShift action_77
action_128 (183) = happyShift action_78
action_128 (184) = happyShift action_79
action_128 (52) = happyGoto action_141
action_128 (53) = happyGoto action_68
action_128 (55) = happyGoto action_69
action_128 (68) = happyGoto action_70
action_128 (69) = happyGoto action_71
action_128 (70) = happyGoto action_72
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (112) = happyShift action_73
action_129 (133) = happyShift action_74
action_129 (134) = happyShift action_75
action_129 (150) = happyShift action_76
action_129 (182) = happyShift action_77
action_129 (183) = happyShift action_78
action_129 (184) = happyShift action_79
action_129 (52) = happyGoto action_140
action_129 (53) = happyGoto action_68
action_129 (55) = happyGoto action_69
action_129 (68) = happyGoto action_70
action_129 (69) = happyGoto action_71
action_129 (70) = happyGoto action_72
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (112) = happyShift action_73
action_130 (133) = happyShift action_74
action_130 (134) = happyShift action_75
action_130 (150) = happyShift action_76
action_130 (182) = happyShift action_77
action_130 (183) = happyShift action_78
action_130 (184) = happyShift action_79
action_130 (52) = happyGoto action_139
action_130 (53) = happyGoto action_68
action_130 (55) = happyGoto action_69
action_130 (68) = happyGoto action_70
action_130 (69) = happyGoto action_71
action_130 (70) = happyGoto action_72
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (112) = happyShift action_73
action_131 (133) = happyShift action_74
action_131 (134) = happyShift action_75
action_131 (150) = happyShift action_76
action_131 (182) = happyShift action_77
action_131 (183) = happyShift action_78
action_131 (184) = happyShift action_79
action_131 (52) = happyGoto action_138
action_131 (53) = happyGoto action_68
action_131 (55) = happyGoto action_69
action_131 (68) = happyGoto action_70
action_131 (69) = happyGoto action_71
action_131 (70) = happyGoto action_72
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (112) = happyShift action_73
action_132 (133) = happyShift action_74
action_132 (134) = happyShift action_75
action_132 (150) = happyShift action_76
action_132 (167) = happyShift action_137
action_132 (182) = happyShift action_77
action_132 (183) = happyShift action_78
action_132 (184) = happyShift action_79
action_132 (50) = happyGoto action_133
action_132 (52) = happyGoto action_134
action_132 (53) = happyGoto action_68
action_132 (55) = happyGoto action_69
action_132 (57) = happyGoto action_135
action_132 (68) = happyGoto action_70
action_132 (69) = happyGoto action_71
action_132 (70) = happyGoto action_72
action_132 (90) = happyGoto action_136
action_132 _ = happyReduce_169

action_133 _ = happyReduce_168

action_134 (151) = happyShift action_109
action_134 (152) = happyShift action_110
action_134 (153) = happyShift action_111
action_134 (155) = happyShift action_112
action_134 (156) = happyShift action_113
action_134 (157) = happyShift action_114
action_134 (158) = happyShift action_115
action_134 (159) = happyShift action_116
action_134 (160) = happyShift action_117
action_134 (161) = happyShift action_118
action_134 (162) = happyShift action_119
action_134 (163) = happyShift action_120
action_134 (164) = happyShift action_121
action_134 (165) = happyShift action_122
action_134 (166) = happyShift action_123
action_134 (171) = happyShift action_124
action_134 (173) = happyShift action_125
action_134 (174) = happyShift action_126
action_134 (175) = happyShift action_127
action_134 (176) = happyShift action_128
action_134 (177) = happyShift action_129
action_134 (178) = happyShift action_130
action_134 (181) = happyShift action_245
action_134 (184) = happyShift action_132
action_134 (51) = happyGoto action_242
action_134 (76) = happyGoto action_243
action_134 (102) = happyGoto action_244
action_134 _ = happyReduce_141

action_135 (185) = happyShift action_241
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_109

action_137 (182) = happyShift action_240
action_137 (58) = happyGoto action_237
action_137 (60) = happyGoto action_238
action_137 (94) = happyGoto action_239
action_137 _ = happyReduce_177

action_138 (151) = happyShift action_109
action_138 (152) = happyShift action_110
action_138 (153) = happyShift action_111
action_138 (155) = happyShift action_112
action_138 (156) = happyShift action_113
action_138 (157) = happyShift action_114
action_138 (158) = happyShift action_115
action_138 (159) = happyShift action_116
action_138 (160) = happyShift action_117
action_138 (161) = happyShift action_118
action_138 (162) = happyShift action_119
action_138 (163) = happyShift action_120
action_138 (164) = happyShift action_121
action_138 (165) = happyShift action_122
action_138 (166) = happyShift action_123
action_138 (171) = happyShift action_124
action_138 (173) = happyShift action_125
action_138 (174) = happyShift action_126
action_138 (175) = happyShift action_127
action_138 (176) = happyShift action_128
action_138 (177) = happyShift action_129
action_138 (178) = happyShift action_130
action_138 (184) = happyShift action_132
action_138 _ = happyReduce_22

action_139 (151) = happyShift action_109
action_139 (152) = happyShift action_110
action_139 (171) = happyShift action_124
action_139 (173) = happyShift action_125
action_139 (174) = happyShift action_126
action_139 (175) = happyShift action_127
action_139 (176) = happyShift action_128
action_139 (184) = happyShift action_132
action_139 _ = happyReduce_89

action_140 (151) = happyShift action_109
action_140 (152) = happyShift action_110
action_140 (171) = happyShift action_124
action_140 (173) = happyShift action_125
action_140 (174) = happyShift action_126
action_140 (175) = happyShift action_127
action_140 (176) = happyShift action_128
action_140 (184) = happyShift action_132
action_140 _ = happyReduce_88

action_141 (151) = happyShift action_109
action_141 (152) = happyShift action_110
action_141 (171) = happyShift action_124
action_141 (175) = happyShift action_127
action_141 (184) = happyShift action_132
action_141 _ = happyReduce_87

action_142 (151) = happyShift action_109
action_142 (152) = happyShift action_110
action_142 (171) = happyShift action_124
action_142 (184) = happyShift action_132
action_142 _ = happyReduce_84

action_143 (151) = happyShift action_109
action_143 (152) = happyShift action_110
action_143 (171) = happyShift action_124
action_143 (175) = happyShift action_127
action_143 (184) = happyShift action_132
action_143 _ = happyReduce_86

action_144 (151) = happyShift action_109
action_144 (152) = happyShift action_110
action_144 (171) = happyShift action_124
action_144 (175) = happyShift action_127
action_144 (184) = happyShift action_132
action_144 _ = happyReduce_85

action_145 _ = happyReduce_106

action_146 (151) = happyShift action_109
action_146 (152) = happyShift action_110
action_146 (153) = happyShift action_111
action_146 (156) = happyShift action_113
action_146 (158) = happyShift action_115
action_146 (160) = happyShift action_117
action_146 (161) = happyShift action_118
action_146 (162) = happyShift action_119
action_146 (163) = happyShift action_120
action_146 (164) = happyShift action_121
action_146 (165) = happyShift action_122
action_146 (171) = happyShift action_124
action_146 (173) = happyShift action_125
action_146 (174) = happyShift action_126
action_146 (175) = happyShift action_127
action_146 (176) = happyShift action_128
action_146 (177) = happyShift action_129
action_146 (178) = happyShift action_130
action_146 (184) = happyShift action_132
action_146 _ = happyReduce_99

action_147 (151) = happyShift action_109
action_147 (152) = happyShift action_110
action_147 (153) = happyShift action_111
action_147 (156) = happyShift action_113
action_147 (158) = happyShift action_115
action_147 (162) = happyShift action_119
action_147 (163) = happyShift action_120
action_147 (171) = happyShift action_124
action_147 (173) = happyShift action_125
action_147 (174) = happyShift action_126
action_147 (175) = happyShift action_127
action_147 (176) = happyShift action_128
action_147 (177) = happyShift action_129
action_147 (178) = happyShift action_130
action_147 (184) = happyShift action_132
action_147 _ = happyReduce_98

action_148 (151) = happyShift action_109
action_148 (152) = happyShift action_110
action_148 (153) = happyShift action_111
action_148 (156) = happyShift action_113
action_148 (158) = happyShift action_115
action_148 (162) = happyShift action_119
action_148 (163) = happyShift action_120
action_148 (171) = happyShift action_124
action_148 (173) = happyShift action_125
action_148 (174) = happyShift action_126
action_148 (175) = happyShift action_127
action_148 (176) = happyShift action_128
action_148 (177) = happyShift action_129
action_148 (178) = happyShift action_130
action_148 (184) = happyShift action_132
action_148 _ = happyReduce_97

action_149 (151) = happyShift action_109
action_149 (152) = happyShift action_110
action_149 (171) = happyShift action_124
action_149 (173) = happyShift action_125
action_149 (174) = happyShift action_126
action_149 (175) = happyShift action_127
action_149 (176) = happyShift action_128
action_149 (177) = happyShift action_129
action_149 (178) = happyShift action_130
action_149 (184) = happyShift action_132
action_149 _ = happyReduce_90

action_150 (151) = happyShift action_109
action_150 (152) = happyShift action_110
action_150 (171) = happyShift action_124
action_150 (173) = happyShift action_125
action_150 (174) = happyShift action_126
action_150 (175) = happyShift action_127
action_150 (176) = happyShift action_128
action_150 (177) = happyShift action_129
action_150 (178) = happyShift action_130
action_150 (184) = happyShift action_132
action_150 _ = happyReduce_91

action_151 (151) = happyShift action_109
action_151 (152) = happyShift action_110
action_151 (153) = happyShift action_111
action_151 (156) = happyShift action_113
action_151 (158) = happyShift action_115
action_151 (162) = happyShift action_119
action_151 (163) = happyShift action_120
action_151 (171) = happyShift action_124
action_151 (173) = happyShift action_125
action_151 (174) = happyShift action_126
action_151 (175) = happyShift action_127
action_151 (176) = happyShift action_128
action_151 (177) = happyShift action_129
action_151 (178) = happyShift action_130
action_151 (184) = happyShift action_132
action_151 _ = happyReduce_96

action_152 (151) = happyShift action_109
action_152 (152) = happyShift action_110
action_152 (153) = happyShift action_111
action_152 (156) = happyShift action_113
action_152 (158) = happyShift action_115
action_152 (162) = happyShift action_119
action_152 (163) = happyShift action_120
action_152 (171) = happyShift action_124
action_152 (173) = happyShift action_125
action_152 (174) = happyShift action_126
action_152 (175) = happyShift action_127
action_152 (176) = happyShift action_128
action_152 (177) = happyShift action_129
action_152 (178) = happyShift action_130
action_152 (184) = happyShift action_132
action_152 _ = happyReduce_95

action_153 (151) = happyShift action_109
action_153 (152) = happyShift action_110
action_153 (153) = happyShift action_111
action_153 (156) = happyShift action_113
action_153 (158) = happyShift action_115
action_153 (160) = happyShift action_117
action_153 (161) = happyShift action_118
action_153 (162) = happyShift action_119
action_153 (163) = happyShift action_120
action_153 (164) = happyShift action_121
action_153 (165) = happyShift action_122
action_153 (171) = happyShift action_124
action_153 (173) = happyShift action_125
action_153 (174) = happyShift action_126
action_153 (175) = happyShift action_127
action_153 (176) = happyShift action_128
action_153 (177) = happyShift action_129
action_153 (178) = happyShift action_130
action_153 (184) = happyShift action_132
action_153 _ = happyReduce_100

action_154 (151) = happyShift action_109
action_154 (152) = happyShift action_110
action_154 (153) = happyShift action_111
action_154 (156) = happyShift action_113
action_154 (162) = happyShift action_119
action_154 (163) = happyShift action_120
action_154 (171) = happyShift action_124
action_154 (173) = happyShift action_125
action_154 (174) = happyShift action_126
action_154 (175) = happyShift action_127
action_154 (176) = happyShift action_128
action_154 (177) = happyShift action_129
action_154 (178) = happyShift action_130
action_154 (184) = happyShift action_132
action_154 _ = happyReduce_94

action_155 (151) = happyShift action_109
action_155 (152) = happyShift action_110
action_155 (153) = happyShift action_111
action_155 (155) = happyShift action_112
action_155 (156) = happyShift action_113
action_155 (158) = happyShift action_115
action_155 (159) = happyShift action_116
action_155 (160) = happyShift action_117
action_155 (161) = happyShift action_118
action_155 (162) = happyShift action_119
action_155 (163) = happyShift action_120
action_155 (164) = happyShift action_121
action_155 (165) = happyShift action_122
action_155 (166) = happyShift action_123
action_155 (171) = happyShift action_124
action_155 (173) = happyShift action_125
action_155 (174) = happyShift action_126
action_155 (175) = happyShift action_127
action_155 (176) = happyShift action_128
action_155 (177) = happyShift action_129
action_155 (178) = happyShift action_130
action_155 (184) = happyShift action_132
action_155 _ = happyReduce_102

action_156 (151) = happyShift action_109
action_156 (152) = happyShift action_110
action_156 (162) = happyShift action_119
action_156 (163) = happyShift action_120
action_156 (171) = happyShift action_124
action_156 (173) = happyShift action_125
action_156 (174) = happyShift action_126
action_156 (175) = happyShift action_127
action_156 (176) = happyShift action_128
action_156 (177) = happyShift action_129
action_156 (178) = happyShift action_130
action_156 (184) = happyShift action_132
action_156 _ = happyReduce_92

action_157 (151) = happyShift action_109
action_157 (152) = happyShift action_110
action_157 (153) = happyShift action_111
action_157 (156) = happyShift action_113
action_157 (158) = happyShift action_115
action_157 (159) = happyShift action_116
action_157 (160) = happyShift action_117
action_157 (161) = happyShift action_118
action_157 (162) = happyShift action_119
action_157 (163) = happyShift action_120
action_157 (164) = happyShift action_121
action_157 (165) = happyShift action_122
action_157 (166) = happyShift action_123
action_157 (171) = happyShift action_124
action_157 (173) = happyShift action_125
action_157 (174) = happyShift action_126
action_157 (175) = happyShift action_127
action_157 (176) = happyShift action_128
action_157 (177) = happyShift action_129
action_157 (178) = happyShift action_130
action_157 (184) = happyShift action_132
action_157 _ = happyReduce_101

action_158 (151) = happyShift action_109
action_158 (152) = happyShift action_110
action_158 (156) = happyShift action_113
action_158 (162) = happyShift action_119
action_158 (163) = happyShift action_120
action_158 (171) = happyShift action_124
action_158 (173) = happyShift action_125
action_158 (174) = happyShift action_126
action_158 (175) = happyShift action_127
action_158 (176) = happyShift action_128
action_158 (177) = happyShift action_129
action_158 (178) = happyShift action_130
action_158 (184) = happyShift action_132
action_158 _ = happyReduce_93

action_159 _ = happyReduce_21

action_160 _ = happyReduce_187

action_161 _ = happyReduce_83

action_162 (181) = happyShift action_236
action_162 (27) = happyGoto action_233
action_162 (79) = happyGoto action_234
action_162 (105) = happyGoto action_235
action_162 _ = happyReduce_147

action_163 (168) = happyShift action_232
action_163 _ = happyFail (happyExpListPerState 163)

action_164 _ = happyReduce_35

action_165 _ = happyReduce_31

action_166 (112) = happyShift action_73
action_166 (130) = happyShift action_230
action_166 (133) = happyShift action_74
action_166 (134) = happyShift action_75
action_166 (142) = happyShift action_231
action_166 (150) = happyShift action_76
action_166 (182) = happyShift action_77
action_166 (183) = happyShift action_78
action_166 (184) = happyShift action_79
action_166 (52) = happyGoto action_222
action_166 (53) = happyGoto action_68
action_166 (55) = happyGoto action_69
action_166 (61) = happyGoto action_223
action_166 (62) = happyGoto action_224
action_166 (63) = happyGoto action_225
action_166 (65) = happyGoto action_226
action_166 (66) = happyGoto action_227
action_166 (68) = happyGoto action_70
action_166 (69) = happyGoto action_71
action_166 (70) = happyGoto action_72
action_166 (83) = happyGoto action_228
action_166 (109) = happyGoto action_229
action_166 _ = happyReduce_155

action_167 _ = happyReduce_51

action_168 _ = happyReduce_164

action_169 (181) = happyShift action_221
action_169 (30) = happyGoto action_218
action_169 (75) = happyGoto action_219
action_169 (101) = happyGoto action_220
action_169 _ = happyReduce_139

action_170 (182) = happyShift action_217
action_170 _ = happyFail (happyExpListPerState 170)

action_171 (185) = happyShift action_216
action_171 _ = happyFail (happyExpListPerState 171)

action_172 _ = happyReduce_156

action_173 (179) = happyShift action_215
action_173 _ = happyFail (happyExpListPerState 173)

action_174 _ = happyReduce_42

action_175 (179) = happyShift action_214
action_175 _ = happyFail (happyExpListPerState 175)

action_176 _ = happyReduce_180

action_177 (181) = happyShift action_213
action_177 (35) = happyGoto action_210
action_177 (82) = happyGoto action_211
action_177 (108) = happyGoto action_212
action_177 _ = happyReduce_153

action_178 (147) = happyShift action_208
action_178 (148) = happyShift action_209
action_178 (41) = happyGoto action_206
action_178 (98) = happyGoto action_207
action_178 _ = happyReduce_185

action_179 (185) = happyShift action_205
action_179 _ = happyFail (happyExpListPerState 179)

action_180 _ = happyReduce_47

action_181 (118) = happyShift action_186
action_181 (119) = happyShift action_187
action_181 (120) = happyShift action_188
action_181 (121) = happyShift action_189
action_181 (122) = happyShift action_190
action_181 (138) = happyShift action_191
action_181 (139) = happyShift action_192
action_181 (140) = happyShift action_193
action_181 (182) = happyShift action_194
action_181 (22) = happyGoto action_180
action_181 (37) = happyGoto action_181
action_181 (40) = happyGoto action_182
action_181 (42) = happyGoto action_183
action_181 (103) = happyGoto action_204
action_181 _ = happyReduce_194

action_182 _ = happyReduce_48

action_183 _ = happyReduce_49

action_184 (141) = happyShift action_203
action_184 (38) = happyGoto action_201
action_184 (97) = happyGoto action_202
action_184 _ = happyReduce_183

action_185 _ = happyReduce_142

action_186 _ = happyReduce_59

action_187 _ = happyReduce_62

action_188 _ = happyReduce_60

action_189 _ = happyReduce_61

action_190 _ = happyReduce_54

action_191 _ = happyReduce_55

action_192 _ = happyReduce_53

action_193 _ = happyReduce_56

action_194 (184) = happyShift action_200
action_194 _ = happyFail (happyExpListPerState 194)

action_195 _ = happyReduce_174

action_196 (179) = happyShift action_199
action_196 _ = happyFail (happyExpListPerState 196)

action_197 (112) = happyShift action_73
action_197 (133) = happyShift action_74
action_197 (134) = happyShift action_75
action_197 (150) = happyShift action_76
action_197 (182) = happyShift action_77
action_197 (183) = happyShift action_78
action_197 (184) = happyShift action_79
action_197 (52) = happyGoto action_198
action_197 (53) = happyGoto action_68
action_197 (55) = happyGoto action_69
action_197 (68) = happyGoto action_70
action_197 (69) = happyGoto action_71
action_197 (70) = happyGoto action_72
action_197 _ = happyFail (happyExpListPerState 197)

action_198 (151) = happyShift action_109
action_198 (152) = happyShift action_110
action_198 (153) = happyShift action_111
action_198 (155) = happyShift action_112
action_198 (156) = happyShift action_113
action_198 (157) = happyShift action_114
action_198 (158) = happyShift action_115
action_198 (159) = happyShift action_116
action_198 (160) = happyShift action_117
action_198 (161) = happyShift action_118
action_198 (162) = happyShift action_119
action_198 (163) = happyShift action_120
action_198 (164) = happyShift action_121
action_198 (165) = happyShift action_122
action_198 (166) = happyShift action_123
action_198 (171) = happyShift action_124
action_198 (173) = happyShift action_125
action_198 (174) = happyShift action_126
action_198 (175) = happyShift action_127
action_198 (176) = happyShift action_128
action_198 (177) = happyShift action_129
action_198 (178) = happyShift action_130
action_198 (184) = happyShift action_132
action_198 _ = happyReduce_75

action_199 _ = happyReduce_63

action_200 (112) = happyShift action_73
action_200 (133) = happyShift action_74
action_200 (134) = happyShift action_75
action_200 (150) = happyShift action_76
action_200 (182) = happyShift action_77
action_200 (183) = happyShift action_78
action_200 (184) = happyShift action_79
action_200 (23) = happyGoto action_269
action_200 (50) = happyGoto action_270
action_200 (52) = happyGoto action_134
action_200 (53) = happyGoto action_68
action_200 (55) = happyGoto action_69
action_200 (68) = happyGoto action_70
action_200 (69) = happyGoto action_71
action_200 (70) = happyGoto action_72
action_200 (78) = happyGoto action_271
action_200 (104) = happyGoto action_272
action_200 _ = happyReduce_145

action_201 _ = happyReduce_182

action_202 (167) = happyShift action_166
action_202 (179) = happyShift action_167
action_202 (39) = happyGoto action_268
action_202 _ = happyFail (happyExpListPerState 202)

action_203 (184) = happyShift action_95
action_203 (33) = happyGoto action_267
action_203 _ = happyFail (happyExpListPerState 203)

action_204 _ = happyReduce_195

action_205 _ = happyReduce_43

action_206 _ = happyReduce_184

action_207 (182) = happyShift action_266
action_207 _ = happyFail (happyExpListPerState 207)

action_208 _ = happyReduce_57

action_209 _ = happyReduce_58

action_210 (181) = happyShift action_213
action_210 (35) = happyGoto action_210
action_210 (108) = happyGoto action_265
action_210 _ = happyReduce_204

action_211 _ = happyReduce_44

action_212 _ = happyReduce_152

action_213 (123) = happyShift action_47
action_213 (128) = happyShift action_49
action_213 (129) = happyShift action_50
action_213 (130) = happyShift action_51
action_213 (182) = happyShift action_33
action_213 (36) = happyGoto action_264
action_213 (46) = happyGoto action_178
action_213 (71) = happyGoto action_43
action_213 (72) = happyGoto action_44
action_213 _ = happyFail (happyExpListPerState 213)

action_214 _ = happyReduce_64

action_215 _ = happyReduce_30

action_216 _ = happyReduce_38

action_217 _ = happyReduce_41

action_218 (181) = happyShift action_221
action_218 (30) = happyGoto action_218
action_218 (101) = happyGoto action_263
action_218 _ = happyReduce_190

action_219 _ = happyReduce_39

action_220 _ = happyReduce_138

action_221 (123) = happyShift action_47
action_221 (128) = happyShift action_49
action_221 (129) = happyShift action_50
action_221 (130) = happyShift action_51
action_221 (182) = happyShift action_33
action_221 (31) = happyGoto action_262
action_221 (46) = happyGoto action_170
action_221 (71) = happyGoto action_43
action_221 (72) = happyGoto action_44
action_221 _ = happyFail (happyExpListPerState 221)

action_222 (151) = happyShift action_109
action_222 (152) = happyShift action_110
action_222 (153) = happyShift action_111
action_222 (155) = happyShift action_112
action_222 (156) = happyShift action_113
action_222 (157) = happyShift action_114
action_222 (158) = happyShift action_115
action_222 (159) = happyShift action_116
action_222 (160) = happyShift action_117
action_222 (161) = happyShift action_118
action_222 (162) = happyShift action_119
action_222 (163) = happyShift action_120
action_222 (164) = happyShift action_121
action_222 (165) = happyShift action_122
action_222 (166) = happyShift action_123
action_222 (171) = happyShift action_124
action_222 (173) = happyShift action_125
action_222 (174) = happyShift action_126
action_222 (175) = happyShift action_127
action_222 (176) = happyShift action_128
action_222 (177) = happyShift action_129
action_222 (178) = happyShift action_130
action_222 (184) = happyShift action_132
action_222 _ = happyReduce_119

action_223 (112) = happyShift action_73
action_223 (130) = happyShift action_230
action_223 (133) = happyShift action_74
action_223 (134) = happyShift action_75
action_223 (142) = happyShift action_231
action_223 (150) = happyShift action_76
action_223 (182) = happyShift action_77
action_223 (183) = happyShift action_78
action_223 (184) = happyShift action_79
action_223 (52) = happyGoto action_222
action_223 (53) = happyGoto action_68
action_223 (55) = happyGoto action_69
action_223 (61) = happyGoto action_223
action_223 (62) = happyGoto action_224
action_223 (63) = happyGoto action_225
action_223 (65) = happyGoto action_226
action_223 (66) = happyGoto action_227
action_223 (68) = happyGoto action_70
action_223 (69) = happyGoto action_71
action_223 (70) = happyGoto action_72
action_223 (109) = happyGoto action_261
action_223 _ = happyReduce_206

action_224 (179) = happyShift action_260
action_224 _ = happyFail (happyExpListPerState 224)

action_225 _ = happyReduce_115

action_226 _ = happyReduce_116

action_227 _ = happyReduce_113

action_228 (168) = happyShift action_259
action_228 _ = happyFail (happyExpListPerState 228)

action_229 _ = happyReduce_154

action_230 (123) = happyShift action_47
action_230 (128) = happyShift action_49
action_230 (129) = happyShift action_50
action_230 (130) = happyShift action_51
action_230 (182) = happyShift action_33
action_230 (46) = happyGoto action_257
action_230 (64) = happyGoto action_258
action_230 (71) = happyGoto action_43
action_230 (72) = happyGoto action_44
action_230 _ = happyFail (happyExpListPerState 230)

action_231 (184) = happyShift action_256
action_231 _ = happyFail (happyExpListPerState 231)

action_232 _ = happyReduce_34

action_233 (181) = happyShift action_236
action_233 (27) = happyGoto action_233
action_233 (105) = happyGoto action_255
action_233 _ = happyReduce_198

action_234 _ = happyReduce_36

action_235 _ = happyReduce_146

action_236 (182) = happyShift action_164
action_236 (25) = happyGoto action_254
action_236 _ = happyFail (happyExpListPerState 236)

action_237 _ = happyReduce_176

action_238 (181) = happyShift action_253
action_238 (59) = happyGoto action_250
action_238 (80) = happyGoto action_251
action_238 (106) = happyGoto action_252
action_238 _ = happyReduce_149

action_239 (168) = happyShift action_249
action_239 _ = happyFail (happyExpListPerState 239)

action_240 (180) = happyShift action_248
action_240 _ = happyFail (happyExpListPerState 240)

action_241 _ = happyReduce_82

action_242 (181) = happyShift action_245
action_242 (51) = happyGoto action_242
action_242 (102) = happyGoto action_247
action_242 _ = happyReduce_192

action_243 _ = happyReduce_76

action_244 _ = happyReduce_140

action_245 (112) = happyShift action_73
action_245 (133) = happyShift action_74
action_245 (134) = happyShift action_75
action_245 (150) = happyShift action_76
action_245 (182) = happyShift action_77
action_245 (183) = happyShift action_78
action_245 (184) = happyShift action_79
action_245 (52) = happyGoto action_246
action_245 (53) = happyGoto action_68
action_245 (55) = happyGoto action_69
action_245 (68) = happyGoto action_70
action_245 (69) = happyGoto action_71
action_245 (70) = happyGoto action_72
action_245 _ = happyFail (happyExpListPerState 245)

action_246 (151) = happyShift action_109
action_246 (152) = happyShift action_110
action_246 (153) = happyShift action_111
action_246 (155) = happyShift action_112
action_246 (156) = happyShift action_113
action_246 (157) = happyShift action_114
action_246 (158) = happyShift action_115
action_246 (159) = happyShift action_116
action_246 (160) = happyShift action_117
action_246 (161) = happyShift action_118
action_246 (162) = happyShift action_119
action_246 (163) = happyShift action_120
action_246 (164) = happyShift action_121
action_246 (165) = happyShift action_122
action_246 (166) = happyShift action_123
action_246 (171) = happyShift action_124
action_246 (173) = happyShift action_125
action_246 (174) = happyShift action_126
action_246 (175) = happyShift action_127
action_246 (176) = happyShift action_128
action_246 (177) = happyShift action_129
action_246 (178) = happyShift action_130
action_246 (184) = happyShift action_132
action_246 _ = happyReduce_77

action_247 _ = happyReduce_193

action_248 (112) = happyShift action_73
action_248 (133) = happyShift action_74
action_248 (134) = happyShift action_75
action_248 (150) = happyShift action_76
action_248 (182) = happyShift action_77
action_248 (183) = happyShift action_78
action_248 (184) = happyShift action_79
action_248 (52) = happyGoto action_279
action_248 (53) = happyGoto action_68
action_248 (55) = happyGoto action_69
action_248 (68) = happyGoto action_70
action_248 (69) = happyGoto action_71
action_248 (70) = happyGoto action_72
action_248 _ = happyFail (happyExpListPerState 248)

action_249 _ = happyReduce_108

action_250 (181) = happyShift action_253
action_250 (59) = happyGoto action_250
action_250 (106) = happyGoto action_278
action_250 _ = happyReduce_200

action_251 _ = happyReduce_110

action_252 _ = happyReduce_148

action_253 (182) = happyShift action_240
action_253 (60) = happyGoto action_277
action_253 _ = happyFail (happyExpListPerState 253)

action_254 _ = happyReduce_37

action_255 _ = happyReduce_199

action_256 (112) = happyShift action_73
action_256 (133) = happyShift action_74
action_256 (134) = happyShift action_75
action_256 (150) = happyShift action_76
action_256 (182) = happyShift action_77
action_256 (183) = happyShift action_78
action_256 (184) = happyShift action_79
action_256 (52) = happyGoto action_276
action_256 (53) = happyGoto action_68
action_256 (55) = happyGoto action_69
action_256 (68) = happyGoto action_70
action_256 (69) = happyGoto action_71
action_256 (70) = happyGoto action_72
action_256 _ = happyFail (happyExpListPerState 256)

action_257 (147) = happyShift action_208
action_257 (148) = happyShift action_209
action_257 (41) = happyGoto action_206
action_257 (98) = happyGoto action_275
action_257 _ = happyReduce_185

action_258 _ = happyReduce_117

action_259 _ = happyReduce_52

action_260 _ = happyReduce_114

action_261 _ = happyReduce_207

action_262 _ = happyReduce_40

action_263 _ = happyReduce_191

action_264 _ = happyReduce_45

action_265 _ = happyReduce_205

action_266 _ = happyReduce_46

action_267 _ = happyReduce_50

action_268 _ = happyReduce_29

action_269 (112) = happyShift action_73
action_269 (133) = happyShift action_74
action_269 (134) = happyShift action_75
action_269 (150) = happyShift action_76
action_269 (182) = happyShift action_77
action_269 (183) = happyShift action_78
action_269 (184) = happyShift action_79
action_269 (23) = happyGoto action_269
action_269 (50) = happyGoto action_270
action_269 (52) = happyGoto action_134
action_269 (53) = happyGoto action_68
action_269 (55) = happyGoto action_69
action_269 (68) = happyGoto action_70
action_269 (69) = happyGoto action_71
action_269 (70) = happyGoto action_72
action_269 (104) = happyGoto action_274
action_269 _ = happyReduce_196

action_270 _ = happyReduce_33

action_271 (185) = happyShift action_273
action_271 _ = happyFail (happyExpListPerState 271)

action_272 _ = happyReduce_144

action_273 _ = happyReduce_32

action_274 _ = happyReduce_197

action_275 (182) = happyShift action_281
action_275 _ = happyFail (happyExpListPerState 275)

action_276 (151) = happyShift action_109
action_276 (152) = happyShift action_110
action_276 (153) = happyShift action_111
action_276 (155) = happyShift action_112
action_276 (156) = happyShift action_113
action_276 (157) = happyShift action_114
action_276 (158) = happyShift action_115
action_276 (159) = happyShift action_116
action_276 (160) = happyShift action_117
action_276 (161) = happyShift action_118
action_276 (162) = happyShift action_119
action_276 (163) = happyShift action_120
action_276 (164) = happyShift action_121
action_276 (165) = happyShift action_122
action_276 (166) = happyShift action_123
action_276 (171) = happyShift action_124
action_276 (173) = happyShift action_125
action_276 (174) = happyShift action_126
action_276 (175) = happyShift action_127
action_276 (176) = happyShift action_128
action_276 (177) = happyShift action_129
action_276 (178) = happyShift action_130
action_276 (184) = happyShift action_132
action_276 (185) = happyShift action_280
action_276 _ = happyFail (happyExpListPerState 276)

action_277 _ = happyReduce_111

action_278 _ = happyReduce_201

action_279 (151) = happyShift action_109
action_279 (152) = happyShift action_110
action_279 (153) = happyShift action_111
action_279 (155) = happyShift action_112
action_279 (156) = happyShift action_113
action_279 (157) = happyShift action_114
action_279 (158) = happyShift action_115
action_279 (159) = happyShift action_116
action_279 (160) = happyShift action_117
action_279 (161) = happyShift action_118
action_279 (162) = happyShift action_119
action_279 (163) = happyShift action_120
action_279 (164) = happyShift action_121
action_279 (165) = happyShift action_122
action_279 (166) = happyShift action_123
action_279 (171) = happyShift action_124
action_279 (173) = happyShift action_125
action_279 (174) = happyShift action_126
action_279 (175) = happyShift action_127
action_279 (176) = happyShift action_128
action_279 (177) = happyShift action_129
action_279 (178) = happyShift action_130
action_279 (184) = happyShift action_132
action_279 _ = happyReduce_112

action_280 (112) = happyShift action_73
action_280 (130) = happyShift action_230
action_280 (133) = happyShift action_74
action_280 (134) = happyShift action_75
action_280 (142) = happyShift action_231
action_280 (150) = happyShift action_76
action_280 (182) = happyShift action_77
action_280 (183) = happyShift action_78
action_280 (184) = happyShift action_79
action_280 (52) = happyGoto action_222
action_280 (53) = happyGoto action_68
action_280 (55) = happyGoto action_69
action_280 (61) = happyGoto action_282
action_280 (62) = happyGoto action_224
action_280 (63) = happyGoto action_225
action_280 (65) = happyGoto action_226
action_280 (66) = happyGoto action_227
action_280 (68) = happyGoto action_70
action_280 (69) = happyGoto action_71
action_280 (70) = happyGoto action_72
action_280 _ = happyFail (happyExpListPerState 280)

action_281 _ = happyReduce_118

action_282 (143) = happyShift action_285
action_282 (67) = happyGoto action_283
action_282 (86) = happyGoto action_284
action_282 _ = happyReduce_161

action_283 _ = happyReduce_160

action_284 _ = happyReduce_120

action_285 (112) = happyShift action_73
action_285 (130) = happyShift action_230
action_285 (133) = happyShift action_74
action_285 (134) = happyShift action_75
action_285 (142) = happyShift action_231
action_285 (150) = happyShift action_76
action_285 (182) = happyShift action_77
action_285 (183) = happyShift action_78
action_285 (184) = happyShift action_79
action_285 (52) = happyGoto action_222
action_285 (53) = happyGoto action_68
action_285 (55) = happyGoto action_69
action_285 (61) = happyGoto action_286
action_285 (62) = happyGoto action_224
action_285 (63) = happyGoto action_225
action_285 (65) = happyGoto action_226
action_285 (66) = happyGoto action_227
action_285 (68) = happyGoto action_70
action_285 (69) = happyGoto action_71
action_285 (70) = happyGoto action_72
action_285 _ = happyFail (happyExpListPerState 285)

action_286 _ = happyReduce_121

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
	(HappyAbsSyn74  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn92  happy_var_3) `HappyStk`
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
happyReduction_18 (HappyAbsSyn81  happy_var_3)
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
happyReduction_20 (HappyAbsSyn91  happy_var_2)
	(HappyAbsSyn71  happy_var_1)
	 =  HappyAbsSyn15
		 (InheritanceSpecifier happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 16 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn73  happy_var_3) `HappyStk`
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
	(HappyAbsSyn97  happy_var_5) `HappyStk`
	(HappyAbsSyn77  happy_var_4) `HappyStk`
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
	(HappyAbsSyn87  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (EventDefinition happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 21 happyReduction_31
happyReduction_31 ((HappyAbsSyn39  happy_var_4) `HappyStk`
	(HappyAbsSyn95  happy_var_3) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (ModifierDefinition happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 22 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn78  happy_var_3) `HappyStk`
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
happyReduction_36 (HappyAbsSyn79  happy_var_2)
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
	(HappyAbsSyn88  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  29 happyReduction_39
happyReduction_39 (HappyAbsSyn75  happy_var_2)
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
	(HappyAbsSyn96  happy_var_2)
	_
	 =  HappyAbsSyn33
		 (happy_var_2
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  34 happyReduction_44
happyReduction_44 (HappyAbsSyn82  happy_var_2)
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
	(HappyAbsSyn98  happy_var_2)
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
	(HappyAbsSyn83  happy_var_2)
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
	(HappyAbsSyn93  happy_var_4) `HappyStk`
	(HappyTerminal (TIdent _ happy_var_3)) `HappyStk`
	(HappyAbsSyn85  happy_var_2) `HappyStk`
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
happyReduction_67 (HappyAbsSyn72  happy_var_1)
	 =  HappyAbsSyn46
		 (ElementaryTypeName happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  46 happyReduction_68
happyReduction_68 (HappyAbsSyn71  happy_var_1)
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
happyReduction_76 (HappyAbsSyn76  happy_var_2)
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

happyReduce_81 = happySpecReduce_1  52 happyReduction_81
happyReduction_81 (HappyAbsSyn55  happy_var_1)
	 =  HappyAbsSyn52
		 (happy_var_1
	)
happyReduction_81 _  = notHappyAtAll 

happyReduce_82 = happyReduce 4 52 happyReduction_82
happyReduction_82 (_ `HappyStk`
	(HappyAbsSyn57  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn52
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_83 = happySpecReduce_3  52 happyReduction_83
happyReduction_83 _
	(HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn52
		 (BracketsExp happy_var_2
	)
happyReduction_83 _ _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  52 happyReduction_84
happyReduction_84 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (ExponentExp happy_var_1 happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  52 happyReduction_85
happyReduction_85 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (MultiExp happy_var_1 happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  52 happyReduction_86
happyReduction_86 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (DivisionExp happy_var_1 happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_3  52 happyReduction_87
happyReduction_87 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (ModuloExp happy_var_1 happy_var_3
	)
happyReduction_87 _ _ _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_3  52 happyReduction_88
happyReduction_88 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (AdditionExp happy_var_1 happy_var_3
	)
happyReduction_88 _ _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_3  52 happyReduction_89
happyReduction_89 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (SubtractionExp happy_var_1 happy_var_3
	)
happyReduction_89 _ _ _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_3  52 happyReduction_90
happyReduction_90 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LShiftExp happy_var_1 happy_var_3
	)
happyReduction_90 _ _ _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_3  52 happyReduction_91
happyReduction_91 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (RShiftExp happy_var_1 happy_var_3
	)
happyReduction_91 _ _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_3  52 happyReduction_92
happyReduction_92 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitAndExp happy_var_1 happy_var_3
	)
happyReduction_92 _ _ _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_3  52 happyReduction_93
happyReduction_93 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitXOrExp happy_var_1 happy_var_3
	)
happyReduction_93 _ _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_3  52 happyReduction_94
happyReduction_94 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (BitOrExp happy_var_1 happy_var_3
	)
happyReduction_94 _ _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  52 happyReduction_95
happyReduction_95 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LThanExp happy_var_1 happy_var_3
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_3  52 happyReduction_96
happyReduction_96 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (GThanExp happy_var_1 happy_var_3
	)
happyReduction_96 _ _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_3  52 happyReduction_97
happyReduction_97 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (LThanEqExp happy_var_1 happy_var_3
	)
happyReduction_97 _ _ _  = notHappyAtAll 

happyReduce_98 = happySpecReduce_3  52 happyReduction_98
happyReduction_98 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (GThanEqExp happy_var_1 happy_var_3
	)
happyReduction_98 _ _ _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_3  52 happyReduction_99
happyReduction_99 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (EqualExp happy_var_1 happy_var_3
	)
happyReduction_99 _ _ _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_3  52 happyReduction_100
happyReduction_100 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (NotEqualExp happy_var_1 happy_var_3
	)
happyReduction_100 _ _ _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_3  52 happyReduction_101
happyReduction_101 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (AndExp happy_var_1 happy_var_3
	)
happyReduction_101 _ _ _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_3  52 happyReduction_102
happyReduction_102 (HappyAbsSyn52  happy_var_3)
	_
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (OrExp happy_var_1 happy_var_3
	)
happyReduction_102 _ _ _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_1  52 happyReduction_103
happyReduction_103 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn52
		 (happy_var_1
	)
happyReduction_103 _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_2  53 happyReduction_104
happyReduction_104 (HappyAbsSyn46  happy_var_2)
	_
	 =  HappyAbsSyn53
		 (happy_var_2
	)
happyReduction_104 _ _  = notHappyAtAll 

happyReduce_105 = happyReduce 4 54 happyReduction_105
happyReduction_105 (_ `HappyStk`
	(HappyAbsSyn89  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn54
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_106 = happySpecReduce_3  55 happyReduction_106
happyReduction_106 (HappyTerminal (TIdent _ happy_var_3))
	(HappyTerminal (TPeriod _ happy_var_2))
	(HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn55
		 (MemberAccess happy_var_1 happy_var_2 (Identifier happy_var_3)
	)
happyReduction_106 _ _ _  = notHappyAtAll 

happyReduce_107 = happyReduce 4 56 happyReduction_107
happyReduction_107 (_ `HappyStk`
	(HappyAbsSyn57  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn56
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_108 = happySpecReduce_3  57 happyReduction_108
happyReduction_108 _
	(HappyAbsSyn94  happy_var_2)
	_
	 =  HappyAbsSyn57
		 (NameValues happy_var_2
	)
happyReduction_108 _ _ _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_1  57 happyReduction_109
happyReduction_109 (HappyAbsSyn90  happy_var_1)
	 =  HappyAbsSyn57
		 (ExpLst happy_var_1
	)
happyReduction_109 _  = notHappyAtAll 

happyReduce_110 = happySpecReduce_2  58 happyReduction_110
happyReduction_110 (HappyAbsSyn80  happy_var_2)
	(HappyAbsSyn60  happy_var_1)
	 =  HappyAbsSyn58
		 (NameValueList happy_var_1 happy_var_2
	)
happyReduction_110 _ _  = notHappyAtAll 

happyReduce_111 = happySpecReduce_2  59 happyReduction_111
happyReduction_111 (HappyAbsSyn60  happy_var_2)
	_
	 =  HappyAbsSyn59
		 (happy_var_2
	)
happyReduction_111 _ _  = notHappyAtAll 

happyReduce_112 = happySpecReduce_3  60 happyReduction_112
happyReduction_112 (HappyAbsSyn52  happy_var_3)
	_
	(HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn60
		 (NameValue (Identifier happy_var_1) happy_var_3
	)
happyReduction_112 _ _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_1  61 happyReduction_113
happyReduction_113 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn61
		 (happy_var_1
	)
happyReduction_113 _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_2  61 happyReduction_114
happyReduction_114 _
	(HappyAbsSyn62  happy_var_1)
	 =  HappyAbsSyn61
		 (happy_var_1
	)
happyReduction_114 _ _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_1  62 happyReduction_115
happyReduction_115 (HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn62
		 (happy_var_1
	)
happyReduction_115 _  = notHappyAtAll 

happyReduce_116 = happySpecReduce_1  62 happyReduction_116
happyReduction_116 (HappyAbsSyn65  happy_var_1)
	 =  HappyAbsSyn62
		 (happy_var_1
	)
happyReduction_116 _  = notHappyAtAll 

happyReduce_117 = happySpecReduce_2  63 happyReduction_117
happyReduction_117 (HappyAbsSyn52  happy_var_2)
	_
	 =  HappyAbsSyn63
		 (happy_var_2
	)
happyReduction_117 _ _  = notHappyAtAll 

happyReduce_118 = happySpecReduce_3  64 happyReduction_118
happyReduction_118 (HappyTerminal (TIdent _ happy_var_3))
	(HappyAbsSyn98  happy_var_2)
	(HappyAbsSyn46  happy_var_1)
	 =  HappyAbsSyn52
		 (VariableDeclaration happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_118 _ _ _  = notHappyAtAll 

happyReduce_119 = happySpecReduce_1  65 happyReduction_119
happyReduction_119 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn65
		 (happy_var_1
	)
happyReduction_119 _  = notHappyAtAll 

happyReduce_120 = happyReduce 6 66 happyReduction_120
happyReduction_120 ((HappyAbsSyn86  happy_var_6) `HappyStk`
	(HappyAbsSyn61  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn52  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn52
		 (IfStatement happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest

happyReduce_121 = happySpecReduce_2  67 happyReduction_121
happyReduction_121 (HappyAbsSyn61  happy_var_2)
	_
	 =  HappyAbsSyn67
		 (ElseState happy_var_2
	)
happyReduction_121 _ _  = notHappyAtAll 

happyReduce_122 = happySpecReduce_1  68 happyReduction_122
happyReduction_122 (HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn52
		 (BoolExpression happy_var_1
	)
happyReduction_122 _  = notHappyAtAll 

happyReduce_123 = happySpecReduce_1  68 happyReduction_123
happyReduction_123 (HappyAbsSyn70  happy_var_1)
	 =  HappyAbsSyn52
		 (NumExpression happy_var_1
	)
happyReduction_123 _  = notHappyAtAll 

happyReduce_124 = happySpecReduce_1  68 happyReduction_124
happyReduction_124 (HappyTerminal (TStringLiteral _ happy_var_1))
	 =  HappyAbsSyn52
		 (StringExpression happy_var_1
	)
happyReduction_124 _  = notHappyAtAll 

happyReduce_125 = happySpecReduce_1  68 happyReduction_125
happyReduction_125 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn52
		 (IdentExpression happy_var_1
	)
happyReduction_125 _  = notHappyAtAll 

happyReduce_126 = happySpecReduce_1  69 happyReduction_126
happyReduction_126 (HappyTerminal (TTrue _ happy_var_1))
	 =  HappyAbsSyn69
		 (BooleanLiteral happy_var_1
	)
happyReduction_126 _  = notHappyAtAll 

happyReduce_127 = happySpecReduce_1  69 happyReduction_127
happyReduction_127 (HappyTerminal (TFalse _ happy_var_1))
	 =  HappyAbsSyn69
		 (BooleanLiteral happy_var_1
	)
happyReduction_127 _  = notHappyAtAll 

happyReduce_128 = happySpecReduce_2  70 happyReduction_128
happyReduction_128 _
	(HappyTerminal (TDec _ happy_var_1))
	 =  HappyAbsSyn70
		 (happy_var_1
	)
happyReduction_128 _ _  = notHappyAtAll 

happyReduce_129 = happySpecReduce_1  71 happyReduction_129
happyReduction_129 (HappyTerminal (TIdent _ happy_var_1))
	 =  HappyAbsSyn71
		 (UserDefinedTypeName happy_var_1
	)
happyReduction_129 _  = notHappyAtAll 

happyReduce_130 = happySpecReduce_1  72 happyReduction_130
happyReduction_130 (HappyTerminal (TAddr _ happy_var_1))
	 =  HappyAbsSyn72
		 (AddrType happy_var_1
	)
happyReduction_130 _  = notHappyAtAll 

happyReduce_131 = happySpecReduce_1  72 happyReduction_131
happyReduction_131 (HappyTerminal (TBooleanLit _ happy_var_1))
	 =  HappyAbsSyn72
		 (BoolType happy_var_1
	)
happyReduction_131 _  = notHappyAtAll 

happyReduce_132 = happySpecReduce_1  72 happyReduction_132
happyReduction_132 (HappyTerminal (TVar _ happy_var_1))
	 =  HappyAbsSyn72
		 (VarType happy_var_1
	)
happyReduction_132 _  = notHappyAtAll 

happyReduce_133 = happySpecReduce_1  72 happyReduction_133
happyReduction_133 (HappyTerminal (TStringAs _ happy_var_1))
	 =  HappyAbsSyn72
		 (StringType happy_var_1
	)
happyReduction_133 _  = notHappyAtAll 

happyReduce_134 = happySpecReduce_1  73 happyReduction_134
happyReduction_134 (HappyAbsSyn99  happy_var_1)
	 =  HappyAbsSyn73
		 (happy_var_1
	)
happyReduction_134 _  = notHappyAtAll 

happyReduce_135 = happySpecReduce_0  73 happyReduction_135
happyReduction_135  =  HappyAbsSyn73
		 ([]
	)

happyReduce_136 = happySpecReduce_1  74 happyReduction_136
happyReduction_136 (HappyAbsSyn100  happy_var_1)
	 =  HappyAbsSyn74
		 (happy_var_1
	)
happyReduction_136 _  = notHappyAtAll 

happyReduce_137 = happySpecReduce_0  74 happyReduction_137
happyReduction_137  =  HappyAbsSyn74
		 ([]
	)

happyReduce_138 = happySpecReduce_1  75 happyReduction_138
happyReduction_138 (HappyAbsSyn101  happy_var_1)
	 =  HappyAbsSyn75
		 (happy_var_1
	)
happyReduction_138 _  = notHappyAtAll 

happyReduce_139 = happySpecReduce_0  75 happyReduction_139
happyReduction_139  =  HappyAbsSyn75
		 ([]
	)

happyReduce_140 = happySpecReduce_1  76 happyReduction_140
happyReduction_140 (HappyAbsSyn102  happy_var_1)
	 =  HappyAbsSyn76
		 (happy_var_1
	)
happyReduction_140 _  = notHappyAtAll 

happyReduce_141 = happySpecReduce_0  76 happyReduction_141
happyReduction_141  =  HappyAbsSyn76
		 ([]
	)

happyReduce_142 = happySpecReduce_1  77 happyReduction_142
happyReduction_142 (HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn77
		 (happy_var_1
	)
happyReduction_142 _  = notHappyAtAll 

happyReduce_143 = happySpecReduce_0  77 happyReduction_143
happyReduction_143  =  HappyAbsSyn77
		 ([]
	)

happyReduce_144 = happySpecReduce_1  78 happyReduction_144
happyReduction_144 (HappyAbsSyn104  happy_var_1)
	 =  HappyAbsSyn78
		 (happy_var_1
	)
happyReduction_144 _  = notHappyAtAll 

happyReduce_145 = happySpecReduce_0  78 happyReduction_145
happyReduction_145  =  HappyAbsSyn78
		 ([]
	)

happyReduce_146 = happySpecReduce_1  79 happyReduction_146
happyReduction_146 (HappyAbsSyn105  happy_var_1)
	 =  HappyAbsSyn79
		 (happy_var_1
	)
happyReduction_146 _  = notHappyAtAll 

happyReduce_147 = happySpecReduce_0  79 happyReduction_147
happyReduction_147  =  HappyAbsSyn79
		 ([]
	)

happyReduce_148 = happySpecReduce_1  80 happyReduction_148
happyReduction_148 (HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn80
		 (happy_var_1
	)
happyReduction_148 _  = notHappyAtAll 

happyReduce_149 = happySpecReduce_0  80 happyReduction_149
happyReduction_149  =  HappyAbsSyn80
		 ([]
	)

happyReduce_150 = happySpecReduce_1  81 happyReduction_150
happyReduction_150 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn81
		 (happy_var_1
	)
happyReduction_150 _  = notHappyAtAll 

happyReduce_151 = happySpecReduce_0  81 happyReduction_151
happyReduction_151  =  HappyAbsSyn81
		 ([]
	)

happyReduce_152 = happySpecReduce_1  82 happyReduction_152
happyReduction_152 (HappyAbsSyn108  happy_var_1)
	 =  HappyAbsSyn82
		 (happy_var_1
	)
happyReduction_152 _  = notHappyAtAll 

happyReduce_153 = happySpecReduce_0  82 happyReduction_153
happyReduction_153  =  HappyAbsSyn82
		 ([]
	)

happyReduce_154 = happySpecReduce_1  83 happyReduction_154
happyReduction_154 (HappyAbsSyn109  happy_var_1)
	 =  HappyAbsSyn83
		 (happy_var_1
	)
happyReduction_154 _  = notHappyAtAll 

happyReduce_155 = happySpecReduce_0  83 happyReduction_155
happyReduction_155  =  HappyAbsSyn83
		 ([]
	)

happyReduce_156 = happySpecReduce_1  84 happyReduction_156
happyReduction_156 (HappyAbsSyn32  happy_var_1)
	 =  HappyAbsSyn84
		 ([happy_var_1]
	)
happyReduction_156 _  = notHappyAtAll 

happyReduce_157 = happySpecReduce_0  84 happyReduction_157
happyReduction_157  =  HappyAbsSyn84
		 ([]
	)

happyReduce_158 = happySpecReduce_1  85 happyReduction_158
happyReduction_158 (HappyAbsSyn47  happy_var_1)
	 =  HappyAbsSyn85
		 ([happy_var_1]
	)
happyReduction_158 _  = notHappyAtAll 

happyReduce_159 = happySpecReduce_0  85 happyReduction_159
happyReduction_159  =  HappyAbsSyn85
		 ([]
	)

happyReduce_160 = happySpecReduce_1  86 happyReduction_160
happyReduction_160 (HappyAbsSyn67  happy_var_1)
	 =  HappyAbsSyn86
		 ([happy_var_1]
	)
happyReduction_160 _  = notHappyAtAll 

happyReduce_161 = happySpecReduce_0  86 happyReduction_161
happyReduction_161  =  HappyAbsSyn86
		 ([]
	)

happyReduce_162 = happySpecReduce_1  87 happyReduction_162
happyReduction_162 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn87
		 ([happy_var_1]
	)
happyReduction_162 _  = notHappyAtAll 

happyReduce_163 = happySpecReduce_0  87 happyReduction_163
happyReduction_163  =  HappyAbsSyn87
		 ([]
	)

happyReduce_164 = happySpecReduce_1  88 happyReduction_164
happyReduction_164 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn88
		 ([happy_var_1]
	)
happyReduction_164 _  = notHappyAtAll 

happyReduce_165 = happySpecReduce_0  88 happyReduction_165
happyReduction_165  =  HappyAbsSyn88
		 ([]
	)

happyReduce_166 = happySpecReduce_1  89 happyReduction_166
happyReduction_166 (HappyAbsSyn52  happy_var_1)
	 =  HappyAbsSyn89
		 ([happy_var_1]
	)
happyReduction_166 _  = notHappyAtAll 

happyReduce_167 = happySpecReduce_0  89 happyReduction_167
happyReduction_167  =  HappyAbsSyn89
		 ([]
	)

happyReduce_168 = happySpecReduce_1  90 happyReduction_168
happyReduction_168 (HappyAbsSyn50  happy_var_1)
	 =  HappyAbsSyn90
		 ([happy_var_1]
	)
happyReduction_168 _  = notHappyAtAll 

happyReduce_169 = happySpecReduce_0  90 happyReduction_169
happyReduction_169  =  HappyAbsSyn90
		 ([]
	)

happyReduce_170 = happySpecReduce_1  91 happyReduction_170
happyReduction_170 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn91
		 ([happy_var_1]
	)
happyReduction_170 _  = notHappyAtAll 

happyReduce_171 = happySpecReduce_0  91 happyReduction_171
happyReduction_171  =  HappyAbsSyn91
		 ([]
	)

happyReduce_172 = happySpecReduce_1  92 happyReduction_172
happyReduction_172 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn92
		 ([happy_var_1]
	)
happyReduction_172 _  = notHappyAtAll 

happyReduce_173 = happySpecReduce_0  92 happyReduction_173
happyReduction_173  =  HappyAbsSyn92
		 ([]
	)

happyReduce_174 = happySpecReduce_1  93 happyReduction_174
happyReduction_174 (HappyAbsSyn49  happy_var_1)
	 =  HappyAbsSyn93
		 ([happy_var_1]
	)
happyReduction_174 _  = notHappyAtAll 

happyReduce_175 = happySpecReduce_0  93 happyReduction_175
happyReduction_175  =  HappyAbsSyn93
		 ([]
	)

happyReduce_176 = happySpecReduce_1  94 happyReduction_176
happyReduction_176 (HappyAbsSyn58  happy_var_1)
	 =  HappyAbsSyn94
		 ([happy_var_1]
	)
happyReduction_176 _  = notHappyAtAll 

happyReduce_177 = happySpecReduce_0  94 happyReduction_177
happyReduction_177  =  HappyAbsSyn94
		 ([]
	)

happyReduce_178 = happySpecReduce_1  95 happyReduction_178
happyReduction_178 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn95
		 ([happy_var_1]
	)
happyReduction_178 _  = notHappyAtAll 

happyReduce_179 = happySpecReduce_0  95 happyReduction_179
happyReduction_179  =  HappyAbsSyn95
		 ([]
	)

happyReduce_180 = happySpecReduce_1  96 happyReduction_180
happyReduction_180 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn96
		 ([happy_var_1]
	)
happyReduction_180 _  = notHappyAtAll 

happyReduce_181 = happySpecReduce_0  96 happyReduction_181
happyReduction_181  =  HappyAbsSyn96
		 ([]
	)

happyReduce_182 = happySpecReduce_1  97 happyReduction_182
happyReduction_182 (HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn97
		 ([happy_var_1]
	)
happyReduction_182 _  = notHappyAtAll 

happyReduce_183 = happySpecReduce_0  97 happyReduction_183
happyReduction_183  =  HappyAbsSyn97
		 ([]
	)

happyReduce_184 = happySpecReduce_1  98 happyReduction_184
happyReduction_184 (HappyAbsSyn41  happy_var_1)
	 =  HappyAbsSyn98
		 ([happy_var_1]
	)
happyReduction_184 _  = notHappyAtAll 

happyReduce_185 = happySpecReduce_0  98 happyReduction_185
happyReduction_185  =  HappyAbsSyn98
		 ([]
	)

happyReduce_186 = happySpecReduce_1  99 happyReduction_186
happyReduction_186 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn99
		 ([happy_var_1]
	)
happyReduction_186 _  = notHappyAtAll 

happyReduce_187 = happySpecReduce_2  99 happyReduction_187
happyReduction_187 (HappyAbsSyn99  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn99
		 (happy_var_1 : happy_var_2
	)
happyReduction_187 _ _  = notHappyAtAll 

happyReduce_188 = happySpecReduce_1  100 happyReduction_188
happyReduction_188 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn100
		 ([happy_var_1]
	)
happyReduction_188 _  = notHappyAtAll 

happyReduce_189 = happySpecReduce_2  100 happyReduction_189
happyReduction_189 (HappyAbsSyn100  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn100
		 (happy_var_1 : happy_var_2
	)
happyReduction_189 _ _  = notHappyAtAll 

happyReduce_190 = happySpecReduce_1  101 happyReduction_190
happyReduction_190 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn101
		 ([happy_var_1]
	)
happyReduction_190 _  = notHappyAtAll 

happyReduce_191 = happySpecReduce_2  101 happyReduction_191
happyReduction_191 (HappyAbsSyn101  happy_var_2)
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn101
		 (happy_var_1 : happy_var_2
	)
happyReduction_191 _ _  = notHappyAtAll 

happyReduce_192 = happySpecReduce_1  102 happyReduction_192
happyReduction_192 (HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn102
		 ([happy_var_1]
	)
happyReduction_192 _  = notHappyAtAll 

happyReduce_193 = happySpecReduce_2  102 happyReduction_193
happyReduction_193 (HappyAbsSyn102  happy_var_2)
	(HappyAbsSyn51  happy_var_1)
	 =  HappyAbsSyn102
		 (happy_var_1 : happy_var_2
	)
happyReduction_193 _ _  = notHappyAtAll 

happyReduce_194 = happySpecReduce_1  103 happyReduction_194
happyReduction_194 (HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn103
		 ([happy_var_1]
	)
happyReduction_194 _  = notHappyAtAll 

happyReduce_195 = happySpecReduce_2  103 happyReduction_195
happyReduction_195 (HappyAbsSyn103  happy_var_2)
	(HappyAbsSyn37  happy_var_1)
	 =  HappyAbsSyn103
		 (happy_var_1 : happy_var_2
	)
happyReduction_195 _ _  = notHappyAtAll 

happyReduce_196 = happySpecReduce_1  104 happyReduction_196
happyReduction_196 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn104
		 ([happy_var_1]
	)
happyReduction_196 _  = notHappyAtAll 

happyReduce_197 = happySpecReduce_2  104 happyReduction_197
happyReduction_197 (HappyAbsSyn104  happy_var_2)
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn104
		 (happy_var_1 : happy_var_2
	)
happyReduction_197 _ _  = notHappyAtAll 

happyReduce_198 = happySpecReduce_1  105 happyReduction_198
happyReduction_198 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn105
		 ([happy_var_1]
	)
happyReduction_198 _  = notHappyAtAll 

happyReduce_199 = happySpecReduce_2  105 happyReduction_199
happyReduction_199 (HappyAbsSyn105  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn105
		 (happy_var_1 : happy_var_2
	)
happyReduction_199 _ _  = notHappyAtAll 

happyReduce_200 = happySpecReduce_1  106 happyReduction_200
happyReduction_200 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn106
		 ([happy_var_1]
	)
happyReduction_200 _  = notHappyAtAll 

happyReduce_201 = happySpecReduce_2  106 happyReduction_201
happyReduction_201 (HappyAbsSyn106  happy_var_2)
	(HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn106
		 (happy_var_1 : happy_var_2
	)
happyReduction_201 _ _  = notHappyAtAll 

happyReduce_202 = happySpecReduce_1  107 happyReduction_202
happyReduction_202 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn107
		 ([happy_var_1]
	)
happyReduction_202 _  = notHappyAtAll 

happyReduce_203 = happySpecReduce_2  107 happyReduction_203
happyReduction_203 (HappyAbsSyn107  happy_var_2)
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn107
		 (happy_var_1 : happy_var_2
	)
happyReduction_203 _ _  = notHappyAtAll 

happyReduce_204 = happySpecReduce_1  108 happyReduction_204
happyReduction_204 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn108
		 ([happy_var_1]
	)
happyReduction_204 _  = notHappyAtAll 

happyReduce_205 = happySpecReduce_2  108 happyReduction_205
happyReduction_205 (HappyAbsSyn108  happy_var_2)
	(HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn108
		 (happy_var_1 : happy_var_2
	)
happyReduction_205 _ _  = notHappyAtAll 

happyReduce_206 = happySpecReduce_1  109 happyReduction_206
happyReduction_206 (HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn109
		 ([happy_var_1]
	)
happyReduction_206 _  = notHappyAtAll 

happyReduce_207 = happySpecReduce_2  109 happyReduction_207
happyReduction_207 (HappyAbsSyn109  happy_var_2)
	(HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn109
		 (happy_var_1 : happy_var_2
	)
happyReduction_207 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 186 186 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TReservedOp _ -> cont 110;
	TVers _ -> cont 111;
	TDec _ happy_dollar_dollar -> cont 112;
	TExp _ happy_dollar_dollar -> cont 113;
	TInt _ happy_dollar_dollar -> cont 114;
	TNumUnit _ -> cont 115;
	TPragma _ -> cont 116;
	TImport _ -> cont 117;
	TExternal _ happy_dollar_dollar -> cont 118;
	TPublic _ happy_dollar_dollar -> cont 119;
	TIntern _ happy_dollar_dollar -> cont 120;
	TPriv _ happy_dollar_dollar -> cont 121;
	TConst _ happy_dollar_dollar -> cont 122;
	TStringAs _ happy_dollar_dollar -> cont 123;
	TContract _ -> cont 124;
	TLibrary _ -> cont 125;
	TInterface _ -> cont 126;
	TFuncDef _ -> cont 127;
	TAddr _ happy_dollar_dollar -> cont 128;
	TBooleanLit _ happy_dollar_dollar -> cont 129;
	TVar _ happy_dollar_dollar -> cont 130;
	TUsing _ happy_dollar_dollar -> cont 131;
	TFor _ happy_dollar_dollar -> cont 132;
	TTrue _ happy_dollar_dollar -> cont 133;
	TFalse _ happy_dollar_dollar -> cont 134;
	TAs _ -> cont 135;
	TIs _ -> cont 136;
	TFrom _ -> cont 137;
	TView _ happy_dollar_dollar -> cont 138;
	TPure _ happy_dollar_dollar -> cont 139;
	TPayable _ happy_dollar_dollar -> cont 140;
	TReturns _ -> cont 141;
	TIf _ -> cont 142;
	TElse _ -> cont 143;
	TEvent _ -> cont 144;
	TAnon _ -> cont 145;
	TModi _ -> cont 146;
	TMem _  happy_dollar_dollar -> cont 147;
	TStorage _ happy_dollar_dollar -> cont 148;
	TEnum _ -> cont 149;
	TNew _ -> cont 150;
	TIncr _ -> cont 151;
	TDecr _ -> cont 152;
	THat _ -> cont 153;
	TNegate _ -> cont 154;
	TAnd _ -> cont 155;
	TBitAnd _ -> cont 156;
	TOr _ -> cont 157;
	TBOr _ -> cont 158;
	TInEqual _ -> cont 159;
	TLThan _ -> cont 160;
	TGThan _ -> cont 161;
	TRShift _ -> cont 162;
	TLShift _ -> cont 163;
	TLTEq _ -> cont 164;
	TGTEq _ -> cont 165;
	TEquality _ -> cont 166;
	TLCurl _ -> cont 167;
	TRCurl _ -> cont 168;
	TLBrack _ -> cont 169;
	TRBrack _ -> cont 170;
	TPeriod _ happy_dollar_dollar -> cont 171;
	TEquals _ -> cont 172;
	TMult _ -> cont 173;
	TDiv _ -> cont 174;
	TExpSym _ -> cont 175;
	TModul _ -> cont 176;
	TOp _ happy_dollar_dollar -> cont 177;
	TSub _ -> cont 178;
	TSemiCol _ -> cont 179;
	TCol _ -> cont 180;
	TComma _ -> cont 181;
	TIdent _ happy_dollar_dollar -> cont 182;
	TStringLiteral _ happy_dollar_dollar -> cont 183;
	TLeftParen _ -> cont 184;
	TRightParen _ -> cont 185;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 186 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
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
{-# LINE 1 "D:\\GitHub\\haskell-platform\\build\\ghc-bindist\\local\\lib/include\\ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "C:\\Users\\randy\\AppData\\Local\\Temp\\ghc1316_0\\ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\GenericTemplate.hs" #-}

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

{-# LINE 137 "templates\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






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
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

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
happyFail explist i tk (HappyState (action)) sts stk =
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

{-# LINE 333 "templates\\GenericTemplate.hs" #-}
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
