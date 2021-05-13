// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 < 0.9.0;

contract Test {
   
   function implicit() public pure returns(uint32){
        uint8 y;
        uint16 z;
        uint8 w = uint16(y);
        uint32 x = y + z;
        return x;
   }
   
   function explicit() public pure returns(uint,uint16,uint32){
        int  y = -3;
        uint x = uint(y);
        
        // return x;
        // If an integer is explicitly converted to a smaller type, higher-order bits are cut off:
        uint32 a = 0x12345678;
        uint16 b = uint16(a); // b will be 0x5678 now
        
        // If an integer is explicitly converted to a larger type, it is padded on the left
        uint16 aa = 0x1234;
        uint32 bb = uint32(a); // bb will be 0x00001234 now
        // assert(aa == bb);
        
        return ( x,b,bb);
        
   }

}
