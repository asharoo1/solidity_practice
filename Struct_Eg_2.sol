// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 < 0.9.0;

contract CheckStruct {
    struct Voter {
        uint age;
        bool voted;
        
    }
    Voter v1;
    
    function setDetails(uint age, bool didVote) public{
        v1 = Voter(age, didVote);
    }
    
    function getDetails() public view returns(uint, bool){
         return (v1.age, v1.voted);
    }

}
