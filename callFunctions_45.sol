// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.4 <0.9.0;

contract LogicContract {
    address returnedAdd;
    event contractAddress(address returnedAdd);
    
    function print_address() public {
        
        returnedAdd = address(this);
        emit contractAddress(returnedAdd);  
    }
    
    
}

contract CallingContract{
    address returnedAdd;
    address logic_pointer = address(new LogicContract());
    
    function print_delegate_call_address() public {
        logic_pointer.delegatecall(abi.encodeWithSignature("print_address()"));
    }
    
    function print_call_address() public {
        logic_pointer.call(abi.encodeWithSignature("print_address()"));
        
    }
    
    // function print_call_address() public {
    //     logic_pointer.staticcall(abi.encodeWithSignature("print_address()"));
        
    // }
    
}
