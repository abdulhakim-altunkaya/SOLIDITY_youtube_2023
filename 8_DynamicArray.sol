//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysTest {

    //FIXED-SIZE
    uint[3] internal myArray1;

    //DYNAMIC-1
    uint[] internal myArray2 = new uint[] (3);

    //DYNAMIC-2
    uint[] internal myArray3;

    function addValues(uint _num) external {
        myArray3.push(_num);
    }

    function delValues() external {
        myArray3.pop();
    }

    function getArray() external view returns(uint[] memory) {
        return myArray3;
    }


}