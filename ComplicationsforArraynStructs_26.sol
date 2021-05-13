// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract C {
    uint[20] public x;
    event Check1(uint y_2, uint x_2);
    event Check2(uint y_3, uint x_3);

    function f() public{
        g(x);   // calls g and creates an independent, temporary copy in memory
        h(x);   //  calls h, handing over a reference to x
    }

    function g(uint[20] memory y) internal{
        y[2] = 3;
        emit Check1(y[2], x[2]);
    }

    function h(uint[20] storage y) internal {
        y[3] = 4;
        emit Check2(y[3],x[3]);
    }
}
