module Test where
import Test.HUnit  
import Parser
import Lexer

-- Run parse allows the ability to run the parser from within GHCI, passing in the test case that failed

runTest n = (reverse(solidiscan(alexScanTokens2 n)))
perseTree = solidiscan (alexScanTokens2 "pragma solidity;")
test_ex = show(reverse(perseTree))

test2 = "pragma solidity ^1.0.0;\
         \contract this_is_a_contract1 {\
         \    \
         \}"

test3 = "pragma solidity ^1.1.0;\
         \contract contract1 {\
         \}\
         \contract contract2 {\
         \}\
         \contract contract3 {\
         \}\
         \contract contract4 {\
          \}\
         \contract contract5 {\
         \}\
         \contract contract6 {\
         \}"


test4 = "pragma solidity ^1.1.1; \
         \contract this_is_a_contract1 { \
         \   address public bank_account1; \
         \ } \
         \contract this_is_a_contract2 { \
         \   var public bank_account2; \
         \   function private bank_account2; \
         \ }"

test5 = "pragma solidity ^1.1.0;\
         \contract contract1 {\
         \   test public bank_acc1; \
         \}\
         \contract contract2 {\
         \   var3 internal bank_acc2; \
         \}"

test6 = "pragma solidity ^2.0.9;\
         \contract contract1 {\
         \   test public bank_acc1 = expr; \
         \}"

test7 = "pragma solidity ^1.1.0;\
         \contract contract1 {\
         \   address public bank_acc1; \
         \}\
         \contract contract2 {\
         \   constant internal bank_acc2; \
         \}"
        
-- creating a test case for the pragma source unit
test1 = TestList [ "Test 1: Pragma Directive Parsing Version" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\"))]" ~=? (show(reverse(solidiscan(alexScanTokens2 "pragma solidity ^0.1.0;")))),
                   "Test 2: Contract Def [Empty Contract]" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"this_is_a_contract1\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test2)))),
                   "Test 3: Multiple Empty Contract Assignments" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") []),ContractDef (Contract (Identifier \"contract2\") []),ContractDef (Contract (Identifier \"contract3\") []),ContractDef (Contract (Identifier \"contract4\") []),ContractDef (Contract (Identifier \"contract5\") []),ContractDef (Contract (Identifier \"contract6\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test3)))),
                   "Test 4: Var/Func/Contract Assignments" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef(Contract (Identifier \"this_is_a_contract1\") [ContractContents (StateVariableDeclaration (ElemType \"address\") (Identifier \"bank_account1\"))]),ContractDef (Contract \"this_is_a_contract2\" [ContractContents (StateVariableDeclaration (ElemType \"var\") \"bank_account2\")])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test4)))),
                   "Test 5: UserDefined TypeName " ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"test\") [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [])]),ContractDef (Contract (Identifier \"contract2\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"var3\") [InternalKeyword \"internal\"] (Identifier \"bank_acc2\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test5)))),
                   "Test 6: UserDefined TypeName + Expression Assignment" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"test\") [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [Expression \"expr\"])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test6)))),
                   "Test 7: Variable Dec Keywords " ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName \"address\") [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [])]),ContractDef (Contract (Identifier \"contract2\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"var3\") [InternalKeyword \"internal\"] (Identifier \"bank_acc2\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test7))))]