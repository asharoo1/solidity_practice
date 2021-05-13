// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
contract Storage {
        address payable public owner;
        address payable private contractAddress;
        uint256 number;
        
        constructor() {
            owner = payable(msg.sender);
            contractAddress = payable(address(this));
        }
        
        function store(uint256 num) public {
            number = num;
        }
        function retrieve() public view returns (uint256){
            return number;
        }
 
        function close() public { 
            selfdestruct(owner); 
        }
        
        function getContAddress() public view returns(address){
            return address(this);
        }
        
        function deposit() public payable {
            // contractAddress.transfer(msg.value);
            contractAddress.send(msg.value);
        }
        
        function getContBalance() public view returns(uint){
            return contractAddress.balance;
        }
        
}
