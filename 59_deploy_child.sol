//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Child {

    string public myCity;

    constructor(string memory _city) {
        myCity = _city;
    }
}