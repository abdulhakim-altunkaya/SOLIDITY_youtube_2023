// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract FixedArray1 {

    uint[3] public myArray;

    function assignValues() external {
        myArray = [2, 88, 52];
    }

    function getArray() external view returns(uint[3] memory) {
        return myArray;
    }

}