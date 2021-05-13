// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Test{
    uint check = 0;
    string str = "";
    event Check(string str);
    
    function f() public returns(string memory){
        
        str = "Ashar";
        return str ;
        
    }
    
    function PureFun() public pure returns(uint){
        // return check;   //reading state variable in pure is not allowed
        // check = 10; // writing to state variable isn't allowed in pure function
        // emit Check("Emitting Event");   //not aloowed to emit in pure
        // selfdestruct(payable(msg.sender));  // selfdestruct is not allowed in Pure considered as modifing state
        // f();    //calling function not marked pure results in modifying state and not allowed in pure function
        
    }
    
    function ViewFun() public view returns(uint){
        // return check;   //reading state variable in view is not allowed
        // check = 10; // writing to state variable isn't allowed in view function
        // emit Check("Emitting Event");   //not aloowed to emit in view 
        // selfdestruct(payable(msg.sender));  // selfdestruct is not allowed in view considered as modifing state
        // f();    //calling function not marked pure results in modifying state and not allowed in view function
    }
}
