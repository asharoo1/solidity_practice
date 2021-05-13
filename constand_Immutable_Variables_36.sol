// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.4;

uint constant X = 32**22 + 8;

contract test{
    
    string constant Text = "Ashar";
    uint constant num = 100;    //The value has to be a constant at compile time and it has to be assigned where the variable is declared. 
    uint newNum = 0;
    bytes32 constant myHash = keccak256("Ashar");
    
    uint immutable decimals;    //can be declared here or at the constructor no where else
    uint immutable maxBalance;
    address immutable owner = msg.sender;
    
    
    constructor(uint _decimals, address _reference){
        decimals = _decimals;
        maxBalance = _reference.balance;
        // newNum = _decimals + newNum;     //cannot be read at constructiontime and can only be assigned once
    }
    
    function isBalanceTooHigh(address _other) view public returns(bool){
        // decimals = 10;
        // maxBalance = 100;
        // owner = address(this);
        // myHash = myHash;
        // Text = "Ansari";
        return _other.balance > maxBalance;
    }
    
    function changeAtcompileTime(uint changNum) public returns(uint){
    
        newNum = newNum +  changNum;
        // // num += changNum;
        return newNum;
    }
    
}
