//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    bytes32 public myVar = "orange";

    bytes32[] internal myArray = [bytes32("orange"), bytes32("apple")];

    function getArray() external view returns(bytes32[] memory) {
        return myArray;
    }

    function updateVal() external {
        myArray[1] = "kiwi";
    }

}