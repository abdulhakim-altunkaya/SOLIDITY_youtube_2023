// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Orange {


    /* CUSTOM ERRORS
    - can only be used with if&revert
    - cheaper to use compared to not using them
    - allow us to pass dynamic data 
    - syntax is similar events
    */

    error NotBig(address caller, string message); 

    function checkNum(uint _number) external view returns(uint) {
        if(_number < 5) {
            return _number;
        } else {
            revert NotBig(msg.sender, "num must be bigger than 5");
        }
    }

    



}
