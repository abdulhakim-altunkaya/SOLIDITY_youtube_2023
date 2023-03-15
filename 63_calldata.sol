//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

//STORAGE - MEMORY - CALLDATA - STACK
contract DataLocations {


    //CALLDATA
    function getWord(string calldata x) external pure returns(string calldata) {
        return x;
    }


/*
****MEMORY****
Function parameters, return statement and implementation area
Only reference type variables can use 
Memory variables are mutable/modifiable
Memory variables are also non-persistant. They are deleted when function execution finishes.
Cheaper than Storage.

****CALLDATA*****
Function parameters
Only reference type variables can use 
They are NOT mutable/modifiable
They are are also non-persistant. They are deleted when function execution finishes.
Cheaper than Memory.
*/
}