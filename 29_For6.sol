//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //FIND THE INDEX NUMBER OF ANY ELEMENT INSIDE THIS ARRAY

    uint[] internal myArray = [10, 11, 100, 200];

    function findSum() external view returns(uint) {
        uint arraySum;
        for(uint i=0; i<myArray.length; i++) {
            arraySum += myArray[i];
        }

        return arraySum;
    }

}