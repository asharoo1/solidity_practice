// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

contract Array {
    
    uint[] private arr2 = [1,2,3,4,5,6];
    // uint[] private newArr;
    
  event LoopBreaked(bool check);
    
    function getArrayData() public view returns(uint[] memory){
        return arr2;
    }
    
    
    function len() public view returns(uint){
        return arr2.length;
    }
    
    function checkWhie() public{
        while(arr2.length != 0){
            // assert(arr2.length !=0 );
          arr2.pop();
        }
    }
    
    function checkdoWhile() public{
        do{
          arr2.pop();
        }while(arr2.length != 0);
    }
    
    function checkFor() public{
        uint arlen = arr2.length;
        for(arlen; arlen != 0; arlen--){
            
          arr2.pop();
        }
    }
    
    function checkBreak(uint breakAtIndex) public{
        uint arlen = arr2.length;
        uint i = 0;
        for(i; i <= arlen; arlen--){
          if(arlen == breakAtIndex){
              break;
          }
          arr2.pop();
        }
        emit LoopBreaked(true);
    }
    
    function checkCotinue(uint continueAt) public{
        uint arlen = len();
        uint i = 0;
        for(i; i <= arlen; arlen--){
          if(arlen == continueAt){
              continue;
          }
          arr2.pop();
        }
        emit LoopBreaked(true);
    }
    
}
