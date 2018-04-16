module Test where
import Test.HUnit  
import Solidiscan.Parser
import Solidiscan.Lexer
import Solidiscan.AST
import Analysis.Visibility_Check
import Helper_Functions

-- Run parse allows the ability to run the parser from within GHCI, passing in the test case that failed
-- runTest n = (reverse(solidiscan(alexScanTokens2 n)))

-- Using function composition it is possible to remove the 'n' from both
-- sides of the function
runTest :: String -> [ProgSource]
runTest = reverse . solidiscan . alexScanTokens2 

-- filtEmpty :: [Solidiscan.AST.SourceUnit] -> [Solidiscan.AST.SourceUnit] 
-- filtEmpty p (SourceUnit lol) = SourceUnit (filter p lol)
-- ilterEmpt lst n = filter (not . n) lst

-- Creating a list of unit tests for each element.
-- TODO: Finish test cases for basic solidity parser
test1 = TestList [ "Test 1: Pragma Directive Parsing Version" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\"))]" ~=? (show $ runTest "pragma solidity ^0.1.0;"),
                   "Test 2: Contract Def [Empty Contract]" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"this_is_a_contract1\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test2)))),
                   "Test 3: Multiple Empty Contract Assignments" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") []),ContractDef (Contract (Identifier \"contract2\") []),ContractDef (Contract (Identifier \"contract3\") []),ContractDef (Contract (Identifier \"contract4\") []),ContractDef (Contract (Identifier \"contract5\") []),ContractDef (Contract (Identifier \"contract6\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test3)))),
                   "Test 4: Var/Func/Contract Assignments" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef(Contract (Identifier \"this_is_a_contract1\") [ContractContents (StateVariableDeclaration (ElemType \"address\") (Identifier \"bank_account1\"))]),ContractDef (Contract \"this_is_a_contract2\" [ContractContents (StateVariableDeclaration (ElemType \"var\") \"bank_account2\")])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test4)))),
                   "Test 5: UserDefined TypeName " ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"test\") [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [])]),ContractDef (Contract (Identifier \"contract2\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"var3\") [InternalKeyword \"internal\"] (Identifier \"bank_acc2\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test5)))),
                   "Test 6: UserDefined TypeName + Expression Assignment" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"test\") [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [Expression \"expr\"])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test6)))),
                   "Test 7: Variable Dec Keywords " ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"contract1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName (AddrType \"address\")) [PublicKeyword \"public\"] (Identifier \"bank_acc1\") [])]),ContractDef (Contract (Identifier \"contract2\") [ContractContents (StateVariableDeclaration (UserDefinedTypeName \"var3\") [InternalKeyword \"internal\"] (Identifier \"bank_acc2\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test7)))),
                   "Test 8: Multiple Address Assignment Variable Tests" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"test_con1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName (AddrType \"address\")) [PublicKeyword \"public\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (AddrType \"address\")) [PrivateKeyword \"private\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (AddrType \"address\")) [InternalKeyword \"internal\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (AddrType \"address\")) [ConstantKeyword \"constant\"] (Identifier \"test\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test8)))),
                   "Test 9: Multiple Bool Assignment Variable Tests" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"test_con1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName (BoolType \"bool\")) [PublicKeyword \"public\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (BoolType \"bool\")) [PrivateKeyword \"private\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (BoolType \"bool\")) [InternalKeyword \"internal\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (BoolType \"bool\")) [ConstantKeyword \"constant\"] (Identifier \"test\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test9)))),
                   "Test 10: Multiple Var Assignment Variable Tests" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"test_con1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName (VarType \"var\")) [PublicKeyword \"public\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (VarType \"var\")) [PrivateKeyword \"private\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (VarType \"var\")) [InternalKeyword \"internal\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (VarType \"var\")) [ConstantKeyword \"constant\"] (Identifier \"test\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test10)))),
                   "Test 11: Multiple String Assignment Variable Tests" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"test_con1\") [ContractContents (StateVariableDeclaration (ElementaryTypeName (StringType \"string\")) [PublicKeyword \"public\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (StringType \"string\")) [PrivateKeyword \"private\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (StringType \"string\")) [InternalKeyword \"internal\"] (Identifier \"test\") []),ContractContents (StateVariableDeclaration (ElementaryTypeName (StringType \"string\")) [ConstantKeyword \"constant\"] (Identifier \"test\") [])])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test11)))),
                   "Test 12: Import * As Test" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ImportUnit (ImportMulti \"*\" \"testName\" \"from\" \"filename\"),ContractDef (Contract (Identifier \"test_12\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test12)))),
                   "Test 13: Single Line Comments" ~: "[SourceUnit (PragmaDirective (PragmaName \"solidity\")),ContractDef (Contract (Identifier \"this_is_a_contract1\") [])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test13))))]

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
          \   var3 internal bank_acc2; \
          \}"

test8 = "pragma solidity ^0.3.0;\
        \contract test_con1 {\
        \    address public test;\
        \    address private test;\
        \    address internal test;\
        \    address constant test;\
        \ }"

test9 = "pragma solidity ^0.3.0;\
        \contract test_con1 {\
        \    bool public test; \
        \    bool private test;\
        \    bool internal test;\
        \    bool constant test;\
        \ }"

test10 = "pragma solidity ^0.3.0;\
        \contract test_con1 {\
        \    var public test;\
        \    var private test;\
        \    var internal test;\
        \    var constant test;\
        \ }"

test11 = "pragma solidity ^0.3.0;\
        \contract test_con1 {\
        \    string public test;\
        \    string private test;\
        \    string internal test;\
        \    string constant test;\
        \ }"
          
-- test for imports
test12 = "pragma solidity ^0.4.0;\
          \import * as testName from \"filename\";\
          \contract test_12 {\
          \}"
  
test13 = "pragma solidity ^1.0.0;\
          \//this is a comment \n \
          \contract this_is_a_contract1 {\
          \ // another comment \n \
          \}"

testContract1 = "contract Fund { mapping(address => uint) shares; mapping(address => uint) balances; function withdraw() public { if (msg.sender.send(shares[msg.sender])) {shares[msg.sender] = 0;}}}"
testContract2 = "contract Fund { mapping(address => uint) shares; mapping(address => uint) balances; function withdraw() public { if (msg.sender.send(shares[msg.sender])) {shares[msg.sender] = 0;}}} contract Fund2 { mapping(address => uint) shares2; mapping(address => uint) balances2; function withdraw2() public { if (msg.sender.send(shares[msg.sender])) {shares[msg.sender] = 0;}}}"
-- TODO Finish the test cases for function visibility
{- testFunctionViews = TestList ["Test 1: No Function Visibility Specified" ~: "(Info \"Function Visibility\" \"No function visibility specified.\")" ~=? (show(funcVisCheck $ listConts $ runTest "pragma solidity ^0.1.0; contract test {function test() {}}"))]

test1in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() private {} }"
test2in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() private {} function test2() public {}}"
test3in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() payable {} function test2() public {}}"
test4in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() pure {} function test2() public {}}"
test5in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() pure {} function test2() private {} function test3() {} function test4() payable{}}"
test6in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() private {} } contract test_con2 { function test3() private{}}"
test7in = contractContentsGetter $ listConts $ runTest "pragma solidity ^0.4.0; contract test1 { function test() private {} } contract test_con2 { function test3() {}}" -}