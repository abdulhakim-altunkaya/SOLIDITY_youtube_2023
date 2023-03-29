//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

/*Inheriting Multiple Contracts & Inheriting Contracts Constructors */

contract A {
    string public myWord;
    constructor(string memory _word) {
        myWord = _word;
    }
}

contract B {
    uint public myNumber;
    constructor(uint _number) {
        myNumber = _number;
    }
}