// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract A {
    function minimalScoping() pure public returns(uint) {
        uint same1 = 9;
        {
            uint same11;
            same11 = 1;
            // return same11;
        }

        {
            uint same;
            same = 3;
            // return same;
        }
        
        return same1;
    }
}

contract B {
    function f() pure public returns (uint) {
        uint x = 1;
        {
            uint x;
            x = 2; // this will assign to the outer variable
            
        }
        return x; // x has value 2
    }
}

// This will not compile
contract C {
    function f() pure public returns (uint) {
        uint x;
        x = 2;
        // uint x;
        return x;
    }
}
