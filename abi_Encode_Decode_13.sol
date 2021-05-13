// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.8 <0.9.0;

contract Test
{	
	// to use abi.encode()
	//It does padding to bytes
	function encode(string memory g)
			public pure returns(bytes memory)
	{
		return abi.encode(g);
	}
	
	// encodepacked returns values in
	// a packed way without padding
	function encodepacked(string memory g)public pure returns(bytes memory)
	{
		return abi.encodePacked(g);
	}
	
	function decode(bytes memory enncodedData) public pure returns (string memory){
	    
	    string memory decodedData = abi.decode(enncodedData, (string));
	    return decodedData;
	}
	
    function EncWithSig(string memory data1, uint data2, uint data3) public pure returns(bytes memory){
        bytes memory payload = abi.encodeWithSignature(data1, data2, data3);
        
        return payload;
    }
 
}
