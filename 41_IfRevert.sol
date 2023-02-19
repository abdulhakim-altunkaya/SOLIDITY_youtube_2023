// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* CONDITION CHECKING
    3. IF
    - Used for checking if an important condition is true.
    - If false, no gas returned. And there is no revert back

    4. IF & REVERT
    - Used for checking if an important condition is true.
    - If false, gas returned. Changes made are reverted back.
    */

    function checkNum1(uint _number) external pure returns(uint) {
        if(_number<5) {
            return _number;
        } else {
            return 0;
        }
    }

    function checkNum2(uint _number) external pure returns(uint) {
        if(_number<5) {
            return _number;
        } else {
            revert("number must be bigger than 5");
        }
    }
}