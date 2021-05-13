// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract C {

    function ByteConcat(string memory str1, string memory str2) public pure returns(string memory){
        bytes memory b1 = abi.encodePacked(str1);
        bytes memory b2 = abi.encodePacked(str2);
        
        string memory str = string(bytes.concat(b1,b2));
        
        return str;
    }
}
