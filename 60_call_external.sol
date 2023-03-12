//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Apple {


    function getNum(uint n) external pure returns(uint) {
        return n;
    }

    //WAY-1: this
    function something(uint x) external view returns(uint) {
        return this.getNum(x);
    }

    //WAY-2: "contract" variables
    Apple public targetContract;

    function setContract(address deployedContract) external {
        targetContract = Apple(deployedContract);
    }
    function something2(uint x) external view returns(uint) {
        return targetContract.getNum(x);
    }



}