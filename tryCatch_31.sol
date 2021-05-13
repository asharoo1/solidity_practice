// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.8.0;

contract DataFeed{
    
    address public owner;
    
    constructor(address _owner){
        
        require(_owner != address(0), "Invalid Address");
        assert(_owner != 0x0000000000000000000000000000000000000001);
        owner = _owner;
    }
    
    function f(uint x) public pure returns(string memory){
        require(x != 0,"Require in f() Failed");
        return "f()is called";
    }
}

contract FeedConsumer{
    
    DataFeed public dataF;
    event Log(string message);
    event LogBytes(bytes data);
    
    constructor(){
        dataF = new DataFeed(msg.sender);
    }
    
    function usingStringTryCatch(uint x) public{
        try dataF.f(x) returns( string memory result){
            emit Log(result);
        }catch{
            emit Log('External Call Failed');
        }
    }
    
    function tryCatchNewContract(address _owner) public {
        
        try new DataFeed(_owner) returns (DataFeed dataFnew){
            emit Log("dataFnew Created");
        }catch Error(string memory reason){
            emit Log(reason);
        }catch (bytes memory reason){
            emit LogBytes(reason);
        }
        
    }
}
