//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Orange {

    //AND in require: &&
    function getNumber1(uint _number) external pure returns(uint) {
        require(_number > 10 && _number <200, "not in range");
        return _number;
    }

    //OR in require: ||
    function getNumber2(uint _number) external pure returns(uint) {
        require(_number > 100 || _number <20, "not in range");
        return _number;
    }

    //OR in return
    function getNumber3(uint _number) external pure returns(bool) {
        return _number > 10 && _number <200;
    }


    //AND in return
    function getNumber4(uint _number) external pure returns(bool) {
        return _number > 100 || _number <20;
    }

    //same function with if

    function getNumber5(uint _number) external pure returns(bool) {
        if(_number > 100 || _number <20) {
            return true;
        } else {
            return false;
        }
    }
}