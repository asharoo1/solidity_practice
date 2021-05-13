// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

contract MappingExample{
    
    mapping (address => uint) public balances;
    
    function updateBal() public payable{
        
        balances[msg.sender] = msg.value;
        
    }
}

contract MappingUser{
    
    function f() public returns(uint){
        
        MappingExample m = new MappingExample();
        m.updateBal();
        
        return m.balances(address(this));
        
    }
}
