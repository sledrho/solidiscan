pragma solidity ^0.4.8;

contract re_entrancy {
  mapping (address => uint) public balances;

  function put_func() payable {
    balances[msg.sender] = msg.value;
  }

  function get_func() {
    if (!msg.sender.call.value(balances[msg.sender])()) {
      throw;
    }
      balances[msg.sender] = 0;
  }
}

pragma solidity ^0.4.0; 
contract test {
  mapping (address => uint) public balances; 
  
  function test() {
    if (!msg.sender.call.value(balances[msg.sender])()) {
      throw;
    } 
    balances[msg.sender] = 0;}
  } 
  
contract test2 {
  mapping (address => uint) public balances;
} 

pragma solidity ^0.4.0;
  
contract test {
  mapping (address => uint) public balances; 
  
  function test() {
    if (!msg.sender.call.value(balances[msg.sender])()) 
    { 
      throw;
    } 
    balances[msg.sender] = 0;
  } 
} 
  
contract test2 { 
  mapping (address => uint) public balances; 
  function test2() { if(true++) 
  { 
    throw;
    }
  }
}

pragma solidity ^0.4.0;
// ^-- PragmaDirective

import "./test.sol"
// ^-- ImportDirective
contract example1 {}
// ^-- ContractDefinition
contract example2 {}
// ^-- Another ContractDEfinition