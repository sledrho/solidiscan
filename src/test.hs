module Test where
import Test.HUnit  
import Parser
import Lexer

-- Run parse allows the ability to run the parser from within GHCI, passing in the test case that failed
runParse n = (show(reverse(solidiscan(alexScanTokens2 n))))
perseTree = solidiscan (alexScanTokens2 "pragma solidity;")
test_ex = show(reverse(perseTree))
test4 = "pragma solidity; \
         \contract this_is_a_contract1 { \
         \   address public bank_account1; \
         \ } \
         \contract this_is_a_contract2 { \
         \   var public bank_account2; \
         \   function private bank_account2; \
         \ }"


test3 = "pragma solidity;\
         \contract contract_1 {\
         \   address public bank_acc1; \
         \contract contract_2 {\
         \   public internal bank_acc2 \
         \}"

-- creating a test case for the pragma source unit
test1 = TestList [ "Test 1: Pragma" ~: "[SourceUnit (Pragma \"solidity\")]" ~=? (show(reverse(solidiscan(alexScanTokens2 "pragma solidity;")))),
                   "Test 2: Contract Def" ~: "[SourceUnit (Pragma \"solidity\"),ContractDef (Contract \"this_is_a_contract1\" [ContractContents (StateVar (ElemType \"address\") \"bank_account1\")])]" ~=? (show(reverse(solidiscan(alexScanTokens2 "pragma solidity; contract this_is_a_contract1 {address public bank_account1;}")))),
                   "Test 3: Multiple Contract Assignment" ~: "[SourceUnit (Pragma \"solidity\"),ContractDef (Contract \"contract_1\" [ContractContents (StateVar (ElemType \"address\") \"bank_acc1\")]),ContractDef (Contract \"contract_2\" [ContractContents (StateVar (ElemType \"public\") \"bank_acc2\")])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test3)))),
                   "Test 4: Var/Func/Contract Assignments" ~: "[SourceUnit (Pragma \"solidity\"),ContractDef(Contract \"this_is_a_contract1\" [ContractContents (StateVar (ElemType \"address\") \"bank_account1\")]),ContractDef (Contract \"this_is_a_contract2\" [ContractContents (StateVar (ElemType \"var\") \"bank_account2\")])]" ~=? (show(reverse(solidiscan(alexScanTokens2 test4))))]