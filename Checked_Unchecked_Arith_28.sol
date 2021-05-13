// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract C {
    function f(uint a, uint b) pure public returns (uint) {
        // This subtraction will wrap on underflow.
        unchecked {
            return a - b;
            
        }
    }
    function g(uint a, uint b) pure public returns (uint) {
        // This subtraction will revert on underflow.
        return a - b;
    }
    
    // function f1(uint a, uint b) pure public returns (uint) {
    //     // This not possible to disable the check for division by zero or modulo by zero using the unchecked block..
    //     unchecked {
    //         return a / 0;
            
    //     }
    // }
    
    function f2() pure public returns (uint) {
        // This  will not revert.
        unchecked {
            return type(uint256).max << 3;
            
        }
    }
    
    function f3() pure public returns (uint) {
        // This  will not revert even though it must
        unchecked {
            return type(uint256).max * 8;
            
        }
    }
}
