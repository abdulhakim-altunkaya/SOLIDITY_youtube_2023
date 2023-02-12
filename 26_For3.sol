//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //PUT NUMBERS FROM 0 T0 100 INSIDE THIS ARRAY
    //USE "BREAK" STATEMENT TO STOP AND EXIT THE LOOP

    uint[] internal myArray;


    function addValues() external {
        for(uint i=0; i<101; i++) {
            if(i == 50) {
                break;
            } else {
                myArray.push(i);
            }
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }


}