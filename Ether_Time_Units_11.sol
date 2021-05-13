// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 < 0.9.0;

contract Test {
    event Check(bool check);
    
    function etherUnit() public {
            
            assert(1 wei == 1);
            assert(1 gwei == 1e9);
            assert(1 ether == 1e18);
            bool check =true;
            emit Check(check);
    }
    
    function timeUnit() public {
            
            assert(1 == 1 seconds);
            assert(1 minutes == 60 seconds);
            assert(1 hours == 60 minutes);
            assert(1 days == 24 hours);
            assert(1 weeks == 7 days);
            bool check =true;
            emit Check(check);
    }
    
}
