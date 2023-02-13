//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //FIND BIGGEST NUMBER OF THIS ARRAY

    uint[] internal myArray = [10, 11, 100, 200, 66];

    function findBig() external view returns(uint) {
        uint biggestNum;
        for(uint i=0; i<myArray.length-1; i++) {
            if(myArray[i] >= myArray[i+1]) {
                biggestNum = myArray[i];
            } else {
                biggestNum =  myArray[i+1];
            }
        }
        return biggestNum;
    }

}