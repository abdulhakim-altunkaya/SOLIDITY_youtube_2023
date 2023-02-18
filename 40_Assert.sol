// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* CONDITION CHECKING
    2. ASSERT
    - Generally used for testing.
    - Or used for checking if an important condition is true.
    - If false, no gas returned,
    - If false,  changes made to the contract reverts back.
    */
    function getNum(uint _number) external pure returns(uint) {
        assert(_number > 5);
        return _number;
    }

}