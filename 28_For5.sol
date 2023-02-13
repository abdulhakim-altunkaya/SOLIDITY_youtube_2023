//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //FIND THE INDEX NUMBER OF ANY ELEMENT INSIDE THIS ARRAY

    uint[] internal myArray = [10, 11, 33, 44, 77, 99];

    uint public targetIndex;

    function findIndex(uint _number) external {
        for(uint i=0; i<myArray.length; i++) {
            if(myArray[i] == _number) {
                targetIndex = i;
            }
        }
    }




    //just a getter function
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }


}