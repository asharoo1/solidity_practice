// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 < 0.9.0;

contract Test {
   
   function integerType() public pure returns(uint32){
        uint8 a = 12; // fine
        uint32 b = 1234; // fine
        // uint16 c = 0x123456; // fails, since it would have to truncate to 0x3456
   }
   
//   Fixed Size Byte arrays
   
  function fixedSizeByteArray() public pure returns(uint,uint16,uint32){
        bytes2 a = hex"1234"; // fine
        bytes2 b = "xy"; // fine
        bytes2 c = hex"12"; // not allowed
        // bytes2 d = hex"123"; // not allowed
        bytes2 e = "x"; // not allowed
        // bytes2 f = "xyz"; // not allowed
        
  }
  
  //address conversion
  
  function addressss() public {
      
    //   address a = address payable x;
        int c;
      address b = payable(c);
  }

}
