// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

contract Array {
    
    uint[] private arr = [1,2,3,4,5,6];
    int[] private arr2;
    
    function getArray() public view returns(uint[] memory){
        return arr;
    }
    
    
    function len() public view returns(uint){
        return arr.length;
    }
    
    function push(uint num) public {
        arr.push(num);
        
    }
    

    function pop() public {
        arr.pop();
        
    }
    
    
    // For Dynamic Array
    function DArrygetData() public view returns(int[] memory){
      return arr2;
    }
    
    function DArrayaddData(int num) public{
      arr2.push(num);
    }
    
    function DArraypopData() public{
      arr2.pop();
    }
    
    function DArraylen() public view returns(uint){
        return arr2.length;
    }
}
