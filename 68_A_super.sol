//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract A {
    /*We can call a parent function from child contract.
    For that functions must be declared as "public" or "internal". We cannot use "external". */


    function foo() internal pure returns(string memory) {
        return "greetings from contract A";
    }

}
