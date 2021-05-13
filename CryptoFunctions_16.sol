// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.8 <0.9.0;

// Creating a contract
contract Test{	
	
	function AddMod(uint x, uint y, uint k) public pure returns (uint){
			    
	   // evaluates to (x + y) % k
	    uint ans = addmod(x, y, k);
			     
	    return ans;
	}
	
	function mulMod(uint x, uint y, uint k) public pure returns (uint){
		
		 // (x * y) % k
	    uint ans = mulmod(x,y, k);
			    
		return ans;
	}
	
	function KECCAK256(string memory data) public pure returns(bytes32 result){
        bytes memory dataSHA = abi.encodePacked(data);
      return keccak256(dataSHA);
    }
	

    function SHA256(string memory data) public pure returns(bytes32 result){
        bytes memory dataSHA = abi.encodePacked(data);
      return sha256(dataSHA);
    }

    function RIPEMD160(string memory data) public pure returns(bytes32 result){
            bytes memory ripemdData = abi.encodePacked(data);
          return ripemd160(ripemdData);
    }

// 0x1c8aff950685c2ed4bc3174f3472287b56d9517b9c948127319a09a7a36deac8 Hash of "Hello"
// 0x9242685bf161793cc25603c231bc2f568eb630ea16aa137d2664ac80388256084f8ae3bd7535248d0bd448298cc2e2071e56992d0774dc340c368ae950852ada1c Signature
// 0x9242685bf161793cc25603c231bc2f568eb630ea16aa137d2664ac8038825608 First 32 Bytes of Siignature
// 0x4f8ae3bd7535248d0bd448298cc2e2071e56992d0774dc340c368ae950852ada Last 32 Bytes of Signature
// 0x1c8aff950685c2ed4bc3174f3472287b56d9517b9c948127319a09a7a36deac8,
// 28,
// 0x9242685bf161793cc25603c231bc2f568eb630ea16aa137d2664ac8038825608,
// 0x4f8ae3bd7535248d0bd448298cc2e2071e56992d0774dc340c368ae950852ada
	function ECRECover( bytes32 hash, uint8 v, bytes32 r, bytes32 s) public pure returns (address){
		
	    address ans = ecrecover(hash, v, r, s);
			    
		return ans;
	}
}
