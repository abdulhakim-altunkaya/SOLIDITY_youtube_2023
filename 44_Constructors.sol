// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* CONSTRUCTORS
    - a special function in Solidity
    - they do not need name, because there can be only one constructor per contract
    - no need for access modifiers such as public, internal etc
    - used to initialize state variables before deployment finishes
    */ 

    address public owner;
    uint public myNum = 5;

    constructor(uint _num) {
        owner = msg.sender;
        myNum = myNum + _num;
    }



}