// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.9;

contract Orange {

    function compoundInterest(uint _principal, uint _periods, uint _rate) external pure returns(uint) {
        for(uint i=0; i<_periods; i++) {
            uint yield = _principal * _rate / 100;
            _principal += yield;
        }
        return _principal;
    }
    
}
