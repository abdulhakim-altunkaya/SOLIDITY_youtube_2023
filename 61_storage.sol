//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

//STORAGE - MEMORY - CALLDATA - STACK
contract DataLocations {
    //STORAGE
    string public myCity = "Bismil";
    uint[] internal myNumbers = [8, 7, 6];


    function change1() external {
        myNumbers[1] = 33333;
    }

    function change2() external {
        uint[] storage xxxx = myNumbers;
        xxxx[1] = 6666666666;
    }





    function getArray() external view returns(uint[] memory) {
        return myNumbers;
    }



/*
****STORAGE****
Storage variables are stored on the blockchain.
They are persistent.
All variables that are outside functions are storage variables. 
They can be updated/modified.
They are expensive to play with.

****STORAGE POINTER VARIABLES****
"Storage pointer variables" not "storage variables". 
They are temporary.
They are pointing to the value of a variable.
In some cases, they are cheaper to use.
They can be used with array, struct or mapping types.

*/
}