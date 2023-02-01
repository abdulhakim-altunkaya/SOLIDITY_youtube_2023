//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    
    
    function createArray(uint _a, uint _b, uint _c) external pure returns(uint[3] memory) {
        uint[3] memory myArray = [_a, _b, _c];
        return myArray;
    }
    

}