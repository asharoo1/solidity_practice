// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;


contract A {

    event CheckInternal(string message);
    event CheckPrivate(string message);

    // only this contract and contracts deriving from it can access
	function getInternal() internal{
		string memory chk = "getInternal()executed";
		emit CheckInternal(chk);
		
	}
	
// 	can only be accessed from within the contract
	function getPrivate() private{
		string memory chk = "getPrivate()executed";
		emit CheckPrivate(chk);
		
	}
	
	function get() public {
	    
	    getPrivate();
	    getInternal();
	}
}


contract caller is A{

    A a = new A();
	function testInheritance() public{
		getInternal();
// 		a.getPrivate();
	}
}
