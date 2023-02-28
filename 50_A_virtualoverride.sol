//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract A {
    
    uint public myNumber = 5;

    function changeNumber(uint _num) external virtual {
        myNumber = _num;
    }

} 