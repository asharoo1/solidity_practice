// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
contract Test{
    function getContractName() public pure returns(string memory ){
        string memory contractName  = type(Test).name;
        
        return contractName;
    }
    
    // function getCreationCode() public returns(bytes4 ){
        
    //     // bytes memory contractCreationCode = type(C).creationCode;
    //     // bytes memory contractCreationCode = type(C).runtimeCode;
    //     bytes4 contractCreationCode = type(C).interfaceId;
        
        
    //     return contractCreationCode;
    // }
}
