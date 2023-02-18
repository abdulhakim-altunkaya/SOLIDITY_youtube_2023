// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* CONDITION CHECKING
    1. REQUIRE
    - Most used function to check conditions before execution
    - If false, all remaining gas returned
    - If false, changes made to the contract reverts back.
    */

    function getNum(uint _number) external pure returns(uint) {
        require(_number > 5, "_number must be bigger than 5");
        return _number;
    }

}