//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

import "./Orange.sol";

// WAY 1: static input
contract C is A("SOMETHING"), B(55555) {

}

//WAY-2 :  dynamic input

contract D is A, B {

    constructor(string memory word, uint num) A(word) B(num) {

    }

}