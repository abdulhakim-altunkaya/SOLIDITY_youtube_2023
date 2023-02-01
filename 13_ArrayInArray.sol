//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    uint[][] internal myArray;
    
    function addValues(uint[] memory _a, uint[] memory _b) external {
        myArray.push(_a);
        myArray.push(_b);
    }

    function getArray() external view returns(uint[][] memory) {
        return myArray;
    }

    function getValues(uint _a, uint _b) external view returns(uint) {
        return myArray[_a][_b];
    }

}