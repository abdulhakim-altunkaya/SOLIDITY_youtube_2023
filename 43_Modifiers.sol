// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* MODIFIERS
    - a special function in Solidity
    - used to pack together require or if/revert functions
    - can also be used to add extra implementation before or after the function
    */ 


    uint public num = 5;

    modifier isBigger(uint _num) {
        require( _num > 20, "wrong number");
        _;
    }

    function changeNum(uint _value) external isBigger(_value) {
        num = _value;
    }



}