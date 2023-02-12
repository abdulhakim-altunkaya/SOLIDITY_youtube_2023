//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //PUT NUMBERS FROM 0 T0 20 INSIDE THIS ARRAY BUT DONT PUT "11"
    //USE "CONTINUE" STATEMENT TO SKIP A VALUE

    uint[] internal myArray;

    function addValues() external {
        for(uint i=0; i<21; i++) {
            if(i == 11) {
                continue;
            } else {
                myArray.push(i);
            }
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }




}