//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //CREATE AN ARRAY OF EVEN NUMBERS
    uint[] internal myArray;
    

    function createArray(uint _number) external {
        for(uint i=0; i<_number; i++) {
            if(i % 2 == 0) {
                myArray.push(i);
            }
        }
    }


    //just a function to see our array
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }


}