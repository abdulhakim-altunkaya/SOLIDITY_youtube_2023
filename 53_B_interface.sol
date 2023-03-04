//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./IApple.sol";

contract B {

    IApple public targetContract;

    function assignContract(address otherContract) external {
        targetContract = IApple(otherContract);
    }

    function foo(string memory _city) external {
        targetContract.changeCity(_city);
    }


  /*     "INTERFACE"
    - Contract A must be deployed.
    - Contract B must be deployed.

    - State of Contract A changes.
    - State of Contract B does not change.

    - We need to have access to the interface file (Import statement is required)

    - We can call STANDARD functions and variables of Contract A .

    - INTERFACE: to access standard functions
    - CALL : to access specific functions
  */
} 