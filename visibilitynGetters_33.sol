// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract C {
    uint public data;
    function f(uint a) private pure returns (uint b) {
        return a + 1;
        
    }
    function setData(uint a) internal {
        data = a;
        
    }
    
    function run(uint a) public returns(uint){
        uint ff = f(a);
        setData(a);
        return ff;
    }
    
}
