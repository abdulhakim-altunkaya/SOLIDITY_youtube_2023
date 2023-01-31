//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    uint[] internal myArray = [9, 88, 6363, 5, 222];

    //pop()
    // [9, 88, 6363, 5]

    //delete
    //[9, 88, 0, 5, 222]

    function remPop() external {
        myArray.pop();
    }


    function remDel() external {
        delete myArray[2];
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }



}