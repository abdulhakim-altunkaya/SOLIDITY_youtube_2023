//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //DIFFERENT RETURN STATEMENTS
    function getNum1(uint _a) external pure returns(uint) {
        uint myNum = _a + 5;
        return myNum;
    }

    //cheaper in execution cost
    function getNum2(uint _a) external pure returns(uint myNum) {
        myNum = _a + 5;
    }




}