// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract test {
    
    function add(uint num1,uint num2) public pure returns(uint) {
        
        return num1 + num2;
    }
    
    function sub(uint num1,uint num2) public pure returns(uint) {
        
        return num1 - num2;
    }
    
    function mul(uint num1,uint num2) public pure returns(uint) {
        
        return num1 * num2;
    }
    
    function div(uint num1,uint num2) public pure returns(uint) {
        
        return num1 / num2;
    }
    
    function mod(uint num1,uint num2) public pure returns(uint) {
        
        return num1 % num2;
    }
    
    function expo(uint num1,uint num2) public pure returns(uint) {
        
        return num1 ** num2;
    }
    
    
    //   Bit Operator
    function bitOperAND(uint num1,uint num2) public pure returns(uint) {
        
        return num1 & num2;
    }
    
    function bitOperOR(uint num1,uint num2) public pure returns(uint) {
        
        return num1 | num2;
    }
    
    function bitOpeExOr(uint num1,uint num2) public pure returns(uint) {
        
        return num1 ^ num2;
    }
    
    // Shift Operator
    
    function leftShift(uint num1,uint num2) public pure returns(uint) {
        
        return num1 << num2;
    }
    
    function rightShift(uint num1,uint num2) public pure returns(uint) {
        
        return num1 >> num2;
    }
    
    // rational and integer literals
    function integerLiterals() public pure returns(uint, uint){
        
        uint128 a = 1;
        // uint128 b = 2.5 + a + 0.5;
        
        uint128 b = 2 + a + 5;
        return (a,b);
    }
    
    function unicodeLiterals() public pure returns(string memory){
        
       string memory a = unicode"Hello 😃";
        return (a);
    }
    
    function hexaDecimalLiterals() public pure returns(string memory){
        
       string memory a = hex"0011223344556677";
        return a;
    }
    
}
