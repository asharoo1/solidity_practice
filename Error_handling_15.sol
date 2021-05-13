// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.8 <0.9.0;

// Creating a contract
contract Test
{	
	function assertCheck(uint a, uint b) pure public{
	    assert(a == b);
	   // return true;
	}
	
	function asserts() public pure{
        assert(false);
    }
	
	
	function requireCheck(uint a, uint b) public pure {
	    require(a == b);
	}
	
	function requireCheck2(uint a, uint b) public pure {
	    require(a == b, "Error, Value not equal");
	}
	function requires() public pure{
        require(false);
    }
	
	function revertCheck() public pure {
	    revert();
	}
	function revertCheck2() public pure {
	    revert('Error, revert message check');
	}
	
	function reverts() public pure{
        revert();
    }
}
