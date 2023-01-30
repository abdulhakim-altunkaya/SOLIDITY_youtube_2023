//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    //FIXED-SIZE
    uint[3] internal myArray;

    function updateValue() external {
        myArray[1] = 88;
    }

    function getArray() external view returns(uint[3] memory) {
        return myArray;
    }


}