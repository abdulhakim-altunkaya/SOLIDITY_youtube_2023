//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //PUT NUMBERS FROM 0 T0 5 INSIDE THIS ARRAY

    uint[] internal myArray;

    function addValues() external {
        for(uint i=0; i<6; i++) {
            myArray.push(i);
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }

}