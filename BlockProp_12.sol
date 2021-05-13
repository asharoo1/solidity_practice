// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
contract Test {
  
    function blockHash() public view returns(bytes32){
        return blockhash(block.number);
    }
    
    function blockChainId() public view returns(uint){
        return block.chainid;
    }
    
    function blockCoinBase() public view returns(address payable){
        return block.coinbase;
    }
    
    function blockDifficulty() public view returns(uint){
        return block.difficulty;
    }
    
    function blockGasLimit() public view returns(uint){
        return block.gaslimit;
    }
    
    function blockNumber() public view returns(uint){
        return block.number;
    }
    
    function blockTimeStamp() public view returns(uint){
        
        return block.timestamp;
    }
    
    function blockgasLeft() public view returns(uint){
        return gasleft();
    }
    
    function msgData() public pure returns(bytes calldata){
        return msg.data;
    }
    
    function msgSender() public view returns(address){
        return msg.sender;
    }
    
    function msgSig() public pure returns(bytes4){
        return msg.sig;
    }
    
    function msgValue() public payable returns(uint){
        return msg.value;
    }
    
    function TxGasPrice() public view returns(uint){
        return tx.gasprice;
    }
    
    function TxOrigin() public view returns(address){
        return tx.origin;
    }
    
    // Members of Address 
    
    function getBalance() public view returns(uint){
        return msg.sender.balance;
    }
    
    function getCode() public view returns(bytes memory){
        // return address(this).code;
        return msg.sender.code;
    }
    
    function getCodeHash() public view returns(bytes32){
        return msg.sender.codehash;
    }
}
