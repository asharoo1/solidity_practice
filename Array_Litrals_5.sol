// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract C {
    function f() public pure returns (uint24[2][4] memory) {
        uint24[2][4] memory x = [[uint24(0x1), 1], [0xffffff, 2], [uint24(0xff), 3], [uint24(0xffff), 4]];


        return x;
    }
    
    function fun() public pure returns (uint[3] memory) {
        uint[3] memory x = [uint(1), 2, 3];
        // uint[3] memory x = [uint(1), 2, -3];
        return x;
    }
    
    // this will give error because
    // Fixed size memory arrays cannot be assigned to dynamically-sized memory arrays,
    // function funnn() public {
    //     // The next line creates a type error because uint[3] memory
    //     // cannot be converted to uint[] memory.
    //     uint[] memory x = [uint(1), 3, 4];
    // }
}
