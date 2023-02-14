//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //ORDER THE ARRAY FROM SMALL TO BIG
    uint[] internal myArray = [5, 9, 6, 3, 8, 0];
    

    function orderArray() external {

        for(uint a=0; a<myArray.length-1; a++) {
            for(uint i=0; i<myArray.length-1; i++) {
                if(myArray[i] > myArray[i+1]) {

                    uint temp = myArray[i];
                    myArray[i] = myArray[i+1];
                    myArray[i+1] = temp;
                    
                }
            }
        }


    }



    //just a function to see our array
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }


}