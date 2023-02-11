//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    uint[] internal myArray;


    uint internal startNum = 0;
    uint internal endNum = 6;

    function addArray() external {
        while( startNum < endNum ) {
            myArray.push(startNum);
            startNum++;
        }
    }



    function getArray() external view returns(uint[] memory) {
        return myArray;
    }



}