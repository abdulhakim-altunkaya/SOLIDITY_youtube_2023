//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

//STORAGE - MEMORY - CALLDATA - STACK
contract DataLocations {
    
    //STACK
    function getNum(uint a) external pure returns(uint) {
        return a;
    }


/*

****STACK****
Stack is a data location for storing value type variables. 
Function execution space. Variable values are entering in and exiting out. 
They are mutable/modifiable
They are non-persistant, they are deleted when function execution finishes.
Cheapest to use.

*/
}