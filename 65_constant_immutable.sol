//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

contract Apple {
    
    uint public immutable MY_NUM = 25652;
    uint public immutable MY_NUM_2;
    
    string public constant MY_CITY  = "Brazzaville";

    constructor() {
        MY_NUM_2 = 1;
    }

/*

****CONSTANT****
All the instances of the variables are replaced with value. 
Replacement is done during compilation.
There will not be a storage allocation, as there will be only value.
Value type variables and STRINGS can have "constant" keyword. No array, struct,...
Variable name should be CAPITAL

****IMMUTABLE****
All the instances of the variables are replaced with value. 
Replacement is done during construction. 
There will not be a storage allocation, as there will be only value.
Only 32 bytes are reserved for this. For this reason, only Value type variables can have "immutable" keyword. No string, array, struct,...
Variable name should be CAPITAL

*/
}