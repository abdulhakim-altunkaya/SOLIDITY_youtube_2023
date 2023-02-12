//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    uint[] internal myArray = [10, 11, 12, 13, 14, 15];

    /*UNORDERED REMOVAL LOGIC
        [10, 11, 12, 13, 14, 15]
        [10, 11, 15, 13, 14, 15]
        [10, 11, 15, 13, 14]
    */
    function remove1() external {
        myArray[2] = myArray[5];
        myArray.pop();
    }


    /*ORDERED REMOVAL LOGIC
        [10, 11, 12, 13, 14, 15]
        [10, 11, 13, 13, 14, 15]
        [10, 11, 13, 14, 14, 15]
        [10, 11, 13, 14, 15, 15]
        [10, 11, 13, 14, 15]
    */
    function remove2() external {
        for(uint i = 2; i<myArray.length-1; i++) {
            myArray[i] = myArray[i+1];
        }
        myArray.pop();
    }


    //just a getter function
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}