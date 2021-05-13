// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract Contract {
    event CheckEncodedData(bytes data);
    event CheckDcodedData(uint256 data);

    MyContract contract1 = new MyContract();


    function callGetValue(uint _x) public returns (uint) {

        bytes4 selector = contract1.getValue.selector;

        bytes memory data = abi.encodeWithSelector(selector, _x);
        emit CheckEncodedData(data);
        (bool success,bytes memory returnedData) = address(contract1).staticcall(data);
        require(success);
        uint256 decodedData = abi.decode(returnedData, (uint256));
        
        emit CheckDcodedData(decodedData);
        return decodedData;
    }
    
}

contract MyContract {

    
    function getValue (uint _value) public pure returns (uint) {
        
        return _value;
    }

}
